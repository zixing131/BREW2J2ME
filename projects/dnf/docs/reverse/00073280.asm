0x73280 PUSH            {R4-R6,LR}
0x73282 BL              sub_72C18
0x73286 LDR             R3, =dword_1536C28
0x73288 LDR             R5, =dword_15369C8
0x7328a STR             R0, [R3]
0x7328c LDR             R6, =dword_9C92C
0x7328e CMP             R0, #2
0x73290 BNE             loc_732BA
0x73292 MOVS            R0, #0xCD
0x73294 LDR             R3, =unk_14032EC
0x73296 LSLS            R0, R0, #1
0x73298 BL              sub_75958
0x7329c MOVS            R4, #0xCC
0x7329e LDR             R3, =dword_1536AC0
0x732a0 LSLS            R4, R4, #1
0x732a2 MOVS            R2, R0
0x732a4 STR             R0, [R3]
0x732a6 STR             R0, [R5]
0x732a8 LDR             R3, =(sub_6BD08+1)
0x732aa MOVS            R0, R6
0x732ac MOVS            R1, R4
0x732ae BL              sub_75958
0x732b2 LDR             R2, [R5]
0x732b4 MOVS            R3, #0
0x732b6 STRH            R3, [R2,R4]
0x732b8 B               loc_732BC
0x732ba STR             R6, [R5]
0x732bc BL              sub_72C5C
0x732c0 POP             {R4-R6}
0x732c2 POP             {R0}
0x732c4 BX              R0