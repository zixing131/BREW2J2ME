0001ca88  PUSH            {R4-R10,LR}
0001ca8c  MOV             R5, R1
0001ca90  MOVS            R10, R5
0001ca94  MOV             R6, R2
0001ca98  CMPNE           R6, #0
0001ca9c  LDR             R4, [R2,#0x20]
0001caa0  MOV             R8, R0
0001caa4  LDRNE           R0, [R8,#0x16C]
0001caa8  SUB             SP, SP, #0xA8
0001caac  CMPNE           R0, #0
0001cab0  MOVEQ           R0, #0
0001cab4  MOV             R9, #1
0001cab8  MOV             R7, R3
0001cabc  BEQ             loc_1CBD4
0001cac0  LDRSH           R0, [R4,#2]
0001cac4  MOV             R3, #0
0001cac8  MOV             R2, #0
0001cacc  MOV             R1, #0
0001cad0  STMEA           SP, {R0-R3}
0001cad4  LDRSH           R3, [R4]
0001cad8  MOV             R0, R4
0001cadc  BL              sub_10C58
0001cae0  LDRB            R0, [R10,#0x150]
0001cae4  CMP             R0, #0
0001cae8  BEQ             loc_1CBE0
0001caec  LDR             R0, [R8,#0x168]
0001caf0  CMP             R0, #0
0001caf4  BLT             loc_1CC00
0001caf8  LDR             R1, [R8,#0x168]
0001cafc  LDR             R0, [R6,#0x28]
0001cb00  MOV             R3, #0x40 ; '@'
0001cb04  ADD             R2, SP, #0xA8+var_88
0001cb08  BL              sub_19618
0001cb0c  LDRSH           R0, [R4,#2]
0001cb10  MOV             R3, #0
0001cb14  MOV             R2, #0
0001cb18  MOV             R1, #0
0001cb1c  STMEA           SP, {R0-R3}
0001cb20  LDRSH           R3, [R4]
0001cb24  MOV             R0, R4
0001cb28  BL              sub_10C58
0001cb2c  LDR             R0, =(start - 0x1CB38)
0001cb30  ADD             R0, PC, R0; start
0001cb34  LDR             R0, [R0,#(dword_8 - 0xC)]
0001cb38  ADR             LR, loc_1CB48
0001cb3c  LDR             R1, [R0,#0x30]
0001cb40  ADD             R0, SP, #0xA8+var_88
0001cb44  BX              R1
0001cb48  LDRH            R1, [R4]
0001cb4c  ADD             R0, R0, R0,LSL#1
0001cb50  LDRH            R2, [R4,#2]
0001cb54  SUB             R0, R1, R0,LSL#2
0001cb58  LDRH            R1, [R4,#0x10]
0001cb5c  ADD             R0, R0, R0,LSR#31
0001cb60  MOV             R0, R0,ASR#1
0001cb64  MOV             R0, R0,LSL#16
0001cb68  RSB             R1, R1, R2,LSR#1
0001cb6c  MOV             LR, R1,LSL#16
0001cb70  MOV             R0, R0,ASR#16
0001cb74  STRH            R0, [SP,#0xA8+var_8]
0001cb78  MOV             LR, LR,ASR#16
0001cb7c  STRH            LR, [SP,#0xA8+var_6]
0001cb80  LDRH            R1, [R4]
0001cb84  MOV             R2, #0
0001cb88  MOV             R3, #0
0001cb8c  SUB             R1, R1, R0
0001cb90  STRH            R1, [SP,#0xA8+var_4]
0001cb94  LDRH            R1, [R4,#2]
0001cb98  ADD             R8, SP, #0xA8+var_98
0001cb9c  STRH            R1, [SP,#0xA8+var_2]
0001cba0  MOV             R1, #0
0001cba4  STM             R8, {R0-R3}
0001cba8  ADD             R0, SP, #0xA8+var_88
0001cbac  MOV             R2, #0x7E0
0001cbb0  MOV             R1, #1
0001cbb4  STMEA           SP, {R0-R3}
0001cbb8  LDR             R0, [R6,#0x28]
0001cbbc  ADD             R3, SP, #0xA8+var_8
0001cbc0  MOV             R2, LR
0001cbc4  MOV             R1, R4
0001cbc8  LDR             R0, [R0,#0x64]
0001cbcc  BL              sub_98BC
0001cbd0  MOV             R0, #1
0001cbd4  ADD             SP, SP, #0xA8
0001cbd8  POP             {R4-R10,LR}
0001cbdc  BX              LR
0001cbe0  LDR             R3, [R8,#0x16C]
0001cbe4  MOV             R2, R7
0001cbe8  MOV             R1, R6
0001cbec  MOV             R0, R5
0001cbf0  MOV             LR, PC
0001cbf4  BX              R3
0001cbf8  MOVS            R9, R0
0001cbfc  BEQ             loc_1CDF0
0001cc00  LDRB            R7, [R10,#0x154]
0001cc04  CMP             R7, #0
0001cc08  BEQ             loc_1CDF0
0001cc0c  ADD             R0, R5, #0x100
0001cc10  CMP             R7, #1
0001cc14  MOVEQ           R1, R0
0001cc18  LDRHEQ          R0, [R0,#0x58]
0001cc1c  LDRHEQ          R1, [R1,#0x56]
0001cc20  SUBEQ           R1, R0, R1
0001cc24  MOVEQ           R1, R1,LSL#5
0001cc28  BEQ             loc_1CC6C
0001cc2c  CMP             R7, #2
0001cc30  LDRHEQ          R1, [R0,#0x56]
0001cc34  LDRHEQ          R0, [R0,#0x58]
0001cc38  MOVEQ           R1, R1,LSL#5
0001cc3c  BEQ             loc_1CC5C
0001cc40  CMP             R7, #3
0001cc44  BNE             loc_1CC78
0001cc48  LDRH            R1, [R0,#0x56]
0001cc4c  LDRH            R0, [R0,#0x58]
0001cc50  CMP             R1, R0,LSR#1
0001cc54  BCS             loc_1CC64
0001cc58  MOV             R1, R1,LSL#6
0001cc5c  BL              sub_1DC
0001cc60  B               loc_1CC70
0001cc64  SUB             R1, R0, R1
0001cc68  MOV             R1, R1,LSL#6
0001cc6c  BL              sub_104
0001cc70  ADD             R0, R0, #0x20 ; ' '
0001cc74  B               loc_1CCD8
0001cc78  CMP             R7, #4
0001cc7c  LDRHEQ          R1, [R0,#0x56]
0001cc80  LDRHEQ          R0, [R0,#0x58]
0001cc84  MOVEQ           R1, R1,LSL#5
0001cc88  BEQ             loc_1CCC4
0001cc8c  CMP             R7, #5
0001cc90  MOVEQ           R1, R0
0001cc94  LDRHEQ          R0, [R0,#0x58]
0001cc98  LDRHEQ          R1, [R1,#0x56]
0001cc9c  SUBEQ           R1, R0, R1
0001cca0  MOVEQ           R1, R1,LSL#5
0001cca4  BEQ             loc_1CCD4
0001cca8  CMP             R7, #6
0001ccac  BNE             loc_1CCDC
0001ccb0  LDRH            R1, [R0,#0x56]
0001ccb4  LDRH            R0, [R0,#0x58]
0001ccb8  CMP             R1, R0,LSR#1
0001ccbc  BCS             loc_1CCCC
0001ccc0  MOV             R1, R1,LSL#6
0001ccc4  BL              sub_1DC
0001ccc8  B               loc_1CCD8
0001cccc  SUB             R1, R0, R1
0001ccd0  MOV             R1, R1,LSL#6
0001ccd4  BL              sub_104
0001ccd8  AND             R5, R0, #0xFF
0001ccdc  CMP             R5, #0x20 ; ' '
0001cce0  MOVHI           R0, #0xFFFFFFFF
0001cce4  MOVLS           R0, #0
0001cce8  MOV             R2, R0,LSL#16
0001ccec  SUBHI           R1, R5, #0x20 ; ' '
0001ccf0  RSBLS           R1, R5, #0x20 ; ' '
0001ccf4  AND             R1, R1, #0xFF
0001ccf8  MOV             R0, #2
0001ccfc  ORR             R1, R0, R1,LSL#8
0001cd00  LDRSH           R0, [R4,#2]
0001cd04  MOV             R2, R2,LSR#16
0001cd08  MOV             R3, #0
0001cd0c  STMEA           SP, {R0-R3}
0001cd10  LDRSH           R3, [R4]
0001cd14  MOV             R2, #0
0001cd18  MOV             R1, #0
0001cd1c  MOV             R0, R4
0001cd20  BL              sub_10C58
0001cd24  LDRB            R0, [R10,#0x160]
0001cd28  CMP             R0, #0
0001cd2c  BEQ             loc_1CDF0
0001cd30  LDRH            R1, [R4,#2]
0001cd34  LDRH            R2, [R4,#0x10]
0001cd38  MOV             R0, #0
0001cd3c  STRH            R0, [SP,#0xA8+var_8]
0001cd40  SUB             R1, R1, R2
0001cd44  MOV             LR, R1,LSL#16
0001cd48  MOV             LR, LR,ASR#16
0001cd4c  STRH            LR, [SP,#0xA8+var_6]
0001cd50  LDRH            R0, [R4]
0001cd54  ADD             R12, R6, #0x400
0001cd58  CMP             R7, #1
0001cd5c  STRH            R0, [SP,#0xA8+var_4]
0001cd60  LDRH            R0, [R4,#2]
0001cd64  CMPNE           R7, #2
0001cd68  ADD             R12, R12, #0x2B4
0001cd6c  STRH            R0, [SP,#0xA8+var_2]
0001cd70  LDR             R5, [R8,#0x164]
0001cd74  BNE             loc_1CDF8
0001cd78  CMN             R5, #1
0001cd7c  BNE             loc_1CDA8
0001cd80  MOV             R1, #0
0001cd84  STR             R1, [SP,#0xA8+var_98]
0001cd88  MOV             R3, #0
0001cd8c  MOV             R2, #0
0001cd90  ADD             R8, SP, #0xA8+var_94
0001cd94  STM             R8, {R1-R3}
0001cd98  MOV             R2, #0x7E0
0001cd9c  MOV             R1, #1
0001cda0  MOV             R0, R12
0001cda4  B               loc_1CDD4
0001cda8  MOV             R1, #0
0001cdac  MOV             R2, #0
0001cdb0  STR             R2, [SP,#0xA8+var_90]
0001cdb4  STR             R1, [SP,#0xA8+var_98]
0001cdb8  STR             R1, [SP,#0xA8+var_94]
0001cdbc  MOV             R3, #0
0001cdc0  ADD             R0, R6, R5,LSL#7
0001cdc4  ADD             R0, R0, #0x3B4
0001cdc8  STR             R3, [SP,#0xA8+var_8C]
0001cdcc  MOV             R1, #1
0001cdd0  MOV             R2, #0x7E0
0001cdd4  STMEA           SP, {R0-R3}
0001cdd8  LDR             R0, [R6,#0x28]
0001cddc  ADD             R3, SP, #0xA8+var_8
0001cde0  MOV             R2, LR
0001cde4  MOV             R1, R4
0001cde8  LDR             R0, [R0,#0x64]
0001cdec  BL              sub_98BC
0001cdf0  MOV             R0, R9
0001cdf4  B               loc_1CBD4
0001cdf8  CMN             R5, #1
0001cdfc  BNE             loc_1CDA8
0001ce00  B               loc_1CD80
