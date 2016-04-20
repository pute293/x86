# x86 disassembler

- x86_64 (aka amd64) support is limited
- SIMD support is limited

# example
    
    require_relative './parser'
    
    puts X86::Parser.disas("\x0f\x10\x00\x0f\x10\xc0\x0f\x12\x00\x0f\x12\xc0\x0f\x16\x00\x0f\x16\xc1")
    
    # *** output ***
    # 0x00000000      0F 10 00        movups  xmm0, XMMWORD PTR ds:[eax]
    # 0x00000003      0F 10 C0        movups  xmm0, xmm0
    # 0x00000006      0F 12 00        movlps  xmm0, QWORD PTR ds:[eax]
    # 0x00000009      0F 12 C0        movhlps xmm0, xmm0
    # 0x0000000c      0F 16 00        movhps  xmm0, QWORD PTR ds:[eax]
    # 0x0000000f      0F 16 C1        movlhps xmm0, xmm1
