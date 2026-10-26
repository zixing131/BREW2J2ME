0x7035c PUSH            {R4-R7,LR}
0x7035e LDR             R3, =dword_1535F54
0x70360 LDR             R5, [R3]
0x70362 LDR             R3, =dword_1536348
0x70364 LSLS            R0, R0, #2
0x70366 LDR             R6, [R0,R3]
0x70368 LSLS            R4, R1, #0x10
0x7036a MOVS            R7, R6
0x7036c ADDS            R7, #0x28 ; '('
0x7036e LSRS            R4, R4, #0x10
0x70370 MOVS            R2, #0x84
0x70372 MOVS            R0, R7
0x70374 LDR             R3, =unk_140329C
0x70376 ADDS            R5, R5, R4
0x70378 LSLS            R2, R2, #2
0x7037a MOVS            R1, #0
0x7037c BL              sub_71334
0x70380 MOVS            R0, R7
0x70382 MOVS            R1, R5
0x70384 LDR             R4, =unk_140327C
0x70386 MOVS            R2, #8
0x70388 BL              sub_71336
0x7038c LDRH            R2, [R6,#0x2A]
0x7038e MOVS            R0, R6
0x70390 ADDS            R5, #8
0x70392 MOVS            R3, #0x34 ; '4'
0x70394 MOVS            R1, R5
0x70396 MULS            R2, R3
0x70398 ADDS            R0, #0x30 ; '0'
0x7039a BL              sub_71336
0x7039e POP             {R4-R7}
0x703a0 POP             {R0}
0x703a2 BX              R0