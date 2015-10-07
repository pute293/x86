X0F00 0 do
  mnemonic :sldt
  op :rm, size:16
end

X0F00 1 do
  mnemonic :str
  op :rm, size:16
end

X0F00 2 do
  mnemonic :lldt
  op :rm, size:16
end

X0F00 3 do
  mnemonic :ltr
  op :rm, size:16
end

X0F00 4 do
  mnemonic :verr
  op :rm, size:16
end

X0F00 5 do
  mnemonic :verw
  op :rm, size:16
end

X0F01 0 do
  mnemonic :sgdt
  op :m, size:48
end

X0F01 1 do
  mnemonic :sidt
  data16 {
    op :m, size:48
  }
  data32 {
    op :m, size:48
  }
end

X0F01 2 do
  mnemonic :lgdt
  data16 {
    op :m, size:48
  }
  data32 {
    op :m, size:48
  }
end

X0F01 3 do
  mnemonic :lidt
  data16 {
    op :m, size:48
  }
  data32 {
    op :m, size:48
  }
end

X0F01 4 do
  mnemonic :smsw
  op :rm, size:16
end

X0F01 6 do
  mnemonic :lmsw
  op :rm, size:16
end

X0F01 7 do
  mnemonic :invlpg
  op :m, size:0
end

X0F01C8 do
  mnemonic :monitor
end

X0F01C9 do
  mnemonic :mwait
end

X0F02 :r do
  mnemonic :lar
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F03 :r do
  mnemonic :lsl
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F06 do
  mnemonic :clts
end

X0F08 do
  mnemonic :invd
end

X0F09 do
  mnemonic :wbinvd
end

X0F0B do
  mnemonic :ud2
end

X0F18 0 do
  mnemonic :prefetchnta
  op :m, size:8
end

X0F18 1 do
  mnemonic :prefetch0
  op :m, size:8
end

X0F18 2 do
  mnemonic :prefetch1
  op :m, size:8
end

X0F18 3 do
  mnemonic :prefetch2
  op :m, size:8
end

X0F20C0 do
  mnemonic :mov
  op :EAX
  op :CR0
end

X0F20C1 do
  mnemonic :mov
  op :ECX
  op :CR0
end

X0F20C2 do
  mnemonic :mov
  op :EDX
  op :CR0
end

X0F20C3 do
  mnemonic :mov
  op :EBX
  op :CR0
end

X0F20C4 do
  mnemonic :mov
  op :ESP
  op :CR0
end

X0F20C5 do
  mnemonic :mov
  op :EBP
  op :CR0
end

X0F20C6 do
  mnemonic :mov
  op :ESI
  op :CR0
end

X0F20C7 do
  mnemonic :mov
  op :EDI
  op :CR0
end

X0F20C8 do
  mnemonic :mov
  op :EAX
  op :CR1
end

X0F20C9 do
  mnemonic :mov
  op :ECX
  op :CR1
end

X0F20CA do
  mnemonic :mov
  op :EDX
  op :CR1
end

X0F20CB do
  mnemonic :mov
  op :EBX
  op :CR1
end

X0F20CC do
  mnemonic :mov
  op :ESP
  op :CR1
end

X0F20CD do
  mnemonic :mov
  op :EBP
  op :CR1
end

X0F20CE do
  mnemonic :mov
  op :ESI
  op :CR1
end

X0F20CF do
  mnemonic :mov
  op :EDI
  op :CR1
end

X0F20D0 do
  mnemonic :mov
  op :EAX
  op :CR2
end

X0F20D1 do
  mnemonic :mov
  op :ECX
  op :CR2
end

X0F20D2 do
  mnemonic :mov
  op :EDX
  op :CR2
end

X0F20D3 do
  mnemonic :mov
  op :EBX
  op :CR2
end

X0F20D4 do
  mnemonic :mov
  op :ESP
  op :CR2
end

X0F20D5 do
  mnemonic :mov
  op :EBP
  op :CR2
end

X0F20D6 do
  mnemonic :mov
  op :ESI
  op :CR2
end

X0F20D7 do
  mnemonic :mov
  op :EDI
  op :CR2
end

X0F20D8 do
  mnemonic :mov
  op :EAX
  op :CR3
end

X0F20D9 do
  mnemonic :mov
  op :ECX
  op :CR3
end

X0F20DA do
  mnemonic :mov
  op :EDX
  op :CR3
end

X0F20DB do
  mnemonic :mov
  op :EBX
  op :CR3
end

X0F20DC do
  mnemonic :mov
  op :ESP
  op :CR3
end

X0F20DD do
  mnemonic :mov
  op :EBP
  op :CR3
end

X0F20DE do
  mnemonic :mov
  op :ESI
  op :CR3
end

X0F20DF do
  mnemonic :mov
  op :EDI
  op :CR3
end

X0F20E0 do
  mnemonic :mov
  op :EAX
  op :CR4
end

X0F20E1 do
  mnemonic :mov
  op :ECX
  op :CR4
end

X0F20E2 do
  mnemonic :mov
  op :EDX
  op :CR4
end

X0F20E3 do
  mnemonic :mov
  op :EBX
  op :CR4
end

X0F20E4 do
  mnemonic :mov
  op :ESP
  op :CR4
end

X0F20E5 do
  mnemonic :mov
  op :EBP
  op :CR4
end

X0F20E6 do
  mnemonic :mov
  op :ESI
  op :CR4
end

X0F20E7 do
  mnemonic :mov
  op :EDI
  op :CR4
end

X0F20E8 do
  mnemonic :mov
  op :EAX
  op :CR5
end

X0F20E9 do
  mnemonic :mov
  op :ECX
  op :CR5
end

X0F20EA do
  mnemonic :mov
  op :EDX
  op :CR5
end

X0F20EB do
  mnemonic :mov
  op :EBX
  op :CR5
end

X0F20EC do
  mnemonic :mov
  op :ESP
  op :CR5
end

X0F20ED do
  mnemonic :mov
  op :EBP
  op :CR5
end

X0F20EE do
  mnemonic :mov
  op :ESI
  op :CR5
end

X0F20EF do
  mnemonic :mov
  op :EDI
  op :CR5
end

X0F20F0 do
  mnemonic :mov
  op :EAX
  op :CR6
end

X0F20F1 do
  mnemonic :mov
  op :ECX
  op :CR6
end

X0F20F2 do
  mnemonic :mov
  op :EDX
  op :CR6
end

X0F20F3 do
  mnemonic :mov
  op :EBX
  op :CR6
end

X0F20F4 do
  mnemonic :mov
  op :ESP
  op :CR6
end

X0F20F5 do
  mnemonic :mov
  op :EBP
  op :CR6
end

X0F20F6 do
  mnemonic :mov
  op :ESI
  op :CR6
end

X0F20F7 do
  mnemonic :mov
  op :EDI
  op :CR6
end

X0F20F8 do
  mnemonic :mov
  op :EAX
  op :CR7
end

X0F20F9 do
  mnemonic :mov
  op :ECX
  op :CR7
end

X0F20FA do
  mnemonic :mov
  op :EDX
  op :CR7
end

X0F20FB do
  mnemonic :mov
  op :EBX
  op :CR7
end

X0F20FC do
  mnemonic :mov
  op :ESP
  op :CR7
end

X0F20FD do
  mnemonic :mov
  op :EBP
  op :CR7
end

X0F20FE do
  mnemonic :mov
  op :ESI
  op :CR7
end

X0F20FF do
  mnemonic :mov
  op :EDI
  op :CR7
end

X0F21C0 do
  mnemonic :mov
  op :EAX
  op :DR0
end

X0F21C1 do
  mnemonic :mov
  op :ECX
  op :DR0
end

X0F21C2 do
  mnemonic :mov
  op :EDX
  op :DR0
end

X0F21C3 do
  mnemonic :mov
  op :EBX
  op :DR0
end

X0F21C4 do
  mnemonic :mov
  op :ESP
  op :DR0
end

X0F21C5 do
  mnemonic :mov
  op :EBP
  op :DR0
end

X0F21C6 do
  mnemonic :mov
  op :ESI
  op :DR0
end

X0F21C7 do
  mnemonic :mov
  op :EDI
  op :DR0
end

X0F21C8 do
  mnemonic :mov
  op :EAX
  op :DR1
end

X0F21C9 do
  mnemonic :mov
  op :ECX
  op :DR1
end

X0F21CA do
  mnemonic :mov
  op :EDX
  op :DR1
end

X0F21CB do
  mnemonic :mov
  op :EBX
  op :DR1
end

X0F21CC do
  mnemonic :mov
  op :ESP
  op :DR1
end

X0F21CD do
  mnemonic :mov
  op :EBP
  op :DR1
end

X0F21CE do
  mnemonic :mov
  op :ESI
  op :DR1
end

X0F21CF do
  mnemonic :mov
  op :EDI
  op :DR1
end

X0F21D0 do
  mnemonic :mov
  op :EAX
  op :DR2
end

X0F21D1 do
  mnemonic :mov
  op :ECX
  op :DR2
end

X0F21D2 do
  mnemonic :mov
  op :EDX
  op :DR2
end

X0F21D3 do
  mnemonic :mov
  op :EBX
  op :DR2
end

X0F21D4 do
  mnemonic :mov
  op :ESP
  op :DR2
end

X0F21D5 do
  mnemonic :mov
  op :EBP
  op :DR2
end

X0F21D6 do
  mnemonic :mov
  op :ESI
  op :DR2
end

X0F21D7 do
  mnemonic :mov
  op :EDI
  op :DR2
end

X0F21D8 do
  mnemonic :mov
  op :EAX
  op :DR3
end

X0F21D9 do
  mnemonic :mov
  op :ECX
  op :DR3
end

X0F21DA do
  mnemonic :mov
  op :EDX
  op :DR3
end

X0F21DB do
  mnemonic :mov
  op :EBX
  op :DR3
end

X0F21DC do
  mnemonic :mov
  op :ESP
  op :DR3
end

X0F21DD do
  mnemonic :mov
  op :EBP
  op :DR3
end

X0F21DE do
  mnemonic :mov
  op :ESI
  op :DR3
end

X0F21DF do
  mnemonic :mov
  op :EDI
  op :DR3
end

X0F21E0 do
  mnemonic :mov
  op :EAX
  op :DR4
end

X0F21E1 do
  mnemonic :mov
  op :ECX
  op :DR4
end

X0F21E2 do
  mnemonic :mov
  op :EDX
  op :DR4
end

X0F21E3 do
  mnemonic :mov
  op :EBX
  op :DR4
end

X0F21E4 do
  mnemonic :mov
  op :ESP
  op :DR4
end

X0F21E5 do
  mnemonic :mov
  op :EBP
  op :DR4
end

X0F21E6 do
  mnemonic :mov
  op :ESI
  op :DR4
end

X0F21E7 do
  mnemonic :mov
  op :EDI
  op :DR4
end

X0F21E8 do
  mnemonic :mov
  op :EAX
  op :DR5
end

X0F21E9 do
  mnemonic :mov
  op :ECX
  op :DR5
end

X0F21EA do
  mnemonic :mov
  op :EDX
  op :DR5
end

X0F21EB do
  mnemonic :mov
  op :EBX
  op :DR5
end

X0F21EC do
  mnemonic :mov
  op :ESP
  op :DR5
end

X0F21ED do
  mnemonic :mov
  op :EBP
  op :DR5
end

X0F21EE do
  mnemonic :mov
  op :ESI
  op :DR5
end

X0F21EF do
  mnemonic :mov
  op :EDI
  op :DR5
end

X0F21F0 do
  mnemonic :mov
  op :EAX
  op :DR6
end

X0F21F1 do
  mnemonic :mov
  op :ECX
  op :DR6
end

X0F21F2 do
  mnemonic :mov
  op :EDX
  op :DR6
end

X0F21F3 do
  mnemonic :mov
  op :EBX
  op :DR6
end

X0F21F4 do
  mnemonic :mov
  op :ESP
  op :DR6
end

X0F21F5 do
  mnemonic :mov
  op :EBP
  op :DR6
end

X0F21F6 do
  mnemonic :mov
  op :ESI
  op :DR6
end

X0F21F7 do
  mnemonic :mov
  op :EDI
  op :DR6
end

X0F21F8 do
  mnemonic :mov
  op :EAX
  op :DR7
end

X0F21F9 do
  mnemonic :mov
  op :ECX
  op :DR7
end

X0F21FA do
  mnemonic :mov
  op :EDX
  op :DR7
end

X0F21FB do
  mnemonic :mov
  op :EBX
  op :DR7
end

X0F21FC do
  mnemonic :mov
  op :ESP
  op :DR7
end

X0F21FD do
  mnemonic :mov
  op :EBP
  op :DR7
end

X0F21FE do
  mnemonic :mov
  op :ESI
  op :DR7
end

X0F21FF do
  mnemonic :mov
  op :EDI
  op :DR7
end

X0F22C0 do
  mnemonic :mov
  op :CR0
  op :EAX
end

X0F22C1 do
  mnemonic :mov
  op :CR0
  op :ECX
end

X0F22C2 do
  mnemonic :mov
  op :CR0
  op :EDX
end

X0F22C3 do
  mnemonic :mov
  op :CR0
  op :EBX
end

X0F22C4 do
  mnemonic :mov
  op :CR0
  op :ESP
end

X0F22C5 do
  mnemonic :mov
  op :CR0
  op :EBP
end

X0F22C6 do
  mnemonic :mov
  op :CR0
  op :ESI
end

X0F22C7 do
  mnemonic :mov
  op :CR0
  op :EDI
end

X0F22C8 do
  mnemonic :mov
  op :CR1
  op :EAX
end

X0F22C9 do
  mnemonic :mov
  op :CR1
  op :ECX
end

X0F22CA do
  mnemonic :mov
  op :CR1
  op :EDX
end

X0F22CB do
  mnemonic :mov
  op :CR1
  op :EBX
end

X0F22CC do
  mnemonic :mov
  op :CR1
  op :ESP
end

X0F22CD do
  mnemonic :mov
  op :CR1
  op :EBP
end

X0F22CE do
  mnemonic :mov
  op :CR1
  op :ESI
end

X0F22CF do
  mnemonic :mov
  op :CR1
  op :EDI
end

X0F22D0 do
  mnemonic :mov
  op :CR2
  op :EAX
end

X0F22D1 do
  mnemonic :mov
  op :CR2
  op :ECX
end

X0F22D2 do
  mnemonic :mov
  op :CR2
  op :EDX
end

X0F22D3 do
  mnemonic :mov
  op :CR2
  op :EBX
end

X0F22D4 do
  mnemonic :mov
  op :CR2
  op :ESP
end

X0F22D5 do
  mnemonic :mov
  op :CR2
  op :EBP
end

X0F22D6 do
  mnemonic :mov
  op :CR2
  op :ESI
end

X0F22D7 do
  mnemonic :mov
  op :CR2
  op :EDI
end

X0F22D8 do
  mnemonic :mov
  op :CR3
  op :EAX
end

X0F22D9 do
  mnemonic :mov
  op :CR3
  op :ECX
end

X0F22DA do
  mnemonic :mov
  op :CR3
  op :EDX
end

X0F22DB do
  mnemonic :mov
  op :CR3
  op :EBX
end

X0F22DC do
  mnemonic :mov
  op :CR3
  op :ESP
end

X0F22DD do
  mnemonic :mov
  op :CR3
  op :EBP
end

X0F22DE do
  mnemonic :mov
  op :CR3
  op :ESI
end

X0F22DF do
  mnemonic :mov
  op :CR3
  op :EDI
end

X0F22E0 do
  mnemonic :mov
  op :CR4
  op :EAX
end

X0F22E1 do
  mnemonic :mov
  op :CR4
  op :ECX
end

X0F22E2 do
  mnemonic :mov
  op :CR4
  op :EDX
end

X0F22E3 do
  mnemonic :mov
  op :CR4
  op :EBX
end

X0F22E4 do
  mnemonic :mov
  op :CR4
  op :ESP
end

X0F22E5 do
  mnemonic :mov
  op :CR4
  op :EBP
end

X0F22E6 do
  mnemonic :mov
  op :CR4
  op :ESI
end

X0F22E7 do
  mnemonic :mov
  op :CR4
  op :EDI
end

X0F22E8 do
  mnemonic :mov
  op :CR5
  op :EAX
end

X0F22E9 do
  mnemonic :mov
  op :CR5
  op :ECX
end

X0F22EA do
  mnemonic :mov
  op :CR5
  op :EDX
end

X0F22EB do
  mnemonic :mov
  op :CR5
  op :EBX
end

X0F22EC do
  mnemonic :mov
  op :CR5
  op :ESP
end

X0F22ED do
  mnemonic :mov
  op :CR5
  op :EBP
end

X0F22EE do
  mnemonic :mov
  op :CR5
  op :ESI
end

X0F22EF do
  mnemonic :mov
  op :CR5
  op :EDI
end

X0F22F0 do
  mnemonic :mov
  op :CR6
  op :EAX
end

X0F22F1 do
  mnemonic :mov
  op :CR6
  op :ECX
end

X0F22F2 do
  mnemonic :mov
  op :CR6
  op :EDX
end

X0F22F3 do
  mnemonic :mov
  op :CR6
  op :EBX
end

X0F22F4 do
  mnemonic :mov
  op :CR6
  op :ESP
end

X0F22F5 do
  mnemonic :mov
  op :CR6
  op :EBP
end

X0F22F6 do
  mnemonic :mov
  op :CR6
  op :ESI
end

X0F22F7 do
  mnemonic :mov
  op :CR6
  op :EDI
end

X0F22F8 do
  mnemonic :mov
  op :CR7
  op :EAX
end

X0F22F9 do
  mnemonic :mov
  op :CR7
  op :ECX
end

X0F22FA do
  mnemonic :mov
  op :CR7
  op :EDX
end

X0F22FB do
  mnemonic :mov
  op :CR7
  op :EBX
end

X0F22FC do
  mnemonic :mov
  op :CR7
  op :ESP
end

X0F22FD do
  mnemonic :mov
  op :CR7
  op :EBP
end

X0F22FE do
  mnemonic :mov
  op :CR7
  op :ESI
end

X0F22FF do
  mnemonic :mov
  op :CR7
  op :EDI
end

X0F23C0 do
  mnemonic :mov
  op :DR0
  op :EAX
end

X0F23C1 do
  mnemonic :mov
  op :DR0
  op :ECX
end

X0F23C2 do
  mnemonic :mov
  op :DR0
  op :EDX
end

X0F23C3 do
  mnemonic :mov
  op :DR0
  op :EBX
end

X0F23C4 do
  mnemonic :mov
  op :DR0
  op :ESP
end

X0F23C5 do
  mnemonic :mov
  op :DR0
  op :EBP
end

X0F23C6 do
  mnemonic :mov
  op :DR0
  op :ESI
end

X0F23C7 do
  mnemonic :mov
  op :DR0
  op :EDI
end

X0F23C8 do
  mnemonic :mov
  op :DR1
  op :EAX
end

X0F23C9 do
  mnemonic :mov
  op :DR1
  op :ECX
end

X0F23CA do
  mnemonic :mov
  op :DR1
  op :EDX
end

X0F23CB do
  mnemonic :mov
  op :DR1
  op :EBX
end

X0F23CC do
  mnemonic :mov
  op :DR1
  op :ESP
end

X0F23CD do
  mnemonic :mov
  op :DR1
  op :EBP
end

X0F23CE do
  mnemonic :mov
  op :DR1
  op :ESI
end

X0F23CF do
  mnemonic :mov
  op :DR1
  op :EDI
end

X0F23D0 do
  mnemonic :mov
  op :DR2
  op :EAX
end

X0F23D1 do
  mnemonic :mov
  op :DR2
  op :ECX
end

X0F23D2 do
  mnemonic :mov
  op :DR2
  op :EDX
end

X0F23D3 do
  mnemonic :mov
  op :DR2
  op :EBX
end

X0F23D4 do
  mnemonic :mov
  op :DR2
  op :ESP
end

X0F23D5 do
  mnemonic :mov
  op :DR2
  op :EBP
end

X0F23D6 do
  mnemonic :mov
  op :DR2
  op :ESI
end

X0F23D7 do
  mnemonic :mov
  op :DR2
  op :EDI
end

X0F23D8 do
  mnemonic :mov
  op :DR3
  op :EAX
end

X0F23D9 do
  mnemonic :mov
  op :DR3
  op :ECX
end

X0F23DA do
  mnemonic :mov
  op :DR3
  op :EDX
end

X0F23DB do
  mnemonic :mov
  op :DR3
  op :EBX
end

X0F23DC do
  mnemonic :mov
  op :DR3
  op :ESP
end

X0F23DD do
  mnemonic :mov
  op :DR3
  op :EBP
end

X0F23DE do
  mnemonic :mov
  op :DR3
  op :ESI
end

X0F23DF do
  mnemonic :mov
  op :DR3
  op :EDI
end

X0F23E0 do
  mnemonic :mov
  op :DR4
  op :EAX
end

X0F23E1 do
  mnemonic :mov
  op :DR4
  op :ECX
end

X0F23E2 do
  mnemonic :mov
  op :DR4
  op :EDX
end

X0F23E3 do
  mnemonic :mov
  op :DR4
  op :EBX
end

X0F23E4 do
  mnemonic :mov
  op :DR4
  op :ESP
end

X0F23E5 do
  mnemonic :mov
  op :DR4
  op :EBP
end

X0F23E6 do
  mnemonic :mov
  op :DR4
  op :ESI
end

X0F23E7 do
  mnemonic :mov
  op :DR4
  op :EDI
end

X0F23E8 do
  mnemonic :mov
  op :DR5
  op :EAX
end

X0F23E9 do
  mnemonic :mov
  op :DR5
  op :ECX
end

X0F23EA do
  mnemonic :mov
  op :DR5
  op :EDX
end

X0F23EB do
  mnemonic :mov
  op :DR5
  op :EBX
end

X0F23EC do
  mnemonic :mov
  op :DR5
  op :ESP
end

X0F23ED do
  mnemonic :mov
  op :DR5
  op :EBP
end

X0F23EE do
  mnemonic :mov
  op :DR5
  op :ESI
end

X0F23EF do
  mnemonic :mov
  op :DR5
  op :EDI
end

X0F23F0 do
  mnemonic :mov
  op :DR6
  op :EAX
end

X0F23F1 do
  mnemonic :mov
  op :DR6
  op :ECX
end

X0F23F2 do
  mnemonic :mov
  op :DR6
  op :EDX
end

X0F23F3 do
  mnemonic :mov
  op :DR6
  op :EBX
end

X0F23F4 do
  mnemonic :mov
  op :DR6
  op :ESP
end

X0F23F5 do
  mnemonic :mov
  op :DR6
  op :EBP
end

X0F23F6 do
  mnemonic :mov
  op :DR6
  op :ESI
end

X0F23F7 do
  mnemonic :mov
  op :DR6
  op :EDI
end

X0F23F8 do
  mnemonic :mov
  op :DR7
  op :EAX
end

X0F23F9 do
  mnemonic :mov
  op :DR7
  op :ECX
end

X0F23FA do
  mnemonic :mov
  op :DR7
  op :EDX
end

X0F23FB do
  mnemonic :mov
  op :DR7
  op :EBX
end

X0F23FC do
  mnemonic :mov
  op :DR7
  op :ESP
end

X0F23FD do
  mnemonic :mov
  op :DR7
  op :EBP
end

X0F23FE do
  mnemonic :mov
  op :DR7
  op :ESI
end

X0F23FF do
  mnemonic :mov
  op :DR7
  op :EDI
end

X0F30 do
  mnemonic :wrmsr
end

X0F31 do
  mnemonic :rdtsc
end

X0F32 do
  mnemonic :rdmsr
end

X0F33 do
  mnemonic :rdpmc
end

X0F34 do
  mnemonic :sysenter
end

X0F35 do
  mnemonic :sysexit
end

X0F40 :r do
  mnemonic :cmovo
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F41 :r do
  mnemonic :cmovno
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F42 :r do
  mnemonic :cmovb
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F43 :r do
  mnemonic :cmovae
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F44 :r do
  mnemonic :cmove
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F45 :r do
  mnemonic :cmovne
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F46 :r do
  mnemonic :cmovbe
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F47 :r do
  mnemonic :cmova
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F48 :r do
  mnemonic :cmovs
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F49 :r do
  mnemonic :cmovns
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F4A :r do
  mnemonic :cmovp
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F4B :r do
  mnemonic :cmovnp
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F4C :r do
  mnemonic :cmovl
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F4D :r do
  mnemonic :cmovge
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F4E :r do
  mnemonic :cmovle
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F4F :r do
  mnemonic :cmovg
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0F77 do
  mnemonic :emms
end

X0F80 do
  mnemonic :jo
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F81 do
  mnemonic :jno
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F82 do
  mnemonic :jc
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F83 do
  mnemonic :jnc
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F84 do
  mnemonic :jz
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F85 do
  mnemonic :jnz
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F86 do
  mnemonic :jna
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F87 do
  mnemonic :ja
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F88 do
  mnemonic :js
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F89 do
  mnemonic :jns
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F8A do
  mnemonic :jp
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F8B do
  mnemonic :jnp
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F8C do
  mnemonic :jl
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F8D do
  mnemonic :jnl
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F8E do
  mnemonic :jng
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F8F do
  mnemonic :jg
  data16 {
    op :imm, size:16
  }
  data32 {
    op :imm, size:32
  }
end

X0F90 :r do
  mnemonic :seto
  op :rm, size:8
end

X0F91 :r do
  mnemonic :setno
  op :rm, size:8
end

X0F92 :r do
  mnemonic :setc
  op :rm, size:8
end

X0F93 :r do
  mnemonic :setnc
  op :rm, size:8
end

X0F94 :r do
  mnemonic :setz
  op :rm, size:8
end

X0F95 :r do
  mnemonic :setnz
  op :rm, size:8
end

X0F96 :r do
  mnemonic :setna
  op :rm, size:8
end

X0F97 :r do
  mnemonic :seta
  op :rm, size:8
end

X0F98 :r do
  mnemonic :sets
  op :rm, size:8
end

X0F99 :r do
  mnemonic :setns
  op :rm, size:8
end

X0F9A :r do
  mnemonic :setp
  op :rm, size:8
end

X0F9B :r do
  mnemonic :setnp
  op :rm, size:8
end

X0F9C :r do
  mnemonic :setl
  op :rm, size:8
end

X0F9D :r do
  mnemonic :setnl
  op :rm, size:8
end

X0F9E :r do
  mnemonic :setng
  op :rm, size:8
end

X0F9F :r do
  mnemonic :setg
  op :rm, size:8
end

X0FA1 do
  mnemonic :pop
  op :FS
end

X0FA2 do
  mnemonic :cpuid
end

X0FA3 :r do
  mnemonic :bt
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X0FA4 :r do
  mnemonic :shld
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

X0FA5 :r do
  mnemonic :shld
  data16 {
    op :rm, size:16
    op :CL
  }
  data32 {
    op :rm, size:32
    op :CL
  }
end

X0FA9 do
  mnemonic :pop
  op :GS
end

X0FAA do
  mnemonic :rsm
end

X0FAB :r do
  mnemonic :bts
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X0FAC :r do
  mnemonic :shrd
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

X0FAD :r do
  mnemonic :shrd
  data16 {
    op :rm, size:16
    op :CL
  }
  data32 {
    op :rm, size:32
    op :CL
  }
end

X0FAE 0 do
  mnemonic :fxsave
  op :m, size:4096
end

X0FAE 1 do
  mnemonic :fxrstor
  op :m, size:4096
end

X0FAE 2 do
  mnemonic :ldmxcsr
  op :m, size:32
end

X0FAE 3 do
  mnemonic :stmxcsr
  op :m, size:32
end

X0FAE 5 do
  mnemonic :lfence
end

X0FAE 6 do
  mnemonic :mfence
end

X0FAE 7 do
  mnemonic :clflush
  op :m, size:8
end

X0FAE 7 do
  mnemonic :sfence
end

X0FAF :r do
  mnemonic :imul
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0FB0 :r do
  mnemonic :cmpxchg
  op :rm, size:8
  op :r, size:8
end

X0FB1 :r do
  mnemonic :cmpxchg
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X0FB2 :r do
  mnemonic :lss
  data16 {
    op :r, size:16
    op :m, size:32
  }
  data32 {
    op :r, size:32
    op :m, size:48
  }
end

X0FB3 :r do
  mnemonic :btr
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X0FB4 :r do
  mnemonic :lfs
  data16 {
    op :r, size:16
    op :m, size:32
  }
  data32 {
    op :r, size:32
    op :m, size:48
  }
end

X0FB5 :r do
  mnemonic :lgs
  data16 {
    op :r, size:16
    op :m, size:32
  }
  data32 {
    op :r, size:32
    op :m, size:48
  }
end

X0FB6 :r do
  mnemonic :movzx
  data16 {
    op :r, size:16
    op :rm, size:8
  }
  data32 {
    op :r, size:32
    op :rm, size:8
  }
end

X0FB7 :r do
  mnemonic :movzx
  op :r, size:32
  op :rm, size:16
end

X0FBA 4 do
  mnemonic :bt
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

X0FBA 5 do
  mnemonic :bts
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

X0FBA 6 do
  mnemonic :btr
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

X0FBA 7 do
  mnemonic :btc
  data16 {
    op :rm, size:16
    op :imm, size:8
  }
  data32 {
    op :rm, size:32
    op :imm, size:8
  }
end

X0FBB :r do
  mnemonic :btc
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X0FBC :r do
  mnemonic :bsf
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0FBD :r do
  mnemonic :bsr
  data16 {
    op :r, size:16
    op :rm, size:16
  }
  data32 {
    op :r, size:32
    op :rm, size:32
  }
end

X0FBE :r do
  mnemonic :movsx
  data16 {
    op :r, size:16
    op :rm, size:8
  }
  data32 {
    op :r, size:32
    op :rm, size:8
  }
end

X0FBF :r do
  mnemonic :movsx
  op :r, size:32
  op :rm, size:16
end

X0FC0 :r do
  mnemonic :xadd
  op :rm, size:8
  op :r, size:8
end

X0FC1 :r do
  mnemonic :xadd
  data16 {
    op :rm, size:16
    op :r, size:16
  }
  data32 {
    op :rm, size:32
    op :r, size:32
  }
end

X0FC3 :r do
  mnemonic :movnti
  op :m, size:32
  op :r, size:32
end

X0FC7 1 do
  mnemonic :cmpxchg8b
  op :m, size:64
end

X0FC8 do
  mnemonic :bswap
  op :EAX
end

X0FC9 do
  mnemonic :bswap
  op :ECX
end

X0FCA do
  mnemonic :bswap
  op :EDX
end

X0FCB do
  mnemonic :bswap
  op :EBX
end

X0FCC do
  mnemonic :bswap
  op :ESP
end

X0FCD do
  mnemonic :bswap
  op :EBP
end

X0FCE do
  mnemonic :bswap
  op :ESI
end

X0FCF do
  mnemonic :bswap
  op :EDI
end

