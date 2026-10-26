00024c64  PUSH            {R3-R5,LR}
00024c68  STRB            R1, [R0,#0x59]
00024c6c  MOV             R5, R2
00024c70  MOV             R4, R0
00024c74  CMP             R1, #0
00024c78  BNE             loc_24CA8
00024c7c  LDR             R0, [R4,#0x44]
00024c80  CMP             R0, #0
00024c84  BEQ             loc_24CA0
00024c88  BL              sub_145C8
00024c8c  LDR             R0, [R4,#0x44]
00024c90  BL              sub_145BC
00024c94  MOV             R0, #0
00024c98  STR             R0, [R4,#0x44]
00024c9c  STRB            R0, [R4,#0x50]
00024ca0  STR             R5, [R4,#0x54]
00024ca4  B               loc_24CB8
00024ca8  MOV             R2, R5
00024cac  MOV             R1, R4
00024cb0  MOV             R0, R4
00024cb4  BL              sub_199AC
00024cb8  MOV             R0, R4
00024cbc  POP             {R3-R5,LR}
00024cc0  MOV             R1, #1
00024cc4  B               sub_24190
