00021fb4  PUSH            {R4-R11,LR}
00021fb8  MOV             R4, R0
00021fbc  LDR             R0, [R0,#0x898]
00021fc0  SUB             SP, SP, #0x2C
00021fc4  MOV             R5, R1
00021fc8  CMP             R0, #0
00021fcc  BEQ             loc_22344
00021fd0  LDR             R7, =(start - 0x21FDC)
00021fd4  ADD             R7, PC, R7; start
00021fd8  LDR             R0, [R4,#0x8BC]
00021fdc  ADD             R6, R4, #0x800
00021fe0  CMP             R0, #0
00021fe4  BNE             loc_22004
00021fe8  LDRH            R0, [R6,#0x9E]
00021fec  LDR             R1, [R7,#(dword_8 - 0xC)]
00021ff0  ADR             LR, loc_22000
00021ff4  LDR             R1, [R1,#0x68]
00021ff8  MOV             R0, R0,LSL#2
00021ffc  BX              R1
00022000  STR             R0, [R4,#0x8BC]
00022004  LDR             R0, [R4,#0x8C0]
00022008  CMP             R0, #0
0002200c  BNE             loc_2202C
00022010  LDRH            R0, [R6,#0x9E]
00022014  LDR             R1, [R7,#(dword_8 - 0xC)]
00022018  ADR             LR, loc_22028
0002201c  LDR             R1, [R1,#0x68]
00022020  MOV             R0, R0,LSL#2
00022024  BX              R1
00022028  STR             R0, [R4,#0x8C0]
0002202c  LDR             R0, [R4,#0x8C4]
00022030  CMP             R0, #0
00022034  BNE             loc_22050
00022038  LDR             R1, [R7,#(dword_8 - 0xC)]
0002203c  LDRH            R0, [R6,#0x9E]
00022040  LDR             R1, [R1,#0x68]
00022044  MOV             LR, PC
00022048  BX              R1
0002204c  STR             R0, [R4,#0x8C4]
00022050  LDR             R0, [R4,#0x8C8]
00022054  CMP             R0, #0
00022058  BNE             loc_22078
0002205c  LDRH            R0, [R6,#0x9E]
00022060  LDR             R1, [R7,#(dword_8 - 0xC)]
00022064  ADR             LR, loc_22074
00022068  LDR             R1, [R1,#0x68]
0002206c  MOV             R0, R0,LSL#2
00022070  BX              R1
00022074  STR             R0, [R4,#0x8C8]
00022078  LDR             R0, [R4,#0x8CC]
0002207c  CMP             R0, #0
00022080  BNE             loc_2209C
00022084  LDR             R1, [R7,#(dword_8 - 0xC)]
00022088  LDRH            R0, [R6,#0x9C]
0002208c  LDR             R1, [R1,#0x68]
00022090  MOV             LR, PC
00022094  BX              R1
00022098  STR             R0, [R4,#0x8CC]
0002209c  LDR             R0, [R4,#0x840]
000220a0  CMP             R5, #0
000220a4  MOV             R0, R0,LSL#2
000220a8  STR             R0, [SP,#0x2C+var_18]
000220ac  LDR             R2, [R4,#0x83C]
000220b0  LDR             R8, [R4,#0x838]
000220b4  LDR             R10, [R4,#0x830]
000220b8  STR             R2, [SP,#0x2C+var_1C]
000220bc  LDR             R0, [R4,#0x898]
000220c0  ADD             R2, SP, #0x2C+var_24
000220c4  LDRB            R1, [R0,#0xB]
000220c8  MOVNE           R8, R8,LSL#1
000220cc  MOV             R3, R1,LSL#7
000220d0  MOV             R1, #0x640
000220d4  STM             R2, {R1,R3}
000220d8  LDRB            R1, [R0,#0x13]
000220dc  MOV             R7, R1,LSL#2
000220e0  LDRH            R1, [R0,#0x10]
000220e4  MOVNE           R7, R7,LSL#1
000220e8  AND             R2, R1, #0xF800
000220ec  AND             R3, R1, #0x7E0
000220f0  MOV             R2, R2,LSL#11
000220f4  ORR             R2, R2, R3,LSL#5
000220f8  AND             R1, R1, #0x1F
000220fc  ORR             R1, R2, R1
00022100  STR             R1, [SP,#0x2C+var_28]
00022104  LDRB            R11, [R0,#0x12]
00022108  LDR             R0, [SP,#0x2C+var_18]
0002210c  MUL             R1, R10, R0
00022110  ADD             R0, R0, R8
00022114  STR             R0, [SP,#0x2C+var_4]
00022118  MOVNE           R11, R11,LSR#1
0002211c  BL              sub_104
00022120  LDR             R2, [SP,#0x2C+var_1C]
00022124  MOV             R5, #0
00022128  SUB             R0, R0, R2
0002212c  STR             R0, [R4,#0x8B4]
00022130  CMP             R0, #0
00022134  MOVLT           R0, #0
00022138  STRLT           R0, [R4,#0x8B4]
0002213c  LDR             R1, [R4,#0x8B4]
00022140  LDRH            R0, [R6,#0x9E]
00022144  CMP             R1, R0
00022148  STRGT           R0, [R4,#0x8B4]
0002214c  LDR             R2, [SP,#0x2C+var_1C]
00022150  SUB             R0, R10, R2
00022154  STR             R0, [SP,#0x2C+var_8]
00022158  MUL             R0, R8, R10
0002215c  MOV             R0, R0,LSL#8
00022160  STR             R0, [SP,#0x2C+var_C]
00022164  B               loc_221F0
00022168  LDR             R0, [SP,#0x2C+var_8]
0002216c  LDR             R1, [SP,#0x2C+var_C]
00022170  SUB             R0, R0, R5
00022174  BL              sub_104
00022178  MOV             R9, R0
0002217c  LDR             R0, [R4,#0x8BC]
00022180  MOV             R1, R9
00022184  STR             R9, [R0,R5,LSL#2]
00022188  MOV             R0, R8
0002218c  BL              sub_104
00022190  LDR             R1, [R4,#0x8C0]
00022194  CMP             R7, R9,ASR#8
00022198  STR             R0, [R1,R5,LSL#2]
0002219c  MOVGT           R0, #0
000221a0  BGT             loc_221D0
000221a4  RSB             R0, R7, R9,ASR#8
000221a8  MOV             R0, R0,LSL#5
000221ac  MUL             R1, R11, R0
000221b0  MOV             R0, #0x64 ; 'd'
000221b4  BL              sub_104
000221b8  MOV             R1, R0
000221bc  LDR             R0, [SP,#0x2C+var_24]
000221c0  BL              sub_104
000221c4  AND             R0, R0, #0xFF
000221c8  CMP             R0, #0x20 ; ' '
000221cc  MOVHI           R0, #0x20 ; ' '
000221d0  LDR             R1, [SP,#0x2C+var_28]
000221d4  LDR             R2, [R4,#0x8C8]
000221d8  MUL             R1, R0, R1
000221dc  STR             R1, [R2,R5,LSL#2]
000221e0  LDR             R1, [R4,#0x8C4]
000221e4  RSB             R0, R0, #0x20 ; ' '
000221e8  STRB            R0, [R1,R5]
000221ec  ADD             R5, R5, #1
000221f0  LDR             R0, [R4,#0x8B4]
000221f4  CMP             R0, R5
000221f8  BGT             loc_22168
000221fc  LDR             R0, [R4,#0x898]
00022200  LDRB            R0, [R0,#9]
00022204  CMP             R0, #0
00022208  STREQ           R0, [R4,#0x8B8]
0002220c  BEQ             loc_22344
00022210  LDR             R3, [SP,#0x2C+var_20]
00022214  LDR             R0, [SP,#0x2C+var_18]
00022218  SUB             R5, R3, R10
0002221c  MUL             R1, R0, R5
00022220  LDR             R0, [SP,#0x2C+var_4]
00022224  BL              sub_104
00022228  LDRH            R1, [R6,#0x9E]
0002222c  LDR             R2, [SP,#0x2C+var_1C]
00022230  LDR             R3, [SP,#0x2C+var_20]
00022234  ADD             R2, R1, R2
00022238  SUB             R2, R2, R3
0002223c  ADD             R0, R0, R2
00022240  STR             R0, [R4,#0x8B8]
00022244  CMP             R0, #0
00022248  MOVLT           R0, #0
0002224c  STRLT           R0, [R4,#0x8B8]
00022250  LDR             R0, [R4,#0x8B8]
00022254  MOV             R9, #0
00022258  CMP             R0, R1
0002225c  MUL             R0, R8, R5
00022260  MOV             R0, R0,LSL#8
00022264  STRGT           R1, [R4,#0x8B8]
00022268  STR             R0, [SP,#0x2C+var_10]
0002226c  B               loc_22338
00022270  LDRH            R1, [R6,#0x9E]
00022274  LDR             R2, [SP,#0x2C+var_1C]
00022278  ADD             R0, R1, R2
0002227c  SUB             R0, R0, R10
00022280  STR             R1, [SP,#0x2C+var_14]
00022284  LDR             R1, [SP,#0x2C+var_10]
00022288  SUB             R0, R0, R9
0002228c  BL              sub_104
00022290  MOV             R5, R0
00022294  LDR             R0, [R4,#0x8BC]
00022298  LDR             R1, [SP,#0x2C+var_14]
0002229c  SUB             R1, R1, #1
000222a0  SUB             R1, R1, R9
000222a4  STR             R5, [R0,R1,LSL#2]
000222a8  MOV             R1, R5
000222ac  MOV             R0, R8
000222b0  BL              sub_104
000222b4  LDRH            R2, [R6,#0x9E]
000222b8  LDR             R1, [R4,#0x8C0]
000222bc  CMP             R7, R5,ASR#8
000222c0  SUB             R2, R2, #1
000222c4  SUB             R2, R2, R9
000222c8  STR             R0, [R1,R2,LSL#2]
000222cc  MOVGT           R0, #0
000222d0  BGT             loc_22300
000222d4  RSB             R0, R7, R5,ASR#8
000222d8  MOV             R0, R0,LSL#5
000222dc  MUL             R1, R11, R0
000222e0  MOV             R0, #0x64 ; 'd'
000222e4  BL              sub_104
000222e8  MOV             R1, R0
000222ec  LDR             R0, [SP,#0x2C+var_24]
000222f0  BL              sub_104
000222f4  AND             R0, R0, #0xFF
000222f8  CMP             R0, #0x20 ; ' '
000222fc  MOVHI           R0, #0x20 ; ' '
00022300  LDR             R1, [SP,#0x2C+var_28]
00022304  LDRH            R3, [R6,#0x9E]
00022308  LDR             R2, [R4,#0x8C8]
0002230c  MUL             R1, R0, R1
00022310  SUB             R3, R3, #1
00022314  SUB             R3, R3, R9
00022318  STR             R1, [R2,R3,LSL#2]
0002231c  LDRH            R2, [R6,#0x9E]
00022320  LDR             R1, [R4,#0x8C4]
00022324  RSB             R0, R0, #0x20 ; ' '
00022328  SUB             R2, R2, #1
0002232c  SUB             R2, R2, R9
00022330  STRB            R0, [R1,R2]
00022334  ADD             R9, R9, #1
00022338  LDR             R0, [R4,#0x8B8]
0002233c  CMP             R0, R9
00022340  BGT             loc_22270
00022344  ADD             SP, SP, #0x2C ; ','
00022348  POP             {R4-R11,LR}
0002234c  BX              LR
