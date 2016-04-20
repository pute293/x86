require 'stringio'
require_relative './instruction/instruction'

class StringIO
  # n バイト先読みする
  def peek(n=1)
    if n == 1
      c = self.getc
      if c
        self.ungetc(c)
        c
      else nil
      end
    else
      cur = self.pos
      c = self.read(n)
      self.seek(cur)
      c
    end
  end
end

module X86

class Parser
  
  class InstBuffer < Array
    
    def to_s
      result = self.collect{|inst| ret = inst.to_s.split(?\t); ret << '' while ret.size < 4; ret }
      len1, len2, len3, len4 = result.transpose.collect{|col| col.max_by{|s|s.size}.size}
      result.collect!{|col1, col2, col3, col4| col1.ljust(len1+2) + col2.ljust(len2+2) + col3.ljust(len3+2) + col4}
      result.join(?\n)
    end
    
  end
  
  def self.disas(code_or_file, bits=32, base_eip: 0)
    if code_or_file.kind_of?(Array)
      code_or_file = code_or_file.collect{|x| (x & 0xff).chr}.join.b
    elsif code_or_file.valid_encoding? && !code_or_file.include?("\x00") && File.exist?(code_or_file)
      code_or_file = IO.binread(code_or_file)
    else code_or_file = code_or_file.b #if code_or_file.encoding != Encoding::ASCII_8BIT
    end
    result = __disas__(code_or_file, bits, base_eip)
    #result = result.collect{|inst| ret = inst.split(?\t); ret << '' while ret.size < 4; ret }
    #len1, len2, len3, len4 = result.transpose.collect{|col| col.max_by{|s|s.size}.size}
    #result.collect!{|col1, col2, col3, col4| col1.ljust(len1+2) + col2.ljust(len2+2) + col3.ljust(len3+2) + col4}
    #result.join("\r\n")
    #__disas__(code_or_file, bits, base_eip)
  end
  
  def self.__disas__(code, bits=32, base_eip=0)
    instructions = InstBuffer.new
    
    io = StringIO.new(code.b, 'rb:ASCII-8BIT')
    prefix = Prefix.new(bits == 32)
    until io.eof?
      op = io.peek(4)
      if process_prefix(op[0].ord, prefix)
        io.read(1)
        next
      end
      
      eip = io.pos - prefix.count + base_eip
      len, inst = 4.downto(1).find{|len| inst = I[op[0,len]]; break [len, inst] if inst }
      if !inst
        inst = read_db(io, prefix, eip)
      else
        io.read(len)
        begin
          inst = inst.new(io)
          inst.read(io, prefix)
          inst.ip = eip
        rescue InvalidModRM, ReadFail
          io.seek(eip - base_eip)
          inst = read_db(io, prefix, eip)
        end
      end
      #instructions << inst.to_s
      #instructions << inst.to_a
      instructions << inst
      prefix.clear
    end
    
    instructions
  end
  
  def self.process_prefix(op, prefix)
      case op
      when 0xf0
        prefix.lock = true
        true
      when 0xf2
        prefix.repne = true
        true
      when 0xf3
        prefix.rep = true
        true
      when 0x26
        prefix.segment = Segment::ES
        true
      when 0x2e
        prefix.segment = Segment::CS
        true
      when 0x36
        prefix.segment = Segment::SS
        true
      when 0x3e
        prefix.segment = Segment::DS
        true
      when 0x64
        prefix.segment = Segment::FS
        true
      when 0x65
        prefix.segment = Segment::GS
        true
      when 0x66
        prefix.data = true
        true
      when 0x67
        prefix.addr = true
        true
      else false
      end
  end
  
  def self.read_db(io, prefix, eip)
    inst = Instruction::DUMMY_INSTRUCTION.new
    inst.read(io, prefix)
    inst.ip = eip
    inst
  end
  
  private_class_method :__disas__, :process_prefix, :read_db
end

#puts Parser.disas("\xaa\xb0\xaa\xab")
#puts Parser.disas("\xf0\x37\x66\x06\x66\x91\x05\x10\x20\x30\x40\xa1\x00\x00\x00\x00\xa3\x00\x01\x00\x00\xe7\x01\xef\x6a\x01\xc8\xff\xff\xff\xff\xff\x2e\x00\x00\x67\x02\x00\x67\x00\x80\xab\xab\x62\x00\x66\x67\x6b\x00\xab\x8d\xc0\xc0\x01\xc4\x00\xc7\x00\xab\xab\xab\xab\xd3\x00\xff\xd0\x05\x00\x00\x00\x00\xf3\x90\x06")
#puts Parser.disas("\x00\x00")
#puts Parser.disas("#{__dir__}/test/a")
#puts Parser.disas("\x0F\x01\xC8\x0f\x01\x38")
#puts Parser.disas("\x0f\x10\x00\x0f\x10\xc0\x0f\x12\x00\x0f\x12\xc0\x0f\x16\x00\x0f\x16\xc1")
#puts Parser.disas("\xeb\x05\xea\x00\x20\x40\x00\x2b\x00\x66\xe9\x01\x00\x00\x00")
end
