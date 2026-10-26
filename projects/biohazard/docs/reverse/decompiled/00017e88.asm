00017e88  PUSH            {R3-R11,LR}
00017e8c  MOVS            R7, R0
00017e90  CMPNE           R2, #0
00017e94  MOVEQ           R0, #1
00017e98  MOV             R8, R1
00017e9c  BEQ             locret_1810C
00017ea0  MOV             R0, #0
00017ea4  MOV             R11, #0
00017ea8  MOV             R9, #0xB
00017eac  B               loc_17EC8
00017eb0  MUL             R1, R9, R0
00017eb4  ADD             R0, R0, #1
00017eb8  ADD             R1, R7, R1,LSL#2
00017ebc  LDR             R1, [R1,#0x28]
00017ec0  CMP             R1, #0
00017ec4  STRNE           R11, [R1]
00017ec8  CMP             R0, R8
00017ecc  BCC             loc_17EB0
00017ed0  LDR             R10, =(start - 0x17EE0)
00017ed4  MOV             R5, R2
00017ed8  ADD             R10, PC, R10; start
00017edc  B               loc_180FC
00017ee0  ADD             R5, R5, #1
00017ee4  LDRB            R0, [R5]
00017ee8  CMP             R0, #0x20 ; ' '
00017eec  CMPNE           R0, #9
00017ef0  CMPNE           R0, #0xA
00017ef4  CMPNE           R0, #0xD
00017ef8  BEQ             loc_17EE0
00017efc  LDRB            R0, [R5]
00017f00  CMP             R0, #0
00017f04  BEQ             loc_18108
00017f08  MOV             R6, #0
00017f0c  B               loc_180D8
00017f10  MUL             R1, R9, R6
00017f14  MOV             R0, R5
00017f18  MOV             R3, #0
00017f1c  ADD             R1, R7, R1,LSL#2
00017f20  B               loc_17F40
00017f24  CMP             R2, R3
00017f28  MOVEQ           R3, #1
00017f2c  ADD             R1, R1, #1
00017f30  ADD             R0, R0, #1
00017f34  BEQ             loc_17F40
00017f38  MOV             R3, #0
00017f3c  B               loc_17F5C
00017f40  LDRB            R2, [R1]
00017f44  CMP             R2, #0
00017f48  BEQ             loc_17F5C
00017f4c  LDRB            R3, [R0]
00017f50  CMP             R3, #0
00017f54  BNE             loc_17F24
00017f58  B               loc_18108
00017f5c  LDRB            R1, [R0]
00017f60  CMP             R1, #0
00017f64  BEQ             loc_18108
00017f68  CMP             R3, #0
00017f6c  BEQ             loc_180D4
00017f70  CMP             R1, #0x20 ; ' '
00017f74  CMPNE           R1, #9
00017f78  CMPNE           R1, #0x3A ; ':'
00017f7c  BNE             loc_180D4
00017f80  LDR             R1, [R10,#(dword_8 - 0xC)]
00017f84  LDR             R2, [R1,#0x18]
00017f88  MOV             R1, #0x3A ; ':'
00017f8c  BLX             R2
00017f90  CMP             R0, #0
00017f94  BEQ             loc_180E0
00017f98  ADD             R4, R0, #1
00017f9c  B               loc_17FA4
00017fa0  ADD             R4, R4, #1
00017fa4  LDRB            R0, [R4]
00017fa8  CMP             R0, #0x20 ; ' '
00017fac  CMPNE           R0, #9
00017fb0  BEQ             loc_17FA0
00017fb4  LDRB            R0, [R4]
00017fb8  CMP             R0, #0
00017fbc  BEQ             loc_18108
00017fc0  LDR             R0, [R10,#(dword_8 - 0xC)]
00017fc4  MOV             R1, #0xA
00017fc8  LDR             R2, [R0,#0x18]
00017fcc  MOV             R0, R4
00017fd0  BLX             R2
00017fd4  CMP             R0, #0
00017fd8  BEQ             loc_17FFC
00017fdc  SUB             R0, R0, R4
00017fe0  CMP             R0, #0
00017fe4  BLE             loc_1800C
00017fe8  ADD             R1, R4, R0
00017fec  LDRB            R1, [R1,#-1]
00017ff0  CMP             R1, #0xD
00017ff4  SUBEQ           R0, R0, #1
00017ff8  B               loc_1800C
00017ffc  LDR             R0, [R10,#(dword_8 - 0xC)]
00018000  LDR             R1, [R0,#0x14]
00018004  MOV             R0, R4
00018008  BLX             R1
0001800c  MUL             R1, R9, R6
00018010  ADD             R6, R7, R1,LSL#2
00018014  LDRB            R1, [R6,#0x1E]
00018018  CMP             R1, #0
0001801c  BEQ             loc_18058
00018020  CMP             R1, #1
00018024  MOVEQ           R2, #0
00018028  MOVEQ           R12, #0
0001802c  MOVEQ           R1, #0
00018030  BEQ             loc_180B8
00018034  CMP             R1, #2
00018038  BNE             loc_180E0
0001803c  MOV             R1, R0
00018040  MOV             R0, R4
00018044  LDR             R2, [R6,#0x20]
00018048  BL              sub_132C
0001804c  LDR             R1, [R6,#0x28]
00018050  STR             R0, [R1]
00018054  B               loc_180E0
00018058  LDR             R1, [R6,#0x20]
0001805c  LDR             R2, [R6,#0x24]
00018060  SUB             R2, R2, #1
00018064  CMP             R2, R0
00018068  MOVLE           R0, R2
0001806c  MOV             R2, R0
00018070  MOV             R0, #0
00018074  CMP             R0, R2
00018078  LDRBLT          R3, [R4,R0]
0001807c  STRBLT          R3, [R1,R0]
00018080  ADDLT           R0, R0, #1
00018084  BLT             loc_18074
00018088  STRB            R11, [R1,R0]
0001808c  LDR             R0, [R6,#0x28]
00018090  STR             R2, [R0]
00018094  B               loc_180E0
00018098  LDRB            R3, [R4,R1]
0001809c  ADD             R1, R1, #1
000180a0  SUB             LR, R3, #0x30 ; '0'
000180a4  CMP             LR, #9
000180a8  ADDLS           R2, R2, R2,LSL#2
000180ac  ADDLS           R2, R3, R2,LSL#1
000180b0  SUBLS           R2, R2, #0x30 ; '0'
000180b4  MOVLS           R12, #1
000180b8  CMP             R1, R0
000180bc  BLT             loc_18098
000180c0  CMP             R12, #0
000180c4  LDRNE           R0, [R6,#0x20]
000180c8  CMPNE           R0, #0
000180cc  STRNE           R2, [R0]
000180d0  B               loc_180E0
000180d4  ADD             R6, R6, #1
000180d8  CMP             R6, R8
000180dc  BCC             loc_17F10
000180e0  LDR             R0, [R10,#(dword_8 - 0xC)]
000180e4  MOV             R1, #0xA
000180e8  LDR             R2, [R0,#0x18]
000180ec  MOV             R0, R5
000180f0  BLX             R2
000180f4  MOVS            R5, R0
000180f8  BEQ             loc_18108
000180fc  LDRB            R0, [R5]
00018100  CMP             R0, #0
00018104  BNE             loc_17EE4
00018108  MOV             R0, #0
0001810c  POP             {R3-R11,PC}
