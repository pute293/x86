module X86
  
  class InvalidModRM < StandardError; end
  
  class ModRM
    
    attr_reader :mod, :reg, :rm, :modrm
    attr_reader :regop, :rmop
    
    def initialize(io, prefix, read_reg)
      modregrm = io.read(1)
      raise InvalidModRM unless modregrm
      modregrm = modregrm.ord
      
      mod, reg, rm = modregrm >> 6, (modregrm >> 3) & 7, modregrm & 7
      @mod, @reg, @rm = mod, reg, rm
      modrm = (mod << 3) | rm
      
      reg = read_reg ? RegOp.get(reg) : nil
      
      rm = if mod == 3 then RegOp.get(rm)
      else
        segm = prefix.segment
        if prefix.addr32?
          # 32 bits addressing
          base = ModRMTrans32[modrm]
          if base == :disp32
            disp = io.read(4)
            raise InvalidModRM if (!disp || disp.bytesize != 4)
            MemOp.new(32, segm, disp32: disp.unpack(?V)[0])
          else
            if base == :sib
              sib = io.read(1)
              raise InvalidModRM unless sib
              sib = sib.ord
            end
            
            case mod
            when 0
              disp32 = if (sib & 7) == 5
                d = io.read(4)
                raise InvalidModRM if (!d || d.bytesize != 4)
                d.unpack('l<')[0]
              else nil
              end
              sib ? MemSIBOp.new(32, segm, mod, sib, disp32: disp32) : MemOp.new(32, segm, base)
            when 1
              disp8 = io.read(1)
              raise InvalidModRM unless disp8
              disp8 = disp8.unpack(?c)[0]
              sib ? MemSIBOp.new(32, segm, mod, sib, disp8: disp8) : MemOp.new(32, segm, base, disp8: disp8)
            when 2
              disp32 = io.read(4)
              raise InvalidModRM if (!disp32 || disp32.bytesize != 4)
              disp32 = disp32.unpack('l<')[0]
              sib ? MemSIBOp.new(32, segm, mod, sib, disp32: disp32) : MemOp.new(32, segm, base, disp32: disp32)
            end
          end
        else
          # 16 bits addressing
          base1, base2 = ModRMTrans16[modrm]
          if base1 == :disp16
            disp16 = io.read(2)
            raise InvalidModRM if (!disp16 || disp16.bytesize != 2)
            disp16 = disp16.unpack(?v)[0]
            MemOp.new(32, segm, disp16: disp16)
          else case mod
            when 0
              MemOp.new(32, segm, base1, base2)
            when 1
              disp8 = io.read(1)
              raise InvalidModRM unless !disp8
              disp8 = disp8.unpack(?c)[0]
              MemOp.new(32, segm, base1, base2, disp8: disp8)
            when 2
              disp16 = io.read(2)
              raise InvalidModRM if (!disp16 || disp16.bytesize != 2)
              disp16 = disp16.unpack('s<')[0]
              MemOp.new(32, segm, base1, base2, disp16: disp16)
          end end
      end end
      
      @regop = reg
      @rmop = rm
      @modrm = modregrm
    end
    
    ModRMTrans16 = [
      [RegOp::BX, RegOp::SI], [RegOp::BX, RegOp::DI], [RegOp::BP, RegOp::SI], [RegOp::BP, RegOp::DI], [RegOp::SI], [RegOp::DI], :disp16,     [RegOp::BX],
      [RegOp::BX, RegOp::SI], [RegOp::BX, RegOp::DI], [RegOp::BP, RegOp::SI], [RegOp::BP, RegOp::DI], [RegOp::SI], [RegOp::DI], [RegOp::BP], [RegOp::BX],
      [RegOp::BX, RegOp::SI], [RegOp::BX, RegOp::DI], [RegOp::BP, RegOp::SI], [RegOp::BP, RegOp::DI], [RegOp::SI], [RegOp::DI], [RegOp::BP], [RegOp::BX],
      [RegOp::AX],            [RegOp::CX],            [RegOp::DX],            [RegOp::BX],            [RegOp::SP], [RegOp::BP], [RegOp::SI], [RegOp::DI],
    ].freeze
    ModRMTrans32 = [
      RegOp::EAX, RegOp::ECX, RegOp::EDX,  RegOp::EBX, :sib,       :disp32,    RegOp::ESI, RegOp::EDI,
      RegOp::EAX, RegOp::ECX, RegOp::EDX,  RegOp::EBX, :sib,       RegOp::EBP, RegOp::ESI, RegOp::EDI,
      RegOp::EAX, RegOp::ECX, RegOp::EDX,  RegOp::EBX, :sib,       RegOp::EBP, RegOp::ESI, RegOp::EDI,
      RegOp::EAX, RegOp::ECX, RegOp::EDX,  RegOp::EBX, RegOp::ESP, RegOp::EBP, RegOp::ESI, RegOp::EDI,
    ].freeze
    
    
  end
end
