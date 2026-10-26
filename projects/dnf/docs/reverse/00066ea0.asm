0x66ea0 PUSH            {R4,R5,LR}
0x66ea2 LDR             R3, =dword_1535ADC
0x66ea4 MOVS            R2, R3
0x66ea6 ADDS            R2, #0xFC
0x66ea8 LDR             R0, [R2,#(dword_1535C38 - 0x1535BD8)]
0x66eaa CMP             R0, #0
0x66eac BEQ             loc_66EFC
0x66eae MOVS            R3, #0
0x66eb0 STR             R3, [R2,#(dword_1535C38 - 0x1535BD8)]
0x66eb2 CMP             R0, #0
0x66eb4 BLE             loc_66EBA
0x66eb6 SUBS            R5, R0, #1
0x66eb8 B               loc_66EBC
0x66eba ADDS            R5, R0, #1
0x66ebc CMP             R5, #0
0x66ebe BEQ             loc_66EF4
0x66ec0 LDR             R4, =dword_1535ADC
0x66ec2 CMP             R5, #0
0x66ec4 BLE             loc_66ED2
0x66ec6 MOVS            R0, #1
0x66ec8 BL              sub_66D8C
0x66ecc ADDS            R4, #0xFC
0x66ece SUBS            R0, R5, R0
0x66ed0 B               loc_66EDC
0x66ed2 MOVS            R0, #1
0x66ed4 BL              sub_66D8C
0x66ed8 ADDS            R4, #0xFC
0x66eda ADDS            R0, R5, R0
0x66edc LDR             R3, =dword_1535ADC
0x66ede STR             R0, [R4,#(dword_1535C3C - 0x1535BD8)]
0x66ee0 MOVS            R2, R3
0x66ee2 ADDS            R2, #0xFC
0x66ee4 LDR             R3, [R2,#(dword_1535C3C - 0x1535BD8)]
0x66ee6 MULS            R3, R5
0x66ee8 CMP             R3, #0
0x66eea BGE             loc_66EF0
0x66eec MOVS            R3, #0
0x66eee STR             R3, [R2,#(dword_1535C3C - 0x1535BD8)]
0x66ef0 MOVS            R0, #1
0x66ef2 B               loc_66EFC
0x66ef4 LDR             R3, =dword_1535ADC
0x66ef6 ADDS            R3, #0xFC
0x66ef8 STR             R5, [R3,#(dword_1535C3C - 0x1535BD8)]
0x66efa MOVS            R0, #0
0x66efc POP             {R4,R5}
0x66efe POP             {R1}
0x66f00 BX              R1