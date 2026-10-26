00015570  PUSH            {R4-R11,LR}
00015574  SUB             SP, SP, #0x1C
00015578  MOV             R10, #0
0001557c  STRB            R10, [R0,#0x3F]
00015580  LDR             R9, =(start - 0x15598)
00015584  MOV             R4, R0
00015588  MOV             R0, #1
0001558c  STRB            R0, [R4,#0x58]
00015590  ADD             R9, PC, R9; start
00015594  LDR             R0, [R9,#(dword_0 - 0xC)]
00015598  ADR             LR, loc_155B0
0001559c  STR             R0, [R4,#0x38]
000155a0  LDR             R0, [R9,#(dword_8 - 0xC)]
000155a4  LDR             R1, [R0,#0x68]
000155a8  MOV             R0, #0x54 ; 'T'
000155ac  BX              R1
000155b0  STR             R0, [R4,#0x24]
000155b4  CMP             R0, #0
000155b8  BEQ             loc_159C4
000155bc  BL              sub_10158
000155c0  LDR             R1, =(aMapHkm - 0x155D8); "map.hkm"
000155c4  MOV             R3, #0
000155c8  LDR             R0, [R4,#0x24]
000155cc  MOV             R2, R4
000155d0  ADD             R1, PC, R1; "map.hkm"
000155d4  BL              sub_16B6C
000155d8  CMP             R0, #0
000155dc  BNE             loc_159C4
000155e0  LDR             R0, [R9,#(dword_8 - 0xC)]
000155e4  ADR             LR, loc_155F4
000155e8  LDR             R1, [R0,#0x68]
000155ec  MOV             R0, #0x68 ; 'h'
000155f0  BX              R1
000155f4  STR             R0, [R4,#0x28]
000155f8  CMP             R0, #0
000155fc  BEQ             loc_159C4
00015600  LDR             R1, =(aMbxresBin - 0x15610); "mbxres.bin"
00015604  MOV             R2, R4
00015608  ADD             R1, PC, R1; "mbxres.bin"
0001560c  BL              sub_16EE0
00015610  CMP             R0, #0
00015614  BEQ             loc_159C4
00015618  LDR             R0, [R9,#(dword_8 - 0xC)]
0001561c  ADR             LR, loc_1562C
00015620  LDR             R1, [R0,#0x68]
00015624  MOV             R0, #0x2C ; ','
00015628  BX              R1
0001562c  STR             R0, [R4,#0x20]
00015630  CMP             R0, #0
00015634  BEQ             loc_159C4
00015638  BL              sub_10174
0001563c  LDR             R0, [R4,#0x20]
00015640  LDR             R1, [R4,#0x14]
00015644  MOV             R2, #1
00015648  BL              sub_178D0
0001564c  CMP             R0, #0
00015650  BNE             loc_159C4
00015654  STR             R10, [R4,#0x44]
00015658  STR             R10, [R4,#0x48]
0001565c  STR             R10, [R4,#0x4C]
00015660  STRB            R10, [R4,#0x50]
00015664  STR             R10, [R4,#0x54]
00015668  LDR             R0, [R4,#0xC]
0001566c  ADD             R2, SP, #0x1C+var_4
00015670  LDR             R1, [R0]
00015674  ADR             LR, loc_15684
00015678  LDR             R3, [R1,#8]
0001567c  LDR             R1, =0x1001003
00015680  BX              R3
00015684  CMP             R0, #0
00015688  BNE             loc_159C4
0001568c  LDR             R0, [SP,#0x1C+var_4]
00015690  LDR             R11, =(aSaveDat - 0x156A4); "save.dat"
00015694  LDR             R1, [R0]
00015698  MOV             R2, #1
0001569c  ADD             R11, PC, R11; "save.dat"
000156a0  LDR             R3, [R1,#8]
000156a4  MOV             R1, R11
000156a8  MOV             LR, PC
000156ac  BX              R3
000156b0  MOVS            R5, R0
000156b4  ADD             R6, R4, #0x378
000156b8  ADD             R7, R4, #0x64 ; 'd'
000156bc  ADD             R8, R4, #0x59 ; 'Y'
000156c0  BEQ             loc_15730
000156c4  LDR             R0, [R5]
000156c8  MOV             R2, #8
000156cc  LDR             R3, [R0,#0xC]
000156d0  MOV             R0, R5
000156d4  MOV             R1, R8
000156d8  MOV             LR, PC
000156dc  BX              R3
000156e0  LDR             R0, [R5]
000156e4  MOV             R2, #0x314
000156e8  LDR             R3, [R0,#0xC]
000156ec  MOV             R0, R5
000156f0  MOV             R1, R7
000156f4  MOV             LR, PC
000156f8  BX              R3
000156fc  LDR             R0, [R5]
00015700  MOV             R2, #0x3C ; '<'
00015704  LDR             R3, [R0,#0xC]
00015708  MOV             R0, R5
0001570c  MOV             R1, R6
00015710  MOV             LR, PC
00015714  BX              R3
00015718  LDR             R0, [R5]
0001571c  LDR             R1, [R0,#4]
00015720  MOV             R0, R5
00015724  MOV             LR, PC
00015728  BX              R1
0001572c  B               loc_15814
00015730  LDR             R0, [R9,#(dword_8 - 0xC)]
00015734  MOV             R2, #8
00015738  LDR             R3, [R0,#4]
0001573c  MOV             R0, R8
00015740  MOV             R1, #0
00015744  MOV             LR, PC
00015748  BX              R3
0001574c  LDR             R0, [R9,#(dword_8 - 0xC)]
00015750  MOV             R2, #0x314
00015754  LDR             R3, [R0,#4]
00015758  MOV             R0, R7
0001575c  MOV             R1, #0
00015760  MOV             LR, PC
00015764  BX              R3
00015768  LDR             R0, [R9,#(dword_8 - 0xC)]
0001576c  MOV             R2, #0x3C ; '<'
00015770  LDR             R3, [R0,#4]
00015774  MOV             R0, R6
00015778  MOV             R1, #0
0001577c  MOV             LR, PC
00015780  BX              R3
00015784  STRB            R10, [R4,#0x59]
00015788  LDR             R0, [SP,#0x1C+var_4]
0001578c  MOV             R2, #4
00015790  LDR             R1, [R0]
00015794  ADR             LR, loc_157A4
00015798  LDR             R3, [R1,#8]
0001579c  MOV             R1, R11
000157a0  BX              R3
000157a4  MOVS            R5, R0
000157a8  BEQ             loc_15814
000157ac  LDR             R0, [R5]
000157b0  MOV             R2, #8
000157b4  LDR             R3, [R0,#0x14]
000157b8  MOV             R0, R5
000157bc  MOV             R1, R8
000157c0  MOV             LR, PC
000157c4  BX              R3
000157c8  LDR             R0, [R5]
000157cc  MOV             R2, #0x314
000157d0  LDR             R3, [R0,#0x14]
000157d4  MOV             R0, R5
000157d8  MOV             R1, R7
000157dc  MOV             LR, PC
000157e0  BX              R3
000157e4  LDR             R0, [R5]
000157e8  MOV             R2, #0x3C ; '<'
000157ec  LDR             R3, [R0,#0x14]
000157f0  MOV             R0, R5
000157f4  MOV             R1, R6
000157f8  MOV             LR, PC
000157fc  BX              R3
00015800  LDR             R0, [R5]
00015804  LDR             R1, [R0,#4]
00015808  MOV             R0, R5
0001580c  MOV             LR, PC
00015810  BX              R1
00015814  STRB            R10, [R4,#0x59]
00015818  LDR             R0, [SP,#0x1C+var_4]
0001581c  ADR             LR, loc_1582C
00015820  LDR             R1, [R0]
00015824  LDR             R1, [R1,#4]
00015828  BX              R1
0001582c  STRB            R10, [R4,#0x758]
00015830  ADD             R1, R4, #0x400
00015834  ADD             R1, R1, #0x334
00015838  LDR             R0, [R4,#0xC]
0001583c  BL              sub_147D4
00015840  CMP             R0, #0
00015844  BNE             loc_159C4
00015848  MOV             R0, #0
0001584c  STR             R0, [SP,#0x1C+var_8]
00015850  LDR             R0, [R4,#0xC]
00015854  ADD             R2, SP, #0x1C+var_8
00015858  LDR             R1, [R0]
0001585c  ADR             LR, loc_1586C
00015860  LDR             R3, [R1,#8]
00015864  LDR             R1, =0x1001007
00015868  BX              R3
0001586c  LDR             R0, [SP,#0x1C+var_8]
00015870  CMP             R0, #0
00015874  LDREQ           R0, =0x738
00015878  STRHEQ          R10, [R0,R4]
0001587c  BEQ             loc_158D0
00015880  LDR             R1, [R0]
00015884  ADR             LR, loc_15894
00015888  LDR             R2, [R1,#0xC]
0001588c  MOV             R1, SP
00015890  BX              R2
00015894  MOV             R0, #0
00015898  ADD             R2, R4, R0,LSL#1
0001589c  LDRB            R1, [SP,R0]
000158a0  ADD             R0, R0, #1
000158a4  MOV             R0, R0,LSL#16
000158a8  MOV             R0, R0,ASR#16
000158ac  ADD             R2, R2, #0x700
000158b0  STRH            R1, [R2,#0x38]
000158b4  CMP             R0, #0x10
000158b8  BLT             loc_15898
000158bc  LDR             R0, [SP,#0x1C+var_8]
000158c0  ADR             LR, loc_158D0
000158c4  LDR             R1, [R0]
000158c8  LDR             R1, [R1,#4]
000158cc  BX              R1
000158d0  MOV             R3, #0x40 ; '@'
000158d4  LDR             R0, [R4,#0x28]
000158d8  ADD             R2, R4, #0x3B4
000158dc  LDR             R1, =0x1388
000158e0  BL              sub_19618
000158e4  ADD             R2, R4, #0x400
000158e8  ADD             R2, R2, #0x34 ; '4'
000158ec  MOV             R3, #0x40 ; '@'
000158f0  LDR             R0, [R4,#0x28]
000158f4  LDR             R1, =0x1389
000158f8  BL              sub_19618
000158fc  ADD             R2, R4, #0x400
00015900  ADD             R2, R2, #0xB4
00015904  MOV             R3, #0x40 ; '@'
00015908  LDR             R0, [R4,#0x28]
0001590c  LDR             R1, =0x138A
00015910  BL              sub_19618
00015914  ADD             R2, R4, #0x400
00015918  ADD             R2, R2, #0x2B4
0001591c  MOV             R3, #0x40 ; '@'
00015920  LDR             R0, [R4,#0x28]
00015924  LDR             R1, =0x138B
00015928  BL              sub_19618
0001592c  MOV             R0, #0x64 ; 'd'
00015930  STR             R0, [R4,#0x30]
00015934  LDR             R0, [R9,#(dword_8 - 0xC)]
00015938  ADR             LR, loc_15944
0001593c  LDR             R0, [R0,#0xB0]
00015940  BX              R0
00015944  STR             R0, [R4,#0x34]
00015948  STRB            R10, [R4,#0x3E]
0001594c  STRH            R10, [R4,#0x3C]
00015950  LDR             R0, [R9,#(dword_8 - 0xC)]
00015954  ADR             LR, loc_15964
00015958  LDR             R1, [R0,#0x68]
0001595c  MOV             R0, #0x24 ; '$'
00015960  BX              R1
00015964  STR             R0, [R4,#0x2C]
00015968  CMP             R0, #0
0001596c  BEQ             loc_159C4
00015970  BL              sub_1650C
00015974  MOV             R1, #0
00015978  LDR             R0, [R4,#0x2C]
0001597c  BL              sub_193E0
00015980  MOV             R0, #1
00015984  STR             R0, [R4,#0x75C]
00015988  LDR             R0, [R9,#(dword_8 - 0xC)]
0001598c  ADR             LR, loc_1599C
00015990  LDR             R1, [R0,#0x68]
00015994  MOV             R0, #0x180
00015998  BX              R1
0001599c  STR             R0, [R4,#0x760]
000159a0  CMP             R0, #0
000159a4  BEQ             loc_159C4
000159a8  BL              sub_16B18
000159ac  MOV             R2, #0
000159b0  LDR             R0, [R4,#0x760]
000159b4  MOV             R1, R4
000159b8  BL              sub_17730
000159bc  CMP             R0, #1
000159c0  BEQ             loc_159C8
000159c4  MOV             R0, #0
000159c8  ADD             SP, SP, #0x1C
000159cc  POP             {R4-R11,LR}
000159d0  BX              LR
