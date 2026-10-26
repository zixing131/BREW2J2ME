00026f78  PUSH            {R4-R6,LR}
00026f7c  SUB             SP, SP, #0x18
00026f80  MOVS            R5, R0
00026f84  BEQ             loc_2709C
00026f88  LDR             R1, [R5,#0xE0]
00026f8c  MOV             R0, R5
00026f90  BL              sub_1058
00026f94  MOVS            R6, R0
00026f98  BEQ             loc_2709C
00026f9c  LDR             R1, [R6,#0x4C]
00026fa0  ADD             R4, R6, #0x4C ; 'L'
00026fa4  MOV             R0, #0
00026fa8  CMP             R1, #0
00026fac  BNE             loc_26FD4
00026fb0  LDR             R2, [R4,#4]
00026fb4  MOV             R1, #0
00026fb8  ADD             R2, R2, #1
00026fbc  STR             R2, [R4,#4]
00026fc0  LDR             R3, [R4,#0x14]
00026fc4  CMP             R2, R3
00026fc8  MOVHI           R2, #1
00026fcc  BHI             loc_27004
00026fd0  B               loc_2703C
00026fd4  CMP             R1, #1
00026fd8  BNE             loc_2700C
00026fdc  LDR             R2, [R4,#4]
00026fe0  LDR             R3, [R4,#0x10]
00026fe4  MUL             R1, R3, R2
00026fe8  ADD             R2, R2, #1
00026fec  STR             R2, [R4,#4]
00026ff0  MUL             R2, R3, R2
00026ff4  LDR             R3, [R4,#8]
00026ff8  CMP             R2, R3
00026ffc  BLS             loc_2703C
00027000  MOV             R2, #2
00027004  STR             R2, [R4]
00027008  B               loc_27038
0002700c  CMP             R1, #2
00027010  MOVNE           R1, #0
00027014  BNE             loc_27034
00027018  LDR             R2, [R4,#4]
0002701c  LDR             R1, [R4,#8]
00027020  ADD             R2, R2, #1
00027024  STR             R2, [R4,#4]
00027028  LDR             R3, [R4,#0x18]
0002702c  CMP             R2, R3
00027030  BLS             loc_2703C
00027034  STR             R0, [R4]
00027038  STR             R0, [R4,#4]
0002703c  LDR             R0, [R4,#0x30]
00027040  CMP             R0, #0
00027044  BEQ             loc_27070
00027048  MOV             R3, #2
0002704c  MOV             R2, #0
00027050  STMFA           SP, {R0-R3}
00027054  LDRSH           R3, [R4,#0x2E]
00027058  STR             R3, [SP,#0x18+var_18]
0002705c  LDRSH           R3, [R4,#0x2C]
00027060  LDRSH           R2, [R4,#0x2A]
00027064  LDRSH           R1, [R4,#0x28]
00027068  LDR             R0, [R6,#0xC]
0002706c  BL              sub_14338
00027070  LDR             R0, [R6,#0xC]
00027074  BL              sub_145AC
00027078  LDR             R0, [R5]
0002707c  LDR             R1, [R4,#0xC]!
00027080  LDR             R3, [R0]
00027084  LDR             R2, [R4,#0x28]
00027088  LDR             R12, [R3,#0x2C]
0002708c  ADD             SP, SP, #0x18
00027090  MOV             R3, R5
00027094  POP             {R4-R6,LR}
00027098  BX              R12
0002709c  ADD             SP, SP, #0x18
000270a0  POP             {R4-R6,PC}
