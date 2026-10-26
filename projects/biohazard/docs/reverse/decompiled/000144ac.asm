000144ac  PUSH            {R3,LR}
000144b0  MOV             R3, #2
000144b4  STR             R3, [SP,#4+var_4]
000144b8  LDR             R3, [R0]
000144bc  LDR             R12, [R3,#0x14]
000144c0  MOV             R3, R2
000144c4  MOV             R2, #0xFFFFFFFF
000144c8  BLX             R12
000144cc  POP             {R3,PC}
