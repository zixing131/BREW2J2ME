0x73ee8 PUSH            {R4,R5,LR}
0x73eea LSLS            R1, R1, #0x10
0x73eec LSLS            R3, R3, #0x18
0x73eee LSRS            R4, R1, #0x10
0x73ef0 LSRS            R1, R3, #0x18
0x73ef2 MOVS            R3, #0xF9
0x73ef4 LSLS            R0, R0, #0x18
0x73ef6 LSLS            R3, R3, #0x18
0x73ef8 ADDS            R0, R0, R3
0x73efa LSLS            R2, R2, #0x18
0x73efc LSRS            R0, R0, #0x18
0x73efe LSRS            R5, R2, #0x18
0x73f00 CMP             R0, #0x12; switch 19 cases
0x73f02 BHI             def_73F0A; jumptable 00073F0A default case, cases 1,2,4-12,17
0x73f04 LDR             R2, =jpt_73F0A
0x73f06 LSLS            R3, R0, #2
0x73f08 LDR             R3, [R3,R2]
0x73f0a MOV             PC, R3; switch jump
0x73f0c LSLS            R0, R1, #3; jumptable 00073F0A case 0
0x73f0e ADDS            R0, R0, R1
0x73f10 LDR             R3, =unk_1537CE8
0x73f12 LSLS            R0, R0, #2
0x73f14 B               loc_73F40
0x73f16 LSLS            R0, R1, #3; jumptable 00073F0A case 3
0x73f18 ADDS            R0, R0, R1
0x73f1a LDR             R3, =unk_1537880
0x73f1c LSLS            R0, R0, #2
0x73f1e B               loc_73F40
0x73f20 LSLS            R0, R1, #3; jumptable 00073F0A case 13
0x73f22 ADDS            R0, R0, R1
0x73f24 LDR             R3, =unk_1533D50
0x73f26 LSLS            R0, R0, #2
0x73f28 B               loc_73F40
0x73f2a LSLS            R0, R1, #3; jumptable 00073F0A case 14
0x73f2c ADDS            R0, R0, R1
0x73f2e LDR             R3, =unk_1536AC4
0x73f30 LSLS            R0, R0, #2
0x73f32 B               loc_73F40
0x73f34 LDR             R0, =unk_1536C70; jumptable 00073F0A case 15
0x73f36 B               loc_73F46
0x73f38 LSLS            R0, R1, #3; jumptable 00073F0A case 16
0x73f3a ADDS            R0, R0, R1
0x73f3c LDR             R3, =unk_1536A78
0x73f3e LSLS            R0, R0, #2
0x73f40 ADDS            R0, R0, R3
0x73f42 B               loc_73F46
0x73f44 LDR             R0, =unk_1535598; jumptable 00073F0A case 18
0x73f46 MOVS            R1, R4
0x73f48 MOVS            R2, R5
0x73f4a LDR             R3, =(sub_6EA60+1)
0x73f4c BL              sub_75958
0x73f50 POP             {R4,R5}; jumptable 00073F0A default case, cases 1,2,4-12,17
0x73f52 POP             {R0}
0x73f54 BX              R0