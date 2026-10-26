0x6cabc PUSH            {R4-R6,LR}
0x6cabe MOVS            R6, #0
0x6cac0 MOVS            R5, #0
0x6cac2 LDR             R4, =dword_1501D90
0x6cac4 LDR             R3, [R4]
0x6cac6 ADDS            R3, R5, R3
0x6cac8 LDR             R0, [R3,#0x18]
0x6caca CMP             R0, #0
0x6cacc BLE             loc_6CADE
0x6cace LDR             R3, =unk_14032FC
0x6cad0 BL              sub_6EACE
0x6cad4 LDR             R3, [R4]
0x6cad6 MOVS            R2, #0
0x6cad8 ADDS            R3, R5, R3
0x6cada STR             R2, [R3,#0x18]
0x6cadc STR             R2, [R3,#0x1C]
0x6cade ADDS            R6, #1
0x6cae0 ADDS            R5, #0xC
0x6cae2 CMP             R6, #0xB
0x6cae4 BNE             loc_6CAC2
0x6cae6 MOVS            R6, #0
0x6cae8 MOVS            R5, #0
0x6caea LDR             R4, =dword_1501D90
0x6caec LDR             R3, [R4]
0x6caee ADDS            R3, R5, R3
0x6caf0 ADDS            R3, #0x9C
0x6caf2 LDR             R0, [R3]
0x6caf4 CMP             R0, #0
0x6caf6 BLE             loc_6CB0E
0x6caf8 LDR             R3, =unk_14032FC
0x6cafa BL              sub_6EACE
0x6cafe LDR             R3, [R4]
0x6cb00 ADDS            R3, R5, R3
0x6cb02 MOVS            R2, R3
0x6cb04 MOVS            R1, #0
0x6cb06 ADDS            R2, #0x9C
0x6cb08 ADDS            R3, #0xA0
0x6cb0a STR             R1, [R2]
0x6cb0c STR             R1, [R3]
0x6cb0e ADDS            R6, #1
0x6cb10 ADDS            R5, #0xC
0x6cb12 CMP             R6, #2
0x6cb14 BNE             loc_6CAEA
0x6cb16 MOVS            R6, #0
0x6cb18 MOVS            R5, #0
0x6cb1a LDR             R4, =dword_1501D90
0x6cb1c LDR             R3, [R4]
0x6cb1e ADDS            R3, R5, R3
0x6cb20 ADDS            R3, #0xB4
0x6cb22 LDR             R0, [R3]
0x6cb24 CMP             R0, #0
0x6cb26 BLE             loc_6CB3E
0x6cb28 LDR             R3, =unk_14032FC
0x6cb2a BL              sub_6EACE
0x6cb2e LDR             R3, [R4]
0x6cb30 ADDS            R3, R5, R3
0x6cb32 MOVS            R2, R3
0x6cb34 MOVS            R1, #0
0x6cb36 ADDS            R2, #0xB4
0x6cb38 ADDS            R3, #0xB8
0x6cb3a STR             R1, [R2]
0x6cb3c STR             R1, [R3]
0x6cb3e ADDS            R6, #1
0x6cb40 ADDS            R5, #0xC
0x6cb42 CMP             R6, #5
0x6cb44 BNE             loc_6CB1A
0x6cb46 LDR             R3, [R4]
0x6cb48 ADDS            R3, #0xF0
0x6cb4a LDR             R0, [R3]
0x6cb4c CMP             R0, #0
0x6cb4e BLE             loc_6CB64
0x6cb50 LDR             R3, =unk_14032FC
0x6cb52 BL              sub_6EACE
0x6cb56 LDR             R3, [R4]
0x6cb58 MOVS            R2, R3
0x6cb5a MOVS            R1, #0
0x6cb5c ADDS            R2, #0xF0
0x6cb5e ADDS            R3, #0xF4
0x6cb60 STR             R1, [R2]
0x6cb62 STR             R1, [R3]
0x6cb64 LDR             R3, [R4]
0x6cb66 ADDS            R3, #0xFC
0x6cb68 LDR             R0, [R3]
0x6cb6a CMP             R0, #0
0x6cb6c BLE             loc_6CB7E
0x6cb6e LDR             R3, =unk_14032FC
0x6cb70 BL              sub_6EACE
0x6cb74 LDR             R3, [R4]
0x6cb76 MOVS            R2, #0
0x6cb78 ADDS            R3, #0xFC
0x6cb7a STR             R2, [R3]
0x6cb7c STR             R2, [R3,#4]
0x6cb7e POP             {R4-R6}
0x6cb80 POP             {R0}
0x6cb82 BX              R0