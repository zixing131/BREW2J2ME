0x6ee78 PUSH            {R4-R6,LR}
0x6ee7a LDR             R3, =dword_1536348
0x6ee7c LSLS            R0, R0, #2
0x6ee7e LDR             R1, [R0,R3]
0x6ee80 MOVS            R3, #0x97
0x6ee82 MOVS            R2, #0
0x6ee84 LSLS            R3, R3, #2
0x6ee86 STRB            R2, [R1,R3]
0x6ee88 LDR             R3, =0x25D
0x6ee8a STRB            R2, [R1,R3]
0x6ee8c LDR             R3, =dword_153653C
0x6ee8e LDRH            R2, [R1,#0x28]
0x6ee90 LDR             R3, [R3]
0x6ee92 CMP             R2, R3
0x6ee94 BEQ             loc_6EE9E
0x6ee96 LDRH            R2, [R1,#0x2C]
0x6ee98 LDR             R3, =off_EA60
0x6ee9a CMP             R2, R3
0x6ee9c BEQ             loc_6EF3E
0x6ee9e MOVS            R0, R1
0x6eea0 MOVS            R4, R1
0x6eea2 MOVS            R5, R1
0x6eea4 ADDS            R0, #0x30 ; '0'
0x6eea6 ADDS            R4, #0x49 ; 'I'
0x6eea8 MOVS            R6, #0
0x6eeaa ADDS            R5, #0x5E ; '^'
0x6eeac B               loc_6EF38
0x6eeae LDRB            R3, [R0]
0x6eeb0 CMP             R3, #0x17
0x6eeb2 BNE             loc_6EECE
0x6eeb4 LDR             R3, =0x266
0x6eeb6 MOVS            R2, #1
0x6eeb8 STRB            R2, [R1,R3]
0x6eeba LDRB            R2, [R5]
0x6eebc SUBS            R3, #4
0x6eebe STRB            R2, [R1,R3]
0x6eec0 LDRB            R2, [R5,#1]
0x6eec2 ADDS            R3, #1
0x6eec4 STRB            R2, [R1,R3]
0x6eec6 MOVS            R3, #0x99
0x6eec8 LDRH            R2, [R1,#0x28]
0x6eeca LSLS            R3, R3, #2
0x6eecc STRH            R2, [R1,R3]
0x6eece LDRB            R3, [R0]
0x6eed0 CMP             R3, #0x18
0x6eed2 BNE             loc_6EEDA
0x6eed4 LDR             R3, =0x266
0x6eed6 MOVS            R2, #0
0x6eed8 STRB            R2, [R1,R3]
0x6eeda LDRB            R3, [R0]
0x6eedc CMP             R3, #0xF
0x6eede BNE             loc_6EEF4
0x6eee0 LDR             R2, =0x25D
0x6eee2 MOVS            R3, #1
0x6eee4 STRB            R3, [R1,R2]
0x6eee6 SUBS            R3, R4, #1
0x6eee8 LDRB            R2, [R3]
0x6eeea CMP             R2, #1
0x6eeec BNE             loc_6EEF4
0x6eeee MOVS            R3, #0x25C
0x6eef2 STRB            R2, [R1,R3]
0x6eef4 LDRB            R3, [R0]
0x6eef6 CMP             R3, #0x13
0x6eef8 BNE             loc_6EF02
0x6eefa MOVS            R3, #0x250
0x6eefe MOVS            R2, #1
0x6ef00 STRB            R2, [R1,R3]
0x6ef02 LDRB            R3, [R0]
0x6ef04 CMP             R3, #0x14
0x6ef06 BNE             loc_6EF10
0x6ef08 MOVS            R3, #0x250
0x6ef0c MOVS            R2, #0
0x6ef0e STRB            R2, [R1,R3]
0x6ef10 LDRB            R3, [R0]
0x6ef12 CMP             R3, #0x1B
0x6ef14 BNE             loc_6EF30
0x6ef16 LDR             R3, =0x25E
0x6ef18 MOVS            R2, #1
0x6ef1a STRB            R2, [R1,R3]
0x6ef1c LDRB            R2, [R4]
0x6ef1e ADDS            R3, #1
0x6ef20 STRB            R2, [R1,R3]
0x6ef22 MOVS            R3, #0x98
0x6ef24 LDRB            R2, [R4,#1]
0x6ef26 LSLS            R3, R3, #2
0x6ef28 STRB            R2, [R1,R3]
0x6ef2a LDR             R3, =0x261
0x6ef2c LDRB            R2, [R4,#2]
0x6ef2e STRB            R2, [R1,R3]
0x6ef30 ADDS            R6, #1
0x6ef32 ADDS            R0, #0x34 ; '4'
0x6ef34 ADDS            R5, #0x34 ; '4'
0x6ef36 ADDS            R4, #0x34 ; '4'
0x6ef38 LDRH            R3, [R1,#0x2A]
0x6ef3a CMP             R6, R3
0x6ef3c BLT             loc_6EEAE
0x6ef3e POP             {R4-R6}
0x6ef40 POP             {R0}
0x6ef42 BX              R0