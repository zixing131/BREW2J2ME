0x840d8 PUSH            {R4-R7,LR}
0x840da SUB             SP, SP, #0x58
0x840dc MOV             R4, SP
0x840de LSLS            R2, R0, #0x10
0x840e0 ADDS            R4, #0x2A ; '*'
0x840e2 LSRS            R2, R2, #0x10
0x840e4 LDR             R1, =aDBd; "%d.bd"
0x840e6 LDR             R3, =unk_14032CC
0x840e8 MOVS            R0, R4
0x840ea BL              sub_8A950
0x840ee MOVS            R0, R4
0x840f0 LDR             R3, =(sub_6CBE0+1)
0x840f2 BL              sub_8A950
0x840f6 STR             R0, [SP,#0x58+var_4C]
0x840f8 CMP             R0, #0
0x840fa BNE             loc_840FE
0x840fc B               loc_84348
0x840fe MOV             R0, SP
0x84100 LDR             R5, =unk_140327C
0x84102 LDR             R1, [SP,#0x58+var_4C]
0x84104 MOVS            R2, #2
0x84106 ADDS            R0, #0x56 ; 'V'
0x84108 BL              sub_8A954
0x8410c LDR             R1, [SP,#0x58+var_4C]
0x8410e MOVS            R2, #4
0x84110 ADDS            R1, #2
0x84112 ADD             R0, SP, #0x58+var_10
0x84114 BL              sub_8A954
0x84118 LDR             R1, [SP,#0x58+var_4C]
0x8411a MOVS            R2, #4
0x8411c ADDS            R1, #6
0x8411e ADD             R0, SP, #0x58+var_C
0x84120 BL              sub_8A954
0x84124 LDR             R0, [SP,#0x58+var_10]
0x84126 LDR             R3, =unk_14032EC
0x84128 ADDS            R0, #2
0x8412a BL              sub_8A950
0x8412e STR             R0, [SP,#0x58+var_48]
0x84130 LDR             R0, [SP,#0x58+var_4C]
0x84132 MOVS            R1, #6
0x84134 LDR             R3, [SP,#0x58+var_C]
0x84136 LDR             R2, [SP,#0x58+var_10]
0x84138 STR             R1, [SP,#0x58+var_58]
0x8413a LDR             R4, =(sub_692B4+1)
0x8413c LDR             R1, [SP,#0x58+var_48]
0x8413e ADDS            R0, #0xA
0x84140 BL              sub_8A952
0x84144 LDR             R1, [SP,#0x58+var_48]
0x84146 MOVS            R2, #2
0x84148 ADD             R0, SP, #0x58+var_4
0x8414a BL              sub_8A954
0x8414e LDR             R4, [SP,#0x58+var_48]
0x84150 MOV             R0, SP
0x84152 ADDS            R4, #2
0x84154 MOVS            R1, R4
0x84156 MOVS            R2, #2
0x84158 ADDS            R0, #0x52 ; 'R'
0x8415a BL              sub_8A954
0x8415e LDR             R2, =unk_1538860
0x84160 ADDS            R4, #2
0x84162 MOVS            R1, #0
0x84164 STR             R4, [SP,#0x58+var_38]
0x84166 STR             R1, [SP,#0x58+var_44]
0x84168 B               loc_84320
0x8416a MOVS            R3, #0
0x8416c STR             R3, [SP,#0x58+var_34]
0x8416e LDR             R1, [SP,#0x58+var_3C]
0x84170 LDR             R2, [R1]
0x84172 LDR             R1, [SP,#0x58+var_34]
0x84174 LSLS            R3, R1, #4
0x84176 ADDS            R3, R3, R2
0x84178 ADDS            R3, #0x5C ; '\'
0x8417a LDRB            R6, [R3,#2]
0x8417c CMP             R6, #0xFF
0x8417e BEQ             loc_84236
0x84180 MOV             R3, SP
0x84182 ADDS            R3, #0x52 ; 'R'
0x84184 MOVS            R2, #0
0x84186 LDRSH           R3, [R3,R2]
0x84188 MULS            R6, R3
0x8418a LDR             R1, [SP,#0x58+var_44]
0x8418c LSLS            R5, R1, #2
0x8418e LDR             R2, [SP,#0x58+var_34]
0x84190 ADDS            R5, R5, R1
0x84192 LSLS            R5, R5, #1
0x84194 LDR             R3, [SP,#0x58+var_38]
0x84196 ADDS            R5, R5, R2
0x84198 LSLS            R6, R6, #0x10
0x8419a LSLS            R5, R5, #4
0x8419c ASRS            R6, R6, #0x10
0x8419e ADDS            R6, R3, R6
0x841a0 MOVS            R4, R5
0x841a2 LDR             R3, =unk_1538860
0x841a4 ADDS            R4, #0x14
0x841a6 ADDS            R4, R4, R3
0x841a8 LDR             R7, =unk_140327C
0x841aa STR             R3, [SP,#0x58+var_50]
0x841ac MOVS            R1, R6
0x841ae MOVS            R0, R4
0x841b0 MOVS            R2, #1
0x841b2 ADDS            R4, #2
0x841b4 BL              sub_8A958
0x841b8 ADDS            R1, R6, #1
0x841ba MOVS            R0, R4
0x841bc MOVS            R2, #2
0x841be BL              sub_8A958
0x841c2 MOVS            R4, R5
0x841c4 LDR             R2, [SP,#0x58+var_50]
0x841c6 ADDS            R4, #0x18
0x841c8 ADDS            R4, R4, R2
0x841ca ADDS            R1, R6, #3
0x841cc MOVS            R0, R4
0x841ce MOVS            R2, #2
0x841d0 BL              sub_8A958
0x841d4 ADDS            R1, R6, #5
0x841d6 ADDS            R0, R4, #2
0x841d8 MOVS            R2, #1
0x841da ADDS            R4, #3
0x841dc BL              sub_8A958
0x841e0 ADDS            R1, R6, #6
0x841e2 MOVS            R0, R4
0x841e4 MOVS            R2, #1
0x841e6 BL              sub_8A958
0x841ea MOVS            R4, R5
0x841ec LDR             R3, [SP,#0x58+var_50]
0x841ee ADDS            R4, #0x1C
0x841f0 ADDS            R4, R4, R3
0x841f2 ADDS            R1, R6, #7
0x841f4 MOVS            R0, R4
0x841f6 MOVS            R2, #1
0x841f8 BL              sub_8A958
0x841fc MOVS            R1, R6
0x841fe ADDS            R1, #8
0x84200 ADDS            R0, R4, #1
0x84202 MOVS            R2, #1
0x84204 BL              sub_8A958
0x84208 ADDS            R4, #2
0x8420a MOVS            R1, R6
0x8420c ADDS            R1, #9
0x8420e MOVS            R2, #2
0x84210 MOVS            R0, R4
0x84212 BL              sub_8A958
0x84216 LDR             R2, [SP,#0x58+var_50]
0x84218 ADDS            R5, #0x20 ; ' '
0x8421a ADDS            R5, R5, R2
0x8421c MOVS            R1, R6
0x8421e ADDS            R1, #0xB
0x84220 MOVS            R0, R5
0x84222 MOVS            R2, #2
0x84224 ADDS            R5, #2
0x84226 ADDS            R6, #0xD
0x84228 BL              sub_8A958
0x8422c MOVS            R0, R5
0x8422e MOVS            R1, R6
0x84230 MOVS            R2, #1
0x84232 BL              sub_8A958
0x84236 LDR             R3, [SP,#0x58+var_34]
0x84238 ADDS            R3, #1
0x8423a STR             R3, [SP,#0x58+var_34]
0x8423c CMP             R3, #3
0x8423e BNE             loc_8416E
0x84240 MOVS            R1, #0
0x84242 STR             R1, [SP,#0x58+var_40]
0x84244 LDR             R3, [SP,#0x58+var_3C]
0x84246 LDR             R1, [SP,#0x58+var_40]
0x84248 LDR             R2, [R3]
0x8424a LSLS            R3, R1, #3
0x8424c ADDS            R3, R3, R2
0x8424e ADDS            R3, #0x88
0x84250 LDRB            R6, [R3,#1]
0x84252 CMP             R6, #0xFF
0x84254 BEQ             loc_8430C
0x84256 MOV             R3, SP
0x84258 ADDS            R3, #0x52 ; 'R'
0x8425a MOVS            R2, #0
0x8425c LDRSH           R3, [R3,R2]
0x8425e MULS            R6, R3
0x84260 LDR             R1, [SP,#0x58+var_44]
0x84262 LSLS            R5, R1, #2
0x84264 LDR             R2, [SP,#0x58+var_40]
0x84266 ADDS            R5, R5, R1
0x84268 LSLS            R5, R5, #1
0x8426a LDR             R3, [SP,#0x58+var_38]
0x8426c ADDS            R5, R5, R2
0x8426e LSLS            R6, R6, #0x10
0x84270 LSLS            R5, R5, #4
0x84272 ASRS            R6, R6, #0x10
0x84274 ADDS            R6, R3, R6
0x84276 MOVS            R4, R5
0x84278 LDR             R3, =unk_1538860
0x8427a ADDS            R4, #0x44 ; 'D'
0x8427c ADDS            R4, R4, R3
0x8427e LDR             R7, =unk_140327C
0x84280 STR             R3, [SP,#0x58+var_54]
0x84282 MOVS            R1, R6
0x84284 MOVS            R0, R4
0x84286 MOVS            R2, #1
0x84288 ADDS            R4, #2
0x8428a BL              sub_8A958
0x8428e ADDS            R1, R6, #1
0x84290 MOVS            R0, R4
0x84292 MOVS            R2, #2
0x84294 BL              sub_8A958
0x84298 MOVS            R4, R5
0x8429a LDR             R2, [SP,#0x58+var_54]
0x8429c ADDS            R4, #0x48 ; 'H'
0x8429e ADDS            R4, R4, R2
0x842a0 ADDS            R1, R6, #3
0x842a2 MOVS            R0, R4
0x842a4 MOVS            R2, #2
0x842a6 BL              sub_8A958
0x842aa ADDS            R1, R6, #5
0x842ac ADDS            R0, R4, #2
0x842ae MOVS            R2, #1
0x842b0 ADDS            R4, #3
0x842b2 BL              sub_8A958
0x842b6 ADDS            R1, R6, #6
0x842b8 MOVS            R0, R4
0x842ba MOVS            R2, #1
0x842bc BL              sub_8A958
0x842c0 MOVS            R4, R5
0x842c2 LDR             R3, [SP,#0x58+var_54]
0x842c4 ADDS            R4, #0x4C ; 'L'
0x842c6 ADDS            R4, R4, R3
0x842c8 ADDS            R1, R6, #7
0x842ca MOVS            R0, R4
0x842cc MOVS            R2, #1
0x842ce BL              sub_8A958
0x842d2 MOVS            R1, R6
0x842d4 ADDS            R1, #8
0x842d6 ADDS            R0, R4, #1
0x842d8 MOVS            R2, #1
0x842da BL              sub_8A958
0x842de ADDS            R4, #2
0x842e0 MOVS            R1, R6
0x842e2 ADDS            R1, #9
0x842e4 MOVS            R2, #2
0x842e6 MOVS            R0, R4
0x842e8 BL              sub_8A958
0x842ec LDR             R2, [SP,#0x58+var_54]
0x842ee ADDS            R5, #0x50 ; 'P'
0x842f0 ADDS            R5, R5, R2
0x842f2 MOVS            R1, R6
0x842f4 ADDS            R1, #0xB
0x842f6 MOVS            R0, R5
0x842f8 MOVS            R2, #2
0x842fa ADDS            R5, #2
0x842fc ADDS            R6, #0xD
0x842fe BL              sub_8A958
0x84302 MOVS            R0, R5
0x84304 MOVS            R1, R6
0x84306 MOVS            R2, #1
0x84308 BL              sub_8A958
0x8430c LDR             R3, [SP,#0x58+var_40]
0x8430e ADDS            R3, #1
0x84310 STR             R3, [SP,#0x58+var_40]
0x84312 CMP             R3, #2
0x84314 BNE             loc_84244
0x84316 LDR             R1, [SP,#0x58+var_44]
0x84318 LDR             R2, [SP,#0x58+var_3C]
0x8431a ADDS            R1, #1
0x8431c STR             R1, [SP,#0x58+var_44]
0x8431e ADDS            R2, #0xA0
0x84320 STR             R2, [SP,#0x58+var_3C]
0x84322 LDR             R3, =word_15332A0
0x84324 MOVS            R2, #(byte_153341C - 0x15332A0)
0x84328 LDRB            R3, [R3,R2]; byte_153341C
0x8432a LDR             R1, [SP,#0x58+var_44]
0x8432c CMP             R1, R3
0x8432e BGE             loc_84332
0x84330 B               loc_8416A
0x84332 LDR             R2, [SP,#0x58+var_48]
0x84334 CMP             R2, #0
0x84336 BEQ             loc_84340
0x84338 MOVS            R0, R2
0x8433a LDR             R3, =unk_14032FC
0x8433c BL              sub_8A950
0x84340 LDR             R0, [SP,#0x58+var_4C]
0x84342 LDR             R3, =unk_14032FC
0x84344 BL              sub_8A950
0x84348 ADD             SP, SP, #0x58 ; 'X'
0x8434a POP             {R4-R7}
0x8434c POP             {R0}
0x8434e BX              R0