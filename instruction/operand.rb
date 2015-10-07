module X86
  
  class Reg
    
    def self.get(v)
      case v
      when Symbol then self.const_get(v)
      when 0..7   then [EAX, ECX, EDX, EBX, ESP, EBP, ESI, EDI][v]
      when Reg    then v
      when RegOp  then v.reg
      else raise "[Reg.get] must not happen (v = #{v})"
      end
    end
    
    attr_reader :size
    
    def initialize(name, size)
      @name = name
      @size = size
    end
    
    def name; @name.to_s end
    
    def to_s; @name.to_s end
    alias :inspect :to_s
    
    def resize(size)
      RESIZE_TABLE[@name][size] rescue self
    end
    
    def retype(type)
      ret = RETYPE_TABLE[@name][type]
      raise "[Reg.retype] must not happen (type=#{type})" unless ret
      ret
    end
    
    CS   = Reg.new(:cs, 16)
    DS   = Reg.new(:ds, 16)
    SS   = Reg.new(:ss, 16)
    ES   = Reg.new(:es, 16)
    FS   = Reg.new(:fs, 16)
    GS   = Reg.new(:gs, 16)
    
    RAX  = Reg.new(:rax, 64)
    EAX  = Reg.new(:eax, 32)
     AX  = Reg.new(:ax, 16)
     AL  = Reg.new(:al, 8)
     AH  = Reg.new(:ah, 8)
    
    RCX  = Reg.new(:rcx, 64)
    ECX  = Reg.new(:ecx, 32)
     CX  = Reg.new(:cx, 16)
     CL  = Reg.new(:cl, 8)
     CH  = Reg.new(:ch, 8)
    
    RDX  = Reg.new(:rdx, 64)
    EDX  = Reg.new(:edx, 32)
     DX  = Reg.new(:dx, 16)
     DL  = Reg.new(:dl, 8)
     DH  = Reg.new(:dh, 8)
    
    RBX  = Reg.new(:rbx, 64)
    EBX  = Reg.new(:ebx, 32)
     BX  = Reg.new(:bx, 16)
     BL  = Reg.new(:bl, 8)
     BH  = Reg.new(:bh, 8)
    
    RSP  = Reg.new(:rsp, 64)
    ESP  = Reg.new(:esp, 32)
     SP  = Reg.new(:sp, 16)
     SPL = Reg.new(:spl, 8)
    
    RBP  = Reg.new(:rbp, 64)
    EBP  = Reg.new(:ebp, 32)
     BP  = Reg.new(:bp, 16)
     BPL = Reg.new(:bpl, 8)
    
    RSI  = Reg.new(:rsi, 64)
    ESI  = Reg.new(:esi, 32)
     SI  = Reg.new(:si, 16)
     SIL = Reg.new(:sil, 8)
    
    RDI  = Reg.new(:rdi, 64)
    EDI  = Reg.new(:edi, 32)
     DI  = Reg.new(:di, 16)
     DIL = Reg.new(:dil, 8)
    
    R8   = Reg.new(:r8, 64)
    R8D  = Reg.new(:r8d, 32)
    R8W  = Reg.new(:r8w, 16)
    R8B  = Reg.new(:r8b, 8)
    
    R9   = Reg.new(:r9, 64)
    R9D  = Reg.new(:r9d, 32)
    R9W  = Reg.new(:r9w, 16)
    R9B  = Reg.new(:r9b, 8)
    
    R10  = Reg.new(:r10, 64)
    R10D = Reg.new(:r10d, 32)
    R10W = Reg.new(:r10w, 16)
    R10B = Reg.new(:r10b, 8)
    
    R11  = Reg.new(:r11, 64)
    R11D = Reg.new(:r11d, 32)
    R11W = Reg.new(:r11w, 16)
    R11B = Reg.new(:r11b, 8)
    
    R12  = Reg.new(:r12, 64)
    R12D = Reg.new(:r12d, 32)
    R12W = Reg.new(:r12w, 16)
    R12B = Reg.new(:r12b, 8)
    
    R13  = Reg.new(:r13, 64)
    R13D = Reg.new(:r13d, 32)
    R13W = Reg.new(:r13w, 16)
    R13B = Reg.new(:r13b, 8)
    
    R14  = Reg.new(:r14, 64)
    R14D = Reg.new(:r14d, 32)
    R14W = Reg.new(:r14w, 16)
    R14B = Reg.new(:r14b, 8)
    
    R15  = Reg.new(:r15, 64)
    R15D = Reg.new(:r15d, 32)
    R15W = Reg.new(:r15w, 16)
    R15B = Reg.new(:r15b, 8)
    
    RFLAGS = Reg.new(:RFLAGS, 64)
    EFLAGS = Reg.new(:EFLAGS, 32)
     FLAGS = Reg.new(:EFLAGS, 16)
    
    ST0 = Reg.new(:'st(0)', 80)
    ST1 = Reg.new(:'st(1)', 80)
    ST2 = Reg.new(:'st(2)', 80)
    ST3 = Reg.new(:'st(3)', 80)
    ST4 = Reg.new(:'st(4)', 80)
    ST5 = Reg.new(:'st(5)', 80)
    ST6 = Reg.new(:'st(6)', 80)
    ST7 = Reg.new(:'st(7)', 80)
    
    XMM0 = Reg.new(:xmm0, 128)
     MM0 = Reg.new(:mm0, 64)
    XMM1 = Reg.new(:xmm1, 128)
     MM1 = Reg.new(:mm1, 64)
    XMM2 = Reg.new(:xmm2, 128)
     MM2 = Reg.new(:mm2, 64)
    XMM3 = Reg.new(:xmm3, 128)
     MM3 = Reg.new(:mm3, 64)
    XMM4 = Reg.new(:xmm4, 128)
     MM4 = Reg.new(:mm4, 64)
    XMM5 = Reg.new(:xmm5, 128)
     MM5 = Reg.new(:mm5, 64)
    XMM6 = Reg.new(:xmm6, 128)
     MM6 = Reg.new(:mm6, 64)
    XMM7 = Reg.new(:xmm7, 128)
     MM7 = Reg.new(:mm7, 64)
    
    CR0 = Reg.new(:cr0, 32)
    CR1 = Reg.new(:cr1, 32)
    CR2 = Reg.new(:cr2, 32)
    CR3 = Reg.new(:cr3, 32)
    CR4 = Reg.new(:cr4, 32)
    CR5 = Reg.new(:cr5, 32)
    CR6 = Reg.new(:cr6, 32)
    CR7 = Reg.new(:cr7, 32)
    
    DR0 = Reg.new(:dr0, 32)
    DR1 = Reg.new(:dr1, 32)
    DR2 = Reg.new(:dr2, 32)
    DR3 = Reg.new(:dr3, 32)
    DR4 = Reg.new(:dr4, 32)
    DR5 = Reg.new(:dr5, 32)
    DR6 = Reg.new(:dr6, 32)
    DR7 = Reg.new(:dr7, 32)
    
    RETYPE_TABLE = {
      :eax => { :st => ST0, :segm => ES,  :mm => MM0, :xmm => XMM0, :cr => CR0, :dr => DR0 },
      :ecx => { :st => ST1, :segm => CS,  :mm => MM1, :xmm => XMM1, :cr => CR1, :dr => DR1 },
      :edx => { :st => ST2, :segm => SS,  :mm => MM2, :xmm => XMM2, :cr => CR2, :dr => DR2 },
      :ebx => { :st => ST3, :segm => DS,  :mm => MM3, :xmm => XMM3, :cr => CR3, :dr => DR3 },
      :esp => { :st => ST4, :segm => FS,  :mm => MM4, :xmm => XMM4, :cr => CR4, :dr => DR4 },
      :ebp => { :st => ST5, :segm => GS,  :mm => MM5, :xmm => XMM5, :cr => CR5, :dr => DR5 },
      :esi => { :st => ST6, :segm => nil, :mm => MM6, :xmm => XMM6, :cr => CR6, :dr => DR6 },
      :edi => { :st => ST7, :segm => nil, :mm => MM7, :xmm => XMM7, :cr => CR7, :dr => DR7 },
    }
    
    RESIZE_TABLE = {
      :al  => { 8 => AL, 16 => AX, 32 => EAX },
      :ax  => { 8 => AL, 16 => AX, 32 => EAX },
      :eax => { 8 => AL, 16 => AX, 32 => EAX },
      :cl  => { 8 => CL, 16 => CX, 32 => ECX },
      :cx  => { 8 => CL, 16 => CX, 32 => ECX },
      :ecx => { 8 => CL, 16 => CX, 32 => ECX },
      :dl  => { 8 => DL, 16 => DX, 32 => EDX },
      :dx  => { 8 => DL, 16 => DX, 32 => EDX },
      :edx => { 8 => DL, 16 => DX, 32 => EDX },
      :bx  => { 8 => BL, 16 => BX, 32 => EBX },
      :ebx => { 8 => BL, 16 => BX, 32 => EBX },
      :ah  => { 8 => AH, 16 => SP, 32 => ESP },
      :sp  => { 8 => AH, 16 => SP, 32 => ESP },
      :esp => { 8 => AH, 16 => SP, 32 => ESP },
      :ch  => { 8 => CH, 16 => BP, 32 => EBP },
      :bp  => { 8 => CH, 16 => BP, 32 => EBP },
      :ebp => { 8 => CH, 16 => BP, 32 => EBP },
      :dh  => { 8 => DH, 16 => SI, 32 => ESI },
      :si  => { 8 => DH, 16 => SI, 32 => ESI },
      :esi => { 8 => DH, 16 => SI, 32 => ESI },
      :bh  => { 8 => BH, 16 => DI, 32 => EDI },
      :di  => { 8 => BH, 16 => DI, 32 => EDI },
      :edi => { 8 => BH, 16 => DI, 32 => EDI },
    }
    
  end
  
  class Segment
    
    def self.to_segment(v)
      case v
      when Segment then v
      when nil then nil
      else self.const_get(v.to_s.upcase.intern)
      end
    end
    
    def self.i(v)
      SEGMENTS[v]
    end
    
    attr_reader :name
    
    def initialize(name)
      @name = name
    end
    
    def to_s; @name.to_s end
    alias :inspect :to_s
    
    CS = Segment.new(:cs)
    DS = Segment.new(:ds)
    SS = Segment.new(:ss)
    ES = Segment.new(:es)
    FS = Segment.new(:fs)
    GS = Segment.new(:gs)
    
    SEGMENTS = [ ES, CS, SS, DS, FS, GS ]
    
  end
  
  class Prefix
    
    attr_reader :lock, :repne, :rep
    attr_reader :segment
    attr_reader :data, :addr
    attr_reader :rex_w, :rex_r, :rex_x, :rex_b
    attr_reader :count, :code
    
    def empty?; @count == 0 end
    
    def to_s
      s = ''
      s << 'lock ' if @lock
      s << 'repne ' if @repne
      s << 'rep ' if @rep
      s.gsub(/\s+/, ' ').sub(/\s+$/, '')
    end
    
    # search last SIMD-related prefix
    def simd
      @simd.last
    end
    
    def lock=(v)
      @count += 1
      @code << 0xf0
      @repne = false
      @rep = false
      @lock = v
    end
    
    def repne=(v)
      @count += 1
      @code << 0xf2
      @simd << :repne
      @lock = false
      @rep = false
      @repne = v
    end
    
    def rep=(v)
      @count += 1
      @code << 0xf3
      @simd << :rep
      @lock = false
      @repne = false
      @rep = v
    end
    
    def segment=(v)
      @count += 1
      @code << case v
      when Segment::ES then 0x26
      when Segment::CS then 0x2e
      when Segment::SS then 0x36
      when Segment::DS then 0x3e
      when Segment::FS then 0x64
      when Segment::GS then 0x65
      end
      @segment = v
    end
    
    def data=(v)
      @count += 1
      @code << 0x66
      @simd << :data
      @data = v
    end
    
    def addr=(v)
      @count += 1
      @code << 0x67
      @addr = v
    end
    
    def initialize(bit32)
      @simd = []
      @code = []
      @bit32 = bit32
      clear
    end
    
    def data32?; @bit32 ^ @data end
    def addr32?; @bit32 ^ @addr end
    
    def clear
      @lock = @repne = @rep = false
      @segment = Segment::DS
      @data = @addr = false
      @rex_w = @rex_r = @rex_x = @rex_b = false
      @count = 0
      @simd.clear
      @code.clear
    end
    
  end
  
  class Operand
    
    attr_reader :size
    
    def initialize(type, size=0)
      @type = type
      @size = size
    end
    
    def resize(size)
      self
    end
    
    def retype(size)
      self
    end
    
  end
  
  class RegOp < Operand
    
    def self.get(v)
      case v
      when Symbol then self.const_get(v)
      when 0..7   then [EAX, ECX, EDX, EBX, ESP, EBP, ESI, EDI][v]
      when RegOp  then v
      when Reg    then self.const_get(v.name.to_s.upcase.intern)
      else raise "[RegOp.get] must not happen (v = #{v})"
      end
    end
    
    attr_reader :reg
    
    def initialize(reg)
      super(:reg)
      @reg = Reg.get(reg)
      @size = @reg.size
    end
    
    def to_s; @reg.to_s end
    alias :inspect :to_s
    
    def resize(size)
      RegOp.get(@reg.resize(size))
    end
    
    def retype(type)
      RegOp.get(@reg.retype(type))
    end
    
    CS   = RegOp.new(Reg::CS)
    DS   = RegOp.new(Reg::DS)
    SS   = RegOp.new(Reg::SS)
    ES   = RegOp.new(Reg::ES)
    FS   = RegOp.new(Reg::FS)
    GS   = RegOp.new(Reg::GS)
    
    RAX  = RegOp.new(Reg::RAX)
    EAX  = RegOp.new(Reg::EAX)
     AX  = RegOp.new(Reg::AX)
     AL  = RegOp.new(Reg::AL)
     AH  = RegOp.new(Reg::AH)
    
    RCX  = RegOp.new(Reg::RCX)
    ECX  = RegOp.new(Reg::ECX)
     CX  = RegOp.new(Reg::CX)
     CL  = RegOp.new(Reg::CL)
     CH  = RegOp.new(Reg::CH)
    
    RDX  = RegOp.new(Reg::RDX)
    EDX  = RegOp.new(Reg::EDX)
     DX  = RegOp.new(Reg::DX)
     DL  = RegOp.new(Reg::DL)
     DH  = RegOp.new(Reg::DH)
    
    RBX  = RegOp.new(Reg::RBX)
    EBX  = RegOp.new(Reg::EBX)
     BX  = RegOp.new(Reg::BX)
     BL  = RegOp.new(Reg::BL)
     BH  = RegOp.new(Reg::BH)
    
    RSP  = RegOp.new(Reg::RSP)
    ESP  = RegOp.new(Reg::ESP)
     SP  = RegOp.new(Reg::SP)
     SPL = RegOp.new(Reg::SPL)
    
    RBP  = RegOp.new(Reg::RBP)
    EBP  = RegOp.new(Reg::EBP)
     BP  = RegOp.new(Reg::BP)
     BPL = RegOp.new(Reg::BPL)
    
    RSI  = RegOp.new(Reg::RSI)
    ESI  = RegOp.new(Reg::ESI)
     SI  = RegOp.new(Reg::SI)
     SIL = RegOp.new(Reg::SIL)
    
    RDI  = RegOp.new(Reg::RDI)
    EDI  = RegOp.new(Reg::EDI)
     DI  = RegOp.new(Reg::DI)
     DIL = RegOp.new(Reg::DIL)
    
    R8   = RegOp.new(Reg::R8)
    R8D  = RegOp.new(Reg::R8D)
    R8W  = RegOp.new(Reg::R8W)
    R8B  = RegOp.new(Reg::R8B)
    
    R9   = RegOp.new(Reg::R9)
    R9D  = RegOp.new(Reg::R9D)
    R9W  = RegOp.new(Reg::R9W)
    R9B  = RegOp.new(Reg::R9B)
    
    R10  = RegOp.new(Reg::R10)
    R10D = RegOp.new(Reg::R10D)
    R10W = RegOp.new(Reg::R10W)
    R10B = RegOp.new(Reg::R10B)
    
    R11  = RegOp.new(Reg::R11)
    R11D = RegOp.new(Reg::R11D)
    R11W = RegOp.new(Reg::R11W)
    R11B = RegOp.new(Reg::R11B)
    
    R12  = RegOp.new(Reg::R12)
    R12D = RegOp.new(Reg::R12D)
    R12W = RegOp.new(Reg::R12W)
    R12B = RegOp.new(Reg::R12B)
    
    R13  = RegOp.new(Reg::R13)
    R13D = RegOp.new(Reg::R13D)
    R13W = RegOp.new(Reg::R13W)
    R13B = RegOp.new(Reg::R13B)
    
    R14  = RegOp.new(Reg::R14)
    R14D = RegOp.new(Reg::R14D)
    R14W = RegOp.new(Reg::R14W)
    R14B = RegOp.new(Reg::R14B)
    
    R15  = RegOp.new(Reg::R15)
    R15D = RegOp.new(Reg::R15D)
    R15W = RegOp.new(Reg::R15W)
    R15B = RegOp.new(Reg::R15B)
    
    RFLAGS = RegOp.new(Reg::RFLAGS)
    EFLAGS = RegOp.new(Reg::EFLAGS)
     FLAGS = RegOp.new(Reg::FLAGS)
    
    ST0 = RegOp.new(Reg::ST0)
    ST1 = RegOp.new(Reg::ST1)
    ST2 = RegOp.new(Reg::ST2)
    ST3 = RegOp.new(Reg::ST3)
    ST4 = RegOp.new(Reg::ST4)
    ST5 = RegOp.new(Reg::ST5)
    ST6 = RegOp.new(Reg::ST6)
    ST7 = RegOp.new(Reg::ST7)
    
    XMM0 = RegOp.new(Reg::XMM0)
     MM0 = RegOp.new(Reg::MM0)
    XMM1 = RegOp.new(Reg::XMM1)
     MM1 = RegOp.new(Reg::MM1)
    XMM2 = RegOp.new(Reg::XMM2)
     MM2 = RegOp.new(Reg::MM2)
    XMM3 = RegOp.new(Reg::XMM3)
     MM3 = RegOp.new(Reg::MM3)
    XMM4 = RegOp.new(Reg::XMM4)
     MM4 = RegOp.new(Reg::MM4)
    XMM5 = RegOp.new(Reg::XMM5)
     MM5 = RegOp.new(Reg::MM5)
    XMM6 = RegOp.new(Reg::XMM6)
     MM6 = RegOp.new(Reg::MM6)
    XMM7 = RegOp.new(Reg::XMM7)
     MM7 = RegOp.new(Reg::MM7)
    
    CR0 = RegOp.new(Reg::CR0)
    CR1 = RegOp.new(Reg::CR1)
    CR2 = RegOp.new(Reg::CR2)
    CR3 = RegOp.new(Reg::CR3)
    CR4 = RegOp.new(Reg::CR4)
    CR5 = RegOp.new(Reg::CR5)
    CR6 = RegOp.new(Reg::CR6)
    CR7 = RegOp.new(Reg::CR7)
    
    DR0 = RegOp.new(Reg::DR0)
    DR1 = RegOp.new(Reg::DR1)
    DR2 = RegOp.new(Reg::DR2)
    DR3 = RegOp.new(Reg::DR3)
    DR4 = RegOp.new(Reg::DR4)
    DR5 = RegOp.new(Reg::DR5)
    DR6 = RegOp.new(Reg::DR6)
    DR7 = RegOp.new(Reg::DR7)
    
  end
  
  class MemoryOperand < Operand
    
    attr_reader   :size
    attr_accessor :prefix, :segm, :bcd
    
    def initialize(addr, segm, base: nil, base2: nil, index: nil, scale: nil, disp8: nil, disp16: nil, disp32: nil)
      #raise "address size error; 8, 16, 32, 48, 64, 80, 112 or 224 expected, but #{addr} given" if [8, 16, 32, 48, 64, 80, 112, 224].none?{|v| addr == v}
      #raise "address size error; expected 16 bits, but #{@addr} bits given" if (base2 && addr != 16)
      super(:ptr)
      #p [addr, segm, base, base2, index, scale, disp8, disp16, disp32]
      @segm = segm || Segment::DS
      @base = Reg.get(base) if base
      @base2 = Reg.get(base2) if base2
      @index = Reg.get(index) if index
      @scale = scale
      @disp8 = disp8
      @disp16 = disp16
      @disp32 = disp32
      @bcd = false
      resize(addr)
    end
    
    def ea
      EaOp.new(@segm, base: @base, base2: @base2, index: @index, scale: @scale, disp8: @disp8, disp16: @disp16, disp32: @disp32)
    end
    
    def resize(v)
      #raise 'invalid size' if [8, 16, 32, 48, 64, 80, 112, 224].none?{|v| size == v}
      @size = v
      @prefix = case v
      when 8  then 'BYTE PTR'
      when 16 then 'WORD PTR'
      when 32 then 'DWORD PTR'
      when 48 then 'FWORD PTR'
      when 64 then 'QWORD PTR'
      #when 80 then @bcd ? 'TBYTE PTR ' : ''
      when 80 then 'TBYTE PTR'
      when 112, 224 then ''
      when 128 then 'XMMWORD PTR'
      else ''
      end
      self
    end
    
    def to_s
      s = @prefix.empty? ? '' : "#{@prefix} "
      s << "#{@segm.name}:["
      ss = []
      ss << @base.name if @base
      if @base2
        # Mod/RM 16 bits addressing
        ss << @base2.name
      elsif @index
        # SIB
        ss << "#{@index.name}*#{@scale}"
      end
      # disp
      ss << "#{@disp8 < 0 ? ?- : ''}0x#{@disp8.abs.to_s(16).rjust(2, ?0)}" if @disp8
      ss << "#{@disp16 < 0 ? ?- : ''}0x#{@disp16.abs.to_s(16).rjust(4, ?0)}" if @disp16
      ss << "#{@disp32 < 0 ? ?- : ''}0x#{@disp32.abs.to_s(16).rjust(8, ?0)}" if @disp32
      ss = ss.join(?+)
      s << ss.gsub('+-', ?-).sub(/^\+/, '') << ?]
    end
    alias :inspect :to_s
  end
  
  class MemOp < MemoryOperand
    
    def initialize(addr, segm, base=nil, base2=nil, disp8: nil, disp16: nil, disp32: nil)
      super(addr, segm, base: base, base2: base2, disp8: disp8, disp16: disp16, disp32: disp32)
    end
    
  end
  
  class MemSIBOp < MemoryOperand
    
    Regs = [ Reg::EAX, Reg::ECX, Reg::EDX, Reg::EBX, Reg::ESP, Reg::EBP, Reg::ESI, Reg::EDI ].freeze
    
    def initialize(addr, segm, mod, sib, disp8: nil, disp32: nil)
      base, index, scale = sib & 7, (sib >> 3) & 7, sib >> 6
      raise "invalid SIB #{'%02X' % sib}" if (mod == 3)
      base = (mod == 0 && base == 5) ? nil : Regs[base]
      index = index == 4 ? nil : Regs[index]
      scale = 1 << scale
      super(addr, segm, base: base, index: index, scale: scale, disp8: disp8, disp32: disp32)
    end
    
  end
  
  class EaOp < MemoryOperand
    
    def initialize(segm, base: nil, base2: nil, index: nil, scale: nil, disp8: nil, disp16: nil, disp32: nil)
      super(32, segm, base: base, base2: base2, index: index, scale: scale, disp8: disp8, disp16: disp16, disp32: disp32)
      @type = :ea
    end
    
    def ptr(size=:dw)
      addr = case size
      when :b  then 8
      when :w  then 16
      when :dw then 32
      when :qw then 64
      else raise 'must not happen'
      end
      MemoryOperand.new(addr, @segm, base: @base, base2: @base2, index: @index, scale: @scale, disp8: @disp8, disp16: @disp16, disp32: @disp32)
    end
    
    def to_s
      super.sub(/^[A-Za-z]+\s+[A-Za-z]+\s+[A-Za-z]{2}:/, '')
    end
    alias :inspect :to_s
  end
  
  class ImmOp < Operand
    
    def initialize(v, size)
      super(:imm)
      @imm = v
      @size = size
    end
    
    # 符号拡張
    def extend!(size)
      raise 'must not happen' if size < @size
      case size
      when 8 # do nothing
      when 16 then @imm |= 0xff00 if (@size == 8 && @imm[7] == 1)
      when 32
        @imm |= 0xffff_ff00 if (@size == 8 && @imm[7] == 1)
        @imm |= 0xffff_0000 if (@size == 16 && @imm[15] == 1)
      else raise 'invalid size'
      end
      @size = size
      self
    end
    
    def to_s; "0x#{@imm.to_s(16).rjust(@size / 4, ?0)}" end
    alias :inspect :to_s
    
    class Dummy < ImmOp
      def initialize(size); super(0, size) end
    end
    
  end
  
  class RelJmpOp < Operand
    
    attr_accessor :base
    
    def initialize(offset, offset_size=32)
      super(:jmp)
      @base = 1
      case offset_size
      when 8
        @offset = [offset].pack(?c).unpack(?c)[0]
      when 16
        @offset = [offset].pack(?s).unpack(?s)[0]
      when 32
        @offset = [offset].pack(?l).unpack(?l)[0]
      end
    end
    
    def to_s
      "0x#{'%08x' % (@base + @offset)}"
    end
    
  end
  
  class AbsJmpOp < Operand
    
    def initialize(segm, offset, offset_size)
      super(:jmp)
      @segm = segm
      @offset = offset
      @s = "#{'0x%04x' % segm}:" + (offset_size == 32 ? '0x%08x' : '0x%04x') % offset
    end
    
    def to_s
      @s
    end
    alias :inspect :to_s
    
  end
  
  class DbOp < ImmOp
    def initialize(v)
      super(v, 8)
    end
    
    def to_s; '%02X' % @imm end
    alias :inspect :to_s
  end
  
end
