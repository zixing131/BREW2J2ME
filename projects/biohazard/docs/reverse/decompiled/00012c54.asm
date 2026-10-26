00012c54  PUSH            {R3-R5,LR}
00012c58  MOV             R4, R1
00012c5c  LDRH            R1, [R0],#2
00012c60  MOV             R5, R2
00012c64  CMP             R1, #0x73 ; 's'
00012c68  CMPNE           R1, #0x53 ; 'S'
00012c6c  BNE             loc_12CA0
00012c70  MOV             R1, #0
00012c74  STR             R1, [SP,#4+var_4]
00012c78  MOV             R1, SP
00012c7c  BL              sub_11E30
00012c80  CMP             R0, #0
00012c84  BEQ             loc_12D18
00012c88  LDR             R0, [R5]
00012c8c  LDR             R1, [SP,#4+var_4]
00012c90  MOV             R0, R0,LSR#16
00012c94  MOV             R0, R0,LSL#16
00012c98  ORR             R0, R0, R1
00012c9c  B               loc_12D58
00012ca0  CMP             R1, #0x68 ; 'h'
00012ca4  CMPNE           R1, #0x48 ; 'H'
00012ca8  BNE             loc_12CDC
00012cac  MOV             R1, #0
00012cb0  STR             R1, [SP,#4+var_4]
00012cb4  MOV             R1, SP
00012cb8  BL              sub_11E30
00012cbc  CMP             R0, #0
00012cc0  BEQ             loc_12D18
00012cc4  LDR             R0, [R4]
00012cc8  LDR             R1, [SP,#4+var_4]
00012ccc  MOV             R0, R0,LSR#16
00012cd0  MOV             R0, R0,LSL#16
00012cd4  ORR             R0, R0, R1
00012cd8  B               loc_12D14
00012cdc  CMP             R1, #0x6C ; 'l'
00012ce0  CMPNE           R1, #0x4C ; 'L'
00012ce4  BNE             loc_12D20
00012ce8  MOV             R1, #0
00012cec  STR             R1, [SP,#4+var_4]
00012cf0  MOV             R1, SP
00012cf4  BL              sub_11E30
00012cf8  CMP             R0, #0
00012cfc  BEQ             loc_12D18
00012d00  LDR             R0, [R4]
00012d04  LDR             R1, [SP,#4+var_4]
00012d08  MOV             R0, R0,LSL#16
00012d0c  MOV             R0, R0,LSR#16
00012d10  ORR             R0, R0, R1,LSL#16
00012d14  STR             R0, [R4]
00012d18  POP             {R3-R5,LR}
00012d1c  BX              LR
00012d20  CMP             R1, #0x62 ; 'b'
00012d24  CMPNE           R1, #0x42 ; 'B'
00012d28  BNE             loc_12D18
00012d2c  MOV             R1, #0
00012d30  STR             R1, [SP,#4+var_4]
00012d34  MOV             R1, SP
00012d38  BL              sub_11E30
00012d3c  CMP             R0, #0
00012d40  BEQ             loc_12D18
00012d44  LDR             R0, [R5]
00012d48  LDR             R1, [SP,#4+var_4]
00012d4c  MOV             R0, R0,LSL#16
00012d50  MOV             R0, R0,LSR#16
00012d54  ORR             R0, R0, R1,LSL#16
00012d58  STR             R0, [R5]
00012d5c  B               loc_12D18
