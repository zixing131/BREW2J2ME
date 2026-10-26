00011e30  PUSH            {R1-R5,LR}
00011e34  MOV             R5, R1
00011e38  LDR             R1, =(aNor - 0x11E4C); "NOR"
00011e3c  MOV             R4, R0
00011e40  MOV             R2, #8
00011e44  ADD             R1, PC, R1; "NOR"
00011e48  ADD             R0, SP, #0xC+var_8
00011e4c  BL              sub_4C
00011e50  MOV             R0, #0
00011e54  ADD             R1, R4, R0,LSL#1
00011e58  ADD             R2, SP, #0xC+var_8
00011e5c  ADD             R2, R2, R0,LSL#1
00011e60  LDRH            R1, [R1]
00011e64  LDRH            R2, [R2]
00011e68  CMP             R1, R2
00011e6c  BNE             loc_11E7C
00011e70  ADD             R0, R0, #1
00011e74  CMP             R0, #3
00011e78  BLT             loc_11E54
00011e7c  CMP             R0, #3
00011e80  MOVEQ           R0, #1
00011e84  STREQ           R0, [R5]
00011e88  MOVEQ           R0, #3
00011e8c  BEQ             loc_11F04
00011e90  MOV             R0, #0
00011e94  MOV             R2, #0
00011e98  ADD             R1, R4, R2,LSL#1
00011e9c  LDRH            R1, [R1]
00011ea0  SUB             R3, R1, #0x30 ; '0'
00011ea4  CMP             R3, #9
00011ea8  ADDLS           R0, R1, R0,LSL#4
00011eac  SUBLS           R0, R0, #0x30 ; '0'
00011eb0  BLS             loc_11ED8
00011eb4  SUB             R3, R1, #0x41 ; 'A'
00011eb8  CMP             R3, #5
00011ebc  ADDLS           R0, R1, R0,LSL#4
00011ec0  SUBLS           R0, R0, #0x37 ; '7'
00011ec4  BLS             loc_11ED8
00011ec8  SUB             R3, R1, #0x61 ; 'a'
00011ecc  CMP             R3, #5
00011ed0  ADDLS           R0, R1, R0,LSL#4
00011ed4  SUBLS           R0, R0, #0x57 ; 'W'
00011ed8  ADD             R2, R2, #1
00011edc  CMP             R2, #6
00011ee0  BLT             loc_11E98
00011ee4  AND             R1, R0, #0xF80000
00011ee8  AND             R2, R0, #0xFC00
00011eec  MOV             R1, R1,LSR#8
00011ef0  ORR             R1, R1, R2,LSR#5
00011ef4  MOV             R0, R0,LSL#24
00011ef8  ORR             R0, R1, R0,LSR#27
00011efc  STR             R0, [R5]
00011f00  MOV             R0, #6
00011f04  POP             {R1-R5,LR}
00011f08  BX              LR
