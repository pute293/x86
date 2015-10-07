#! /usr/bin/env ruby

require 'csv'
require 'pp'

group = CSV.foreach('simd.csv' ,{headers: :first_row}).group_by do |h|
  h2 = h['hex2']
  h3 = h['hex3']
  h4 = h['hex4'] || ''
  "X#{h2}#{h3}#{h4}"
end

group.each do |key, hs|
  
  hs.group_by{|h|h['modrm']}.each do |rm, hs|
    s = ''
    s << key << ' '
    if rm
      rm = rm == '/r' ? ':r' : rm[1]
      s << "#{rm} "
    end
    s << "do\n"
    
    hs.group_by{|h|h['hex1']}.each do |h1, h|
      raise [key,h].to_s if h.size != 1
      h = h[0]
      m = h['mnemonic']
      if m.include?(?/)
        raise ?a
        # 0F 12 / 0F 16     op xmm1 xmm1/m64
        i = m.index(?/)
        mr = m[0...i]
        mm = m[i+1..-1]
        s << "  reg {\n"
        s << "    mnemonic :#{mr}\n"
        s << "    op :r, type: :xmm\n"
        s << "    op :rr, type: :xmm\n"
        s << "  }\n"
        s << "  mem {\n"
        s << "    mnemonic :#{mm}\n"
        s << "    op :r, type: :xmm\n"
        s << "    op :m, size:64\n"
        s << "  }\n"
      elsif h['asm operand2'] == 'r32/m16'
        raise ?b
        # 0F C4 / 66 0F C4  pinsrw (x)mm r32/m16 imm8
        s << "  mnemonic :#{m}\n"
        s << "  op :r, type: :#{h1 == '66' ? 'xmm' : 'mm'}\n"
        s << "  reg { op :rr, size:32 }\n"
        s << "  mem { op :m,  size:16 }\n"
      else
        s << case h1
        when "66"
          "  data16 {\n"
        when nil, ''
          "  data32 {\n"
        when "F2"
          "  repne {\n"
        when "F3"
          "  rep {\n"
        end
        s << "    mnemonic :#{m}\n"
        op1 = h['asm operand1']
        op2 = h['asm operand2']
        op3 = h['asm operand3']
        [op1, op2, op3].each do |op|
          case op
          when /^xmm$/
            s << "    op :r, type: :xmm\n"
          when /^xmm?\/m(\d+)$/
            s << "    op :rm, size:#{$1}, type: :xmm\n"
          when /^mm$/
            s << "    op :r, type: :mm\n"
          when /^mm\/m(\d+)$/
            s << "    op :rm, size:#{$1}, type: :mm\n"
          when /^r\/m\s*(\d+)$/
            s << "    op :rm, size:#{$1}\n"
          when /^r\s*(\d+)$/
            s << "    op :r, size:#{$1}\n"
          when /^m\s*(\d+)$/
            s << "    op :m, size:#{$1}\n"
          when /^imm\s*(\d+)$/
            s << "    op :imm, size:#{$1}\n"
          when /^st\((\d)\)$/
            s << "    op :ST#{$1}\n"
          when /^cr\d$/
            s << "    op :#{$&.upcase}\n"
          when /^dr\d$/
            s << "    op :#{$&.upcase}\n"
          when /^\d+$/
            s << "    op #{$&}\n"
          else
            s << "    op :#{op.upcase}\n" if op && !op.strip.empty?
          end
        end
        s << "  }\n"
      end
    end
    s << "end\n\n"
    puts s
  end
end

exit
__END__
  s << '  mnemonic :' << m if m
  s << "\n"
  
  if eval(h['66H ?'])
    s16 = "  data16 {\n"
    s32 = "  data32 {\n"
    s16 << "    mnemonic :#{m16}\n" if m16
    s32 << "    mnemonic :#{m32}\n" if m32
    [op1, op2, op3].each do |op|
      case op
      when /^r\/m\s*(\d+)(?:\/(\d+))?$/
        sz16 = $1
        sz32 = $2 || $1
        s16 << "    op :rm, size:#{sz16}\n"
        s32 << "    op :rm, size:#{sz32}\n"
      when /^r\s*(\d+)(?:\/(\d+))?$/
        sz16 = $1
        sz32 = $2 || $1
        s16 << "    op :r, size:#{sz16}\n"
        s32 << "    op :r, size:#{sz32}\n"
      when /^m\s*(\d+)(?:\/(\d+))?$/
        sz16 = $1
        sz32 = $2 || $1
        s16 << "    op :m, size:#{sz16}\n"
        s32 << "    op :m, size:#{sz32}\n"
      when /^imm\s*(\d+)(?:\/(\d+))?$/
        sz16 = $1
        sz32 = $2 || $1
        s16 << "    op :imm, size:#{sz16}\n"
        s32 << "    op :imm, size:#{sz32}\n"
      when /^moff(b|w)\s*(\d+)(?:\/(\d+))?$/
        sz16 = $2
        sz32 = $3 || $2
        s16 << "    op :moff#{$1}, size:#{sz16}\n"
        s32 << "    op :moff#{$1}, size:#{sz32}\n"
      when /^(\d+)(?:\/(\d+))?$/
        sz16 = $1
        sz32 = $2 || $1
        s16 << "    op #{sz16}\n"
        s32 << "    op #{sz32}\n"
      when /^([^\/]+)\/(.+)$/
        s16 << "    op :#{$1.upcase}\n"
        s32 << "    op :#{$2.upcase}\n"
      else
        next if !op || op.strip.empty?
        s16 << "    op :#{op.upcase}\n"
        s32 << "    op :#{op.upcase}\n"
      end
    end
    s16 << "  }\n"
    s32 << "  }\n"
    s << s16 << s32
  else
    [op1, op2, op3].each do |op|
      case op
      when /^r\/m\s*(\d+)$/
        s << "  op :rm, size:#{$1}\n"
      when /^r\s*(\d+)$/
        s << "  op :r, size:#{$1}\n"
      when /^m\s*(\d+)$/
        s << "  op :m, size:#{$1}\n"
      when /^imm\s*(\d+)$/
        s << "  op :imm, size:#{$1}\n"
      when /^moff(b|w)\s*(\d+)$/
        s << "  op :moff#{$1}, size:#{$2}\n"
      when /^st\((\d)\)$/
        s << "  op :ST#{$1}\n"
      when /^cr\d$/
        s << "  op :#{$&.upcase}\n"
      when /^dr\d$/
        s << "  op :#{$&.upcase}\n"
      when /^\d+$/
        s << "  op #{$&}"
      else
        s << "  op :#{op.upcase}\n" if op && !op.strip.empty?
      end
    end
  end
  s << "end\n\n"
  puts s
end

=begin
  
  X90 {
    mnemonic :nop
  }
  
  XB0 {
    mnemonic :mov
    op :AL
    op :imm, size: 8
  }
  
  X91 {
    mnemonic :xchg
    data16 {
      op :AX
      op :CX
    }
    data32 {
      op :EAX
      op :ECX
    }
  }
  
  X11 :r {
    mnemonic :adc
    data16 {
      op :rm, size: 16
      op :imm, size: 16
    }
    data32 {
      op :rm, size: 32
      op :imm, size: 32
    }
  }
  
  X80 0 {
    mnemonic :add
    op :rm, size:8
    op :imm, size:8
  }
  
  X80 1 {
    mnemonic :or
    op :rm, size:8
    op :imm, size:8
  }
  
  XD8 0 {
    mnemonic :fadd
    op :m, size:32
  }
  
  XD8C0 {
    mnemonic :fadd
    op :st0
    op :st0
  }
  
  X0F10 :r {
    data16 {
      mnemonic :movupd
      op :r, type: :xmm
      op :rm, size:128, type: :xmm
    }
    data32 {
      mnemonic :movups
      op :r, type: :xmm
      op :rm, size:128, type: :xmm
    }
    repne {
      mnemonic :movsd
      op :r, type: :xmm
      op :rm, size:64, type: :xmm
    }
    rep {
      mnemonic :movss
      op :r, type: :xmm
      op :rm, size:32, type: :xmm
    }
  }
  
=end

#puts .select{|h|h["#operands"]!=?0 && h["modrm"]}.collect{|h|m=h["mnemonic"].upcase;x=h["hex1"];o=eval(h["66H ?"].downcase) ? ?* : " ";i1=h["asm operand1"];i2=h["asm operand2"];i3=h["asm operand3"];"  #{m.ljust(22)}# #{x.upcase}    #{o}   #{i1.ljust(10)}#{i2.ljust(10) if i2}#{i3.ljust(10) if i3}"}' | clip
