00004f8c  PUSH            {R4-R11,LR}
00004f90  ADD             R10, R0, #0x830
00004f94  LDM             R10, {R4,R7,R10}
00004f98  LDR             R6, [R0,#0x83C]
00004f9c  MOV             R5, R0
00004fa0  LDR             R0, [R0,#0x840]
00004fa4  SUB             SP, SP, #0x5C
00004fa8  MOV             R12, R0,LSL#2
00004fac  STR             R12, [SP,#0x5C+var_4C]
00004fb0  LDR             R0, [R5,#0x828]
00004fb4  MOV             R1, R0,LSL#2
00004fb8  STR             R1, [SP,#0x5C+var_44]
00004fbc  LDR             R0, [R5,#0x82C]
00004fc0  MOV             R12, R0,LSL#2
00004fc4  ADD             R0, R5, #0x800
00004fc8  STR             R0, [SP,#0x5C+var_4]
00004fcc  STR             R12, [SP,#0x5C+var_48]
00004fd0  LDRH            R0, [R0,#0x9C]
00004fd4  MOV             R1, R0,LSR#1
00004fd8  STR             R1, [SP,#0x5C+var_24]
00004fdc  MOV             R0, R7
00004fe0  BL              sub_197A8
00004fe4  MOV             LR, R0,ASR#8
00004fe8  STR             LR, [SP,#0x5C+var_3C]
00004fec  MOV             R0, R7
00004ff0  BL              sub_196D8
00004ff4  MOV             R12, R0,ASR#8
00004ff8  STR             R12, [SP,#0x5C+var_40]
00004ffc  LDR             R1, [R5,#0x8D0]
00005000  MOV             R0, #0
00005004  STR             R1, [SP,#0x5C+var_50]
00005008  MOV             R1, #0
0000500c  LDR             R2, [R5,#0x898]
00005010  LDR             R3, [R2,#0x44]
00005014  CMP             R3, R1
00005018  LDRHI           R2, [R2,#0x48]
0000501c  RSBHI           R3, R1, R1,LSL#3
00005020  ADDHI           R2, R2, R3,LSL#2
00005024  STRHHI          R0, [R2,#4]
00005028  ADDHI           R1, R1, #1
0000502c  BHI             loc_500C
00005030  LDR             R1, [SP,#0x5C+var_24]
00005034  MOV             R0, R4,LSL#8
00005038  ADD             R1, R1, #1
0000503c  STR             R1, [SP,#0x5C+var_C]
00005040  RSB             R1, R1, #0
00005044  MOV             R2, #0
00005048  STR             R2, [SP,#0x5C+var_20]
0000504c  STR             R1, [SP,#0x5C+var_8]
00005050  SUB             R1, R4, R6
00005054  ADD             R2, SP, #0x5C+var_14
00005058  MUL             R0, R10, R0
0000505c  STM             R2, {R0,R1}
00005060  LDR             R1, [SP,#0x5C+var_24]
00005064  RSB             R0, R1, #0
00005068  STR             R0, [SP,#0x5C+var_18]
0000506c  SUB             R0, R1, #1
00005070  STR             R0, [SP,#0x5C+var_1C]
00005074  B               loc_54F0
00005078  LDR             R0, [R0,#0x40]
0000507c  LDR             R2, [SP,#0x5C+var_20]
00005080  ADD             R1, R2, R2,LSL#3
00005084  ADD             R4, R0, R1,LSL#3
00005088  LDRSH           R0, [R4,#0x18]
0000508c  LDR             R1, [SP,#0x5C+var_44]
00005090  RSB             R2, R1, R0,LSL#2
00005094  LDRSH           R0, [R4,#0x1A]
00005098  LDR             R12, [SP,#0x5C+var_48]
0000509c  RSB             R3, R12, R0,LSL#2
000050a0  LDRSH           R0, [R4,#0x1C]
000050a4  RSB             R0, R1, R0,LSL#2
000050a8  LDRSH           R1, [R4,#0x1E]
000050ac  LDR             LR, [SP,#0x5C+var_3C]
000050b0  RSB             R1, R12, R1,LSL#2
000050b4  LDR             R12, [SP,#0x5C+var_40]
000050b8  MUL             R12, R2, R12
000050bc  MLA             R12, R3, LR, R12
000050c0  MOV             R7, R12,ASR#8
000050c4  LDR             R12, [SP,#0x5C+var_40]
000050c8  CMP             R7, #0
000050cc  MUL             R12, R0, R12
000050d0  MLA             R12, R1, LR, R12
000050d4  MOV             R6, R12,ASR#8
000050d8  CMPLE           R6, #0
000050dc  BLE             loc_54E4
000050e0  LDR             R12, [SP,#0x5C+var_4C]
000050e4  CMP             R7, R12
000050e8  LDRLE           R12, [SP,#0x5C+var_4C]
000050ec  CMPLE           R6, R12
000050f0  BGT             loc_54E4
000050f4  LDR             R12, [SP,#0x5C+var_40]
000050f8  LDR             LR, [SP,#0x5C+var_3C]
000050fc  MUL             R12, R3, R12
00005100  MUL             R3, R2, LR
00005104  SUB             R2, R12, R3
00005108  MOV             R9, R2,ASR#8
0000510c  LDR             R12, [SP,#0x5C+var_40]
00005110  STR             R9, [SP,#0x5C+var_28]
00005114  MUL             R2, R1, R12
00005118  MUL             R1, R0, LR
0000511c  SUB             R0, R2, R1
00005120  LDR             R1, [SP,#0x5C+var_28]
00005124  MOV             R9, R0,ASR#8
00005128  MUL             R0, R1, R6
0000512c  MUL             R1, R9, R7
00005130  SUB             R11, R0, R1
00005134  CMP             R11, #0
00005138  LDRH            R0, [R4,#0x16]
0000513c  BGT             loc_5180
00005140  TST             R0, #8
00005144  BEQ             loc_54E4
00005148  MOV             R1, R7
0000514c  MOV             R7, R6
00005150  MOV             R6, R1
00005154  LDR             R1, [SP,#0x5C+var_28]
00005158  STR             R9, [SP,#0x5C+var_28]
0000515c  MOV             R9, R1
00005160  RSB             R11, R11, #0
00005164  TST             R0, #1
00005168  BEQ             loc_5174
0000516c  BIC             R0, R0, #4
00005170  B               loc_5178
00005174  ORR             R0, R0, #4
00005178  STRH            R0, [R4,#0x16]
0000517c  B               loc_518C
00005180  TST             R0, #1
00005184  BNE             loc_5174
00005188  B               loc_516C
0000518c  CMP             R7, #0
00005190  LDRLE           R0, [SP,#0x5C+var_C]
00005194  BLE             loc_51A8
00005198  LDR             R0, [SP,#0x5C+var_28]
0000519c  MUL             R1, R0, R10
000051a0  MOV             R0, R7
000051a4  BL              sub_104
000051a8  MOV             R8, R0
000051ac  CMP             R6, #0
000051b0  LDRLE           R0, [SP,#0x5C+var_8]
000051b4  BLE             loc_51C4
000051b8  MUL             R1, R9, R10
000051bc  MOV             R0, R6
000051c0  BL              sub_104
000051c4  CMP             R8, R0
000051c8  LDRGT           R1, [SP,#0x5C+var_18]
000051cc  STR             R0, [SP,#0x5C+var_2C]
000051d0  CMPGT           R8, R1
000051d4  BLE             loc_54E4
000051d8  LDR             R0, [SP,#0x5C+var_2C]
000051dc  LDR             R1, [SP,#0x5C+var_1C]
000051e0  CMP             R0, R1
000051e4  BGE             loc_54E4
000051e8  MOV             R0, #0
000051ec  STR             R0, [SP,#0x5C+var_58]
000051f0  STR             R0, [SP,#0x5C+var_5C]
000051f4  LDR             R0, [SP,#0x5C+var_2C]
000051f8  LDR             R1, [SP,#0x5C+var_18]
000051fc  CMP             R0, R1
00005200  BLT             loc_5210
00005204  LDR             R1, [SP,#0x5C+var_24]
00005208  CMP             R8, R1
0000520c  BLT             loc_52F4
00005210  LDR             R1, [SP,#0x5C+var_24]
00005214  CMP             R8, R1
00005218  BLT             loc_5274
0000521c  LDR             R1, [SP,#0x5C+var_1C]
00005220  SUB             R0, R6, R7
00005224  MUL             R0, R1, R0
00005228  LDR             R1, [SP,#0x5C+var_28]
0000522c  SUB             R1, R9, R1
00005230  MUL             R1, R10, R1
00005234  SUB             R0, R0, R1
00005238  STR             R0, [SP,#0x5C+var_38]
0000523c  MUL             R1, R10, R11
00005240  BL              sub_104
00005244  STR             R0, [SP,#0x5C+var_30]
00005248  LDR             R0, [SP,#0x5C+var_1C]
0000524c  MUL             R1, R0, R11
00005250  LDR             R0, [SP,#0x5C+var_38]
00005254  BL              sub_104
00005258  LDR             R1, [SP,#0x5C+var_28]
0000525c  SUB             R1, R0, R1
00005260  LDR             R0, [SP,#0x5C+var_30]
00005264  SUB             R0, R0, R7
00005268  BL              sub_1973C
0000526c  MOV             R0, R0,LSR#2
00005270  STR             R0, [SP,#0x5C+var_58]
00005274  LDR             R0, [SP,#0x5C+var_2C]
00005278  LDR             R1, [SP,#0x5C+var_18]
0000527c  CMP             R0, R1
00005280  BGE             loc_52E4
00005284  LDR             R1, [SP,#0x5C+var_18]
00005288  SUB             R0, R6, R7
0000528c  MUL             R0, R1, R0
00005290  LDR             R1, [SP,#0x5C+var_28]
00005294  SUB             R1, R9, R1
00005298  MUL             R1, R10, R1
0000529c  SUB             R0, R0, R1
000052a0  STR             R0, [SP,#0x5C+var_38]
000052a4  MUL             R1, R10, R11
000052a8  BL              sub_104
000052ac  LDR             R1, [SP,#0x5C+var_18]
000052b0  STR             R0, [SP,#0x5C+var_34]
000052b4  LDR             R0, [SP,#0x5C+var_38]
000052b8  MUL             R1, R11, R1
000052bc  BL              sub_104
000052c0  SUB             R1, R0, R9
000052c4  LDR             R0, [SP,#0x5C+var_34]
000052c8  SUB             R0, R0, R6
000052cc  BL              sub_1973C
000052d0  MOV             R0, R0,LSR#2
000052d4  STR             R0, [SP,#0x5C+var_5C]
000052d8  LDR             R0, [SP,#0x5C+var_18]
000052dc  LDR             R6, [SP,#0x5C+var_34]
000052e0  STR             R0, [SP,#0x5C+var_2C]
000052e4  LDR             R1, [SP,#0x5C+var_24]
000052e8  CMP             R8, R1
000052ec  LDRGE           R7, [SP,#0x5C+var_30]
000052f0  LDRGE           R8, [SP,#0x5C+var_1C]
000052f4  CMP             R7, #0
000052f8  CMPGT           R6, #0
000052fc  BLE             loc_54E4
00005300  LDRB            R0, [R4,#0x20]
00005304  MOV             R0, R0,LSL#2
00005308  MUL             R1, R0, R10
0000530c  MOV             R11, R1,LSL#8
00005310  MOV             R1, R11
00005314  MOV             R0, R7
00005318  BL              sub_104
0000531c  MOV             R9, R0
00005320  MOV             R0, R6
00005324  MOV             R1, R11
00005328  BL              sub_104
0000532c  CMP             R9, #0
00005330  STR             R0, [SP,#0x5C+var_54]
00005334  LDRNE           R0, [SP,#0x5C+var_54]
00005338  CMPNE           R0, #0
0000533c  BEQ             loc_54E4
00005340  MOV             R0, R7
00005344  LDR             R1, [SP,#0x5C+var_14]
00005348  BL              sub_104
0000534c  LDR             R1, [SP,#0x5C+var_10]
00005350  RSB             R11, R0, R1,LSL#8
00005354  LDR             R1, [SP,#0x5C+var_14]
00005358  MOV             R0, R6
0000535c  BL              sub_104
00005360  LDR             R1, [SP,#0x5C+var_10]
00005364  ADD             R2, R4, #0x28 ; '('
00005368  RSB             R0, R0, R1,LSL#8
0000536c  LDR             R1, [SP,#0x5C+var_24]
00005370  ADD             R1, R8, R1
00005374  STM             R2, {R1,R11}
00005378  STR             R9, [R4,#0x38]
0000537c  LDR             R1, [SP,#0x5C+var_2C]
00005380  SUB             R8, R1, R8
00005384  SUB             R1, R0, R11
00005388  MOV             R0, R8
0000538c  STR             R8, [R4,#0x30]
00005390  BL              sub_104
00005394  STR             R0, [R4,#0x34]
00005398  LDR             R0, [SP,#0x5C+var_54]
0000539c  SUB             R1, R0, R9
000053a0  MOV             R0, R8
000053a4  BL              sub_104
000053a8  STR             R0, [R4,#0x3C]
000053ac  LDR             R0, [SP,#0x5C+var_58]
000053b0  MOV             R0, R0,LSL#8
000053b4  STR             R0, [R4,#0x40]
000053b8  LDRB            R0, [R4,#0x21]
000053bc  LDR             R1, [SP,#0x5C+var_58]
000053c0  SUB             R0, R0, R1
000053c4  LDR             R1, [SP,#0x5C+var_5C]
000053c8  SUB             R0, R0, R1
000053cc  MOV             R1, R0,LSL#8
000053d0  RSB             R0, R8, #0
000053d4  BL              sub_104
000053d8  STR             R0, [R4,#0x44]
000053dc  LDRB            R0, [R4,#0x24]
000053e0  CMP             R0, #0
000053e4  BEQ             loc_5408
000053e8  LDR             R0, [R5,#0x898]
000053ec  LDRH            R1, [R4,#0x26]
000053f0  LDR             R0, [R0,#0x48]
000053f4  RSB             R1, R1, R1,LSL#3
000053f8  ADD             R0, R0, R1,LSL#2
000053fc  LDRH            R1, [R0,#4]!
00005400  ADD             R1, R1, #1
00005404  STRH            R1, [R0]
00005408  ADD             R0, R7, R6
0000540c  ADD             R0, R0, R0,LSR#31
00005410  MOV             R0, R0,ASR#1
00005414  STR             R0, [R4,#8]
00005418  LDR             R1, [R5,#0x8D0]
0000541c  CMP             R1, #0
00005420  STREQ           R4, [R5,#0x8D0]
00005424  STREQ           R4, [R5,#0x8D4]
00005428  MOVEQ           R0, #0
0000542c  STREQ           R0, [R4,#0xC]
00005430  STREQ           R0, [R4,#0x10]
00005434  BEQ             loc_54E0
00005438  LDR             R2, [R1,#8]
0000543c  CMP             R2, R0
00005440  MOVLT           R0, #0
00005444  STRLT           R0, [R4,#0x10]
00005448  STRLT           R1, [R4,#0xC]
0000544c  LDRLT           R0, [R5,#0x8D0]
00005450  STRLT           R4, [R0,#0x10]
00005454  STRLT           R4, [R5,#0x8D0]
00005458  BLT             loc_54E0
0000545c  LDR             R1, [R5,#0x8D4]
00005460  LDR             R1, [R1,#8]
00005464  CMP             R1, R0
00005468  BLT             loc_548C
0000546c  MOV             R0, #0
00005470  STR             R0, [R4,#0xC]
00005474  LDR             R0, [R5,#0x8D4]
00005478  STR             R4, [R0,#0xC]
0000547c  LDR             R0, [R5,#0x8D4]
00005480  STR             R0, [R4,#0x10]
00005484  STR             R4, [R5,#0x8D4]
00005488  B               loc_54E0
0000548c  LDR             R1, [SP,#0x5C+var_50]
00005490  LDR             R1, [R1,#8]
00005494  CMP             R1, R0
00005498  LDR             R1, [SP,#0x5C+var_50]
0000549c  BLT             loc_54BC
000054a0  LDR             R2, [R1,#0xC]
000054a4  LDR             R3, [R2,#8]
000054a8  CMP             R3, R0
000054ac  MOVGE           R1, R2
000054b0  BGE             loc_54A0
000054b4  B               loc_54C8
000054b8  LDR             R1, [R1,#0x10]
000054bc  LDR             R2, [R1,#8]
000054c0  CMP             R2, R0
000054c4  BLT             loc_54B8
000054c8  LDR             R0, [R1,#0xC]
000054cc  ADD             R2, R4, #0xC
000054d0  STM             R2, {R0,R1}
000054d4  LDR             R0, [R1,#0xC]
000054d8  STR             R4, [R0,#0x10]
000054dc  STR             R4, [R1,#0xC]
000054e0  STR             R4, [SP,#0x5C+var_50]
000054e4  LDR             R2, [SP,#0x5C+var_20]
000054e8  ADD             R2, R2, #1
000054ec  STR             R2, [SP,#0x5C+var_20]
000054f0  LDR             R0, [R5,#0x898]
000054f4  LDR             R1, [R0,#0x3C]
000054f8  LDR             R2, [SP,#0x5C+var_20]
000054fc  CMP             R1, R2
00005500  BHI             loc_5078
00005504  LDR             R0, [SP,#0x5C+var_4]
00005508  LDR             R6, =(start - 0x5518)
0000550c  LDRH            R2, [R0,#0x9C]
00005510  ADD             R6, PC, R6; start
00005514  LDR             R1, [R6,#(dword_8 - 0xC)]
00005518  LDR             R0, [R5,#0x8CC]
0000551c  LDR             R3, [R1,#4]
00005520  MOV             R1, #0
00005524  MOV             LR, PC
00005528  BX              R3
0000552c  LDR             R4, [R5,#0x8D4]
00005530  B               loc_5704
00005534  LDRB            R0, [R4]
00005538  CMP             R0, #1
0000553c  LDRNE           R4, [R4,#0x10]
00005540  BNE             loc_5704
00005544  MOV             R0, R4
00005548  LDRB            R1, [R0,#0x22]
0000554c  LDR             R12, [R0,#0x28]
00005550  LDR             R4, [R4,#0x10]
00005554  LDR             R2, [R0,#0x30]
00005558  MOV             R8, R12
0000555c  ADD             LR, R2, R12
00005560  LDR             R2, [SP,#0x5C+var_4]
00005564  LDRH            R2, [R2,#0x9C]
00005568  LDR             R7, [R5,#0x8CC]
0000556c  CMP             R2, R12
00005570  SUBLE           R12, R2, #1
00005574  CMP             LR, #0
00005578  MOVLT           LR, #0
0000557c  ADD             R3, R7, R12
00005580  MOV             R9, R3
00005584  ADD             R2, R7, LR
00005588  CMP             R1, #0
0000558c  BNE             loc_55B4
00005590  B               loc_5598
00005594  SUB             R3, R3, #1
00005598  CMP             R3, R2
0000559c  BCC             loc_55C4
000055a0  LDRB            R10, [R3]
000055a4  CMP             R10, #0
000055a8  BNE             loc_5594
000055ac  B               loc_55C4
000055b0  SUB             R3, R3, #1
000055b4  CMP             R3, R2
000055b8  LDRBCS          R10, [R3]
000055bc  CMPCS           R10, R1
000055c0  BCS             loc_55B0
000055c4  SUB             R3, R3, R7
000055c8  CMP             R3, LR
000055cc  BGE             loc_562C
000055d0  LDRB            R1, [R0,#0x24]
000055d4  CMP             R1, #0
000055d8  BEQ             loc_55FC
000055dc  LDR             R1, [R5,#0x898]
000055e0  LDRH            R2, [R0,#0x26]
000055e4  LDR             R1, [R1,#0x48]
000055e8  RSB             R2, R2, R2,LSL#3
000055ec  ADD             R1, R1, R2,LSL#2
000055f0  LDRH            R2, [R1,#4]!
000055f4  SUB             R2, R2, #1
000055f8  STRH            R2, [R1]
000055fc  LDR             R1, [R0,#0xC]
00005600  CMP             R1, #0
00005604  LDREQ           R1, [R0,#0x10]
00005608  LDRNE           R2, [R0,#0x10]
0000560c  STREQ           R1, [R5,#0x8D4]
00005610  STRNE           R2, [R1,#0x10]
00005614  LDR             R1, [R0,#0x10]
00005618  LDR             R0, [R0,#0xC]
0000561c  CMP             R1, #0
00005620  STREQ           R0, [R5,#0x8D0]
00005624  STRNE           R0, [R1,#0xC]
00005628  B               loc_5704
0000562c  CMP             R1, #0
00005630  BNE             loc_5658
00005634  B               loc_563C
00005638  ADD             R2, R2, #1
0000563c  CMP             R2, R9
00005640  BHI             loc_566C
00005644  LDRB            LR, [R2]
00005648  CMP             LR, #0
0000564c  BNE             loc_5638
00005650  B               loc_566C
00005654  ADD             R2, R2, #1
00005658  CMP             R2, R9
0000565c  BHI             loc_566C
00005660  LDRB            LR, [R2]
00005664  CMP             LR, R1
00005668  BCS             loc_5654
0000566c  SUB             LR, R2, R7
00005670  CMP             R3, R12
00005674  BGE             loc_56BC
00005678  SUB             R2, R12, R3
0000567c  SUB             R12, R8, R2
00005680  STR             R12, [R0,#0x28]
00005684  LDR             R7, [R0,#0x34]
00005688  LDR             R12, [R0,#0x2C]
0000568c  MUL             R7, R2, R7
00005690  SUB             R12, R12, R7
00005694  STR             R12, [R0,#0x2C]
00005698  LDR             R7, [R0,#0x3C]
0000569c  LDR             R12, [R0,#0x38]
000056a0  MUL             R7, R2, R7
000056a4  SUB             R12, R12, R7
000056a8  STR             R12, [R0,#0x38]
000056ac  LDR             R7, [R0,#0x44]
000056b0  LDR             R12, [R0,#0x40]
000056b4  MLA             R12, R2, R7, R12
000056b8  STR             R12, [R0,#0x40]
000056bc  SUB             R2, LR, R3
000056c0  STR             R2, [R0,#0x30]
000056c4  LDR             R0, [SP,#0x5C+var_4]
000056c8  LDRH            R2, [R0,#0x9C]
000056cc  CMP             R2, LR
000056d0  BLE             loc_5704
000056d4  SUB             R0, R3, LR
000056d8  CMP             R0, #0
000056dc  CMPGE           R2, R3
000056e0  BLT             loc_5704
000056e4  CMP             R1, #0
000056e8  ADDNE           R2, R0, #1
000056ec  LDRNE           R0, [R5,#0x8CC]
000056f0  LDRNE           R3, [R6,#(dword_8 - 0xC)]
000056f4  ADDNE           R0, R0, LR
000056f8  LDRNE           R3, [R3,#4]
000056fc  MOVNE           LR, PC
00005700  BXNE            R3
00005704  CMP             R4, #0
00005708  BNE             loc_5534
0000570c  ADD             SP, SP, #0x5C ; '\'
00005710  POP             {R4-R11,LR}
00005714  BX              LR
