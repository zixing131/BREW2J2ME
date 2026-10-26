00015bb8  PUSH            {R0-R2,R4-R11,LR}
00015bbc  LDR             R10, =(start - 0x15BD4)
00015bc0  SUB             SP, SP, #0x80
00015bc4  MOV             R5, R2
00015bc8  MOV             R4, R0
00015bcc  ADD             R10, PC, R10; start
00015bd0  LDR             R0, [R10,#(dword_8 - 0xC)]
00015bd4  ADR             LR, loc_15BE0
00015bd8  LDR             R0, [R0,#0xC0]
00015bdc  BX              R0
00015be0  LDR             R7, [R0,#0x28]
00015be4  LDR             R0, [R10,#(dword_8 - 0xC)]
00015be8  LDR             R0, [R0,#0xC0]
00015bec  MOV             LR, PC
00015bf0  BX              R0
00015bf4  LDR             R0, [R0,#0x760]
00015bf8  LDR             R8, =0x1BE
00015bfc  ADR             LR, loc_15C10
00015c00  LDRSH           R8, [R0,R8]
00015c04  LDR             R0, [R10,#(dword_8 - 0xC)]
00015c08  LDR             R0, [R0,#0xC0]
00015c0c  BX              R0
00015c10  LDR             R0, [R0,#0x760]
00015c14  MOV             R9, #0x1C0
00015c18  LDRSH           R9, [R0,R9]
00015c1c  LDR             R0, [R10,#(dword_8 - 0xC)]
00015c20  ADR             LR, loc_15C2C
00015c24  LDR             R0, [R0,#0xC0]
00015c28  BX              R0
00015c2c  LDR             R0, [R0,#0x760]
00015c30  LDR             R6, =0x1BA
00015c34  ADR             LR, loc_15C48
00015c38  LDRSH           R6, [R0,R6]
00015c3c  LDR             R0, [R10,#(dword_8 - 0xC)]
00015c40  LDR             R0, [R0,#0xC0]
00015c44  BX              R0
00015c48  LDR             R0, [R0,#0x760]
00015c4c  MOV             R10, #0x1BC
00015c50  LDRSH           R10, [R0,R10]
00015c54  LDR             R0, [R4,#0x40]
00015c58  LDR             R1, [SP,#0x8C+var_8]
00015c5c  MOV             R11, #0
00015c60  CMP             R1, #0x12
00015c64  BEQ             loc_15D84
00015c68  BGT             loc_15CC8
00015c6c  CMP             R1, #1
00015c70  CMPNE           R1, #2
00015c74  BEQ             loc_15D10
00015c78  CMP             R1, #4
00015c7c  BEQ             loc_15DAC
00015c80  CMP             R1, #0x11
00015c84  BNE             loc_15DA0
00015c88  LDR             R0, [R5,#8]
00015c8c  MOV             R3, R0,LSL#16
00015c90  MOV             R3, R3,LSR#16
00015c94  STR             R3, [SP,#0x8C+var_8C]
00015c98  LDR             R0, [R5,#0x14]
00015c9c  LDR             R1, [R5,#0x18]
00015ca0  MOV             R3, R0,LSL#16
00015ca4  LDR             R0, [R5,#0x10]
00015ca8  MOV             R3, R3,LSR#16
00015cac  MOV             R2, R0,LSL#16
00015cb0  MOV             R2, R2,LSR#16
00015cb4  LDR             R0, [R4,#0xC]
00015cb8  BL              sub_EE4
00015cbc  MOV             R0, #0x11
00015cc0  STRB            R0, [R4,#5]
00015cc4  B               loc_1617C
00015cc8  CMP             R1, #0x13
00015ccc  BEQ             loc_15D30
00015cd0  CMP             R1, #0x14
00015cd4  MOVEQ           R0, #0x14
00015cd8  STRBEQ          R0, [R4,#5]
00015cdc  LDREQ           R0, [R5,#4]
00015ce0  STRHEQ          R0, [R4,#0x16]
00015ce4  LDREQ           R0, [R5,#8]
00015ce8  STRBEQ          R0, [R4,#0x24]
00015cec  BEQ             loc_1617C
00015cf0  CMP             R1, #0x15
00015cf4  BNE             loc_15DA0
00015cf8  MOV             R0, #0x15
00015cfc  STRB            R0, [R4,#5]
00015d00  STRB            R11, [R4,#0x14]
00015d04  LDRH            R0, [R4,#0x4A]
00015d08  STRH            R0, [R4,#0x30]
00015d0c  B               loc_1617C
00015d10  LDR             R0, [R5,#4]
00015d14  STRH            R0, [R4,#0x2E]
00015d18  LDR             R0, [R5,#8]
00015d1c  STRH            R0, [R4,#0x2C]
00015d20  STRH            R11, [R4,#0x2A]
00015d24  LDR             R1, [SP,#0x8C+var_8]
00015d28  STRB            R1, [R4,#5]
00015d2c  B               loc_1617C
00015d30  MOV             R1, #0x13
00015d34  STRB            R1, [R4,#5]
00015d38  LDR             R1, [R5,#4]
00015d3c  MOV             R2, #0x10
00015d40  STRH            R1, [R4,#0x20]
00015d44  LDR             R1, [R5,#8]
00015d48  STRH            R1, [R4,#0x16]
00015d4c  LDR             R1, [R5,#0xC]
00015d50  ADD             R1, R2, R1,LSL#5
00015d54  STRH            R1, [R4,#0x1C]
00015d58  LDR             R1, [R5,#0x10]
00015d5c  ADD             R1, R2, R1,LSL#5
00015d60  STRH            R1, [R4,#0x1E]
00015d64  LDR             R1, [R0,#0x324]
00015d68  LDR             R1, [R1]
00015d6c  STRH            R1, [R4,#0x18]
00015d70  LDR             R0, [R0,#0x328]
00015d74  LDR             R0, [R0]
00015d78  STRH            R0, [R4,#0x1A]
00015d7c  STRH            R11, [R4,#0x22]
00015d80  B               loc_1617C
00015d84  MOV             R0, #0x12
00015d88  STRB            R0, [R4,#5]
00015d8c  LDRH            R0, [R4,#0x3E]
00015d90  ADD             R0, R0, #1
00015d94  STRH            R0, [R4,#0x3E]
00015d98  STRB            R11, [R4,#0x14]
00015d9c  STRB            R11, [R4,#0x15]
00015da0  ADD             SP, SP, #0x8C
00015da4  POP             {R4-R11,LR}
00015da8  BX              LR
00015dac  MOV             R0, #4
00015db0  STRB            R0, [R4,#5]
00015db4  LDR             R0, [R4,#8]
00015db8  BL              sub_602C
00015dbc  LDR             R1, [R4,#8]
00015dc0  MOV             R0, #1
00015dc4  STRB            R0, [R1,#0x12C]
00015dc8  LDR             R1, [R4,#8]
00015dcc  MOV             R2, #2
00015dd0  STRB            R0, [R1,#0x124]
00015dd4  LDR             R1, [R4,#8]
00015dd8  ADD             R1, R1, #0x100
00015ddc  STRH            R0, [R1,#0x2E]
00015de0  LDR             R0, [R4,#8]
00015de4  STRH            R2, [R0,#0x9E]
00015de8  LDR             R0, [R5,#0xC]
00015dec  CMP             R0, #1
00015df0  BEQ             loc_15E6C
00015df4  CMP             R0, #2
00015df8  BEQ             loc_15FB4
00015dfc  CMP             R0, #3
00015e00  BNE             loc_16100
00015e04  LDR             R0, [R4,#8]
00015e08  ADD             R0, R0, #0x100
00015e0c  STRH            R11, [R0,#0x32]
00015e10  LDR             R1, [R4,#8]
00015e14  MOV             R0, #4
00015e18  STRH            R0, [R1,#0x9A]
00015e1c  LDR             R1, [R4,#8]
00015e20  STRH            R0, [R1,#0x9C]
00015e24  LDR             R1, [R4,#8]
00015e28  MOV             R0, #0x18
00015e2c  STRH            R0, [R1,#0x98]
00015e30  ADD             R0, R6, R6,LSR#31
00015e34  LDR             R1, [R4,#8]
00015e38  MOV             R0, R0,ASR#1
00015e3c  STRH            R0, [R1,#0x96]
00015e40  MOV             R0, R6,ASR#31
00015e44  ADD             R0, R6, R0,LSR#30
00015e48  LDR             R1, [R4,#8]
00015e4c  ADD             R0, R8, R0,ASR#2
00015e50  STRH            R0, [R1,#0x92]
00015e54  LDR             R0, [R4,#8]
00015e58  LDRSH           R1, [R0,#0x98]
00015e5c  SUB             R1, R10, R1
00015e60  ADD             R1, R1, R1,LSR#31
00015e64  ADD             R1, R9, R1,ASR#1
00015e68  B               loc_160EC
00015e6c  LDR             R0, [R4,#8]
00015e70  MOV             R1, #1
00015e74  ADD             R0, R0, #0x100
00015e78  STRH            R1, [R0,#0x32]
00015e7c  LDR             R1, [R4,#8]
00015e80  MOV             R0, R6
00015e84  STRH            R6, [R1,#0x96]
00015e88  SUB             R1, R0, #0x62 ; 'b'
00015e8c  MOV             R0, #0xE
00015e90  LDR             R6, [R4,#8]
00015e94  BL              sub_104
00015e98  ADD             R0, R1, R1,LSR#31
00015e9c  MOV             R0, R0,ASR#1
00015ea0  ADD             R0, R0, #0xE
00015ea4  STRH            R0, [R6,#0x9A]
00015ea8  LDR             R0, [R4,#8]
00015eac  MOV             R1, #1
00015eb0  STRH            R1, [R0,#0x9C]
00015eb4  LDR             R0, [R5,#0x10]
00015eb8  LDR             R1, [R4,#8]
00015ebc  CMP             R0, #0
00015ec0  MOVLE           R0, #0x32 ; '2'
00015ec4  MOVGT           R0, #0x22 ; '"'
00015ec8  STRH            R0, [R1,#0x98]
00015ecc  LDR             R1, [R4,#8]
00015ed0  ADD             R0, R8, #0x46 ; 'F'
00015ed4  STRH            R0, [R1,#0x92]
00015ed8  LDR             R0, [R4,#8]
00015edc  LDRSH           R1, [R0,#0x98]
00015ee0  SUB             R1, R10, R1
00015ee4  ADD             R1, R1, R1,LSR#31
00015ee8  ADD             R1, R9, R1,ASR#1
00015eec  STRH            R1, [R0,#0x94]
00015ef0  LDR             R1, [R4,#8]
00015ef4  MOV             R0, #0x10
00015ef8  ADD             R1, R1, #0x100
00015efc  STRH            R0, [R1,#0x20]
00015f00  LDR             R0, [R4,#8]
00015f04  MOV             R1, #0xFFFFFFFF
00015f08  STR             R1, [R0,#0x7C]
00015f0c  LDR             R0, [R5,#0x10]
00015f10  LDR             R1, [R4,#8]
00015f14  MOV             R0, R0,LSL#16
00015f18  MOV             R0, R0,ASR#16
00015f1c  ADD             R1, R1, #0x100
00015f20  STRH            R0, [R1,#0x30]
00015f24  CMP             R0, #0
00015f28  BLE             loc_16100
00015f2c  STRH            R11, [SP,#0x8C+var_8C]
00015f30  LDR             R0, [R4,#8]
00015f34  MOV             R1, #0x130
00015f38  LDRSH           R1, [R0,R1]
00015f3c  MOV             R0, R7
00015f40  MOV             R3, #0x80
00015f44  MOV             R2, SP
00015f48  BL              sub_19618
00015f4c  LDRH            R0, [SP,#0x8C+var_8C]
00015f50  SUBS            R12, R0, #0x7400
00015f54  SUBSGE          R12, R12, #0x5E ; '^'
00015f58  LDREQ           R0, =0x1B5A
00015f5c  BEQ             loc_15FA8
00015f60  BGT             loc_15F88
00015f64  SUB             R12, R0, #0x5100
00015f68  SUBS            R12, R12, #0x4B ; 'K'
00015f6c  LDREQ           R0, =0x1B5C
00015f70  BEQ             loc_15FA8
00015f74  SUB             R12, R0, #0x6800
00015f78  SUBS            R12, R12, #0x51 ; 'Q'
00015f7c  LDREQ           R0, =0x1B5B
00015f80  BEQ             loc_15FA8
00015f84  B               loc_16100
00015f88  SUB             R12, R0, #0x8C00
00015f8c  SUBS            R12, R12, #0x6A ; 'j'
00015f90  LDREQ           R0, =0x1B59
00015f94  BEQ             loc_15FA8
00015f98  SUB             R12, R0, #0x8F00
00015f9c  SUBS            R12, R12, #0xBE
00015fa0  BNE             loc_16100
00015fa4  LDR             R0, =0x1B5D
00015fa8  LDR             R1, [R4,#8]
00015fac  STR             R0, [R1,#0x7C]
00015fb0  B               loc_16100
00015fb4  LDR             R1, [R4,#8]
00015fb8  LDR             R0, [R5,#0x10]
00015fbc  ADD             R1, R1, #0x100
00015fc0  STRH            R0, [R1,#0x30]
00015fc4  LDR             R0, [R4,#8]
00015fc8  MOV             R1, #0xFFFFFFFF
00015fcc  ADD             R0, R0, #0x100
00015fd0  STRH            R2, [R0,#0x32]
00015fd4  LDR             R0, [R4,#8]
00015fd8  STR             R1, [R0,#0x7C]
00015fdc  LDR             R0, [R4,#8]
00015fe0  ADD             R0, R0, #0x100
00015fe4  LDRSH           R0, [R0,#0x30]
00015fe8  CMP             R0, #0
00015fec  BLE             loc_16084
00015ff0  STRH            R11, [SP,#0x8C+var_8C]
00015ff4  LDR             R0, [R4,#8]
00015ff8  MOV             R1, #0x130
00015ffc  LDRSH           R1, [R0,R1]
00016000  MOV             R0, R7
00016004  MOV             R3, #0x80
00016008  MOV             R2, SP
0001600c  BL              sub_19618
00016010  LDRH            R0, [SP,#0x8C+var_8C]
00016014  SUBS            R12, R0, #0x7400
00016018  SUBSGE          R12, R12, #0x5E ; '^'
0001601c  LDREQ           R0, =0x1B5A
00016020  BEQ             loc_1606C
00016024  BGT             loc_1604C
00016028  SUB             R12, R0, #0x5100
0001602c  SUBS            R12, R12, #0x4B ; 'K'
00016030  LDREQ           R0, =0x1B5C
00016034  BEQ             loc_1606C
00016038  SUB             R12, R0, #0x6800
0001603c  SUBS            R12, R12, #0x51 ; 'Q'
00016040  LDREQ           R0, =0x1B5B
00016044  BEQ             loc_1606C
00016048  B               loc_16078
0001604c  SUB             R12, R0, #0x8C00
00016050  SUBS            R12, R12, #0x6A ; 'j'
00016054  LDREQ           R0, =0x1B59
00016058  BEQ             loc_1606C
0001605c  SUB             R12, R0, #0x8F00
00016060  SUBS            R12, R12, #0xBE
00016064  BNE             loc_16078
00016068  LDR             R0, =0x1B5D
0001606c  LDR             R1, [R4,#8]
00016070  STR             R0, [R1,#0x7C]
00016074  B               loc_16084
00016078  LDR             R0, [R4,#8]
0001607c  MOV             R1, #0xFFFFFFFF
00016080  STR             R1, [R0,#0x7C]
00016084  LDR             R0, [R4,#8]
00016088  SUB             R1, R6, #0x14
0001608c  STRH            R6, [R0,#0x96]
00016090  LDR             R11, [R4,#8]
00016094  MOV             R0, #0xE
00016098  BL              sub_104
0001609c  ADD             R0, R1, R1,LSR#31
000160a0  MOV             R0, R0,ASR#1
000160a4  ADD             R0, R0, #0xA
000160a8  STRH            R0, [R11,#0x9A]
000160ac  LDR             R1, [R4,#8]
000160b0  MOV             R0, #1
000160b4  STRH            R0, [R1,#0x9C]
000160b8  LDR             R0, [R5,#0x10]
000160bc  LDR             R1, [R4,#8]
000160c0  CMP             R0, #0
000160c4  MOVLE           R0, #0x32 ; '2'
000160c8  MOVGT           R0, #0x22 ; '"'
000160cc  STRH            R0, [R1,#0x98]
000160d0  LDR             R0, [R4,#8]
000160d4  ADD             R1, R9, R10
000160d8  STRH            R8, [R0,#0x92]
000160dc  LDR             R0, [R4,#8]
000160e0  LDRH            R2, [R0,#0x98]
000160e4  SUB             R1, R1, R2
000160e8  SUB             R1, R1, #7
000160ec  STRH            R1, [R0,#0x94]
000160f0  LDR             R1, [R4,#8]
000160f4  MOV             R0, #0x10
000160f8  ADD             R1, R1, #0x100
000160fc  STRH            R0, [R1,#0x20]
00016100  LDR             R0, [R4,#8]
00016104  MOV             R1, #0xFFFFFFFF
00016108  STR             R1, [R0,#0x10]
0001610c  LDR             R1, [R5,#0x18]
00016110  MOV             R0, R7
00016114  MOV             R3, #0
00016118  MOV             R2, #0
0001611c  BL              sub_19618
00016120  MOV             R6, R0
00016124  CMP             R0, #0
00016128  BLT             loc_15DA0
0001612c  LDR             R10, =(start - 0x16138)
00016130  ADD             R10, PC, R10; start
00016134  LDR             R0, [R10,#(dword_8 - 0xC)]
00016138  ADR             LR, loc_16148
0001613c  LDR             R1, [R0,#0x68]
00016140  MOV             R0, R6
00016144  BX              R1
00016148  LDR             R1, [R4,#8]
0001614c  CMP             R0, #0
00016150  STR             R0, [R1,#0xA0]
00016154  BEQ             loc_15DA0
00016158  MOV             R2, R0
0001615c  MOV             R0, R7
00016160  MOV             R3, R6
00016164  LDR             R1, [R5,#0x18]
00016168  BL              sub_19618
0001616c  LDR             R1, [R4,#8]
00016170  MOV             R0, #1
00016174  ADD             R1, R1, #0x100
00016178  STRH            R0, [R1,#0x22]
0001617c  LDRH            R0, [R4,#0x3E]
00016180  ADD             R0, R0, #1
00016184  STRH            R0, [R4,#0x3E]
00016188  B               loc_15DA0
