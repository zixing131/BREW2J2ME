0x4ee2c PUSH            {R4-R7,LR}
0x4ee2e LSLS            R1, R1, #0x10
0x4ee30 SUB             SP, SP, #4
0x4ee32 LDR             R3, =(sub_1FD3C+1)
0x4ee34 LSRS            R6, R1, #0x10
0x4ee36 LSLS            R4, R0, #0x18
0x4ee38 BL              sub_66A76
0x4ee3c LDR             R5, =byte_150C6BC
0x4ee3e LSRS            R4, R4, #0x18
0x4ee40 LDR             R3, =(sub_1F41C+1)
0x4ee42 STRB            R4, [R5,#(byte_150C6BD - 0x150C6BC)]
0x4ee44 MOVS            R0, R4
0x4ee46 BL              sub_66A76
0x4ee4a LDR             R7, =(sub_1F3E0+1)
0x4ee4c STRB            R0, [R5,#(byte_150C6C2 - 0x150C6BC)]
0x4ee4e LDRB            R0, [R5,#(byte_150C6BD - 0x150C6BC)]
0x4ee50 BL              sub_66A7E
0x4ee54 LDR             R3, =(sub_1F39C+1)
0x4ee56 STRB            R0, [R5,#(byte_150C6C1 - 0x150C6BC)]
0x4ee58 LDRB            R0, [R5,#(byte_150C6BD - 0x150C6BC)]
0x4ee5a BL              sub_66A76
0x4ee5e LSLS            R3, R6, #0x10
0x4ee60 ASRS            R4, R3, #0x10
0x4ee62 STRB            R0, [R5,#(byte_150C6C0 - 0x150C6BC)]
0x4ee64 CMP             R4, #0
0x4ee66 BLE             loc_4EE7E
0x4ee68 LDR             R3, =(sub_1F26C+1)
0x4ee6a LDRB            R0, [R5,#(byte_150C6C1 - 0x150C6BC)]
0x4ee6c MOVS            R1, #2
0x4ee6e BL              sub_66A76
0x4ee72 LDR             R3, =word_150C9D0
0x4ee74 LDR             R2, [R3,#(dword_150C9D8 - 0x150C9D0)]
0x4ee76 LSLS            R3, R4, #6
0x4ee78 SUBS            R3, R3, R4
0x4ee7a STRH            R6, [R5,#(word_150C6BE - 0x150C6BC)]
0x4ee7c B               loc_4EEBE
0x4ee7e LDR             R0, =word_15332A0
0x4ee80 MOVS            R6, #0xD4
0x4ee82 STR             R0, [SP,#4+var_4]
0x4ee84 LSLS            R6, R6, #1
0x4ee86 LDR             R4, [R0,R6]; dword_1533448
0x4ee88 LDRB            R0, [R5,#(byte_150C6BD - 0x150C6BC)]
0x4ee8a BL              sub_66A7E
0x4ee8e LSLS            R0, R0, #0x18
0x4ee90 ASRS            R0, R0, #0x18
0x4ee92 LSLS            R3, R0, #1
0x4ee94 ADDS            R3, R3, R0
0x4ee96 LSLS            R3, R3, #2
0x4ee98 ADDS            R3, R3, R4
0x4ee9a LDRB            R3, [R3,#7]
0x4ee9c LSLS            R3, R3, #0x18
0x4ee9e ASRS            R3, R3, #0x18
0x4eea0 CMP             R3, #2
0x4eea2 BNE             loc_4EECC
0x4eea4 LDR             R3, =(sub_21D30+1)
0x4eea6 LDRB            R0, [R5,#(byte_150C6C0 - 0x150C6BC)]
0x4eea8 BL              sub_66A76
0x4eeac LSLS            R0, R0, #0x10
0x4eeae LSRS            R0, R0, #0x10
0x4eeb0 LDR             R3, =word_150C9D0
0x4eeb2 STRH            R0, [R5,#(word_150C6BE - 0x150C6BC)]
0x4eeb4 LSLS            R0, R0, #0x10
0x4eeb6 ASRS            R0, R0, #0x10
0x4eeb8 LDR             R2, [R3,#(dword_150C9D8 - 0x150C9D0)]
0x4eeba LSLS            R3, R0, #6
0x4eebc SUBS            R3, R3, R0
0x4eebe LSLS            R3, R3, #2
0x4eec0 ADDS            R3, R3, R2
0x4eec2 ADDS            R3, #0xA2
0x4eec4 LDRH            R6, [R3]
0x4eec6 MOVS            R3, #0
0x4eec8 STRB            R3, [R5,#(byte_150C6C4 - 0x150C6BC)]
0x4eeca B               loc_4EF24
0x4eecc LDR             R3, [SP,#4+var_4]
0x4eece LDRB            R0, [R5,#(byte_150C6BD - 0x150C6BC)]
0x4eed0 LDR             R4, [R3,R6]; dword_1533448
0x4eed2 BL              sub_66A7E
0x4eed6 LSLS            R0, R0, #0x18
0x4eed8 ASRS            R0, R0, #0x18
0x4eeda LSLS            R3, R0, #1
0x4eedc ADDS            R3, R3, R0
0x4eede LSLS            R3, R3, #2
0x4eee0 ADDS            R3, R3, R4
0x4eee2 MOVS            R4, #7
0x4eee4 LDRSB           R4, [R3,R4]
0x4eee6 CMP             R4, #3
0x4eee8 BEQ             loc_4EEEE
0x4eeea MOVS            R6, #0
0x4eeec B               loc_4EF18
0x4eeee LDR             R3, =(sub_21C98+1)
0x4eef0 LDRB            R0, [R5,#(byte_150C6C0 - 0x150C6BC)]
0x4eef2 BL              sub_66A76
0x4eef6 LSLS            R0, R0, #0x10
0x4eef8 LSRS            R0, R0, #0x10
0x4eefa STRH            R0, [R5,#(word_150C6BE - 0x150C6BC)]
0x4eefc LDR             R3, =word_150C9D0
0x4eefe LSLS            R0, R0, #0x10
0x4ef00 ASRS            R0, R0, #0x10
0x4ef02 LDR             R2, [R3,#(dword_150C9D8 - 0x150C9D0)]
0x4ef04 LSLS            R3, R0, #6
0x4ef06 SUBS            R3, R3, R0
0x4ef08 LSLS            R3, R3, #2
0x4ef0a ADDS            R3, R3, R2
0x4ef0c ADDS            R3, #0xA4
0x4ef0e LDRH            R6, [R3]
0x4ef10 MOVS            R3, #1
0x4ef12 NEGS            R3, R3
0x4ef14 STRB            R4, [R5,#(byte_150C6C4 - 0x150C6BC)]
0x4ef16 STRB            R3, [R5,#(byte_150C6CB - 0x150C6BC)]
0x4ef18 LDR             R3, =byte_150C6BC
0x4ef1a LDRB            R3, [R3,#(byte_150C6C4 - 0x150C6BC)]
0x4ef1c LSLS            R3, R3, #0x18
0x4ef1e ASRS            R3, R3, #0x18
0x4ef20 CMP             R3, #0
0x4ef22 BNE             loc_4EF7C
0x4ef24 LDR             R5, =unk_150C6CC
0x4ef26 MOVS            R7, #0
0x4ef28 LDR             R3, =byte_150C6BC
0x4ef2a MOVS            R0, #(word_150C6BE - 0x150C6BC)
0x4ef2c LDRSH           R2, [R3,R0]; word_150C6BE
0x4ef2e LDR             R1, =word_150C9D0
0x4ef30 LSLS            R3, R2, #6
0x4ef32 SUBS            R3, R3, R2
0x4ef34 LDR             R2, [R1,#(dword_150C9D8 - 0x150C9D0)]
0x4ef36 LSLS            R3, R3, #2
0x4ef38 ADDS            R3, R3, R2
0x4ef3a LSLS            R2, R7, #3
0x4ef3c ADDS            R2, R2, R3
0x4ef3e ADDS            R2, #0xC0
0x4ef40 LDRB            R3, [R2]
0x4ef42 CMP             R3, #3
0x4ef44 BNE             loc_4EF74
0x4ef46 LDRH            R0, [R2,#2]
0x4ef48 LDR             R3, =0x83A01
0x4ef4a BL              sub_66A76
0x4ef4e MOVS            R1, #0
0x4ef50 MOVS            R4, R0
0x4ef52 MOVS            R2, #0x18
0x4ef54 LDR             R3, =unk_140329C
0x4ef56 MOVS            R0, R5
0x4ef58 BL              sub_66A76
0x4ef5c MOVS            R0, R5
0x4ef5e MOVS            R1, R4
0x4ef60 MOVS            R2, #0x18
0x4ef62 LDR             R3, =unk_140327C
0x4ef64 BL              sub_66A76
0x4ef68 CMP             R4, #0
0x4ef6a BEQ             loc_4EF74
0x4ef6c MOVS            R0, R4
0x4ef6e LDR             R3, =unk_14032FC
0x4ef70 BL              sub_66A76
0x4ef74 ADDS            R7, #1
0x4ef76 ADDS            R5, #0x18
0x4ef78 CMP             R7, #3
0x4ef7a BNE             loc_4EF28
0x4ef7c LDR             R3, =byte_150C6BC
0x4ef7e MOVS            R4, #0
0x4ef80 MOVS            R2, R6
0x4ef82 LDRB            R1, [R3,#(byte_150C6BD - 0x150C6BC)]
0x4ef84 STRB            R4, [R3]
0x4ef86 LDRH            R0, [R3,#(word_150C6BE - 0x150C6BC)]
0x4ef88 LDR             R3, =(sub_20644+1)
0x4ef8a BL              sub_66A76
0x4ef8e MOVS            R0, #1
0x4ef90 BL              sub_2FFE4
0x4ef94 LDR             R2, =dword_1501C18
0x4ef96 MOVS            R3, #1
0x4ef98 STR             R3, [R2]
0x4ef9a LDR             R3, =dword_1501DA0
0x4ef9c STR             R4, [R3]
0x4ef9e LDR             R3, =dword_1501DB4
0x4efa0 STR             R4, [R3]
0x4efa2 LDR             R3, =dword_1501C80
0x4efa4 STR             R4, [R3]
0x4efa6 LDR             R3, =dword_1501C58
0x4efa8 MOVS            R0, #1
0x4efaa STR             R4, [R3]
0x4efac MOVS            R1, #0x16
0x4efae MOVS            R2, #0
0x4efb0 MOVS            R3, #0
0x4efb2 LDR             R4, =(sub_1404+1)
0x4efb4 BL              sub_66A78
0x4efb8 ADD             SP, SP, #4
0x4efba POP             {R4-R7}
0x4efbc POP             {R0}
0x4efbe BX              R0