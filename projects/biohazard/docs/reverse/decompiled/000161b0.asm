000161b0  PUSH            {R3-R5,LR}
000161b4  MOV             R3, #6
000161b8  STRH            R3, [R0]
000161bc  MOV             R2, #0
000161c0  STRH            R2, [R0,#2]
000161c4  MOV             R12, #0
000161c8  ADD             R4, R12, #0x2400
000161cc  ADD             LR, R0, R12,LSL#3
000161d0  ADD             R4, R4, #0x22 ; '"'
000161d4  STRH            R4, [LR,#4]
000161d8  STRH            R2, [LR,#8]
000161dc  STRH            R2, [LR,#0xA]
000161e0  LDRSH           LR, [R0]
000161e4  ADD             R12, R12, #1
000161e8  MOV             R12, R12,LSL#16
000161ec  MOV             R12, R12,ASR#16
000161f0  CMP             LR, R12
000161f4  BGT             loc_161C8
000161f8  MOV             R12, #0x78 ; 'x'
000161fc  STRH            R12, [R0,#6]
00016200  MOV             R12, #0xC8
00016204  STRH            R12, [R0,#0xE]
00016208  MOV             R12, #0x1F4
0001620c  STRH            R12, [R0,#0x16]
00016210  MOV             LR, #0x64 ; 'd'
00016214  STRH            LR, [R0,#0x1E]
00016218  MOV             R4, #0x96
0001621c  STRH            R4, [R0,#0x26]
00016220  ADD             R4, R4, #0x1F4
00016224  STRH            R4, [R0,#0x2E]
00016228  MOV             R5, #1
0001622c  STRH            R5, [R0,#8]
00016230  MOV             R4, #2
00016234  STRH            R4, [R0,#0x10]
00016238  STRH            R3, [R0,#0x18]
0001623c  MOV             R3, #0x32 ; '2'
00016240  STRH            R3, [R0,#0x20]
00016244  STRH            LR, [R0,#0x28]
00016248  STRH            R12, [R0,#0x30]
0001624c  ADD             R4, R0, #0x100
00016250  STRH            R2, [R4,#4]
00016254  MOV             R0, #0x24 ; '$'
00016258  STRH            R0, [R4,#0xA]
0001625c  SUB             R1, R1, #0x64 ; 'd'
00016260  BL              sub_104
00016264  CMP             R0, #6
00016268  MOVGE           R0, #6
0001626c  STRH            R0, [R4,#6]
00016270  STRH            R5, [R4,#8]
00016274  POP             {R3-R5,LR}
00016278  BX              LR
