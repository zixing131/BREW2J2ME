00018b5c  PUSH            {R0-R2,R4-R11,LR}
00018b60  SUB             SP, SP, #0x10
00018b64  MOV             R5, R0
00018b68  MOV             R4, R1
00018b6c  BL              sub_22744
00018b70  LDR             R7, =(start - 0x18B7C)
00018b74  ADD             R7, PC, R7; start
00018b78  LDR             R0, [R7,#(dword_8 - 0xC)]
00018b7c  ADR             LR, loc_18B8C
00018b80  LDR             R1, [R0,#0x68]
00018b84  LDR             R0, =0x1DAC
00018b88  BX              R1
00018b8c  STR             R0, [R5,#0x898]
00018b90  LDR             R1, [R7,#(dword_8 - 0xC)]
00018b94  LDR             R3, [R1,#4]
00018b98  MOV             R1, #0
00018b9c  ADR             LR, loc_18BA8
00018ba0  LDR             R2, =0x1DAC
00018ba4  BX              R3
00018ba8  LDR             R1, [R7,#(dword_8 - 0xC)]
00018bac  LDR             R0, [R5,#0x898]
00018bb0  LDR             R3, [R1]
00018bb4  MOV             R1, R4
00018bb8  MOV             R2, #0x1C
00018bbc  MOV             LR, PC
00018bc0  BX              R3
00018bc4  LDR             R0, [R5,#0x898]
00018bc8  ADD             R4, R4, #0x1C
00018bcc  LDR             R0, [R0,#0x18]
00018bd0  CMP             R0, #0
00018bd4  BEQ             loc_18C14
00018bd8  MOV             R6, R0,LSL#4
00018bdc  LDR             R0, [R7,#(dword_8 - 0xC)]
00018be0  ADR             LR, loc_18BF0
00018be4  LDR             R1, [R0,#0x68]
00018be8  MOV             R0, R6
00018bec  BX              R1
00018bf0  LDR             R1, [R5,#0x898]
00018bf4  MOV             R2, R6
00018bf8  STR             R0, [R1,#0x1C]
00018bfc  LDR             R1, [R7,#(dword_8 - 0xC)]
00018c00  ADR             LR, loc_18C10
00018c04  LDR             R3, [R1]
00018c08  MOV             R1, R4
00018c0c  BX              R3
00018c10  ADD             R4, R4, R6
00018c14  LDR             R6, [R4],#4
00018c18  MOV             R2, R4
00018c1c  MOV             R0, R5
00018c20  MOV             R1, R6
00018c24  BL              sub_24C38
00018c28  LDR             R1, [R5,#0x898]
00018c2c  ADD             R4, R4, R6,LSL#2
00018c30  LDRH            R0, [R1,#2]
00018c34  LDRH            R1, [R1]
00018c38  ADR             LR, loc_18C50
00018c3c  MUL             R2, R1, R0
00018c40  LDR             R1, [R7,#(dword_8 - 0xC)]
00018c44  ADD             R0, R2, R0,LSL#2
00018c48  LDR             R1, [R1,#0x68]
00018c4c  BX              R1
00018c50  LDR             R1, [R5,#0x898]
00018c54  STR             R0, [R1,#0x20]
00018c58  LDR             R1, [R5,#0x898]
00018c5c  LDRH            R1, [R1,#2]
00018c60  ADD             R2, R0, R1,LSL#2
00018c64  MOV             R1, #0
00018c68  LDR             R0, [R5,#0x898]
00018c6c  LDRH            R3, [R0,#2]
00018c70  CMP             R3, R1
00018c74  LDRGT           R0, [R0,#0x20]
00018c78  STRGT           R2, [R0,R1,LSL#2]
00018c7c  LDRGT           R0, [R5,#0x898]
00018c80  ADDGT           R1, R1, #1
00018c84  LDRHGT          R0, [R0]
00018c88  ADDGT           R2, R0, R2
00018c8c  BGT             loc_18C68
00018c90  LDR             R1, [R5,#0x898]
00018c94  MOV             R10, R7
00018c98  LDRH            R2, [R1,#2]
00018c9c  LDRH            R1, [R0]
00018ca0  LDR             R0, [R0,#0x20]
00018ca4  ADR             LR, loc_18CC4
00018ca8  MUL             R6, R1, R2
00018cac  LDR             R1, [R7,#(dword_8 - 0xC)]
00018cb0  LDR             R0, [R0]
00018cb4  LDR             R3, [R1]
00018cb8  MOV             R1, R4
00018cbc  MOV             R2, R6
00018cc0  BX              R3
00018cc4  LDR             R0, [R5,#0x898]
00018cc8  ADD             R4, R4, R6
00018ccc  LDRB            R1, [R0,#9]
00018cd0  CMP             R1, #0
00018cd4  BEQ             loc_18D6C
00018cd8  LDRH            R1, [R0,#2]
00018cdc  LDRH            R0, [R0]
00018ce0  ADR             LR, loc_18CF8
00018ce4  MUL             R2, R0, R1
00018ce8  ADD             R0, R2, R1,LSL#2
00018cec  LDR             R1, [R10,#(dword_8 - 0xC)]
00018cf0  LDR             R1, [R1,#0x68]
00018cf4  BX              R1
00018cf8  LDR             R1, [R5,#0x898]
00018cfc  STR             R0, [R1,#0x24]
00018d00  LDR             R1, [R5,#0x898]
00018d04  LDRH            R1, [R1,#2]
00018d08  ADD             R2, R0, R1,LSL#2
00018d0c  MOV             R1, #0
00018d10  LDR             R0, [R5,#0x898]
00018d14  LDRH            R3, [R0,#2]
00018d18  CMP             R3, R1
00018d1c  LDRGT           R0, [R0,#0x24]
00018d20  STRGT           R2, [R0,R1,LSL#2]
00018d24  LDRGT           R0, [R5,#0x898]
00018d28  ADDGT           R1, R1, #1
00018d2c  LDRHGT          R0, [R0]
00018d30  ADDGT           R2, R0, R2
00018d34  BGT             loc_18D10
00018d38  LDR             R1, [R5,#0x898]
00018d3c  ADR             LR, loc_18D68
00018d40  LDRH            R2, [R1,#2]
00018d44  LDRH            R1, [R0]
00018d48  LDR             R0, [R0,#0x24]
00018d4c  MUL             R6, R1, R2
00018d50  LDR             R1, [R10,#(dword_8 - 0xC)]
00018d54  LDR             R0, [R0]
00018d58  LDR             R3, [R1]
00018d5c  MOV             R1, R4
00018d60  MOV             R2, R6
00018d64  BX              R3
00018d68  ADD             R4, R4, R6
00018d6c  LDR             R0, [R5,#0x898]
00018d70  ADR             LR, loc_18D98
00018d74  LDRH            R1, [R0]
00018d78  LDRH            R0, [R0,#2]
00018d7c  MOV             R1, R1,LSL#1
00018d80  MUL             R1, R0, R1
00018d84  MOV             R1, R1,LSL#1
00018d88  ADD             R0, R1, R0,LSL#3
00018d8c  LDR             R1, [R10,#(dword_8 - 0xC)]
00018d90  LDR             R1, [R1,#0x68]
00018d94  BX              R1
00018d98  LDR             R1, [R5,#0x898]
00018d9c  STR             R0, [R1,#0x28]
00018da0  LDR             R1, [R5,#0x898]
00018da4  LDRH            R1, [R1,#2]
00018da8  ADD             R1, R0, R1,LSL#3
00018dac  MOV             R0, #0
00018db0  LDR             R2, [R5,#0x898]
00018db4  LDRH            R3, [R2,#2]
00018db8  CMP             R0, R3,LSL#1
00018dbc  LDRLT           R2, [R2,#0x28]
00018dc0  STRLT           R1, [R2,R0,LSL#2]
00018dc4  LDRLT           R2, [R5,#0x898]
00018dc8  ADDLT           R0, R0, #1
00018dcc  LDRHLT          R2, [R2]
00018dd0  ADDLT           R1, R1, R2,LSL#1
00018dd4  BLT             loc_18DB0
00018dd8  MOV             R3, #0
00018ddc  B               loc_18E24
00018de0  LDR             R0, [R0,#0x28]
00018de4  MOV             R1, #0
00018de8  LDR             R2, [R0,R3,LSL#3]
00018dec  ADD             R0, R0, R3,LSL#3
00018df0  LDR             R12, [R0,#4]
00018df4  B               loc_18E10
00018df8  LDRB            R0, [R4],#1
00018dfc  ADD             R1, R1, #1
00018e00  STRB            R0, [R2],#1
00018e04  STRB            R0, [R2],#1
00018e08  STRB            R0, [R12],#1
00018e0c  STRB            R0, [R12],#1
00018e10  LDR             R0, [R5,#0x898]
00018e14  LDRH            R0, [R0]
00018e18  CMP             R0, R1
00018e1c  BGT             loc_18DF8
00018e20  ADD             R3, R3, #1
00018e24  LDR             R0, [R5,#0x898]
00018e28  LDRH            R1, [R0,#2]
00018e2c  CMP             R1, R3
00018e30  BGT             loc_18DE0
00018e34  LDR             R0, [R4]
00018e38  LDR             R1, [R5,#0x898]
00018e3c  ADD             R7, R4, #0x10
00018e40  STR             R0, [R1,#0x3C]
00018e44  LDR             R1, [R4,#4]
00018e48  LDR             R2, [R5,#0x898]
00018e4c  ADR             LR, loc_18E94
00018e50  STR             R1, [R2,#0x2C]
00018e54  LDR             R1, [R4,#8]
00018e58  LDR             R2, [R5,#0x898]
00018e5c  STR             R1, [R2,#0x44]
00018e60  LDR             R1, [R4,#0xC]
00018e64  LDR             R2, [R5,#0x898]
00018e68  STR             R1, [R2,#0x34]
00018e6c  LDR             R0, [R5,#0x898]
00018e70  LDR             R1, [R0,#0x3C]
00018e74  LDR             R0, [R0,#0x44]
00018e78  ADD             R0, R1, R0,LSL#2
00018e7c  MOV             R1, #0x48 ; 'H'
00018e80  MUL             R4, R1, R0
00018e84  LDR             R0, [R10,#(dword_8 - 0xC)]
00018e88  LDR             R1, [R0,#0x68]
00018e8c  MOV             R0, R4
00018e90  BX              R1
00018e94  LDR             R1, [R5,#0x898]
00018e98  MOV             R2, R4
00018e9c  STR             R0, [R1,#0x40]
00018ea0  LDR             R1, [R10,#(dword_8 - 0xC)]
00018ea4  ADR             LR, loc_18EB4
00018ea8  LDR             R3, [R1,#4]
00018eac  MOV             R1, #0
00018eb0  BX              R3
00018eb4  MOV             R9, #0
00018eb8  MOV             R6, #0
00018ebc  MOV             R4, #1
00018ec0  B               loc_18F48
00018ec4  LDR             R0, [R0,#0x40]
00018ec8  ADD             R1, R9, R9,LSL#3
00018ecc  LDR             R10, =(start - 0x18EE0)
00018ed0  ADD             R8, R0, R1,LSL#3
00018ed4  STRB            R4, [R8]
00018ed8  ADD             R10, PC, R10; start
00018edc  LDR             R0, [R10,#(dword_8 - 0xC)]
00018ee0  MOV             R1, R7
00018ee4  LDR             R3, [R0]
00018ee8  ADD             R0, R8, #0x14
00018eec  MOV             R2, #0xC
00018ef0  MOV             LR, PC
00018ef4  BX              R3
00018ef8  LDRH            R1, [R8,#0x14]
00018efc  LDR             R0, [R5,#0x81C]
00018f00  ADD             R7, R7, #0xC
00018f04  ADD             R0, R0, R1,LSL#4
00018f08  LDRB            R1, [R0]
00018f0c  ADD             R9, R9, #1
00018f10  TST             R1, #1
00018f14  LDRHNE          R1, [R8,#0x16]
00018f18  ORRNE           R1, R1, #8
00018f1c  STRHNE          R1, [R8,#0x16]
00018f20  LDRB            R1, [R0,#1]
00018f24  MOV             R1, R1,LSL#5
00018f28  STRB            R1, [R8,#0x20]
00018f2c  LDRB            R1, [R0,#2]
00018f30  MOV             R1, R1,LSL#5
00018f34  STRB            R1, [R8,#0x21]
00018f38  LDRB            R0, [R0,#3]
00018f3c  MOV             R0, R0,LSL#5
00018f40  STRB            R0, [R8,#0x22]
00018f44  STRB            R6, [R8,#0x24]
00018f48  LDR             R0, [R5,#0x898]
00018f4c  LDR             R1, [R0,#0x3C]
00018f50  CMP             R1, R9
00018f54  BHI             loc_18EC4
00018f58  LDR             R0, [R5,#0x898]
00018f5c  LDR             R0, [R0,#0x2C]
00018f60  CMP             R0, #0
00018f64  BEQ             loc_18FFC
00018f68  MOV             R8, #0x28 ; '('
00018f6c  LDR             R10, =(start - 0x18F7C)
00018f70  MUL             R0, R8, R0
00018f74  ADD             R10, PC, R10; start
00018f78  LDR             R1, [R10,#(dword_8 - 0xC)]
00018f7c  ADR             LR, loc_18F88
00018f80  LDR             R1, [R1,#0x68]
00018f84  BX              R1
00018f88  LDR             R1, [R5,#0x898]
00018f8c  STR             R0, [R1,#0x30]
00018f90  LDR             R1, [R5,#0x898]
00018f94  ADR             LR, loc_18FB0
00018f98  LDR             R1, [R1,#0x2C]
00018f9c  MUL             R2, R8, R1
00018fa0  LDR             R1, [R10,#(dword_8 - 0xC)]
00018fa4  LDR             R3, [R1,#4]
00018fa8  MOV             R1, #0
00018fac  BX              R3
00018fb0  MOV             R8, #0
00018fb4  MOV             R9, #2
00018fb8  B               loc_18FEC
00018fbc  LDR             R0, [R0,#0x30]
00018fc0  ADD             R1, R8, R8,LSL#2
00018fc4  ADD             R0, R0, R1,LSL#3
00018fc8  STRB            R9, [R0],#0x14
00018fcc  LDR             R1, [R10,#(dword_8 - 0xC)]
00018fd0  MOV             R2, #8
00018fd4  LDR             R3, [R1]
00018fd8  MOV             R1, R7
00018fdc  MOV             LR, PC
00018fe0  BX              R3
00018fe4  ADD             R7, R7, #8
00018fe8  ADD             R8, R8, #1
00018fec  LDR             R0, [R5,#0x898]
00018ff0  LDR             R1, [R0,#0x2C]
00018ff4  CMP             R1, R8
00018ff8  BHI             loc_18FBC
00018ffc  LDR             R0, [R5,#0x898]
00019000  LDR             R0, [R0,#0x44]
00019004  CMP             R0, #0
00019008  BEQ             loc_192D8
0001900c  MOV             R8, #0x1C
00019010  LDR             R10, =(start - 0x19020)
00019014  MUL             R0, R8, R0
00019018  ADD             R10, PC, R10; start
0001901c  LDR             R1, [R10,#(dword_8 - 0xC)]
00019020  ADR             LR, loc_1902C
00019024  LDR             R1, [R1,#0x68]
00019028  BX              R1
0001902c  LDR             R1, [R5,#0x898]
00019030  STR             R0, [R1,#0x48]
00019034  LDR             R1, [R5,#0x898]
00019038  ADR             LR, loc_19054
0001903c  LDR             R1, [R1,#0x44]
00019040  MUL             R2, R8, R1
00019044  LDR             R1, [R10,#(dword_8 - 0xC)]
00019048  LDR             R3, [R1,#4]
0001904c  MOV             R1, #0
00019050  BX              R3
00019054  MOV             R10, #0
00019058  B               loc_192C8
0001905c  LDR             R0, [R0,#0x48]
00019060  RSB             R1, R10, R10,LSL#3
00019064  ADD             R4, R0, R1,LSL#2
00019068  LDRH            R1, [R7]
0001906c  LDRH            R0, [R7,#2]
00019070  STR             R0, [SP,#0x1C+var_14]
00019074  LDRH            LR, [R7,#4]
00019078  STR             LR, [SP,#0x1C+var_10]
0001907c  LDR             R0, [R5,#0x884]
00019080  LDRH            R11, [R7,#6]
00019084  STRH            R1, [R4]
00019088  ADD             R6, R0, R1,LSL#5
0001908c  LDRH            R0, [R6,#0x1C]
00019090  MOV             LR, #0
00019094  ADD             R7, R7, #0xC
00019098  STRH            R0, [R4,#2]
0001909c  STRH            LR, [R4,#4]
000190a0  LDR             R0, [SP,#0x1C+var_14]
000190a4  STRH            R0, [R4,#6]
000190a8  LDR             R0, [R6]
000190ac  STR             R0, [R4,#8]
000190b0  LDRH            R0, [R6,#0x18]
000190b4  MOV             R9, R0,LSR#1
000190b8  LDRH            R0, [R6,#0x1A]
000190bc  MOV             R2, R0,LSR#1
000190c0  STR             R2, [SP,#0x1C+var_18]
000190c4  LDR             R0, [SP,#0x1C+var_14]
000190c8  BL              sub_197A8
000190cc  MOV             R8, R0
000190d0  LDR             R0, [SP,#0x1C+var_14]
000190d4  BL              sub_196D8
000190d8  LDR             R2, [SP,#0x1C+var_18]
000190dc  RSB             R1, R9, #0
000190e0  RSB             R3, R2, #0
000190e4  MUL             R12, R8, R3
000190e8  MLA             R2, R0, R1, R12
000190ec  LDR             LR, [SP,#0x1C+var_10]
000190f0  MLA             R12, R0, R9, R12
000190f4  ADD             R2, LR, R2,ASR#16
000190f8  STRH            R2, [R4,#0xC]
000190fc  LDR             R2, [SP,#0x1C+var_18]
00019100  MUL             R3, R0, R3
00019104  MUL             R2, R0, R2
00019108  MLA             LR, R8, R1, R2
0001910c  ADD             LR, R11, LR,ASR#16
00019110  STRH            LR, [R4,#0xE]
00019114  LDR             LR, [SP,#0x1C+var_10]
00019118  MLA             R2, R8, R9, R2
0001911c  ADD             R12, LR, R12,ASR#16
00019120  STRH            R12, [R4,#0x10]
00019124  ADD             R2, R11, R2,ASR#16
00019128  STRH            R2, [R4,#0x12]
0001912c  LDR             R2, [SP,#0x1C+var_18]
00019130  LDR             LR, [SP,#0x1C+var_10]
00019134  MUL             R2, R8, R2
00019138  MLA             R12, R0, R9, R2
0001913c  ADD             R12, LR, R12,ASR#16
00019140  STRH            R12, [R4,#0x14]
00019144  MLA             R2, R0, R1, R2
00019148  MLA             R12, R8, R9, R3
0001914c  ADD             R12, R11, R12,ASR#16
00019150  STRH            R12, [R4,#0x16]
00019154  LDR             LR, [SP,#0x1C+var_10]
00019158  MLA             R1, R8, R1, R3
0001915c  ADD             R0, LR, R2,ASR#16
00019160  STRH            R0, [R4,#0x18]
00019164  ADD             R0, R11, R1,ASR#16
00019168  STRH            R0, [R4,#0x1A]
0001916c  MOV             R3, R10,LSL#16
00019170  MOV             R3, R3,LSR#16
00019174  MOV             R0, #0
00019178  MOV             LR, #0
0001917c  MOV             R12, #1
00019180  LDR             R2, [R5,#0x898]
00019184  CMP             R0, #0
00019188  LDR             R8, [R2,#0x3C]
0001918c  LDR             R1, [R2,#0x40]
00019190  ADD             R8, R8, R8,LSL#3
00019194  ADD             R1, R1, R8,LSL#3
00019198  LDR             R8, [R2,#0x3C]!
0001919c  ADD             R8, R8, #1
000191a0  STR             R8, [R2]
000191a4  STRB            R12, [R1]
000191a8  STRH            LR, [R1,#0x16]
000191ac  LDRH            R2, [R6,#0x1C]
000191b0  STRB            R2, [R1,#0x20]
000191b4  STRB            LR, [R1,#0x22]
000191b8  STRB            R12, [R1,#0x24]
000191bc  STRH            R3, [R1,#0x26]
000191c0  STRB            R0, [R1,#0x25]
000191c4  BNE             loc_19200
000191c8  LDRH            R2, [R4,#0xC]
000191cc  STRH            R2, [R1,#0x18]
000191d0  LDRH            R2, [R4,#0xE]
000191d4  STRH            R2, [R1,#0x1A]
000191d8  LDRH            R2, [R4,#0x18]
000191dc  STRH            R2, [R1,#0x1C]
000191e0  LDRH            R2, [R4,#0x1A]
000191e4  STRH            R2, [R1,#0x1E]
000191e8  LDRH            R2, [R6,#0x1A]
000191ec  STRB            R2, [R1,#0x21]
000191f0  LDRB            R2, [R6,#0x14]
000191f4  CMP             R2, #0
000191f8  BEQ             loc_192B8
000191fc  B               loc_192B4
00019200  CMP             R0, #1
00019204  BNE             loc_19240
00019208  LDRH            R2, [R4,#0x18]
0001920c  STRH            R2, [R1,#0x18]
00019210  LDRH            R2, [R4,#0x1A]
00019214  STRH            R2, [R1,#0x1A]
00019218  LDRH            R2, [R4,#0x14]
0001921c  STRH            R2, [R1,#0x1C]
00019220  LDRH            R2, [R4,#0x16]
00019224  STRH            R2, [R1,#0x1E]
00019228  LDRH            R2, [R6,#0x18]
0001922c  STRB            R2, [R1,#0x21]
00019230  LDRB            R2, [R6,#0x16]
00019234  CMP             R2, #0
00019238  BEQ             loc_192B8
0001923c  B               loc_192B4
00019240  CMP             R0, #2
00019244  BNE             loc_19280
00019248  LDRH            R2, [R4,#0x14]
0001924c  STRH            R2, [R1,#0x18]
00019250  LDRH            R2, [R4,#0x16]
00019254  STRH            R2, [R1,#0x1A]
00019258  LDRH            R2, [R4,#0x10]
0001925c  STRH            R2, [R1,#0x1C]
00019260  LDRH            R2, [R4,#0x12]
00019264  STRH            R2, [R1,#0x1E]
00019268  LDRH            R2, [R6,#0x1A]
0001926c  STRB            R2, [R1,#0x21]
00019270  LDRB            R2, [R6,#0x15]
00019274  CMP             R2, #0
00019278  BNE             loc_192B8
0001927c  B               loc_192B4
00019280  LDRH            R2, [R4,#0x10]
00019284  STRH            R2, [R1,#0x18]
00019288  LDRH            R2, [R4,#0x12]
0001928c  STRH            R2, [R1,#0x1A]
00019290  LDRH            R2, [R4,#0xC]
00019294  STRH            R2, [R1,#0x1C]
00019298  LDRH            R2, [R4,#0xE]
0001929c  STRH            R2, [R1,#0x1E]
000192a0  LDRH            R2, [R6,#0x18]
000192a4  STRB            R2, [R1,#0x21]
000192a8  LDRB            R2, [R6,#0x17]
000192ac  CMP             R2, #0
000192b0  BNE             loc_192B8
000192b4  STRH            R12, [R1,#0x16]
000192b8  ADD             R0, R0, #1
000192bc  CMP             R0, #4
000192c0  BLT             loc_19180
000192c4  ADD             R10, R10, #1
000192c8  LDR             R0, [R5,#0x898]
000192cc  LDR             R1, [R0,#0x44]
000192d0  CMP             R1, R10
000192d4  BHI             loc_1905C
000192d8  LDR             R0, [R5,#0x898]
000192dc  LDR             R0, [R0,#0x34]
000192e0  CMP             R0, #0
000192e4  BEQ             loc_19384
000192e8  MOV             R4, #0x4C ; 'L'
000192ec  LDR             R6, =(start - 0x192FC)
000192f0  MUL             R0, R4, R0
000192f4  ADD             R6, PC, R6; start
000192f8  LDR             R1, [R6,#(dword_8 - 0xC)]
000192fc  ADR             LR, loc_19308
00019300  LDR             R1, [R1,#0x68]
00019304  BX              R1
00019308  LDR             R1, [R5,#0x898]
0001930c  STR             R0, [R1,#0x38]
00019310  LDR             R1, [R5,#0x898]
00019314  ADR             LR, loc_19330
00019318  LDR             R1, [R1,#0x34]
0001931c  MUL             R2, R4, R1
00019320  LDR             R1, [R6,#(dword_8 - 0xC)]
00019324  LDR             R3, [R1,#4]
00019328  MOV             R1, #0
0001932c  BX              R3
00019330  MOV             R4, #0
00019334  MOV             R8, #4
00019338  MOV             R9, #0x13
0001933c  B               loc_19374
00019340  LDR             R0, [R0,#0x38]
00019344  MUL             R1, R9, R4
00019348  ADD             R0, R0, R1,LSL#2
0001934c  STRB            R8, [R0]
00019350  LDR             R1, [R6,#(dword_8 - 0xC)]
00019354  MOV             R2, #0x14
00019358  LDR             R3, [R1]
0001935c  MOV             R1, R7
00019360  ADD             R0, R0, R2
00019364  MOV             LR, PC
00019368  BX              R3
0001936c  ADD             R7, R7, #0x14
00019370  ADD             R4, R4, #1
00019374  LDR             R0, [R5,#0x898]
00019378  LDR             R1, [R0,#0x34]
0001937c  CMP             R1, R4
00019380  BHI             loc_19340
00019384  MOV             R0, R5
00019388  LDR             R1, [SP,#0x1C+var_4]
0001938c  BL              sub_235F4
00019390  LDR             R0, [R5,#0x898]
00019394  LDR             R3, [R0,#0x48]
00019398  STR             R3, [SP,#0x1C+var_1C]
0001939c  ADD             R3, R0, #0x3C ; '<'
000193a0  LDM             R3, {R2,R3}
000193a4  LDR             R1, [SP,#0x1C+var_4]
000193a8  ADD             R0, R5, #0x810
000193ac  BL              sub_2319C
000193b0  MOV             R0, R5
000193b4  BL              sub_22FD8
000193b8  ADD             SP, SP, #0x1C
000193bc  POP             {R4-R11,LR}
000193c0  MOV             R0, #1
000193c4  BX              LR
