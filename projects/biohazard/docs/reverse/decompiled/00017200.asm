00017200  PUSH            {R3-R11,LR}
00017204  MOV             R4, R0
00017208  MOV             R5, R1
0001720c  ADD             R1, R4, #0x13C
00017210  MOV             R0, #5
00017214  MOV             R7, #0
00017218  STM             R1, {R0,R7}
0001721c  LDR             R0, =(sub_1D710 - 0x17230)
00017220  STRB            R7, [R4,#0x1A4]
00017224  MOV             R8, R2
00017228  ADD             R0, PC, R0; sub_1D710
0001722c  STR             R0, [R4,#0x16C]
00017230  LDR             R0, =(sub_20328 - 0x1723C)
00017234  ADD             R0, PC, R0; sub_20328
00017238  STR             R0, [R4,#0x170]
0001723c  LDR             R0, =(sub_13974 - 0x17248)
00017240  ADD             R0, PC, R0; sub_13974
00017244  STR             R0, [R4,#0x174]
00017248  LDR             R0, =(sub_11AE4 - 0x17254)
0001724c  ADD             R0, PC, R0; sub_11AE4
00017250  STR             R0, [R4,#0x178]
00017254  LDR             R0, [R5,#0x24]
00017258  BL              sub_22508
0001725c  STRB            R7, [R4,#0x186]
00017260  LDR             R0, [R5,#0x20]
00017264  ADD             R6, R4, #0x100
00017268  LDRH            R0, [R0]
0001726c  STRH            R0, [R6,#0xBA]
00017270  LDR             R0, [R5,#0x20]
00017274  LDRH            R0, [R0,#2]
00017278  STRH            R0, [R6,#0xBC]
0001727c  STRH            R7, [R6,#0xBE]
00017280  STRH            R7, [R6,#0xC0]
00017284  ADD             R0, R4, #0x1C4
00017288  MOV             R10, R0
0001728c  LDR             R1, [R5,#0x28]
00017290  BL              sub_1712C
00017294  LDR             R0, [R5,#0x28]
00017298  STR             R0, [R4,#0x1CC]
0001729c  MOV             R0, R4
000172a0  BL              sub_16580
000172a4  ADD             R0, R4, #0x220
000172a8  MOV             R11, R0
000172ac  BL              sub_16EC8
000172b0  LDR             R9, =(start - 0x172BC)
000172b4  ADD             R9, PC, R9; start
000172b8  LDR             R0, [R9,#(dword_8 - 0xC)]
000172bc  ADR             LR, loc_172C8
000172c0  LDR             R0, [R0,#0xC0]
000172c4  BX              R0
000172c8  LDR             R0, [R0,#0x2C]
000172cc  STR             R0, [R4,#0x188]
000172d0  STR             R7, [R4,#0x198]
000172d4  STR             R7, [R4,#0x18C]
000172d8  STR             R7, [R4,#0x190]
000172dc  STR             R7, [R4,#0x194]
000172e0  STR             R7, [R4,#0x1A0]
000172e4  LDR             R0, [R9,#(dword_8 - 0xC)]
000172e8  ADR             LR, loc_172F8
000172ec  LDR             R1, [R0,#0x68]
000172f0  LDR             R0, =0x8D8
000172f4  BX              R1
000172f8  STR             R0, [R4,#0x18C]
000172fc  LDRH            R1, [R6,#0xBA]
00017300  ADD             R0, R0, #0x800
00017304  STRH            R1, [R0,#0x9C]
00017308  LDRH            R0, [R6,#0xBC]
0001730c  LDR             R1, [R4,#0x18C]
00017310  ADD             R1, R1, #0x800
00017314  SUB             R0, R0, #0x2F ; '/'
00017318  STRH            R0, [R1,#0x9E]
0001731c  LDR             R0, [R4,#0x18C]
00017320  ADD             R0, R0, #0x800
00017324  STRH            R7, [R0,#0xA0]
00017328  LDR             R1, [R4,#0x18C]
0001732c  MOV             R0, #0x2F ; '/'
00017330  ADD             R1, R1, #0x800
00017334  STRH            R0, [R1,#0xA2]
00017338  LDR             R0, [R4,#0x18C]
0001733c  BL              sub_17AE8
00017340  LDR             R0, [R9,#(dword_8 - 0xC)]
00017344  ADR             LR, loc_17350
00017348  LDR             R0, [R0,#0xC0]
0001734c  BX              R0
00017350  LDR             R0, [R0,#0x28]
00017354  MOV             R2, #0
00017358  LDR             R1, =0xC738
0001735c  BL              sub_18818
00017360  MOVS            R6, R0
00017364  BEQ             loc_1737C
00017368  MOV             R1, R6
0001736c  LDR             R0, [R4,#0x18C]
00017370  BL              sub_189E8
00017374  CMP             R0, #0
00017378  BNE             loc_17388
0001737c  MOV             R0, #0
00017380  POP             {R3-R11,LR}
00017384  BX              LR
00017388  LDR             R0, [R9,#(dword_8 - 0xC)]
0001738c  ADR             LR, loc_1739C
00017390  LDR             R1, [R0,#0x6C]
00017394  MOV             R0, R6
00017398  BX              R1
0001739c  LDR             R0, [R9,#(dword_8 - 0xC)]
000173a0  LDR             R1, [R0,#0x68]
000173a4  MOV             R0, #0x344
000173a8  MOV             LR, PC
000173ac  BX              R1
000173b0  STR             R0, [R4,#0x190]
000173b4  CMP             R0, #0
000173b8  BEQ             loc_173DC
000173bc  BL              sub_16860
000173c0  LDR             R0, [R9,#(dword_8 - 0xC)]
000173c4  ADR             LR, loc_173D0
000173c8  LDR             R0, [R0,#0xC0]
000173cc  BX              R0
000173d0  LDR             R1, [R4,#0x190]
000173d4  ADD             R0, R0, #0x378
000173d8  STR             R0, [R1]
000173dc  LDR             R0, [R4,#0x190]
000173e0  LDR             R1, [R4,#0x18C]
000173e4  ADR             LR, loc_17400
000173e8  STR             R0, [R1,#0x8B0]
000173ec  STR             R7, [R4,#0x194]
000173f0  LDR             R0, [R9,#(dword_8 - 0xC)]
000173f4  LDR             R1, [R0,#0x68]
000173f8  MOV             R0, #0x54 ; 'T'
000173fc  BX              R1
00017400  STR             R0, [R4,#0x194]
00017404  CMP             R0, #0
00017408  BEQ             loc_17434
0001740c  LDR             R1, [R4,#0x190]
00017410  BL              sub_167E4
00017414  LDR             R0, [R4,#0x194]
00017418  STR             R7, [R0,#0x38]
0001741c  LDR             R0, [R4,#0x194]
00017420  STR             R4, [R0,#8]
00017424  LDR             R0, [R4,#0x194]
00017428  STR             R10, [R0,#0xC]
0001742c  LDR             R0, [R4,#0x194]
00017430  STR             R11, [R0,#0x10]
00017434  CMN             R8, #1
00017438  BNE             loc_17484
0001743c  MOV             R1, #1
00017440  LDR             R0, [R4,#0x190]
00017444  BL              sub_5E14
00017448  MOV             R1, #1
0001744c  LDR             R0, [R4,#0x190]
00017450  BL              sub_5DD4
00017454  LDR             R1, [R4,#0x190]
00017458  MOV             R0, #0x50 ; 'P'
0001745c  LDR             R1, [R1,#0x324]
00017460  STR             R0, [R1]
00017464  LDR             R1, [R4,#0x190]
00017468  MOV             R0, #0x350
0001746c  LDR             R1, [R1,#0x328]
00017470  STR             R0, [R1]
00017474  LDR             R0, [R4,#0x190]
00017478  LDR             R0, [R0,#0x32C]
0001747c  STR             R7, [R0]
00017480  B               loc_175B4
00017484  LDR             R0, [R9,#(dword_8 - 0xC)]
00017488  ADR             LR, loc_17494
0001748c  LDR             R0, [R0,#0xC0]
00017490  BX              R0
00017494  ADD             R6, R0, #0x64 ; 'd'
00017498  LDRH            R1, [R0,#0x64]
0001749c  LDR             R0, [R4,#0x190]
000174a0  BL              sub_5E14
000174a4  LDRH            R1, [R6]
000174a8  LDR             R0, [R4,#0x190]
000174ac  BL              sub_5DD4
000174b0  LDR             R1, [R4,#0x190]
000174b4  LDRSH           R0, [R6,#2]
000174b8  LDR             R1, [R1,#0x324]
000174bc  ADR             LR, loc_1756C
000174c0  STR             R0, [R1]
000174c4  LDR             R1, [R4,#0x190]
000174c8  LDRSH           R0, [R6,#4]
000174cc  LDR             R1, [R1,#0x328]
000174d0  STR             R0, [R1]
000174d4  LDR             R1, [R4,#0x190]
000174d8  LDRSH           R0, [R6,#6]
000174dc  LDR             R1, [R1,#0x32C]
000174e0  STR             R0, [R1]
000174e4  LDR             R0, [R6,#8]
000174e8  LDR             R1, [R4,#0x190]
000174ec  STR             R0, [R1,#0x1C]
000174f0  LDR             R1, [R4,#0x190]
000174f4  LDR             R0, [R6,#0xC]
000174f8  LDR             R1, [R1,#0x18]
000174fc  STR             R0, [R1]
00017500  LDR             R0, [R6,#0x10]
00017504  LDR             R1, [R4,#0x190]
00017508  STR             R0, [R1,#0x24]
0001750c  ADD             R0, R6, #0x200
00017510  LDRH            R1, [R0,#8]
00017514  LDR             R2, [R4,#0x190]
00017518  ADD             R2, R2, #0x300
0001751c  STRH            R1, [R2,#0x22]
00017520  LDRH            R1, [R0,#0xA]
00017524  LDR             R2, [R4,#0x190]
00017528  ADD             R2, R2, #0x300
0001752c  STRH            R1, [R2,#0x1E]
00017530  LDRH            R1, [R0,#0xC]
00017534  LDR             R2, [R4,#0x190]
00017538  ADD             R2, R2, #0x200
0001753c  STRH            R1, [R2,#0x1C]
00017540  LDRH            R0, [R0,#0xE]
00017544  LDR             R1, [R4,#0x190]
00017548  MOV             R2, #0x1F4
0001754c  ADD             R1, R1, #0x300
00017550  STRH            R0, [R1,#0x20]
00017554  LDR             R0, [R4,#0x190]
00017558  LDR             R1, [R9,#(dword_8 - 0xC)]
0001755c  ADD             R0, R0, #0x28 ; '('
00017560  LDR             R3, [R1]
00017564  ADD             R1, R6, #0x14
00017568  BX              R3
0001756c  LDR             R0, [R4,#0x190]
00017570  LDR             R1, [R9,#(dword_8 - 0xC)]
00017574  ADD             R0, R0, #0x200
00017578  LDR             R3, [R1]
0001757c  ADD             R1, R6, #0x210
00017580  ADD             R0, R0, #0x1E
00017584  MOV             R2, #0x100
00017588  MOV             LR, PC
0001758c  BX              R3
00017590  LDRB            R0, [R6,#0x311]
00017594  LDR             R1, [R4,#0x190]
00017598  STRB            R0, [R1,#0x340]
0001759c  LDRB            R0, [R6,#0x312]
000175a0  LDR             R1, [R4,#0x190]
000175a4  STRB            R0, [R1,#0x341]
000175a8  LDRB            R0, [R6,#0x313]
000175ac  LDR             R1, [R4,#0x190]
000175b0  STRB            R0, [R1,#0x342]
000175b4  MOV             R2, #0
000175b8  MOV             R1, #8
000175bc  MOV             R0, R4
000175c0  BL              sub_59C4
000175c4  LDR             R0, [R4,#0x190]
000175c8  LDR             R2, [R0,#8]
000175cc  LDR             R1, [R0]
000175d0  LDRB            R2, [R2,#7]
000175d4  LDRB            R1, [R1,#4]
000175d8  ADD             R0, R0, R2
000175dc  STRB            R1, [R0,#0x28]
000175e0  LDR             R0, [R4,#0x190]
000175e4  LDR             R2, [R0,#8]
000175e8  LDR             R1, [R0]
000175ec  LDRB            R2, [R2,#0x43]
000175f0  LDRB            R1, [R1,#7]
000175f4  ADD             R0, R0, R2
000175f8  STRB            R1, [R0,#0x28]
000175fc  LDR             R0, [R4,#0x190]
00017600  LDR             R2, [R0,#8]
00017604  LDR             R1, [R0]
00017608  LDRB            R2, [R2,#0x7F]
0001760c  LDRB            R1, [R1,#0xA]
00017610  ADD             R0, R0, R2
00017614  STRB            R1, [R0,#0x28]
00017618  LDR             R0, [R4,#0x190]
0001761c  LDR             R1, [R0]
00017620  LDRB            R1, [R1,#0x2F]
00017624  STRB            R1, [R0,#0x21]
00017628  LDR             R1, [R4,#0x190]
0001762c  LDR             R0, [R1]
00017630  LDR             R0, [R0]
00017634  CMP             R0, #0
00017638  BLE             loc_1765C
0001763c  LDR             R1, [R1,#0x14]
00017640  CMN             R8, #1
00017644  STR             R0, [R1]
00017648  LDREQ           R0, [R4,#0x190]
0001764c  LDREQ           R1, [R0]
00017650  LDREQ           R0, [R0,#0x18]
00017654  LDREQ           R1, [R1]
00017658  STREQ           R1, [R0]
0001765c  LDR             R0, [R4,#0x190]
00017660  LDR             R1, [R0]
00017664  LDRB            R2, [R1,#0x38]
00017668  CMP             R2, #1
0001766c  BNE             loc_176E0
00017670  LDRB            R1, [R1,#0x39]
00017674  STRB            R1, [R0,#0x7A]
00017678  LDR             R0, [R4,#0x190]
0001767c  ADD             R1, R0, #0x300
00017680  LDRSH           R2, [R1,#0x20]
00017684  CMP             R2, #0
00017688  BGE             loc_176AC
0001768c  ADD             R0, R0, #0x200
00017690  LDRH            R0, [R0,#0x1C]
00017694  STRH            R0, [R1,#0x20]
00017698  LDR             R0, [R4,#0x190]
0001769c  ADD             R0, R0, #0x21C
000176a0  LDRH            R1, [R0]
000176a4  ADD             R1, R1, #1
000176a8  STRH            R1, [R0]
000176ac  LDR             R1, [R4,#0x190]
000176b0  MOV             R0, #0x320
000176b4  LDRSH           R0, [R0,R1]
000176b8  LDR             R2, [R9,#(dword_8 - 0xC)]
000176bc  ADR             LR, loc_176E0
000176c0  ADD             R0, R1, R0,LSL#3
000176c4  LDR             R1, [R1]
000176c8  LDR             R3, [R2]
000176cc  ADD             R0, R0, #0x200
000176d0  ADD             R0, R0, #0x1E
000176d4  MOV             R2, #8
000176d8  ADD             R1, R1, #0x30 ; '0'
000176dc  BX              R3
000176e0  LDR             R1, =0x232
000176e4  STRB            R7, [R4,#0x234]
000176e8  MOV             R0, #4
000176ec  STRH            R0, [R1,R4]
000176f0  LDRB            R1, [R5,#0x59]
000176f4  MOV             R0, R5
000176f8  LDR             R2, =0x7531
000176fc  BL              sub_24C64
00017700  STRB            R7, [R4,#0x230]
00017704  MOV             R0, #1
00017708  B               loc_17380
