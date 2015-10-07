X00 :r do
  mnemonic :add
  op :rm, size:8
  op :r, size:8
end

X01 :r do
  mnemonic :add
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X02 :r do
  mnemonic :add
  op :r, size:8
  op :rm, size:8
end

X03 :r do
  mnemonic :add
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X04 do
  mnemonic :add
  op :AL
  op :imm, size:8
end

X05 do
  mnemonic :add
  data16 {
    op :AX
    op :imm, size:16
  }
  data32 {
    op :EAX
    op :imm, size:32
  }
end

X06 do
  mnemonic :push
  data16 {
    op :ES
  }
  data32 {
    op :ES
  }
end

X07 do
  mnemonic :pop
  data16 {
    op :ES
  }
  data32 {
    op :ES
  }
end

X08 :r do
  mnemonic :or
  op :rm, size:8
  op :r, size:8
end

X09 :r do
  mnemonic :or
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X0A :r do
  mnemonic :or
  op :r, size:8
  op :rm, size:8
end

X0B :r do
  mnemonic :or
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0C do
  mnemonic :or
  op :AL
  op :imm, size:8
end

X0D do
  mnemonic :or
  data16 {
    op :AX
    op :imm, size:16
  }
  data32 {
    op :EAX
    op :imm, size:32
  }
end

X0E do
  mnemonic :push
  data16 {
    op :CS
  }
  data32 {
    op :CS
  }
end

X10 :r do
  mnemonic :adc
  op :rm, size:8
  op :r, size:8
end

X11 :r do
  mnemonic :adc
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X12 :r do
  mnemonic :adc
  op :r, size:8
  op :rm, size:8
end

X13 :r do
  mnemonic :adc
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X14 do
  mnemonic :adc
  op :AL
  op :imm, size:8
end

X15 do
  mnemonic :adc
  data16 {
    op :AX
    op :imm, size:16
  }
  data32 {
    op :EAX
    op :imm, size:32
  }
end

X16 do
  mnemonic :push
  data16 {
    op :SS
  }
  data32 {
    op :SS
  }
end

X17 do
  mnemonic :pop
  data16 {
    op :SS
  }
  data32 {
    op :SS
  }
end

X18 :r do
  mnemonic :sbb
  op :rm, size:8
  op :r, size:8
end

X19 :r do
  mnemonic :sbb
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X1A :r do
  mnemonic :sbb
  op :r, size:8
  op :rm, size:8
end

X1B :r do
  mnemonic :sbb
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X1C do
  mnemonic :sbb
  op :AL
  op :imm, size:8
end

X1D do
  mnemonic :sbb
  data16 {
    op :AX
    op :imm, size:16
  }
  data32 {
    op :EAX
    op :imm, size:32
  }
end

X1E do
  mnemonic :push
  data16 {
    op :DS
  }
  data32 {
    op :DS
  }
end

X1F do
  mnemonic :pop
  data16 {
    op :DS
  }
  data32 {
    op :DS
  }
end

X20 :r do
  mnemonic :and
  op :rm, size:8
  op :r, size:8
end

X21 :r do
  mnemonic :and
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X22 :r do
  mnemonic :and
  op :r, size:8
  op :rm, size:8
end

X23 :r do
  mnemonic :and
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X24 do
  mnemonic :and
  op :AL
  op :imm, size:8
end

X25 do
  mnemonic :and
  data16 {
    op :AX
    op :imm, size:16
  }
  data32 {
    op :EAX
    op :imm, size:32
  }
end

X27 do
  mnemonic :daa
end

X28 :r do
  mnemonic :sub
  op :rm, size:8
  op :r, size:8
end

X29 :r do
  mnemonic :sub
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X2A :r do
  mnemonic :sub
  op :r, size:8
  op :rm, size:8
end

X2B :r do
  mnemonic :sub
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X2C do
  mnemonic :sub
  op :AL
  op :imm, size:8
end

X2D do
  mnemonic :sub
  data16 {
    op :AX
    op :imm, size:16
  }
  data32 {
    op :EAX
    op :imm, size:32
  }
end

X2F do
  mnemonic :das
end

X30 :r do
  mnemonic :xor
  op :rm, size:8
  op :r, size:8
end

X31 :r do
  mnemonic :xor
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X32 :r do
  mnemonic :xor
  op :r, size:8
  op :rm, size:8
end

X33 :r do
  mnemonic :xor
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X34 do
  mnemonic :xor
  op :AL
  op :imm, size:8
end

X35 do
  mnemonic :xor
  data16 {
    op :AX
    op :imm, size:16
  }
  data32 {
    op :EAX
    op :imm, size:32
  }
end

X37 do
  mnemonic :aaa
end

X38 :r do
  mnemonic :cmp
  op :rm, size:8
  op :r, size:8
end

X39 :r do
  mnemonic :cmp
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X3A :r do
  mnemonic :cmp
  op :r, size:8
  op :rm, size:8
end

X3B :r do
  mnemonic :cmp
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X3C do
  mnemonic :cmp
  op :AL
  op :imm, size:8
end

X3D do
  mnemonic :cmp
  data16 {
    op :AX
    op :imm, size:16
  }
  data32 {
    op :EAX
    op :imm, size:32
  }
end

X3F do
  mnemonic :aas
end

X40 do
  mnemonic :inc
  data16 {
    op :AX
  }
  data32 {
    op :EAX
  }
end

X41 do
  mnemonic :inc
  data16 {
    op :CX
  }
  data32 {
    op :ECX
  }
end

X42 do
  mnemonic :inc
  data16 {
    op :DX
  }
  data32 {
    op :EDX
  }
end

X43 do
  mnemonic :inc
  data16 {
    op :BX
  }
  data32 {
    op :EBX
  }
end

X44 do
  mnemonic :inc
  data16 {
    op :SP
  }
  data32 {
    op :ESP
  }
end

X45 do
  mnemonic :inc
  data16 {
    op :BP
  }
  data32 {
    op :EBP
  }
end

X46 do
  mnemonic :inc
  data16 {
    op :SI
  }
  data32 {
    op :ESI
  }
end

X47 do
  mnemonic :inc
  data16 {
    op :DI
  }
  data32 {
    op :EDI
  }
end

X48 do
  mnemonic :dec
  data16 {
    op :AX
  }
  data32 {
    op :EAX
  }
end

X49 do
  mnemonic :dec
  data16 {
    op :CX
  }
  data32 {
    op :ECX
  }
end

X4A do
  mnemonic :dec
  data16 {
    op :DX
  }
  data32 {
    op :EDX
  }
end

X4B do
  mnemonic :dec
  data16 {
    op :BX
  }
  data32 {
    op :EBX
  }
end

X4C do
  mnemonic :dec
  data16 {
    op :SP
  }
  data32 {
    op :ESP
  }
end

X4D do
  mnemonic :dec
  data16 {
    op :BP
  }
  data32 {
    op :EBP
  }
end

X4E do
  mnemonic :dec
  data16 {
    op :SI
  }
  data32 {
    op :ESI
  }
end

X4F do
  mnemonic :dec
  data16 {
    op :DI
  }
  data32 {
    op :EDI
  }
end

X50 do
  mnemonic :push
  data16 {
    op :AX
  }
  data32 {
    op :EAX
  }
end

X51 do
  mnemonic :push
  data16 {
    op :CX
  }
  data32 {
    op :ECX
  }
end

X52 do
  mnemonic :push
  data16 {
    op :DX
  }
  data32 {
    op :EDX
  }
end

X53 do
  mnemonic :push
  data16 {
    op :BX
  }
  data32 {
    op :EBX
  }
end

X54 do
  mnemonic :push
  data16 {
    op :SP
  }
  data32 {
    op :ESP
  }
end

X55 do
  mnemonic :push
  data16 {
    op :BP
  }
  data32 {
    op :EBP
  }
end

X56 do
  mnemonic :push
  data16 {
    op :SI
  }
  data32 {
    op :ESI
  }
end

X57 do
  mnemonic :push
  data16 {
    op :DI
  }
  data32 {
    op :EDI
  }
end

X58 do
  mnemonic :pop
  data16 {
    op :AX
  }
  data32 {
    op :EAX
  }
end

X59 do
  mnemonic :pop
  data16 {
    op :CX
  }
  data32 {
    op :ECX
  }
end

X5A do
  mnemonic :pop
  data16 {
    op :DX
  }
  data32 {
    op :EDX
  }
end

X5B do
  mnemonic :pop
  data16 {
    op :BX
  }
  data32 {
    op :EBX
  }
end

X5C do
  mnemonic :pop
  data16 {
    op :SP
  }
  data32 {
    op :ESP
  }
end

X5D do
  mnemonic :pop
  data16 {
    op :BP
  }
  data32 {
    op :EBP
  }
end

X5E do
  mnemonic :pop
  data16 {
    op :SI
  }
  data32 {
    op :ESI
  }
end

X5F do
  mnemonic :pop
  data16 {
    op :DI
  }
  data32 {
    op :EDI
  }
end

X60 do

  data16 {
    mnemonic :pushaw
  }
  data32 {
    mnemonic :pushad
  }
end

X61 do

  data16 {
    mnemonic :popaw
  }
  data32 {
    mnemonic :popad
  }
end

X62 :r do
  mnemonic :bound
  data16 {
    op :r, size:16
    op :m, size:32
  }
  data32 {
    op :r, size:32
    op :m, size:64
  }
end

X63 :r do
  mnemonic :arpl
  op :rm, size:16
  op :r, size:16
end

X68 do
  mnemonic :push
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X69 :r do
  mnemonic :imul
  data16 {
    op :r, size:16
    op :rm, size:16
    op :imm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
    op :imm, size:32
  }
end

X6A do
  mnemonic :push
  op :imm, size:8
end

X6B :r do
  mnemonic :imul
  data16 {
    op :r, size:16
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :r, size:32
    op :rm, size:32
    op :imm, size:8
  }
end

X6C do
  mnemonic :insb
end

X6D do

  data16 {
    mnemonic :insw
  }
  data32 {
    mnemonic :insd
  }
end

X6E do
  mnemonic :outsb
end

X6F do

  data16 {
    mnemonic :outsw
  }
  data32 {
    mnemonic :outsd
  }
end

X70 do
  mnemonic :jo
  op :rel, size:8
end

X71 do
  mnemonic :jno
  op :rel, size:8
end

X72 do
  mnemonic :jc
  op :rel, size:8
end

X73 do
  mnemonic :jnc
  op :rel, size:8
end

X74 do
  mnemonic :jz
  op :rel, size:8
end

X75 do
  mnemonic :jnz
  op :rel, size:8
end

X76 do
  mnemonic :jna
  op :rel, size:8
end

X77 do
  mnemonic :ja
  op :rel, size:8
end

X78 do
  mnemonic :js
  op :rel, size:8
end

X79 do
  mnemonic :jns
  op :rel, size:8
end

X7A do
  mnemonic :jp
  op :rel, size:8
end

X7B do
  mnemonic :jnp
  op :rel, size:8
end

X7C do
  mnemonic :jl
  op :rel, size:8
end

X7D do
  mnemonic :jnl
  op :rel, size:8
end

X7E do
  mnemonic :jng
  op :rel, size:8
end

X7F do
  mnemonic :jg
  op :rel, size:8
end

X80 0 do
  mnemonic :add
  op :rm, size:8
  op :imm, size:8
end

X80 1 do
  mnemonic :or
  op :rm, size:8
  op :imm, size:8
end

X80 2 do
  mnemonic :adc
  op :rm, size:8
  op :imm, size:8
end

X80 3 do
  mnemonic :sbb
  op :rm, size:8
  op :imm, size:8
end

X80 4 do
  mnemonic :and
  op :rm, size:8
  op :imm, size:8
end

X80 5 do
  mnemonic :sub
  op :rm, size:8
  op :imm, size:8
end

X80 6 do
  mnemonic :xor
  op :rm, size:8
  op :imm, size:8
end

X80 7 do
  mnemonic :cmp
  op :rm, size:8
  op :imm, size:8
end

X81 0 do
  mnemonic :add
  data16 {
    op :rm, size:16
    op :imm, size:16
  }
  data32 {
    op :rm, size:32
    op :imm, size:32
  }
end

X81 1 do
  mnemonic :or
  data16 {
    op :rm, size:16
    op :imm, size:16
  }
  data32 {
    op :rm, size:32
    op :imm, size:32
  }
end

X81 2 do
  mnemonic :adc
  data16 {
    op :rm, size:16
    op :imm, size:16
  }
  data32 {
    op :rm, size:32
    op :imm, size:32
  }
end

X81 3 do
  mnemonic :sbb
  data16 {
    op :rm, size:16
    op :imm, size:16
  }
  data32 {
    op :rm, size:32
    op :imm, size:32
  }
end

X81 4 do
  mnemonic :and
  data16 {
    op :rm, size:16
    op :imm, size:16
  }
  data32 {
    op :rm, size:32
    op :imm, size:32
  }
end

X81 5 do
  mnemonic :sub
  data16 {
    op :rm, size:16
    op :imm, size:16
  }
  data32 {
    op :rm, size:32
    op :imm, size:32
  }
end

X81 6 do
  mnemonic :xor
  data16 {
    op :rm, size:16
    op :imm, size:16
  }
  data32 {
    op :rm, size:32
    op :imm, size:32
  }
end

X81 7 do
  mnemonic :cmp
  data16 {
    op :rm, size:16
    op :imm, size:16
  }
  data32 {
    op :rm, size:32
    op :imm, size:32
  }
end

X82 0 do
  mnemonic :add
  op :rm, size:8
  op :imm, size:8
end

X82 1 do
  mnemonic :or
  op :rm, size:8
  op :imm, size:8
end

X82 2 do
  mnemonic :adc
  op :rm, size:8
  op :imm, size:8
end

X82 3 do
  mnemonic :sbb
  op :rm, size:8
  op :imm, size:8
end

X82 4 do
  mnemonic :and
  op :rm, size:8
  op :imm, size:8
end

X82 5 do
  mnemonic :sub
  op :rm, size:8
  op :imm, size:8
end

X82 6 do
  mnemonic :xor
  op :rm, size:8
  op :imm, size:8
end

X82 7 do
  mnemonic :cmp
  op :rm, size:8
  op :imm, size:8
end

X83 0 do
  mnemonic :add
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

X83 1 do
  mnemonic :or
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

X83 2 do
  mnemonic :adc
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

X83 3 do
  mnemonic :sbb
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

X83 4 do
  mnemonic :and
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

X83 5 do
  mnemonic :sub
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

X83 6 do
  mnemonic :xor
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

X83 7 do
  mnemonic :cmp
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

X84 :r do
  mnemonic :test
  op :rm, size:8
  op :r, size:8
end

X85 :r do
  mnemonic :test
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X86 :r do
  mnemonic :xchg
  op :rm, size:8
  op :r, size:8
end

X87 :r do
  mnemonic :xchg
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X88 :r do
  mnemonic :mov
  op :rm, size:8
  op :r, size:8
end

X89 :r do
  mnemonic :mov
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X8A :r do
  mnemonic :mov
  op :r, size:8
  op :rm, size:8
end

X8B :r do
  mnemonic :mov
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X8C :r do
  mnemonic :mov
  op :rm, size:16
  op :r, size:16
end

X8D :r do
  mnemonic :lea
  data16 {
    op :r, size:16
    op :m, size:16
  }
  data32 {
    op :r, size:32
    op :m, size:32
  }
end

X8E :r do
  mnemonic :mov
  op :r, size:16
  op :rm, size:16
end

X8F 0 do
  mnemonic :pop
  data16 {
    op :m, size:16
  }
  data32 {
    op :m, size:32
  }
end

X90 do
  mnemonic :nop
  rep {
    mnemonic :pause
  }
end

X91 do
  mnemonic :xchg
  data16 {
    op :AX
    op :CX
  }
  data32 {
    op :EAX
    op :ECX
  }
end

X92 do
  mnemonic :xchg
  data16 {
    op :AX
    op :DX
  }
  data32 {
    op :EAX
    op :EDX
  }
end

X93 do
  mnemonic :xchg
  data16 {
    op :AX
    op :BX
  }
  data32 {
    op :EAX
    op :EBX
  }
end

X94 do
  mnemonic :xchg
  data16 {
    op :AX
    op :SP
  }
  data32 {
    op :EAX
    op :ESP
  }
end

X95 do
  mnemonic :xchg
  data16 {
    op :AX
    op :BP
  }
  data32 {
    op :EAX
    op :EBP
  }
end

X96 do
  mnemonic :xchg
  data16 {
    op :AX
    op :SI
  }
  data32 {
    op :EAX
    op :ESI
  }
end

X97 do
  mnemonic :xchg
  data16 {
    op :AX
    op :DI
  }
  data32 {
    op :EAX
    op :EDI
  }
end

X98 do

  data16 {
    mnemonic :cbw
  }
  data32 {
    mnemonic :cwde
  }
end

X99 do

  data16 {
    mnemonic :cwd
  }
  data32 {
    mnemonic :cdq
  }
end

X9A do
  mnemonic :call
  data16 {
    op :far, size:32
  }
  data32 {
    op :far, size:48
  }
end

X9B do
  mnemonic :wait
end

X9C do

  data16 {
    mnemonic :pushfw
  }
  data32 {
    mnemonic :pushfd
  }
end

X9D do

  data16 {
    mnemonic :popfw
  }
  data32 {
    mnemonic :popfd
  }
end

X9E do
  mnemonic :sahf
end

X9F do
  mnemonic :lahf
end

XA0 do
  mnemonic :mov
  data16 {
    op :AL
    op :moffb, size:16
  }
  data32 {
    op :AL
    op :moffb, size:32
  }
end

XA1 do
  mnemonic :mov
  data16 {
    op :AX
    op :moffw, size:16
  }
  data32 {
    op :EAX
    op :moffw, size:32
  }
end

XA2 do
  mnemonic :mov
  data16 {
    op :moffb, size:16
    op :AL
  }
  data32 {
    op :moffb, size:32
    op :AL
  }
end

XA3 do
  mnemonic :mov
  data16 {
    op :moffw, size:16
    op :AX
  }
  data32 {
    op :moffw, size:32
    op :EAX
  }
end

XA4 do
  mnemonic :movsb
end

XA5 do

  data16 {
    mnemonic :movsw
  }
  data32 {
    mnemonic :movsd
  }
end

XA6 do
  mnemonic :cmpsb
end

XA7 do
  data16 {
    mnemonic :cmpsw
  }
  data32 {
    mnemonic :cmpsd
  }
end

XA8 do
  mnemonic :test
  op :AL
  op :imm, size:8
end

XA9 do
  mnemonic :test
  data16 {
    op :AX
    op :imm, size:16
  }
  data32 {
    op :EAX
    op :imm, size:32
  }
end

XAA do
  mnemonic :stosb
end

XAB do

  data16 {
    mnemonic :stosw
  }
  data32 {
    mnemonic :stosd
  }
end

XAC do
  mnemonic :lodsb
end

XAD do

  data16 {
    mnemonic :lodsw
  }
  data32 {
    mnemonic :lodsd
  }
end

XAE do
  mnemonic :scasb
end

XAF do

  data16 {
    mnemonic :scasw
  }
  data32 {
    mnemonic :scasd
  }
end

XB0 do
  mnemonic :mov
  op :AL
  op :imm, size:8
end

XB1 do
  mnemonic :mov
  op :CL
  op :imm, size:8
end

XB2 do
  mnemonic :mov
  op :DL
  op :imm, size:8
end

XB3 do
  mnemonic :mov
  op :BL
  op :imm, size:8
end

XB4 do
  mnemonic :mov
  op :AH
  op :imm, size:8
end

XB5 do
  mnemonic :mov
  op :CH
  op :imm, size:8
end

XB6 do
  mnemonic :mov
  op :DH
  op :imm, size:8
end

XB7 do
  mnemonic :mov
  op :BH
  op :imm, size:8
end

XB8 do
  mnemonic :mov
  data16 {
    op :AX
    op :imm, size:16
  }
  data32 {
    op :EAX
    op :imm, size:32
  }
end

XB9 do
  mnemonic :mov
  data16 {
    op :CX
    op :imm, size:16
  }
  data32 {
    op :ECX
    op :imm, size:32
  }
end

XBA do
  mnemonic :mov
  data16 {
    op :DX
    op :imm, size:16
  }
  data32 {
    op :EDX
    op :imm, size:32
  }
end

XBB do
  mnemonic :mov
  data16 {
    op :BX
    op :imm, size:16
  }
  data32 {
    op :EBX
    op :imm, size:32
  }
end

XBC do
  mnemonic :mov
  data16 {
    op :SP
    op :imm, size:16
  }
  data32 {
    op :ESP
    op :imm, size:32
  }
end

XBD do
  mnemonic :mov
  data16 {
    op :BP
    op :imm, size:16
  }
  data32 {
    op :EBP
    op :imm, size:32
  }
end

XBE do
  mnemonic :mov
  data16 {
    op :SI
    op :imm, size:16
  }
  data32 {
    op :ESI
    op :imm, size:32
  }
end

XBF do
  mnemonic :mov
  data16 {
    op :DI
    op :imm, size:16
  }
  data32 {
    op :EDI
    op :imm, size:32
  }
end

XC0 0 do
  mnemonic :rol
  op :rm, size:8
  op :imm, size:8
end

XC0 1 do
  mnemonic :ror
  op :rm, size:8
  op :imm, size:8
end

XC0 2 do
  mnemonic :rcl
  op :rm, size:8
  op :imm, size:8
end

XC0 3 do
  mnemonic :rcr
  op :rm, size:8
  op :imm, size:8
end

XC0 4 do
  mnemonic :shl
  op :rm, size:8
  op :imm, size:8
end

XC0 5 do
  mnemonic :shr
  op :rm, size:8
  op :imm, size:8
end

XC0 6 do
  mnemonic :shl
  op :rm, size:8
  op :imm, size:8
end

XC0 7 do
  mnemonic :sar
  op :rm, size:8
  op :imm, size:8
end

XC1 0 do
  mnemonic :rol
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

XC1 1 do
  mnemonic :ror
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

XC1 2 do
  mnemonic :rcl
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

XC1 3 do
  mnemonic :rcr
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

XC1 4 do
  mnemonic :shl
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

XC1 5 do
  mnemonic :shr
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

XC1 6 do
  mnemonic :shl
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

XC1 7 do
  mnemonic :sar
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

XC2 do
  mnemonic :ret
  op :imm, size:16
end

XC3 do
  mnemonic :ret
end

XC4 :r do
  mnemonic :les
  data16 {
    op :r, size:16
    op :m, size:32
  }
  data32 {
    op :r, size:32
    op :m, size:48
  }
end

XC5 :r do
  mnemonic :lds
  data16 {
    op :r, size:16
    op :m, size:32
  }
  data32 {
    op :r, size:32
    op :m, size:48
  }
end

XC6 0 do
  mnemonic :mov
  op :rm, size:8
  op :imm, size:8
end

XC7 0 do
  mnemonic :mov
  data16 {
    op :rm, size:16
    op :imm, size:16
  }
  data32 {
    op :rm, size:32
    op :imm, size:32
  }
end

XC8 do
  mnemonic :enter
  op :imm, size:16
  op :imm, size:8
end

XC9 do
  mnemonic :leave
end

XCA do
  mnemonic :ret
  op :imm, size:16
end

XCB do
  mnemonic :ret
end

XCC do
  mnemonic :int3
end

XCD do
  mnemonic :int
  op :imm, size:8
end

XCE do
  mnemonic :into
end

XCF do

  data16 {
    mnemonic :iretw
  }
  data32 {
    mnemonic :iretd
  }
end

XD0 0 do
  mnemonic :rol
  op :rm, size:8
  op 1
end

XD0 1 do
  mnemonic :ror
  op :rm, size:8
  op 1
end

XD0 2 do
  mnemonic :rcl
  op :rm, size:8
  op 1
end

XD0 3 do
  mnemonic :rcr
  op :rm, size:8
  op 1
end

XD0 4 do
  mnemonic :shl
  op :rm, size:8
  op 1
end

XD0 5 do
  mnemonic :shr
  op :rm, size:8
  op 1
end

XD0 6 do
  mnemonic :shl
  op :rm, size:8
  op 1
end

XD0 7 do
  mnemonic :sar
  op :rm, size:8
  op 1
end

XD1 0 do
  mnemonic :rol
  data16 {
    op :rm, size:16
    op 1
  }
  data32 {
    op :rm, size:32
    op 1
  }
end

XD1 1 do
  mnemonic :ror
  data16 {
    op :rm, size:16
    op 1
  }
  data32 {
    op :rm, size:32
    op 1
  }
end

XD1 2 do
  mnemonic :rcl
  data16 {
    op :rm, size:16
    op 1
  }
  data32 {
    op :rm, size:32
    op 1
  }
end

XD1 3 do
  mnemonic :rcr
  data16 {
    op :rm, size:16
    op 1
  }
  data32 {
    op :rm, size:32
    op 1
  }
end

XD1 4 do
  mnemonic :shl
  data16 {
    op :rm, size:16
    op 1
  }
  data32 {
    op :rm, size:32
    op 1
  }
end

XD1 5 do
  mnemonic :shr
  data16 {
    op :rm, size:16
    op 1
  }
  data32 {
    op :rm, size:32
    op 1
  }
end

XD1 6 do
  mnemonic :shl
  data16 {
    op :rm, size:16
    op 1
  }
  data32 {
    op :rm, size:32
    op 1
  }
end

XD1 7 do
  mnemonic :sar
  data16 {
    op :rm, size:16
    op 1
  }
  data32 {
    op :rm, size:32
    op 1
  }
end

XD2 0 do
  mnemonic :rol
  op :rm, size:8
  op :CL
end

XD2 1 do
  mnemonic :ror
  op :rm, size:8
  op :CL
end

XD2 2 do
  mnemonic :rcl
  op :rm, size:8
  op :CL
end

XD2 3 do
  mnemonic :rcr
  op :rm, size:8
  op :CL
end

XD2 4 do
  mnemonic :shl
  op :rm, size:8
  op :CL
end

XD2 5 do
  mnemonic :shr
  op :rm, size:8
  op :CL
end

XD2 6 do
  mnemonic :shl
  op :rm, size:8
  op :CL
end

XD2 7 do
  mnemonic :sar
  op :rm, size:8
  op :CL
end

XD3 0 do
  mnemonic :rol
  data16 {
    op :rm, size:16
    op :CL
  }
  data32 {
    op :rm, size:32
    op :CL
  }
end

XD3 1 do
  mnemonic :ror
  data16 {
    op :rm, size:16
    op :CL
  }
  data32 {
    op :rm, size:32
    op :CL
  }
end

XD3 2 do
  mnemonic :rcl
  data16 {
    op :rm, size:16
    op :CL
  }
  data32 {
    op :rm, size:32
    op :CL
  }
end

XD3 3 do
  mnemonic :rcr
  data16 {
    op :rm, size:16
    op :CL
  }
  data32 {
    op :rm, size:32
    op :CL
  }
end

XD3 4 do
  mnemonic :shl
  data16 {
    op :rm, size:16
    op :CL
  }
  data32 {
    op :rm, size:32
    op :CL
  }
end

XD3 5 do
  mnemonic :shr
  data16 {
    op :rm, size:16
    op :CL
  }
  data32 {
    op :rm, size:32
    op :CL
  }
end

XD3 6 do
  mnemonic :shl
  data16 {
    op :rm, size:16
    op :CL
  }
  data32 {
    op :rm, size:32
    op :CL
  }
end

XD3 7 do
  mnemonic :sar
  data16 {
    op :rm, size:16
    op :CL
  }
  data32 {
    op :rm, size:32
    op :CL
  }
end

XD4 do
  mnemonic :aam
end

XD5 do
  mnemonic :aad
end

XD6 do
  mnemonic :setalc
end

XD7 do
  mnemonic :xlatb
end

XE0 do
  mnemonic :loopnz
  op :imm, size:8
end

XE1 do
  mnemonic :loopz
  op :imm, size:8
end

XE2 do
  mnemonic :loop
  op :imm, size:8
end

XE3 do
  mnemonic :jcxz
  op :rel, size:8
end

XE4 do
  mnemonic :in
  op :AL
  op :imm, size:8
end

XE5 do
  mnemonic :in
  data16 {
    op :AX
    op :imm, size:8
  }
  data32 {
    op :EAX
    op :imm, size:8
  }
end

XE6 do
  mnemonic :out
  op :imm, size:8
  op :AL
end

XE7 do
  mnemonic :out
  data16 {
    op :imm, size:8
    op :AX
  }
  data32 {
    op :imm, size:8
    op :EAX
  }
end

XE8 do
  mnemonic :call
  data16 {
    op :rel, size:16
  }
  data32 {
    op :rel, size:32
  }
end

XE9 do
  mnemonic :jmp
  data16 {
    op :rel, size:16
  }
  data32 {
    op :rel, size:32
  }
end

XEA do
  mnemonic :jmp
  data16 {
    op :far, size:32
  }
  data32 {
    op :far, size:48
  }
end

XEB do
  mnemonic :jmp
  op :rel, size:8
end

XEC do
  mnemonic :in
  op :AL
  op :DX
end

XED do
  mnemonic :in
  data16 {
    op :AX
    op :DX
  }
  data32 {
    op :EAX
    op :DX
  }
end

XEE do
  mnemonic :out
  op :DX
  op :AL
end

XEF do
  mnemonic :out
  data16 {
    op :DX
    op :AX
  }
  data32 {
    op :DX
    op :EAX
  }
end

XF1 do
  mnemonic :icebp
  data16 {
  }
  data32 {
  }
end

XF4 do
  mnemonic :hlt
end

XF5 do
  mnemonic :cmc
end

XF6 0 do
  mnemonic :test
  op :rm, size:8
  op :imm, size:8
end

XF6 1 do
  mnemonic :test
  op :rm, size:8
  op :imm, size:8
end

XF6 2 do
  mnemonic :not
  op :rm, size:8
end

XF6 3 do
  mnemonic :neg
  op :rm, size:8
end

XF6 4 do
  mnemonic :mul
  op :rm, size:8
end

XF6 5 do
  mnemonic :imul
  op :rm, size:8
end

XF6 6 do
  mnemonic :div
  op :rm, size:8
end

XF6 7 do
  mnemonic :idiv
  op :rm, size:8
end

XF7 0 do
  mnemonic :test
  data16 {
    op :rm, size:16
    op :imm, size:16
  }
  data32 {
    op :rm, size:32
    op :imm, size:32
  }
end

XF7 1 do
  mnemonic :test
  data16 {
    op :rm, size:16
    op :imm, size:16
  }
  data32 {
    op :rm, size:32
    op :imm, size:32
  }
end

XF7 2 do
  mnemonic :not
  data16 {
    op :rm, size:16
  }
  data32 {
    op :rm, size:32
  }
end

XF7 3 do
  mnemonic :neg
  data16 {
    op :rm, size:16
  }
  data32 {
    op :rm, size:32
  }
end

XF7 4 do
  mnemonic :mul
  data16 {
    op :rm, size:16
  }
  data32 {
    op :rm, size:32
  }
end

XF7 5 do
  mnemonic :imul
  data16 {
    op :rm, size:16
  }
  data32 {
    op :rm, size:32
  }
end

XF7 6 do
  mnemonic :div
  data16 {
    op :rm, size:16
  }
  data32 {
    op :rm, size:32
  }
end

XF7 7 do
  mnemonic :idiv
  data16 {
    op :rm, size:16
  }
  data32 {
    op :rm, size:32
  }
end

XF8 do
  mnemonic :clc
end

XF9 do
  mnemonic :stc
end

XFA do
  mnemonic :cli
end

XFB do
  mnemonic :sti
end

XFC do
  mnemonic :cld
end

XFD do
  mnemonic :std
end

XFE 0 do
  mnemonic :inc
  op :rm, size:8
end

XFE 1 do
  mnemonic :dec
  op :rm, size:8
end

XFF 0 do
  mnemonic :inc
  data16 {
    op :rm, size:16
  }
  data32 {
    op :rm, size:32
  }
end

XFF 1 do
  mnemonic :dec
  data16 {
    op :rm, size:16
  }
  data32 {
    op :rm, size:32
  }
end

XFF 2 do
  mnemonic :call
  data16 {
    op :rm, size:16
  }
  data32 {
    op :rm, size:32
  }
end

XFF 3 do
  mnemonic :call
  data16 {
    op :m, size:32
  }
  data32 {
    op :m, size:48
  }
end

XFF 4 do
  mnemonic :jmp
  data16 {
    op :rm, size:16
  }
  data32 {
    op :rm, size:32
  }
end

XFF 5 do
  mnemonic :jmp
  data16 {
    op :m, size:32
  }
  data32 {
    op :m, size:48
  }
end

XFF 6 do
  mnemonic :push
  data16 {
    op :rm, size:16
  }
  data32 {
    op :rm, size:32
  }
end

X9BD9 7 do
  mnemonic :fstcw
  op :m, size:16
end

X9BD9 6 do
  mnemonic :fstenv
  data16 {
    op :m, size:112
  }
  data32 {
    op :m, size:224
  }
end

X9BDBE2 do
  mnemonic :fclex
end

X9BDBE3 do
  mnemonic :finit
end

X9BDD 6 do
  mnemonic :fsave
  data16 {
    op :m, size:752
  }
  data32 {
    op :m, size:864
  }
end

X9BDD 7 do
  mnemonic :fstsw
  op :m, size:16
end

X9BDFE0 do
  mnemonic :fstsw
  op :AX
end

