0x1404 PUSH            {R4-R6,LR}
0x1406 LDR             R4, =dword_1501DD4
0x1408 LDR             R5, =dword_1501C54
0x140a MOV             R12, R4
0x140c LDR             R4, [R4]
0x140e STR             R4, [R5]
0x1410 LDR             R5, =dword_1501C5C
0x1412 LDR             R4, [R5]
0x1414 STR             R1, [R5]
0x1416 LDR             R1, =dword_1501C58
0x1418 STR             R2, [R1]
0x141a LDR             R2, =dword_1501D9C
0x141c LDR             R6, =dword_1501DD8
0x141e STR             R3, [R2]
0x1420 LDR             R2, =dword_1501BF8
0x1422 STR             R4, [R6]
0x1424 MOVS            R3, #0
0x1426 MOV             R6, R12
0x1428 STR             R0, [R6]
0x142a STR             R3, [R2]
0x142c POP             {R4-R6}
0x142e POP             {R0}
0x1430 BX              R0