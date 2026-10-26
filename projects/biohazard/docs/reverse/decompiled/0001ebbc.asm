0001ebbc  PUSH            {R3-R5,LR}
0001ebc0  SUB             R12, R1, #0x100
0001ebc4  SUBS            R12, R12, #2
0001ebc8  MOV             R4, R0
0001ebcc  BNE             loc_1ECDC
0001ebd0  SUBS            R12, R2, #0xE000
0001ebd4  SUBSGE          R12, R12, #0x32 ; '2'
0001ebd8  ADD             R0, R4, #0x100
0001ebdc  LDRSHEQ         R0, [R4,#2]
0001ebe0  MOV             R5, #0
0001ebe4  ADDEQ           R1, R0, #1
0001ebe8  LDRSHEQ         R0, [R4]
0001ebec  BEQ             loc_1EC1C
0001ebf0  BGT             loc_1EC34
0001ebf4  SUB             R12, R2, #0xE000
0001ebf8  SUBS            R12, R12, #0x21 ; '!'
0001ebfc  BEQ             loc_1EC4C
0001ec00  SUB             R12, R2, #0xE000
0001ec04  SUBS            R12, R12, #0x31 ; '1'
0001ec08  BNE             loc_1ECDC
0001ec0c  LDRSH           R1, [R4,#2]
0001ec10  LDRSH           R0, [R4]
0001ec14  ADD             R1, R1, R0
0001ec18  SUB             R1, R1, #1
0001ec1c  BL              sub_104
0001ec20  STRH            R1, [R4,#2]
0001ec24  MOV             R0, R4
0001ec28  BL              sub_252A0
0001ec2c  STR             R5, [R4,#0x140]
0001ec30  B               loc_1ECDC
0001ec34  SUB             R12, R2, #0xE000
0001ec38  SUBS            R12, R12, #0x36 ; '6'
0001ec3c  BEQ             loc_1EC74
0001ec40  SUB             R12, R2, #0xE000
0001ec44  SUBS            R12, R12, #0x37 ; '7'
0001ec48  BNE             loc_1ECDC
0001ec4c  LDRH            R1, [R0,#0x20]
0001ec50  CMP             R1, #1
0001ec54  BNE             loc_1EC68
0001ec58  LDRSH           R1, [R0,#0x3C]
0001ec5c  MOV             R0, R4
0001ec60  BL              sub_1627C
0001ec64  B               loc_1ECDC
0001ec68  MOV             R0, #0
0001ec6c  POP             {R3-R5,LR}
0001ec70  BX              LR
0001ec74  LDRSH           R1, [R4,#2]
0001ec78  ADD             R3, R4, R1,LSL#3
0001ec7c  LDRSH           R1, [R3,#8]
0001ec80  CMP             R1, #0
0001ec84  BLT             loc_1ECC8
0001ec88  LDRH            R2, [R0,#0x20]
0001ec8c  CMP             R2, #0
0001ec90  BEQ             loc_1ECA8
0001ec94  CMP             R2, #1
0001ec98  BNE             loc_1ECDC
0001ec9c  LDRSH           R2, [R3,#0xA]
0001eca0  CMP             R2, #0
0001eca4  BLE             loc_1ECB0
0001eca8  STRB            R1, [R0,#0xC]
0001ecac  B               loc_1EC68
0001ecb0  MOV             R3, #0
0001ecb4  LDR             R0, [R4,#0x118]
0001ecb8  LDR             R2, =0x1F47
0001ecbc  MOV             R1, #0
0001ecc0  BL              sub_E00
0001ecc4  B               loc_1ECDC
0001ecc8  LDRH            R1, [R0,#0x20]
0001eccc  CMP             R1, #0
0001ecd0  LDRSHEQ         R1, [R0,#0x3C]
0001ecd4  MOVEQ           R0, R4
0001ecd8  BLEQ            sub_16360
0001ecdc  MOV             R0, #1
0001ece0  B               loc_1EC6C
