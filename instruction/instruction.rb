require_relative './operand'
require_relative './modrm'

module X86

  class ReadFail < StandardError; end

  I = {}

  class Instruction
    
    # ====================================
    # DSL Methods
    # ====================================
    
    def mnemonic(sym)
      @mnemonic = sym
    end
    
    def op(sym, size: nil, type: nil)
      op = case sym
      when :rm, :r, :m, :imm, :moffb, :moffw, :db, :rel, :far
        [sym, size, type]
      when Integer
        [sym, 0, 0]
      else
        op = RegOp.get(sym)
        [op, size, type]
      end
      @operands << op
    end
    
    def data16(&block)
      @data16 = block
    end
    
    def data32(&block)
      @data32 = block
    end
    
    # for SIMD
    def repne(&block)
      @repne = block
    end
    
    # for SIMD
    def rep(&block)
      @rep = block
    end
    
    # for SIMD
    def reg(&block)
      @reg = block
    end
    
    # for SIMD
    def mem(&block)
      @mem = block
    end
    
    # ====================================
    # / DSL Methods
    # ====================================
    
    
    DUMMY_PROC = proc { }
    
    def initialize(opcode, modrm, block)
      @opcode = opcode
      @modrm = modrm
      @operands = []
      @data16 = @data32 = DUMMY_PROC
      @repne = @rep = nil
      @block = block
      @code = []
      instance_eval(&block)
    end
    
    def new(*args)
      #this = self.class.new(@opcode, @modrm, DUMMY_PROC)
      #m, op, d16, d32, rn, r = @mnemonic, @operands, @data16, @data32, @repnem, @rep
      #this.instance_eval {
      #  @mnemonic = m
      #  @operands = op
      #  @data16 = d16
      #  @data32 = d32
      #  @repne = rn
      #  @rep = r
      #}
      #this
      this = self.class.new(@opcode, @modrm, @block)
    end
    
    def read(io, prefix)
      block = prefix.data32? ? @data32 : @data16
      if @rep || @repne
        block_ = case prefix.simd
        when :repne then @repne
        when :rep   then @rep
        when :data  then block
        end
        block = block_ if block_
      end
      instance_eval(&block) if block != DUMMY_PROC
      
      cur = io.pos
      modrm = if @modrm
        ModRM.new(io, prefix, @modrm == :r)
      end
      instance_eval(&@reg) if (@reg && modrm.rmop.kind_of?(RegOp))
      instance_eval(&@mem) if (@mem && modrm.rmop.kind_of?(MemoryOperand))
      
      imms = @operands.select{|sym, size, _| %i{ imm db moffb moffw rel far }.include?(sym)}.collect do |sym, size, _|
        s = io.read(size/8)
        raise ReadFail if (!s || s.bytesize != size/8)
        if sym == :far
          size == 32 ? s.unpack('vv') : s.unpack('Vv')
        else
          case size
          when 8  then s.unpack(?C)[0]
          when 16 then s.unpack(?v)[0]
          when 32 then s.unpack(?V)[0]
          else raise "must not happen #{size}"
          end
        end
      end
      cur1 = io.pos
      if cur != cur1
        io.seek(cur)
        @code.push(*io.read(cur1 - cur).bytes)
      end
      assign(prefix, modrm, imms)
    end
    
    def ip=(ip)
      @ip = ip
      rel = @operands.find{|op| op.kind_of?(RelJmpOp)}
      rel.base += ip + @code.size if rel
    end
    
    def to_s
      #raise to_a.join(?\t).gsub(/ +/, ' ').strip
      #s = "0x#{'%08x' % @ip}\t"
      #s << (@prefix_c + @opcode + @code.flatten).collect{|op| '%02X' % op}.join(' ') + ?\t
      #s << @prefix_s
      #s << "#{@mnemonic}\t#{@operands.join(', ')}"
      #s.gsub(/ +/, ' ').strip
      to_a.join(?\t).gsub(/ +/, ' ').strip
    end
    
    def to_a
      ip = "0x#{'%08x' % @ip}"
      code = (@prefix_c + @opcode + @code.flatten).collect{|op| '%02X' % op}.join(' ')
      m = "#{@prefix_s}#{@mnemonic}"
      ops = @operands.join(', ')
      [ip, code, m, ops]
    end
    
    private
    
    def assign(prefix, modrm, imms)
      @prefix_c = prefix.code.dup
      @prefix_s = prefix.to_s
      @prefix_s.gsub!(/repne\s*/, '') if @repne
      @prefix_s.gsub!(/rep(?!n)\s*/, '') if @rep
      @prefix_s << ' ' unless @prefix_s.empty?
      @operands.collect! do |op, size, type|
        op = case op
        when :rm then modrm.rmop
        when :r  then modrm.regop
        when :m
          raise InvalidModRM unless modrm.rmop.kind_of?(MemoryOperand)
          modrm.rmop
        when :imm
          imm = imms.shift
          ImmOp.new(imm, size)
        when :rel
          op = RelJmpOp.new(imms.shift, size)
          op.base += prefix.count
          op
        when :far
          op = AbsJmpOp.new(*imms.shift.reverse, size - 16)
        when :moffb
          MemOp.new(8, prefix.segment, disp32: imms.shift)
        when :moffw
          MemOp.new(prefix.data32? ? 32 : 16, prefix.segment, disp32: imms.shift)
        when :db
          DbOp.new(imms.shift)
        else op
        end
        if op.kind_of?(Operand)
          op = op.retype(type) if type
          op = op.resize(size) if size
        end
        op
      end
      true
    end
    
    DUMMY_INSTRUCTION = Instruction.new([], nil, proc{ mnemonic :db; op :db, size: 8 })
    
  end
  
  class InstructionSet
    def initialize
      @array = Array.new(8)
    end
    
    def new(io, *args)
      modrm = io.peek
      raise ReadFail unless modrm
      reg = (modrm.ord >> 3) & 7
      inst = @array[reg]
      raise InvalidModRM unless inst
      inst.new
    end
    
    def []=(k, v)
      @array[k] = v
    end
    
    def [](k)
      @array[k]
    end
    
  end
  
  class ExtParser
    
    def method_missing(meth, modrm=nil, &block)
      /^X([[:xdigit:]]+)/ =~ meth.to_s
      opcode = $1.chars.each_slice(2).collect(&:join).collect{|s| s.to_i(16)}
      key = opcode.collect(&:chr).join.b
      if !modrm || modrm == :r
        I[key] = Instruction.new(opcode, modrm, block)
      else
        #I[key] ||= Array.new(8)
        I[key] ||= InstructionSet.new
        I[key][modrm] = Instruction.new(opcode, modrm, block)
      end
    end
    
    pp = ExtParser.new
    pp.instance_eval(File.read("#{__dir__}/csv/op.rb"))
    pp.instance_eval(File.read("#{__dir__}/csv/fpu.rb"))
    pp.instance_eval(File.read("#{__dir__}/csv/0f.rb"))
    pp.instance_eval(File.read("#{__dir__}/csv/simd.rb"))
    
  end
  
end
