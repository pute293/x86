X0F10 :r do
  data32 {
    mnemonic :movups
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :movupd
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
end

X0F11 :r do
  data32 {
    mnemonic :movups
    op :rm, size:128, type: :xmm
    op :r, type: :xmm
  }
  data16 {
    mnemonic :movupd
    op :rm, size:128, type: :xmm
    op :r, type: :xmm
  }
  repne {
    mnemonic :movsd
    op :rm, size:64, type: :xmm
    op :r, type: :xmm
  }
  rep {
    mnemonic :movss
    op :rm, size:32, type: :xmm
    op :r, type: :xmm
  }
end

X0F12 :r do
  data32 {
    mnemonic :movlps
    op :r, type: :xmm
    op :m, size:64
  }
  data16 {
    mnemonic :movlpd
    op :r, type: :xmm
    op :m, size:64
  }
  repne {
    mnemonic :movddup
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
  }
  rep {
    mnemonic :movsldup
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F12C0 do
  data32 {
    mnemonic :movhlps
    op :XMM0
    op :XMM0
  }
end

X0F12C1 do
  data32 {
    mnemonic :movhlps
    op :XMM0
    op :XMM1
  }
end

X0F12C2 do
  data32 {
    mnemonic :movhlps
    op :XMM0
    op :XMM2
  }
end

X0F12C3 do
  data32 {
    mnemonic :movhlps
    op :XMM0
    op :XMM3
  }
end

X0F12C4 do
  data32 {
    mnemonic :movhlps
    op :XMM0
    op :XMM4
  }
end

X0F12C5 do
  data32 {
    mnemonic :movhlps
    op :XMM0
    op :XMM5
  }
end

X0F12C6 do
  data32 {
    mnemonic :movhlps
    op :XMM0
    op :XMM6
  }
end

X0F12C7 do
  data32 {
    mnemonic :movhlps
    op :XMM0
    op :XMM7
  }
end

X0F12C8 do
  data32 {
    mnemonic :movhlps
    op :XMM1
    op :XMM0
  }
end

X0F12C9 do
  data32 {
    mnemonic :movhlps
    op :XMM1
    op :XMM1
  }
end

X0F12CA do
  data32 {
    mnemonic :movhlps
    op :XMM1
    op :XMM2
  }
end

X0F12CB do
  data32 {
    mnemonic :movhlps
    op :XMM1
    op :XMM3
  }
end

X0F12CC do
  data32 {
    mnemonic :movhlps
    op :XMM1
    op :XMM4
  }
end

X0F12CD do
  data32 {
    mnemonic :movhlps
    op :XMM1
    op :XMM5
  }
end

X0F12CE do
  data32 {
    mnemonic :movhlps
    op :XMM1
    op :XMM6
  }
end

X0F12CF do
  data32 {
    mnemonic :movhlps
    op :XMM1
    op :XMM7
  }
end

X0F12D0 do
  data32 {
    mnemonic :movhlps
    op :XMM2
    op :XMM0
  }
end

X0F12D1 do
  data32 {
    mnemonic :movhlps
    op :XMM2
    op :XMM1
  }
end

X0F12D2 do
  data32 {
    mnemonic :movhlps
    op :XMM2
    op :XMM2
  }
end

X0F12D3 do
  data32 {
    mnemonic :movhlps
    op :XMM2
    op :XMM3
  }
end

X0F12D4 do
  data32 {
    mnemonic :movhlps
    op :XMM2
    op :XMM4
  }
end

X0F12D5 do
  data32 {
    mnemonic :movhlps
    op :XMM2
    op :XMM5
  }
end

X0F12D6 do
  data32 {
    mnemonic :movhlps
    op :XMM2
    op :XMM6
  }
end

X0F12D7 do
  data32 {
    mnemonic :movhlps
    op :XMM2
    op :XMM7
  }
end

X0F12D8 do
  data32 {
    mnemonic :movhlps
    op :XMM3
    op :XMM0
  }
end

X0F12D9 do
  data32 {
    mnemonic :movhlps
    op :XMM3
    op :XMM1
  }
end

X0F12DA do
  data32 {
    mnemonic :movhlps
    op :XMM3
    op :XMM2
  }
end

X0F12DB do
  data32 {
    mnemonic :movhlps
    op :XMM3
    op :XMM3
  }
end

X0F12DC do
  data32 {
    mnemonic :movhlps
    op :XMM3
    op :XMM4
  }
end

X0F12DD do
  data32 {
    mnemonic :movhlps
    op :XMM3
    op :XMM5
  }
end

X0F12DE do
  data32 {
    mnemonic :movhlps
    op :XMM3
    op :XMM6
  }
end

X0F12DF do
  data32 {
    mnemonic :movhlps
    op :XMM3
    op :XMM7
  }
end

X0F12E0 do
  data32 {
    mnemonic :movhlps
    op :XMM4
    op :XMM0
  }
end

X0F12E1 do
  data32 {
    mnemonic :movhlps
    op :XMM4
    op :XMM1
  }
end

X0F12E2 do
  data32 {
    mnemonic :movhlps
    op :XMM4
    op :XMM2
  }
end

X0F12E3 do
  data32 {
    mnemonic :movhlps
    op :XMM4
    op :XMM3
  }
end

X0F12E4 do
  data32 {
    mnemonic :movhlps
    op :XMM4
    op :XMM4
  }
end

X0F12E5 do
  data32 {
    mnemonic :movhlps
    op :XMM4
    op :XMM5
  }
end

X0F12E6 do
  data32 {
    mnemonic :movhlps
    op :XMM4
    op :XMM6
  }
end

X0F12E7 do
  data32 {
    mnemonic :movhlps
    op :XMM4
    op :XMM7
  }
end

X0F12E8 do
  data32 {
    mnemonic :movhlps
    op :XMM5
    op :XMM0
  }
end

X0F12E9 do
  data32 {
    mnemonic :movhlps
    op :XMM5
    op :XMM1
  }
end

X0F12EA do
  data32 {
    mnemonic :movhlps
    op :XMM5
    op :XMM2
  }
end

X0F12EB do
  data32 {
    mnemonic :movhlps
    op :XMM5
    op :XMM3
  }
end

X0F12EC do
  data32 {
    mnemonic :movhlps
    op :XMM5
    op :XMM4
  }
end

X0F12ED do
  data32 {
    mnemonic :movhlps
    op :XMM5
    op :XMM5
  }
end

X0F12EE do
  data32 {
    mnemonic :movhlps
    op :XMM5
    op :XMM6
  }
end

X0F12EF do
  data32 {
    mnemonic :movhlps
    op :XMM5
    op :XMM7
  }
end

X0F12F0 do
  data32 {
    mnemonic :movhlps
    op :XMM6
    op :XMM0
  }
end

X0F12F1 do
  data32 {
    mnemonic :movhlps
    op :XMM6
    op :XMM1
  }
end

X0F12F2 do
  data32 {
    mnemonic :movhlps
    op :XMM6
    op :XMM2
  }
end

X0F12F3 do
  data32 {
    mnemonic :movhlps
    op :XMM6
    op :XMM3
  }
end

X0F12F4 do
  data32 {
    mnemonic :movhlps
    op :XMM6
    op :XMM4
  }
end

X0F12F5 do
  data32 {
    mnemonic :movhlps
    op :XMM6
    op :XMM5
  }
end

X0F12F6 do
  data32 {
    mnemonic :movhlps
    op :XMM6
    op :XMM6
  }
end

X0F12F7 do
  data32 {
    mnemonic :movhlps
    op :XMM6
    op :XMM7
  }
end

X0F12F8 do
  data32 {
    mnemonic :movhlps
    op :XMM7
    op :XMM0
  }
end

X0F12F9 do
  data32 {
    mnemonic :movhlps
    op :XMM7
    op :XMM1
  }
end

X0F12FA do
  data32 {
    mnemonic :movhlps
    op :XMM7
    op :XMM2
  }
end

X0F12FB do
  data32 {
    mnemonic :movhlps
    op :XMM7
    op :XMM3
  }
end

X0F12FC do
  data32 {
    mnemonic :movhlps
    op :XMM7
    op :XMM4
  }
end

X0F12FD do
  data32 {
    mnemonic :movhlps
    op :XMM7
    op :XMM5
  }
end

X0F12FE do
  data32 {
    mnemonic :movhlps
    op :XMM7
    op :XMM6
  }
end

X0F12FF do
  data32 {
    mnemonic :movhlps
    op :XMM7
    op :XMM7
  }
end

X0F13 :r do
  data32 {
    mnemonic :movlps
    op :m, size:64
    op :r, type: :xmm
  }
  data16 {
    mnemonic :movlpd
    op :m, size:64
    op :r, type: :xmm
  }
end

X0F14 :r do
  data32 {
    mnemonic :unpcklps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :unpcklpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F15 :r do
  data32 {
    mnemonic :unpckhps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :unpckhpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F16 :r do
  data32 {
    mnemonic :movhps
    op :r, type: :xmm
    op :m, size:64
  }
  data16 {
    mnemonic :movhpd
    op :r, type: :xmm
    op :m, size:64
  }
  rep {
    mnemonic :movshdup
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F16C0 do
  data32 {
    mnemonic :movlhps
    op :XMM0
    op :XMM0
  }
end

X0F16C1 do
  data32 {
    mnemonic :movlhps
    op :XMM0
    op :XMM1
  }
end

X0F16C2 do
  data32 {
    mnemonic :movlhps
    op :XMM0
    op :XMM2
  }
end

X0F16C3 do
  data32 {
    mnemonic :movlhps
    op :XMM0
    op :XMM3
  }
end

X0F16C4 do
  data32 {
    mnemonic :movlhps
    op :XMM0
    op :XMM4
  }
end

X0F16C5 do
  data32 {
    mnemonic :movlhps
    op :XMM0
    op :XMM5
  }
end

X0F16C6 do
  data32 {
    mnemonic :movlhps
    op :XMM0
    op :XMM6
  }
end

X0F16C7 do
  data32 {
    mnemonic :movlhps
    op :XMM0
    op :XMM7
  }
end

X0F16C8 do
  data32 {
    mnemonic :movlhps
    op :XMM1
    op :XMM0
  }
end

X0F16C9 do
  data32 {
    mnemonic :movlhps
    op :XMM1
    op :XMM1
  }
end

X0F16CA do
  data32 {
    mnemonic :movlhps
    op :XMM1
    op :XMM2
  }
end

X0F16CB do
  data32 {
    mnemonic :movlhps
    op :XMM1
    op :XMM3
  }
end

X0F16CC do
  data32 {
    mnemonic :movlhps
    op :XMM1
    op :XMM4
  }
end

X0F16CD do
  data32 {
    mnemonic :movlhps
    op :XMM1
    op :XMM5
  }
end

X0F16CE do
  data32 {
    mnemonic :movlhps
    op :XMM1
    op :XMM6
  }
end

X0F16CF do
  data32 {
    mnemonic :movlhps
    op :XMM1
    op :XMM7
  }
end

X0F16D0 do
  data32 {
    mnemonic :movlhps
    op :XMM2
    op :XMM0
  }
end

X0F16D1 do
  data32 {
    mnemonic :movlhps
    op :XMM2
    op :XMM1
  }
end

X0F16D2 do
  data32 {
    mnemonic :movlhps
    op :XMM2
    op :XMM2
  }
end

X0F16D3 do
  data32 {
    mnemonic :movlhps
    op :XMM2
    op :XMM3
  }
end

X0F16D4 do
  data32 {
    mnemonic :movlhps
    op :XMM2
    op :XMM4
  }
end

X0F16D5 do
  data32 {
    mnemonic :movlhps
    op :XMM2
    op :XMM5
  }
end

X0F16D6 do
  data32 {
    mnemonic :movlhps
    op :XMM2
    op :XMM6
  }
end

X0F16D7 do
  data32 {
    mnemonic :movlhps
    op :XMM2
    op :XMM7
  }
end

X0F16D8 do
  data32 {
    mnemonic :movlhps
    op :XMM3
    op :XMM0
  }
end

X0F16D9 do
  data32 {
    mnemonic :movlhps
    op :XMM3
    op :XMM1
  }
end

X0F16DA do
  data32 {
    mnemonic :movlhps
    op :XMM3
    op :XMM2
  }
end

X0F16DB do
  data32 {
    mnemonic :movlhps
    op :XMM3
    op :XMM3
  }
end

X0F16DC do
  data32 {
    mnemonic :movlhps
    op :XMM3
    op :XMM4
  }
end

X0F16DD do
  data32 {
    mnemonic :movlhps
    op :XMM3
    op :XMM5
  }
end

X0F16DE do
  data32 {
    mnemonic :movlhps
    op :XMM3
    op :XMM6
  }
end

X0F16DF do
  data32 {
    mnemonic :movlhps
    op :XMM3
    op :XMM7
  }
end

X0F16E0 do
  data32 {
    mnemonic :movlhps
    op :XMM4
    op :XMM0
  }
end

X0F16E1 do
  data32 {
    mnemonic :movlhps
    op :XMM4
    op :XMM1
  }
end

X0F16E2 do
  data32 {
    mnemonic :movlhps
    op :XMM4
    op :XMM2
  }
end

X0F16E3 do
  data32 {
    mnemonic :movlhps
    op :XMM4
    op :XMM3
  }
end

X0F16E4 do
  data32 {
    mnemonic :movlhps
    op :XMM4
    op :XMM4
  }
end

X0F16E5 do
  data32 {
    mnemonic :movlhps
    op :XMM4
    op :XMM5
  }
end

X0F16E6 do
  data32 {
    mnemonic :movlhps
    op :XMM4
    op :XMM6
  }
end

X0F16E7 do
  data32 {
    mnemonic :movlhps
    op :XMM4
    op :XMM7
  }
end

X0F16E8 do
  data32 {
    mnemonic :movlhps
    op :XMM5
    op :XMM0
  }
end

X0F16E9 do
  data32 {
    mnemonic :movlhps
    op :XMM5
    op :XMM1
  }
end

X0F16EA do
  data32 {
    mnemonic :movlhps
    op :XMM5
    op :XMM2
  }
end

X0F16EB do
  data32 {
    mnemonic :movlhps
    op :XMM5
    op :XMM3
  }
end

X0F16EC do
  data32 {
    mnemonic :movlhps
    op :XMM5
    op :XMM4
  }
end

X0F16ED do
  data32 {
    mnemonic :movlhps
    op :XMM5
    op :XMM5
  }
end

X0F16EE do
  data32 {
    mnemonic :movlhps
    op :XMM5
    op :XMM6
  }
end

X0F16EF do
  data32 {
    mnemonic :movlhps
    op :XMM5
    op :XMM7
  }
end

X0F16F0 do
  data32 {
    mnemonic :movlhps
    op :XMM6
    op :XMM0
  }
end

X0F16F1 do
  data32 {
    mnemonic :movlhps
    op :XMM6
    op :XMM1
  }
end

X0F16F2 do
  data32 {
    mnemonic :movlhps
    op :XMM6
    op :XMM2
  }
end

X0F16F3 do
  data32 {
    mnemonic :movlhps
    op :XMM6
    op :XMM3
  }
end

X0F16F4 do
  data32 {
    mnemonic :movlhps
    op :XMM6
    op :XMM4
  }
end

X0F16F5 do
  data32 {
    mnemonic :movlhps
    op :XMM6
    op :XMM5
  }
end

X0F16F6 do
  data32 {
    mnemonic :movlhps
    op :XMM6
    op :XMM6
  }
end

X0F16F7 do
  data32 {
    mnemonic :movlhps
    op :XMM6
    op :XMM7
  }
end

X0F16F8 do
  data32 {
    mnemonic :movlhps
    op :XMM7
    op :XMM0
  }
end

X0F16F9 do
  data32 {
    mnemonic :movlhps
    op :XMM7
    op :XMM1
  }
end

X0F16FA do
  data32 {
    mnemonic :movlhps
    op :XMM7
    op :XMM2
  }
end

X0F16FB do
  data32 {
    mnemonic :movlhps
    op :XMM7
    op :XMM3
  }
end

X0F16FC do
  data32 {
    mnemonic :movlhps
    op :XMM7
    op :XMM4
  }
end

X0F16FD do
  data32 {
    mnemonic :movlhps
    op :XMM7
    op :XMM5
  }
end

X0F16FE do
  data32 {
    mnemonic :movlhps
    op :XMM7
    op :XMM6
  }
end

X0F16FF do
  data32 {
    mnemonic :movlhps
    op :XMM7
    op :XMM7
  }
end

X0F17 :r do
  data32 {
    mnemonic :movhps
    op :m, size:64
    op :r, type: :xmm
  }
  data16 {
    mnemonic :movhpd
    op :m, size:64
    op :r, type: :xmm
  }
end

X0F28 :r do
  data32 {
    mnemonic :movaps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :movapd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F29 :r do
  data32 {
    mnemonic :movaps
    op :rm, size:128, type: :xmm
    op :r, type: :xmm
  }
  data16 {
    mnemonic :movapd
    op :rm, size:128, type: :xmm
    op :r, type: :xmm
  }
end

X0F2A :r do
  data32 {
    mnemonic :cvtpi2ps
    op :r, type: :xmm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :cvtpi2pd
    op :r, type: :xmm
    op :rm, size:64, type: :mm
  }
  repne {
    mnemonic :cvtsi2sd
    op :r, type: :xmm
    op :rm, size:32
  }
  rep {
    mnemonic :cvtsi2ss
    op :r, type: :xmm
    op :rm, size:32
  }
end

X0F2B :r do
  data32 {
    mnemonic :movntps
    op :m, size:128
    op :r, type: :xmm
  }
  data16 {
    mnemonic :movntpd
    op :m, size:128
    op :r, type: :xmm
  }
end

X0F2C :r do
  data32 {
    mnemonic :cvttps2pi
    op :r, type: :mm
    op :rm, size:64, type: :xmm
  }
  data16 {
    mnemonic :cvttpd2pi
    op :r, type: :mm
    op :rm, size:128, type: :xmm
  }
  repne {
    mnemonic :cvttsd2si
    op :r, size:32
    op :rm, size:64, type: :xmm
  }
  rep {
    mnemonic :cvttss2si
    op :r, size:32
    op :rm, size:32, type: :xmm
  }
end

X0F2D :r do
  data32 {
    mnemonic :cvtps2pi
    op :r, type: :mm
    op :rm, size:64, type: :xmm
  }
  data16 {
    mnemonic :cvtpd2pi
    op :r, type: :mm
    op :rm, size:128, type: :xmm
  }
  repne {
    mnemonic :cvtsd2si
    op :r, size:32
    op :rm, size:64, type: :xmm
  }
  rep {
    mnemonic :cvtss2si
    op :r, size:32
    op :rm, size:32, type: :xmm
  }
end

X0F2E :r do
  data32 {
    mnemonic :ucomiss
    op :r, type: :xmm
    op :rm, size:32, type: :xmm
  }
  data16 {
    mnemonic :ucomisd
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
  }
end

X0F2F :r do
  data32 {
    mnemonic :comiss
    op :r, type: :xmm
    op :rm, size:32, type: :xmm
  }
  data16 {
    mnemonic :comisd
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
  }
end

X0F50 :r do
  data32 {
    mnemonic :movmskps
    op :r, size:32
    op :r, type: :xmm
  }
  data16 {
    mnemonic :movmskpd
    op :r, size:32
    op :r, type: :xmm
  }
end

X0F51 :r do
  data32 {
    mnemonic :sqrtps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :sqrtpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  repne {
    mnemonic :sqrtsd
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
  }
  rep {
    mnemonic :sqrtss
    op :r, type: :xmm
    op :rm, size:32, type: :xmm
  }
end

X0F52 :r do
  data32 {
    mnemonic :rsqrtps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  rep {
    mnemonic :rsqrtss
    op :r, type: :xmm
    op :rm, size:32, type: :xmm
  }
end

X0F53 :r do
  data32 {
    mnemonic :rcpps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  rep {
    mnemonic :rcpss
    op :r, type: :xmm
    op :rm, size:32, type: :xmm
  }
end

X0F54 :r do
  data32 {
    mnemonic :andps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :andpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F55 :r do
  data32 {
    mnemonic :andnps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :andnpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F56 :r do
  data32 {
    mnemonic :orps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :orpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F57 :r do
  data32 {
    mnemonic :xorps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :xorpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F58 :r do
  data32 {
    mnemonic :addps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :addpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  repne {
    mnemonic :addsd
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
  }
  rep {
    mnemonic :addss
    op :r, type: :xmm
    op :rm, size:32, type: :xmm
  }
end

X0F59 :r do
  data32 {
    mnemonic :mulps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :mulpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  repne {
    mnemonic :mulsd
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
  }
  rep {
    mnemonic :mulss
    op :r, type: :xmm
    op :rm, size:32, type: :xmm
  }
end

X0F5A :r do
  data32 {
    mnemonic :cvtps2pd
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
  }
  data16 {
    mnemonic :cvtpd2ps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  repne {
    mnemonic :cvtsd2ss
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
  }
  rep {
    mnemonic :cvtss2sd
    op :r, type: :xmm
    op :rm, size:32, type: :xmm
  }
end

X0F5B :r do
  data32 {
    mnemonic :cvtdq2ps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :cvtps2dq
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  rep {
    mnemonic :cvttps2dq
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F5C :r do
  data32 {
    mnemonic :subps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :subpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  repne {
    mnemonic :subsd
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
  }
  rep {
    mnemonic :subss
    op :r, type: :xmm
    op :rm, size:32, type: :xmm
  }
end

X0F5D :r do
  data32 {
    mnemonic :minps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :minpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  repne {
    mnemonic :minsd
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
  }
  rep {
    mnemonic :minss
    op :r, type: :xmm
    op :rm, size:32, type: :xmm
  }
end

X0F5E :r do
  data32 {
    mnemonic :divps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :divpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  repne {
    mnemonic :divsd
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
  }
  rep {
    mnemonic :divss
    op :r, type: :xmm
    op :rm, size:32, type: :xmm
  }
end

X0F5F :r do
  data32 {
    mnemonic :maxps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  data16 {
    mnemonic :maxpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  repne {
    mnemonic :maxsd
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
  }
  rep {
    mnemonic :maxss
    op :r, type: :xmm
    op :rm, size:32, type: :xmm
  }
end

X0F60 :r do
  data32 {
    mnemonic :punpcklbw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :punpcklbw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F61 :r do
  data32 {
    mnemonic :punpcklwd
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :punpcklwd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F62 :r do
  data32 {
    mnemonic :punpckldq
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :punpckldq
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F63 :r do
  data32 {
    mnemonic :packsswb
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :packsswb
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F64 :r do
  data32 {
    mnemonic :pcmpgtb
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pcmpgtb
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F65 :r do
  data32 {
    mnemonic :pcmpgtw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pcmpgtw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F66 :r do
  data32 {
    mnemonic :pcmpgtd
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pcmpgtd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F67 :r do
  data32 {
    mnemonic :packuswb
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :packusdw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F68 :r do
  data32 {
    mnemonic :punpckhbw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :punpckhbw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F69 :r do
  data32 {
    mnemonic :punpckhwd
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :punpckhwd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F6A :r do
  data32 {
    mnemonic :punpckhdq
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :punpckhdq
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F6B :r do
  data32 {
    mnemonic :packssdw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :packssdw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F6C :r do
  data16 {
    mnemonic :punpcklqdq
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F6D :r do
  data16 {
    mnemonic :punpckhqdq
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F6E :r do
  data32 {
    mnemonic :movd
    op :r, type: :mm
    op :rm, size:32
  }
  data16 {
    mnemonic :movd
    op :r, type: :xmm
    op :rm, size:32
  }
end

X0F6F :r do
  data32 {
    mnemonic :movq
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :movdqa
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  rep {
    mnemonic :movdqu
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F70 :r do
  data32 {
    mnemonic :pshufw
    op :r, type: :mm
    op :rm, size:64, type: :mm
    op :imm, size:8
  }
  data16 {
    mnemonic :pshufd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
    op :imm, size:8
  }
  repne {
    mnemonic :pshuflw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
    op :imm, size:8
  }
  rep {
    mnemonic :pshufhw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
    op :imm, size:8
  }
end

X0F71 2 do
  data32 {
    mnemonic :psrlw
    op :r, type: :mm
    op :imm, size:8
  }
  data16 {
    mnemonic :psrlw
    op :r, type: :xmm
    op :imm, size:8
  }
end

X0F71 4 do
  data32 {
    mnemonic :psraw
    op :r, type: :mm
    op :imm, size:8
  }
  data16 {
    mnemonic :psraw
    op :r, type: :xmm
    op :imm, size:8
  }
end

X0F71 6 do
  data32 {
    mnemonic :psllw
    op :r, type: :mm
    op :imm, size:8
  }
  data16 {
    mnemonic :psllw
    op :r, type: :xmm
    op :imm, size:8
  }
end

X0F72 2 do
  data32 {
    mnemonic :psrld
    op :r, type: :mm
    op :imm, size:8
  }
  data16 {
    mnemonic :psrld
    op :r, type: :xmm
    op :imm, size:8
  }
end

X0F72 4 do
  data32 {
    mnemonic :psrad
    op :r, type: :mm
    op :imm, size:8
  }
  data16 {
    mnemonic :psrad
    op :r, type: :xmm
    op :imm, size:8
  }
end

X0F72 6 do
  data32 {
    mnemonic :pslld
    op :r, type: :mm
    op :imm, size:8
  }
  data16 {
    mnemonic :pslld
    op :r, type: :xmm
    op :imm, size:8
  }
end

X0F73 2 do
  data32 {
    mnemonic :psrlq
    op :r, type: :mm
    op :imm, size:8
  }
  data16 {
    mnemonic :psrlq
    op :r, type: :xmm
    op :imm, size:8
  }
end

X0F73 6 do
  data32 {
    mnemonic :psllq
    op :r, type: :mm
    op :imm, size:8
  }
  data16 {
    mnemonic :psllq
    op :r, type: :xmm
    op :imm, size:8
  }
end

X0F73 3 do
  data16 {
    mnemonic :psrldq
    op :r, type: :xmm
    op :imm, size:8
  }
end

X0F73 7 do
  data16 {
    mnemonic :pslldq
    op :r, type: :xmm
    op :imm, size:8
  }
end

X0F74 :r do
  data32 {
    mnemonic :pcmpeqb
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pcmpeqb
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F75 :r do
  data32 {
    mnemonic :pcmpeqw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pcmpeqw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F76 :r do
  data32 {
    mnemonic :pcmpeqd
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pcmpeqd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F7C :r do
  data16 {
    mnemonic :haddpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  repne {
    mnemonic :haddps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F7D :r do
  data16 {
    mnemonic :hsubpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  repne {
    mnemonic :hsubps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0F7E :r do
  data32 {
    mnemonic :movd
    op :rm, size:32
    op :r, type: :mm
  }
  data16 {
    mnemonic :movd
    op :rm, size:32
    op :r, type: :xmm
  }
  rep {
    mnemonic :movq
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
  }
end

X0F7F :r do
  data32 {
    mnemonic :movq
    op :rm, size:64, type: :mm
    op :r, type: :mm
  }
  data16 {
    mnemonic :movdqa
    op :rm, size:128, type: :xmm
    op :r, type: :xmm
  }
  rep {
    mnemonic :movdqu
    op :rm, size:128, type: :xmm
    op :r, type: :xmm
  }
end

X0FC2 :r do
  data32 {
    mnemonic :cmpps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
    op :imm, size:8
  }
  data16 {
    mnemonic :cmppd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
    op :imm, size:8
  }
  repne {
    mnemonic :cmpsd
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
    op :imm, size:8
  }
  rep {
    mnemonic :cmpss
    op :r, type: :xmm
    op :rm, size:32, type: :xmm
    op :imm, size:8
  }
end

X0FC4 :r do
  data32 {
    mnemonic :pinsrw
    op :r, type: :mm
    op :m, size:16
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :r, type: :xmm
    op :m, size:16
    op :imm, size:8
  }
end

X0FC4C0 do
  data32 {
    mnemonic :pinsrw
    op :MM0
    op :EAX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM0
    op :EAX
    op :imm, size:8
  }
end

X0FC4C1 do
  data32 {
    mnemonic :pinsrw
    op :MM0
    op :ECX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM0
    op :ECX
    op :imm, size:8
  }
end

X0FC4C2 do
  data32 {
    mnemonic :pinsrw
    op :MM0
    op :EDX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM0
    op :EDX
    op :imm, size:8
  }
end

X0FC4C3 do
  data32 {
    mnemonic :pinsrw
    op :MM0
    op :EBX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM0
    op :EBX
    op :imm, size:8
  }
end

X0FC4C4 do
  data32 {
    mnemonic :pinsrw
    op :MM0
    op :ESP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM0
    op :ESP
    op :imm, size:8
  }
end

X0FC4C5 do
  data32 {
    mnemonic :pinsrw
    op :MM0
    op :EBP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM0
    op :EBP
    op :imm, size:8
  }
end

X0FC4C6 do
  data32 {
    mnemonic :pinsrw
    op :MM0
    op :ESI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM0
    op :ESI
    op :imm, size:8
  }
end

X0FC4C7 do
  data32 {
    mnemonic :pinsrw
    op :MM0
    op :EDI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM0
    op :EDI
    op :imm, size:8
  }
end

X0FC4C8 do
  data32 {
    mnemonic :pinsrw
    op :MM1
    op :EAX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM1
    op :EAX
    op :imm, size:8
  }
end

X0FC4C9 do
  data32 {
    mnemonic :pinsrw
    op :MM1
    op :ECX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM1
    op :ECX
    op :imm, size:8
  }
end

X0FC4CA do
  data32 {
    mnemonic :pinsrw
    op :MM1
    op :EDX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM1
    op :EDX
    op :imm, size:8
  }
end

X0FC4CB do
  data32 {
    mnemonic :pinsrw
    op :MM1
    op :EBX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM1
    op :EBX
    op :imm, size:8
  }
end

X0FC4CC do
  data32 {
    mnemonic :pinsrw
    op :MM1
    op :ESP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM1
    op :ESP
    op :imm, size:8
  }
end

X0FC4CD do
  data32 {
    mnemonic :pinsrw
    op :MM1
    op :EBP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM1
    op :EBP
    op :imm, size:8
  }
end

X0FC4CE do
  data32 {
    mnemonic :pinsrw
    op :MM1
    op :ESI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM1
    op :ESI
    op :imm, size:8
  }
end

X0FC4CF do
  data32 {
    mnemonic :pinsrw
    op :MM1
    op :EDI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM1
    op :EDI
    op :imm, size:8
  }
end

X0FC4D0 do
  data32 {
    mnemonic :pinsrw
    op :MM2
    op :EAX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM2
    op :EAX
    op :imm, size:8
  }
end

X0FC4D1 do
  data32 {
    mnemonic :pinsrw
    op :MM2
    op :ECX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM2
    op :ECX
    op :imm, size:8
  }
end

X0FC4D2 do
  data32 {
    mnemonic :pinsrw
    op :MM2
    op :EDX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM2
    op :EDX
    op :imm, size:8
  }
end

X0FC4D3 do
  data32 {
    mnemonic :pinsrw
    op :MM2
    op :EBX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM2
    op :EBX
    op :imm, size:8
  }
end

X0FC4D4 do
  data32 {
    mnemonic :pinsrw
    op :MM2
    op :ESP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM2
    op :ESP
    op :imm, size:8
  }
end

X0FC4D5 do
  data32 {
    mnemonic :pinsrw
    op :MM2
    op :EBP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM2
    op :EBP
    op :imm, size:8
  }
end

X0FC4D6 do
  data32 {
    mnemonic :pinsrw
    op :MM2
    op :ESI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM2
    op :ESI
    op :imm, size:8
  }
end

X0FC4D7 do
  data32 {
    mnemonic :pinsrw
    op :MM2
    op :EDI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM2
    op :EDI
    op :imm, size:8
  }
end

X0FC4D8 do
  data32 {
    mnemonic :pinsrw
    op :MM3
    op :EAX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM3
    op :EAX
    op :imm, size:8
  }
end

X0FC4D9 do
  data32 {
    mnemonic :pinsrw
    op :MM3
    op :ECX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM3
    op :ECX
    op :imm, size:8
  }
end

X0FC4DA do
  data32 {
    mnemonic :pinsrw
    op :MM3
    op :EDX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM3
    op :EDX
    op :imm, size:8
  }
end

X0FC4DB do
  data32 {
    mnemonic :pinsrw
    op :MM3
    op :EBX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM3
    op :EBX
    op :imm, size:8
  }
end

X0FC4DC do
  data32 {
    mnemonic :pinsrw
    op :MM3
    op :ESP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM3
    op :ESP
    op :imm, size:8
  }
end

X0FC4DD do
  data32 {
    mnemonic :pinsrw
    op :MM3
    op :EBP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM3
    op :EBP
    op :imm, size:8
  }
end

X0FC4DE do
  data32 {
    mnemonic :pinsrw
    op :MM3
    op :ESI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM3
    op :ESI
    op :imm, size:8
  }
end

X0FC4DF do
  data32 {
    mnemonic :pinsrw
    op :MM3
    op :EDI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM3
    op :EDI
    op :imm, size:8
  }
end

X0FC4E0 do
  data32 {
    mnemonic :pinsrw
    op :MM4
    op :EAX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM4
    op :EAX
    op :imm, size:8
  }
end

X0FC4E1 do
  data32 {
    mnemonic :pinsrw
    op :MM4
    op :ECX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM4
    op :ECX
    op :imm, size:8
  }
end

X0FC4E2 do
  data32 {
    mnemonic :pinsrw
    op :MM4
    op :EDX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM4
    op :EDX
    op :imm, size:8
  }
end

X0FC4E3 do
  data32 {
    mnemonic :pinsrw
    op :MM4
    op :EBX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM4
    op :EBX
    op :imm, size:8
  }
end

X0FC4E4 do
  data32 {
    mnemonic :pinsrw
    op :MM4
    op :ESP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM4
    op :ESP
    op :imm, size:8
  }
end

X0FC4E5 do
  data32 {
    mnemonic :pinsrw
    op :MM4
    op :EBP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM4
    op :EBP
    op :imm, size:8
  }
end

X0FC4E6 do
  data32 {
    mnemonic :pinsrw
    op :MM4
    op :ESI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM4
    op :ESI
    op :imm, size:8
  }
end

X0FC4E7 do
  data32 {
    mnemonic :pinsrw
    op :MM4
    op :EDI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM4
    op :EDI
    op :imm, size:8
  }
end

X0FC4E8 do
  data32 {
    mnemonic :pinsrw
    op :MM5
    op :EAX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM5
    op :EAX
    op :imm, size:8
  }
end

X0FC4E9 do
  data32 {
    mnemonic :pinsrw
    op :MM5
    op :ECX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM5
    op :ECX
    op :imm, size:8
  }
end

X0FC4EA do
  data32 {
    mnemonic :pinsrw
    op :MM5
    op :EDX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM5
    op :EDX
    op :imm, size:8
  }
end

X0FC4EB do
  data32 {
    mnemonic :pinsrw
    op :MM5
    op :EBX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM5
    op :EBX
    op :imm, size:8
  }
end

X0FC4EC do
  data32 {
    mnemonic :pinsrw
    op :MM5
    op :ESP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM5
    op :ESP
    op :imm, size:8
  }
end

X0FC4ED do
  data32 {
    mnemonic :pinsrw
    op :MM5
    op :EBP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM5
    op :EBP
    op :imm, size:8
  }
end

X0FC4EE do
  data32 {
    mnemonic :pinsrw
    op :MM5
    op :ESI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM5
    op :ESI
    op :imm, size:8
  }
end

X0FC4EF do
  data32 {
    mnemonic :pinsrw
    op :MM5
    op :EDI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM5
    op :EDI
    op :imm, size:8
  }
end

X0FC4F0 do
  data32 {
    mnemonic :pinsrw
    op :MM6
    op :EAX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM6
    op :EAX
    op :imm, size:8
  }
end

X0FC4F1 do
  data32 {
    mnemonic :pinsrw
    op :MM6
    op :ECX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM6
    op :ECX
    op :imm, size:8
  }
end

X0FC4F2 do
  data32 {
    mnemonic :pinsrw
    op :MM6
    op :EDX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM6
    op :EDX
    op :imm, size:8
  }
end

X0FC4F3 do
  data32 {
    mnemonic :pinsrw
    op :MM6
    op :EBX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM6
    op :EBX
    op :imm, size:8
  }
end

X0FC4F4 do
  data32 {
    mnemonic :pinsrw
    op :MM6
    op :ESP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM6
    op :ESP
    op :imm, size:8
  }
end

X0FC4F5 do
  data32 {
    mnemonic :pinsrw
    op :MM6
    op :EBP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM6
    op :EBP
    op :imm, size:8
  }
end

X0FC4F6 do
  data32 {
    mnemonic :pinsrw
    op :MM6
    op :ESI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM6
    op :ESI
    op :imm, size:8
  }
end

X0FC4F7 do
  data32 {
    mnemonic :pinsrw
    op :MM6
    op :EDI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM6
    op :EDI
    op :imm, size:8
  }
end

X0FC4F8 do
  data32 {
    mnemonic :pinsrw
    op :MM7
    op :EAX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM7
    op :EAX
    op :imm, size:8
  }
end

X0FC4F9 do
  data32 {
    mnemonic :pinsrw
    op :MM7
    op :ECX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM7
    op :ECX
    op :imm, size:8
  }
end

X0FC4FA do
  data32 {
    mnemonic :pinsrw
    op :MM7
    op :EDX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM7
    op :EDX
    op :imm, size:8
  }
end

X0FC4FB do
  data32 {
    mnemonic :pinsrw
    op :MM7
    op :EBX
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM7
    op :EBX
    op :imm, size:8
  }
end

X0FC4FC do
  data32 {
    mnemonic :pinsrw
    op :MM7
    op :ESP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM7
    op :ESP
    op :imm, size:8
  }
end

X0FC4FD do
  data32 {
    mnemonic :pinsrw
    op :MM7
    op :EBP
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM7
    op :EBP
    op :imm, size:8
  }
end

X0FC4FE do
  data32 {
    mnemonic :pinsrw
    op :MM7
    op :ESI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM7
    op :ESI
    op :imm, size:8
  }
end

X0FC4FF do
  data32 {
    mnemonic :pinsrw
    op :MM7
    op :EDI
    op :imm, size:8
  }
  data16 {
    mnemonic :pinsrw
    op :XMM7
    op :EDI
    op :imm, size:8
  }
end

X0FC5 :r do
  data32 {
    mnemonic :pextrw
    op :r, size:32
    op :r, type: :mm
    op :imm, size:8
  }
  data16 {
    mnemonic :pextrw
    op :r, size:32
    op :r, type: :xmm
    op :imm, size:8
  }
end

X0FC6 :r do
  data32 {
    mnemonic :shufps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
    op :imm, size:8
  }
  data16 {
    mnemonic :shufpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
    op :imm, size:8
  }
end

X0FD0 :r do
  data16 {
    mnemonic :addsubpd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  repne {
    mnemonic :addsubps
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FD1 :r do
  data32 {
    mnemonic :psrlw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psrlw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FD2 :r do
  data32 {
    mnemonic :psrld
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psrld
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FD3 :r do
  data32 {
    mnemonic :psrlq
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psrlq
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FD4 :r do
  data32 {
    mnemonic :paddq
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :paddq
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FD5 :r do
  data32 {
    mnemonic :pmullw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pmullw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FD6 :r do
  data16 {
    mnemonic :movq
    op :rm, size:64, type: :xmm
    op :r, type: :xmm
  }
  repne {
    mnemonic :movdq2q
    op :r, type: :mm
    op :r, type: :xmm
  }
  rep {
    mnemonic :movq2dq
    op :r, type: :xmm
    op :r, type: :mm
  }
end

X0FD7 :r do
  data32 {
    mnemonic :pmovmskb
    op :r, size:32
    op :r, type: :mm
  }
  data16 {
    mnemonic :pmovmskb
    op :r, size:32
    op :r, type: :xmm
  }
end

X0FD8 :r do
  data32 {
    mnemonic :psubusb
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psubusb
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FD9 :r do
  data32 {
    mnemonic :psubusw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psubusw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FDA :r do
  data32 {
    mnemonic :pminub
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pminub
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FDB :r do
  data32 {
    mnemonic :pand
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pand
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FDC :r do
  data32 {
    mnemonic :paddusb
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :paddusb
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FDD :r do
  data32 {
    mnemonic :paddusw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :paddusw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FDE :r do
  data32 {
    mnemonic :pmaxub
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pmaxub
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FDF :r do
  data32 {
    mnemonic :pandn
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pandn
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FE0 :r do
  data32 {
    mnemonic :pavgb
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pavgb
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FE1 :r do
  data32 {
    mnemonic :psraw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psraw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FE2 :r do
  data32 {
    mnemonic :psrad
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psrad
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FE3 :r do
  data32 {
    mnemonic :pavgw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pavgw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FE4 :r do
  data32 {
    mnemonic :pmulhuw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pmulhuw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FE5 :r do
  data32 {
    mnemonic :pmulhw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pmulhw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FE6 :r do
  data16 {
    mnemonic :cvttpd2dq
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  repne {
    mnemonic :cvtpd2dq
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
  rep {
    mnemonic :cvtdq2pd
    op :r, type: :xmm
    op :rm, size:64, type: :xmm
  }
end

X0FE7 :r do
  data32 {
    mnemonic :movntq
    op :m, size:64
    op :r, type: :mm
  }
  data16 {
    mnemonic :movntdq
    op :m, size:128
    op :r, type: :xmm
  }
end

X0FE8 :r do
  data32 {
    mnemonic :psubsb
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psubsb
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FE9 :r do
  data32 {
    mnemonic :psubsw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psubsw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FEA :r do
  data32 {
    mnemonic :pminsw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pminsw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FEB :r do
  data32 {
    mnemonic :por
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :por
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FEC :r do
  data32 {
    mnemonic :paddsb
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :paddsb
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FED :r do
  data32 {
    mnemonic :paddsw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :paddsw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FEE :r do
  data32 {
    mnemonic :pmaxsw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pmaxsw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FEF :r do
  data32 {
    mnemonic :pxor
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pxor
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FF0 :r do
  repne {
    mnemonic :lddqu
    op :r, type: :xmm
    op :m, size:128
  }
end

X0FF1 :r do
  data32 {
    mnemonic :psllw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psllw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FF2 :r do
  data32 {
    mnemonic :pslld
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pslld
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FF3 :r do
  data32 {
    mnemonic :psllq
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psllq
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FF4 :r do
  data32 {
    mnemonic :pmuludq
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pmuludq
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FF5 :r do
  data32 {
    mnemonic :pmaddwd
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :pmaddwd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FF6 :r do
  data32 {
    mnemonic :psadbw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psadbw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FF7 :r do
  data32 {
    mnemonic :maskmovq
    op :r, type: :mm
    op :r, type: :mm
  }
  data16 {
    mnemonic :maskmovdqu
    op :r, type: :xmm
    op :r, type: :xmm
  }
end

X0FF8 :r do
  data32 {
    mnemonic :psubb
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psubb
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FF9 :r do
  data32 {
    mnemonic :psubw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psubw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FFA :r do
  data32 {
    mnemonic :psubd
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psubd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FFB :r do
  data32 {
    mnemonic :psubq
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :psubq
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FFC :r do
  data32 {
    mnemonic :paddb
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :paddb
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FFD :r do
  data32 {
    mnemonic :paddw
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :paddw
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

X0FFE :r do
  data32 {
    mnemonic :paddd
    op :r, type: :mm
    op :rm, size:64, type: :mm
  }
  data16 {
    mnemonic :paddd
    op :r, type: :xmm
    op :rm, size:128, type: :xmm
  }
end

