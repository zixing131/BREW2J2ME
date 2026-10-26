0x6bc30 PUSH            {R4,R5,LR}
0x6bc32 MOVS            R4, R2
0x6bc34 LDRB            R2, [R1]
0x6bc36 MOVS            R3, #0x80
0x6bc38 MOVS            R5, R0
0x6bc3a MOVS            R0, R1
0x6bc3c MOVS            R1, R2
0x6bc3e EORS            R1, R3
0x6bc40 MOVS            R3, R1
0x6bc42 SUBS            R3, #0x21 ; '!'
0x6bc44 LSLS            R3, R3, #0x18
0x6bc46 LSRS            R3, R3, #0x18
0x6bc48 CMP             R3, #0xB
0x6bc4a BLS             loc_6BC64
0x6bc4c MOVS            R3, R1
0x6bc4e SUBS            R3, #0x30 ; '0'
0x6bc50 LSLS            R3, R3, #0x18
0x6bc52 LSRS            R3, R3, #0x18
0x6bc54 CMP             R3, #0x18
0x6bc56 BLS             loc_6BC64
0x6bc58 MOVS            R3, R1
0x6bc5a SUBS            R3, #0x4A ; 'J'
0x6bc5c LSLS            R3, R3, #0x18
0x6bc5e LSRS            R3, R3, #0x18
0x6bc60 CMP             R3, #0x33 ; '3'
0x6bc62 BHI             loc_6BCD0
0x6bc64 CMP             R4, #1
0x6bc66 BGT             loc_6BC6C
0x6bc68 MOVS            R0, #2
0x6bc6a B               loc_6BCD2
0x6bc6c LDRB            R2, [R0,#1]
0x6bc6e MOVS            R3, #0x80
0x6bc70 EORS            R2, R3
0x6bc72 MOVS            R3, R2
0x6bc74 SUBS            R3, #0x21 ; '!'
0x6bc76 LSLS            R3, R3, #0x18
0x6bc78 LSRS            R3, R3, #0x18
0x6bc7a CMP             R3, #0x5D ; ']'
0x6bc7c BHI             loc_6BCD0
0x6bc7e MOVS            R3, #0x5E ; '^'
0x6bc80 MULS            R3, R1
0x6bc82 ADDS            R3, R3, R2
0x6bc84 LDR             R2, =0xFFFFF3C1
0x6bc86 ADDS            R1, R3, R2
0x6bc88 LDR             R3, =0x581
0x6bc8a CMP             R1, R3
0x6bc8c BHI             loc_6BC9C
0x6bc8e LDR             R3, =0x45A
0x6bc90 CMP             R1, R3
0x6bc92 BHI             loc_6BCD0
0x6bc94 LDR             R2, =0x9855A
0x6bc96 LSLS            R3, R1, #1
0x6bc98 LDRH            R1, [R3,R2]
0x6bc9a B               loc_6BCC4
0x6bc9c LDR             R3, =0xF0D
0x6bc9e CMP             R1, R3
0x6bca0 BHI             loc_6BCB2
0x6bca2 SUBS            R3, #0x5E ; '^'
0x6bca4 CMP             R1, R3
0x6bca6 BHI             loc_6BCD0
0x6bca8 LDR             R2, =dword_98E10
0x6bcaa LSLS            R3, R1, #1
0x6bcac ADDS            R3, R3, R2
0x6bcae LDR             R2, =0xFFFFF4FC
0x6bcb0 B               loc_6BCC0
0x6bcb2 LDR             R3, =0x2225
0x6bcb4 CMP             R1, R3
0x6bcb6 BHI             loc_6BCD0
0x6bcb8 LDR             R2, =dword_9A06C
0x6bcba LSLS            R3, R1, #1
0x6bcbc ADDS            R3, R3, R2
0x6bcbe LDR             R2, =0xFFFFE1E4
0x6bcc0 ADDS            R3, R3, R2
0x6bcc2 LDRH            R1, [R3]
0x6bcc4 LDR             R3, =(off_FFFC+1)
0x6bcc6 CMP             R1, R3
0x6bcc8 BEQ             loc_6BCD0
0x6bcca MOVS            R0, #2
0x6bccc STR             R1, [R5]
0x6bcce B               loc_6BCD4
0x6bcd0 MOVS            R0, #1
0x6bcd2 NEGS            R0, R0
0x6bcd4 POP             {R4,R5}
0x6bcd6 POP             {R1}
0x6bcd8 BX              R1