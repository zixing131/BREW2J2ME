000144d0  PUSH            {R3,LR}
000144d4  MOV             R3, #2
000144d8  STR             R3, [SP,#4+var_4]
000144dc  LDR             R3, [R0]
000144e0  LDR             R12, [R3,#0x14]
000144e4  MOV             R3, R2
000144e8  MOV             R2, #0xFFFFFFFF
000144ec  BLX             R12
000144f0  POP             {R3,PC}
