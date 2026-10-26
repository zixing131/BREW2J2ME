0x8539c PUSH            {R4-R7,LR}
0x8539e LSLS            R0, R0, #0x18
0x853a0 LSRS            R7, R0, #0x18
0x853a2 LSLS            R1, R1, #0x18
0x853a4 LSRS            R1, R1, #0x18
0x853a6 MOVS            R0, R7
0x853a8 BL              sub_82B10
0x853ac LSLS            R0, R0, #0x10
0x853ae LSRS            R0, R0, #0x10
0x853b0 CMP             R0, #0
0x853b2 BEQ             loc_8545A
0x853b4 LDR             R5, =byte_15386AD
0x853b6 LDR             R3, =(sub_36410+1)
0x853b8 LDRB            R1, [R5]
0x853ba BL              sub_8A950
0x853be LDRB            R4, [R5]
0x853c0 LDR             R6, =word_1534DE8
0x853c2 LSLS            R4, R4, #4
0x853c4 ADDS            R4, R4, R6
0x853c6 ADDS            R2, R4, #4
0x853c8 MOVS            R3, #0
0x853ca STRB            R3, [R4,#1]
0x853cc STRH            R3, [R2,#2]
0x853ce MOVS            R3, #1
0x853d0 STRB            R3, [R4]
0x853d2 LDRB            R0, [R4,#4]
0x853d4 LDRB            R1, [R2,#1]
0x853d6 LDR             R3, =(sub_2D3B8+1)
0x853d8 BL              sub_8A950
0x853dc LSLS            R2, R7, #2
0x853de LDR             R3, =unk_1538F9C
0x853e0 ADDS            R2, R2, R7
0x853e2 STRB            R0, [R4,#2]
0x853e4 LSLS            R2, R2, #7
0x853e6 ADDS            R2, R2, R3
0x853e8 LDRH            R3, [R2,#2]
0x853ea SUBS            R3, #0xE4
0x853ec LSLS            R3, R3, #0x10
0x853ee LSRS            R3, R3, #0x10
0x853f0 LDRB            R4, [R5]
0x853f2 LDRH            R5, [R2,#0x10]
0x853f4 LDR             R2, =(sub_6C7D4+1)
0x853f6 CMP             R3, #1
0x853f8 BHI             loc_8540C
0x853fa MOVS            R0, #0x28 ; '('
0x853fc BL              sub_8A94E
0x85400 MOVS            R2, R5
0x85402 LSLS            R3, R4, #4
0x85404 ADDS            R2, #0x64 ; 'd'
0x85406 ADDS            R3, R3, R6
0x85408 ADDS            R0, R0, R2
0x8540a B               loc_8541A
0x8540c MOVS            R0, #0x32 ; '2'
0x8540e BL              sub_8A94E
0x85412 LSLS            R3, R4, #4
0x85414 ADDS            R0, R5, R0
0x85416 ADDS            R3, R3, R6
0x85418 SUBS            R0, #0x19
0x8541a STRH            R0, [R3,#8]
0x8541c LSLS            R3, R7, #2
0x8541e LDR             R2, =unk_1538F9C
0x85420 ADDS            R3, R3, R7
0x85422 LSLS            R3, R3, #7
0x85424 LDR             R6, =byte_15386AD
0x85426 ADDS            R3, R3, R2
0x85428 LDRH            R4, [R3,#0x12]
0x8542a MOVS            R0, #0x32 ; '2'
0x8542c LDR             R3, =(sub_6C7D4+1)
0x8542e LDRB            R5, [R6]
0x85430 BL              sub_8A950
0x85434 LDR             R3, =word_1534DE8
0x85436 ADDS            R4, R4, R0
0x85438 LSLS            R5, R5, #4
0x8543a ADDS            R5, R5, R3
0x8543c SUBS            R4, #0x19
0x8543e STRH            R4, [R5,#0xA]
0x85440 LDR             R3, =(sub_2C240+1)
0x85442 LDRB            R0, [R6]
0x85444 BL              sub_8A950
0x85448 LDRB            R3, [R6]
0x8544a ADDS            R3, #1
0x8544c LSLS            R3, R3, #0x18
0x8544e LSRS            R3, R3, #0x18
0x85450 STRB            R3, [R6]
0x85452 CMP             R3, #0x77 ; 'w'
0x85454 BLS             loc_8545A
0x85456 MOVS            R3, #0
0x85458 STRB            R3, [R6]
0x8545a POP             {R4-R7}
0x8545c POP             {R0}
0x8545e BX              R0