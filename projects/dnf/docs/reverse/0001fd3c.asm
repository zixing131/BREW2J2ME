0x1fd3c PUSH            {R4,LR}
0x1fd3e LDR             R2, =byte_150C6BC
0x1fd40 MOVS            R3, #1
0x1fd42 NEGS            R3, R3
0x1fd44 MOVS            R1, #0
0x1fd46 MOVS            R4, R2
0x1fd48 STRB            R3, [R2]
0x1fd4a STRB            R1, [R2,#(byte_150C6BD - 0x150C6BC)]
0x1fd4c STRH            R3, [R2,#(word_150C6BE - 0x150C6BC)]
0x1fd4e STRB            R3, [R2,#(byte_150C6C0 - 0x150C6BC)]
0x1fd50 STRB            R3, [R2,#(byte_150C6C1 - 0x150C6BC)]
0x1fd52 STRB            R3, [R2,#(byte_150C6C2 - 0x150C6BC)]
0x1fd54 STRB            R3, [R2,#(byte_150C6C3 - 0x150C6BC)]
0x1fd56 STRB            R3, [R2,#(byte_150C6C4 - 0x150C6BC)]
0x1fd58 STRH            R3, [R2,#(word_150C6C6 - 0x150C6BC)]
0x1fd5a STRH            R3, [R2,#(word_150C6C8 - 0x150C6BC)]
0x1fd5c STRB            R3, [R2,#(byte_150C6CA - 0x150C6BC)]
0x1fd5e STRB            R3, [R2,#(byte_150C6CB - 0x150C6BC)]
0x1fd60 ADDS            R4, #0x10
0x1fd62 MOVS            R0, R4
0x1fd64 LDR             R3, =unk_140329C
0x1fd66 MOVS            R1, #0
0x1fd68 MOVS            R2, #0x18
0x1fd6a BL              sub_22468
0x1fd6e LDR             R3, =byte_150C714
0x1fd70 ADDS            R4, #0x18
0x1fd72 CMP             R4, R3
0x1fd74 BNE             loc_1FD62
0x1fd76 POP             {R4}
0x1fd78 POP             {R0}
0x1fd7a BX              R0