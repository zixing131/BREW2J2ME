000130a4  PUSH            {R3-R11,LR}
000130a8  MOV             R9, R2
000130ac  MOVS            R4, R1
000130b0  CMPNE           R9, #0
000130b4  LDR             R5, [SP,#4+arg_0]
000130b8  MOV             R6, R0
000130bc  LDRNE           R0, [R6,#0x174]
000130c0  MOV             R7, R3
000130c4  CMPNE           R0, #0
000130c8  BEQ             loc_1344C
000130cc  LDRB            R0, [R4,#0x150]
000130d0  MOV             R11, #0
000130d4  CMP             R0, #0
000130d8  BEQ             loc_13190
000130dc  CMP             R0, #1
000130e0  BEQ             loc_1316C
000130e4  ADD             R1, R4, #0x100
000130e8  CMP             R0, #2
000130ec  BNE             loc_1311C
000130f0  SUB             R12, R7, #0x100
000130f4  SUBS            R12, R12, #2
000130f8  SUBEQ           R12, R5, #0xE000
000130fc  SUBSEQ          R12, R12, #0x35 ; '5'
00013100  BEQ             loc_13110
00013104  SUB             R12, R7, #0x500
00013108  SUBS            R12, R12, #6
0001310c  BNE             loc_1316C
00013110  STRB            R11, [R4,#0x150]
00013114  STRH            R11, [R1,#0x4E]
00013118  B               def_13618; jumptable 00013618 default case, cases 12-14
0001311c  CMP             R0, #3
00013120  BNE             loc_13150
00013124  SUB             R12, R7, #0x100
00013128  SUBS            R12, R12, #2
0001312c  SUBEQ           R12, R5, #0xE000
00013130  SUBSEQ          R12, R12, #0x30 ; '0'
00013134  BEQ             loc_13110
00013138  SUB             R12, R7, #0x100
0001313c  SUBS            R12, R12, #2
00013140  SUBEQ           R12, R5, #0xE000
00013144  SUBSEQ          R12, R12, #0x37 ; '7'
00013148  BEQ             loc_13110
0001314c  B               loc_1316C
00013150  CMP             R0, #4
00013154  BNE             loc_1316C
00013158  SUB             R12, R7, #0x100
0001315c  SUBS            R12, R12, #2
00013160  SUBNE           R12, R7, #0x500
00013164  SUBSNE          R12, R12, #6
00013168  BEQ             loc_13110
0001316c  SUB             R12, R7, #0x100
00013170  SUBS            R12, R12, #2
00013174  BNE             loc_1344C
00013178  SUB             R12, R5, #0xE000
0001317c  SUBS            R12, R12, #0x30 ; '0'
00013180  SUBNE           R12, R5, #0xE000
00013184  SUBSNE          R12, R12, #0x37 ; '7'
00013188  BEQ             def_13618; jumptable 00013618 default case, cases 12-14
0001318c  B               loc_1344C
00013190  SUB             R10, R5, #0xE000
00013194  SUB             R10, R10, #0x21 ; '!'
00013198  CMP             R7, #0x100
0001319c  BNE             loc_13420
000131a0  CMP             R10, #0xB
000131a4  STRHI           R11, [R4,#0x144]
000131a8  BHI             loc_13420
000131ac  LDR             R0, [R6,#0x144]
000131b0  MOV             R3, R10,LSL#24
000131b4  MOV             R3, R3,ASR#24
000131b8  CMP             R0, #6
000131bc  BNE             loc_131F8
000131c0  MOV             R0, #0
000131c4  LDR             R1, [R6,#0x144]
000131c8  SUB             R1, R1, #1
000131cc  CMP             R1, R0
000131d0  ADDHI           R1, R4, R0
000131d4  ADDHI           R1, R1, #0x100
000131d8  LDRBHI          R2, [R1,#0x49]
000131dc  ADDHI           R0, R0, #1
000131e0  BICHI           R0, R0, #0x10000
000131e4  STRBHI          R2, [R1,#0x48]
000131e8  BHI             loc_131C4
000131ec  LDR             R0, [R6,#0x144]
000131f0  SUB             R0, R0, #1
000131f4  STR             R0, [R6,#0x144]
000131f8  LDR             R0, [R6,#0x144]
000131fc  ADD             R1, R0, #1
00013200  STR             R1, [R6,#0x144]
00013204  ADD             R0, R0, R4
00013208  STRB            R3, [R0,#0x148]
0001320c  LDR             R0, [R4,#0x13C]
00013210  CMP             R0, #4
00013214  BNE             loc_13274
00013218  LDR             R2, =(dword_27A6C - 0x13224)
0001321c  ADD             R2, PC, R2; dword_27A6C
00013220  MOV             R1, R4
00013224  MOV             R0, R4
00013228  BL              sub_6100
0001322c  CMP             R0, #1
00013230  BNE             loc_13274
00013234  LDRB            R0, [R9,#0x3F]
00013238  MOV             R1, #0x14
0001323c  RSBS            R0, R0, #1
00013240  MOVCC           R0, #0
00013244  STRB            R0, [R9,#0x3F]
00013248  CMP             R0, #1
0001324c  LDRNE           R0, =0x138F
00013250  LDREQ           R0, =0x138E
00013254  MOV             R0, R0,LSL#16
00013258  MOV             R0, R0,LSR#16
0001325c  STR             R0, [R6,#0x168]
00013260  MOV             R0, #1
00013264  STRB            R0, [R6,#0x150]
00013268  ADD             R0, R6, #0x100
0001326c  STRH            R1, [R0,#0x52]
00013270  STRH            R11, [R0,#0x4E]
00013274  LDRB            R0, [R9,#0x3F]
00013278  CMP             R0, #1
0001327c  LDREQ           R0, [R4,#0x13C]
00013280  CMPEQ           R0, #5
00013284  LDRBEQ          R0, [R4,#0x1A4]
00013288  CMPEQ           R0, #0
0001328c  BNE             loc_13420
00013290  MOV             R8, #0
00013294  LDR             R1, =(word_27A72 - 0x132A4)
00013298  ADD             R0, R8, R8,LSL#1
0001329c  ADD             R1, PC, R1; word_27A72
000132a0  ADD             R2, R1, R0,LSL#1
000132a4  MOV             R1, R4
000132a8  MOV             R0, R4
000132ac  BL              sub_6100
000132b0  CMP             R0, #1
000132b4  BEQ             loc_132C8
000132b8  ADD             R0, R8, #1
000132bc  BIC             R8, R0, #0x10000
000132c0  CMP             R8, #3
000132c4  BCC             loc_13294
000132c8  CMP             R8, #0
000132cc  BEQ             loc_13410
000132d0  LDR             R0, =(start - 0x132DC)
000132d4  ADD             R0, PC, R0; start
000132d8  CMP             R8, #1
000132dc  BEQ             loc_13458
000132e0  CMP             R8, #2
000132e4  BNE             loc_13420
000132e8  MOV             R8, R0
000132ec  LDR             R0, [R0,#(dword_8 - 0xC)]
000132f0  ADR             LR, loc_132FC
000132f4  LDR             R0, [R0,#0xC0]
000132f8  BX              R0
000132fc  LDR             R0, [R0,#0x760]
00013300  MOV             R2, #1
00013304  MOV             R1, #1
00013308  LDR             R0, [R0,#0x190]
0001330c  BL              sub_D10
00013310  LDR             R0, [R8,#(dword_8 - 0xC)]
00013314  ADR             LR, loc_13320
00013318  LDR             R0, [R0,#0xC0]
0001331c  BX              R0
00013320  LDR             R0, [R0,#0x760]
00013324  MOV             R2, #1
00013328  MOV             R1, #2
0001332c  LDR             R0, [R0,#0x190]
00013330  BL              sub_D10
00013334  LDR             R0, [R8,#(dword_8 - 0xC)]
00013338  ADR             LR, loc_13344
0001333c  LDR             R0, [R0,#0xC0]
00013340  BX              R0
00013344  LDR             R0, [R0,#0x760]
00013348  MOV             R2, #1
0001334c  MOV             R1, #3
00013350  LDR             R0, [R0,#0x190]
00013354  BL              sub_D10
00013358  LDR             R0, [R8,#(dword_8 - 0xC)]
0001335c  ADR             LR, loc_13368
00013360  LDR             R0, [R0,#0xC0]
00013364  BX              R0
00013368  LDR             R0, [R0,#0x760]
0001336c  MOV             R2, #1
00013370  MOV             R1, #4
00013374  LDR             R0, [R0,#0x190]
00013378  BL              sub_D10
0001337c  LDR             R0, [R8,#(dword_8 - 0xC)]
00013380  ADR             LR, loc_1338C
00013384  LDR             R0, [R0,#0xC0]
00013388  BX              R0
0001338c  LDR             R0, [R0,#0x760]
00013390  MOV             R2, #1
00013394  MOV             R1, #5
00013398  LDR             R0, [R0,#0x190]
0001339c  BL              sub_D10
000133a0  LDR             R0, [R8,#(dword_8 - 0xC)]
000133a4  ADR             LR, loc_133B0
000133a8  LDR             R0, [R0,#0xC0]
000133ac  BX              R0
000133b0  LDR             R0, [R0,#0x760]
000133b4  MOV             R2, #1
000133b8  MOV             R1, #6
000133bc  LDR             R0, [R0,#0x190]
000133c0  BL              sub_D10
000133c4  LDR             R0, [R8,#(dword_8 - 0xC)]
000133c8  ADR             LR, loc_133D4
000133cc  LDR             R0, [R0,#0xC0]
000133d0  BX              R0
000133d4  LDR             R0, [R0,#0x760]
000133d8  MOV             R2, #1
000133dc  MOV             R1, #7
000133e0  LDR             R0, [R0,#0x190]
000133e4  BL              sub_D10
000133e8  LDR             R0, [R8,#(dword_8 - 0xC)]
000133ec  ADR             LR, loc_133F8
000133f0  LDR             R0, [R0,#0xC0]
000133f4  BX              R0
000133f8  LDR             R0, [R0,#0x760]
000133fc  MOV             R2, #1
00013400  MOV             R1, #8
00013404  LDR             R0, [R0,#0x190]
00013408  BL              sub_D10
0001340c  B               loc_13420
00013410  LDRB            R0, [R9,#0x40]
00013414  RSBS            R0, R0, #1
00013418  MOVCC           R0, #0
0001341c  STRB            R0, [R9,#0x40]
00013420  LDRB            R0, [R4,#0x154]
00013424  CMP             R0, #0
00013428  BEQ             loc_135E8
0001342c  SUB             R12, R7, #0x100
00013430  SUBS            R12, R12, #2
00013434  BNE             loc_1344C
00013438  SUB             R12, R5, #0xE000
0001343c  SUBS            R12, R12, #0x30 ; '0'
00013440  SUBNE           R12, R5, #0xE000
00013444  SUBSNE          R12, R12, #0x37 ; '7'
00013448  BEQ             def_13618; jumptable 00013618 default case, cases 12-14
0001344c  MOV             R0, #0
00013450  POP             {R3-R11,LR}
00013454  BX              LR
00013458  MOV             R8, R0
0001345c  LDR             R0, [R0,#(dword_8 - 0xC)]
00013460  ADR             LR, loc_1346C
00013464  LDR             R0, [R0,#0xC0]
00013468  BX              R0
0001346c  LDR             R0, [R0,#0x760]
00013470  LDR             R4, [R0,#0x190]
00013474  MOV             R0, #0x1F0
00013478  LDR             R1, [R4,#0x324]
0001347c  ADR             LR, loc_134A4
00013480  STR             R0, [R1]
00013484  LDR             R1, [R4,#0x328]
00013488  MOV             R0, #0x130
0001348c  STR             R0, [R1]
00013490  LDR             R0, [R4,#0x32C]
00013494  STR             R11, [R0]
00013498  LDR             R0, [R8,#(dword_8 - 0xC)]
0001349c  LDR             R0, [R0,#0xC0]
000134a0  BX              R0
000134a4  LDR             R0, [R0,#0x760]
000134a8  ADD             R0, R0, #0x100
000134ac  LDRSH           R0, [R0,#0x84]
000134b0  ADD             R0, R0, #1
000134b4  MOV             R1, R0,ASR#31
000134b8  ADD             R1, R0, R1,LSR#28
000134bc  MOV             R1, R1,ASR#4
000134c0  SUB             R0, R0, R1,LSL#4
000134c4  ADD             R0, R0, #1
000134c8  MOV             R1, R0,LSL#16
000134cc  MOV             R1, R1,LSR#16
000134d0  MOV             R5, R1
000134d4  MOV             R0, R4
000134d8  BL              sub_5E14
000134dc  MOV             R1, R5
000134e0  MOV             R0, R4
000134e4  BL              sub_5DD4
000134e8  LDR             R0, [R8,#(dword_8 - 0xC)]
000134ec  ADR             LR, loc_134F8
000134f0  LDR             R0, [R0,#0xC0]
000134f4  BX              R0
000134f8  LDR             R0, [R0,#0x760]
000134fc  LDR             R0, [R0,#0x194]
00013500  ADR             LR, loc_13514
00013504  STRH            R11, [R0,#0x48]
00013508  LDR             R0, [R8,#(dword_8 - 0xC)]
0001350c  LDR             R0, [R0,#0xC0]
00013510  BX              R0
00013514  LDR             R0, [R0,#0x760]
00013518  LDR             R0, [R0,#0x194]
0001351c  ADR             LR, loc_13530
00013520  STR             R11, [R0,#0x44]
00013524  LDR             R0, [R8,#(dword_8 - 0xC)]
00013528  LDR             R0, [R0,#0xC0]
0001352c  BX              R0
00013530  LDR             R0, [R0,#0x760]
00013534  LDR             R0, [R0,#0x194]
00013538  ADR             LR, loc_1354C
0001353c  STRH            R11, [R0,#0x4A]
00013540  LDR             R0, [R8,#(dword_8 - 0xC)]
00013544  LDR             R0, [R0,#0xC0]
00013548  BX              R0
0001354c  LDR             R0, [R0,#0x760]
00013550  LDR             R0, [R0,#0x194]
00013554  ADR             LR, loc_13568
00013558  STRH            R11, [R0,#0x3C]
0001355c  LDR             R0, [R8,#(dword_8 - 0xC)]
00013560  LDR             R0, [R0,#0xC0]
00013564  BX              R0
00013568  LDR             R0, [R0,#0x760]
0001356c  LDR             R0, [R0,#0x194]
00013570  ADR             LR, loc_13584
00013574  STRB            R11, [R0,#0x50]
00013578  LDR             R0, [R8,#(dword_8 - 0xC)]
0001357c  LDR             R0, [R0,#0xC0]
00013580  BX              R0
00013584  LDR             R0, [R0,#0x760]
00013588  LDR             R0, [R0,#0x194]
0001358c  ADR             LR, loc_135A0
00013590  STRB            R11, [R0,#0x51]
00013594  LDR             R0, [R8,#(dword_8 - 0xC)]
00013598  LDR             R0, [R0,#0xC0]
0001359c  BX              R0
000135a0  LDR             R0, [R0,#0x760]
000135a4  LDR             R0, [R0,#0x194]
000135a8  ADR             LR, loc_135BC
000135ac  STRH            R11, [R0,#0x3E]
000135b0  LDR             R0, [R8,#(dword_8 - 0xC)]
000135b4  LDR             R0, [R0,#0xC0]
000135b8  BX              R0
000135bc  LDR             R0, [R0,#0x760]
000135c0  LDR             R0, [R0,#0x194]
000135c4  ADR             LR, loc_135D8
000135c8  STRB            R11, [R0,#5]
000135cc  LDR             R0, [R8,#(dword_8 - 0xC)]
000135d0  LDR             R0, [R0,#0xC0]
000135d4  BX              R0
000135d8  LDR             R0, [R0,#0x760]
000135dc  LDR             R0, [R0,#0x194]
000135e0  STRH            R11, [R0,#0x28]
000135e4  B               def_13618; jumptable 00013618 default case, cases 12-14
000135e8  CMP             R7, #0x100
000135ec  LDRNE           R12, =(sub_100+1)
000135f0  CMPNE           R7, R12
000135f4  SUBNE           R12, R7, #0x100
000135f8  SUBSNE          R12, R12, #2
000135fc  BNE             loc_13714; jumptable 00013618 cases 0-11,15-22
00013600  LDR             R0, [R4,#0x13C]
00013604  CMP             R0, #5
00013608  LDRBEQ          R0, [R4,#0x1A4]
0001360c  CMPEQ           R0, #0
00013610  BNE             loc_1367C
00013614  CMP             R10, #0x16; switch 23 cases
00013618  ADDLS           PC, PC, R10,LSL#2; switch jump
0001361c  B               def_13618; jumptable 00013618 default case, cases 12-14
00013620  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013624  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013628  B               loc_13714; jumptable 00013618 cases 0-11,15-22
0001362c  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013630  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013634  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013638  B               loc_13714; jumptable 00013618 cases 0-11,15-22
0001363c  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013640  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013644  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013648  B               loc_13714; jumptable 00013618 cases 0-11,15-22
0001364c  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013650  B               def_13618; jumptable 00013618 default case, cases 12-14
00013654  B               def_13618; jumptable 00013618 default case, cases 12-14
00013658  B               def_13618; jumptable 00013618 default case, cases 12-14
0001365c  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013660  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013664  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013668  B               loc_13714; jumptable 00013618 cases 0-11,15-22
0001366c  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013670  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013674  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013678  B               loc_13714; jumptable 00013618 cases 0-11,15-22
0001367c  LDR             R0, =0xE036
00013680  CMP             R10, #0x16; switch 23 cases
00013684  ADDLS           PC, PC, R10,LSL#2; switch jump
00013688  B               def_13618; jumptable 00013618 default case, cases 12-14
0001368c  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013690  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013694  B               loc_136E8; jumptable 00013684 case 2
00013698  B               loc_13714; jumptable 00013618 cases 0-11,15-22
0001369c  B               loc_136F0; jumptable 00013684 case 4
000136a0  B               loc_13708; jumptable 00013684 cases 5,20
000136a4  B               loc_136F8; jumptable 00013684 case 6
000136a8  B               loc_13714; jumptable 00013618 cases 0-11,15-22
000136ac  B               loc_13700; jumptable 00013684 case 8
000136b0  B               loc_13714; jumptable 00013618 cases 0-11,15-22
000136b4  B               loc_13714; jumptable 00013618 cases 0-11,15-22
000136b8  B               loc_13714; jumptable 00013618 cases 0-11,15-22
000136bc  B               def_13618; jumptable 00013618 default case, cases 12-14
000136c0  B               def_13618; jumptable 00013618 default case, cases 12-14
000136c4  B               def_13618; jumptable 00013618 default case, cases 12-14
000136c8  B               loc_13710; jumptable 00013684 case 15
000136cc  B               loc_13714; jumptable 00013618 cases 0-11,15-22
000136d0  B               loc_13714; jumptable 00013618 cases 0-11,15-22
000136d4  B               loc_13714; jumptable 00013618 cases 0-11,15-22
000136d8  B               loc_13714; jumptable 00013618 cases 0-11,15-22
000136dc  B               loc_13708; jumptable 00013684 cases 5,20
000136e0  B               loc_13714; jumptable 00013618 cases 0-11,15-22
000136e4  B               loc_13714; jumptable 00013618 cases 0-11,15-22
000136e8  LDR             R5, =0xE031; jumptable 00013684 case 2
000136ec  B               loc_13714; jumptable 00013618 cases 0-11,15-22
000136f0  LDR             R5, =0xE033; jumptable 00013684 case 4
000136f4  B               loc_13714; jumptable 00013618 cases 0-11,15-22
000136f8  LDR             R5, =0xE034; jumptable 00013684 case 6
000136fc  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013700  LDR             R5, =0xE032; jumptable 00013684 case 8
00013704  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013708  MOV             R5, R0; jumptable 00013684 cases 5,20
0001370c  B               loc_13714; jumptable 00013618 cases 0-11,15-22
00013710  LDR             R5, =0xE037; jumptable 00013684 case 15
00013714  LDR             R3, [SP,#4+arg_4]; jumptable 00013618 cases 0-11,15-22
00013718  MOV             R2, R7
0001371c  STR             R3, [SP,#4+var_4]
00013720  LDR             R12, [R6,#0x174]
00013724  MOV             R3, R5
00013728  MOV             R1, R9
0001372c  MOV             R0, R4
00013730  MOV             LR, PC
00013734  BX              R12
00013738  B               loc_13450
0001373c  MOV             R0, #1; jumptable 00013618 default case, cases 12-14
00013740  B               loc_13450
