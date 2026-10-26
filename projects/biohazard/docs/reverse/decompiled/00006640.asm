00006640  PUSH            {R0-R2,R4-R11,LR}
00006644  SUB             SP, SP, #0x68
00006648  LDR             R0, [SP,#0x74+var_C]
0000664c  ADD             R2, R0, #0x400
00006650  ADD             R3, R0, #0x400
00006654  ADD             R3, R3, #0x30C
00006658  ADD             R2, R2, #0x20C
0000665c  STR             R2, [SP,#0x74+var_70]
00006660  STR             R3, [SP,#0x74+var_74]
00006664  LDR             R3, [R0,#0x80C]
00006668  STR             R3, [SP,#0x74+var_48]
0000666c  LDR             R4, [R0,#0x898]
00006670  LDRH            R2, [R4,#0x10]
00006674  LDR             R0, [SP,#0x74+var_C]
00006678  LDR             R5, [SP,#0x74+var_4]
0000667c  STR             R2, [SP,#0x74+var_58]
00006680  LDR             LR, [R0,#0x8BC]
00006684  LDR             R12, [R0,#0x8C0]
00006688  ADD             R3, R0, #0x8C0
0000668c  LDMIB           R3, {R2,R3}
00006690  ADD             R0, R0, #0x800
00006694  STR             R0, [SP,#0x74+var_10]
00006698  LDRH            R0, [R0,#0xA2]
0000669c  LDR             R1, [R1,#0x14]
000066a0  CMP             R5, #0
000066a4  ADD             R1, R1, R0,LSL#2
000066a8  LDR             R0, [SP,#0x74+var_10]
000066ac  LDRH            R0, [R0,#0x9E]
000066b0  LDR             R5, [SP,#0x74+var_48]
000066b4  BEQ             loc_6708
000066b8  ADD             R5, R5, #0x800
000066bc  STR             R5, [SP,#0x74+var_50]
000066c0  STR             R1, [SP,#0x74+var_4C]
000066c4  LDR             R1, [R4,#0x24]
000066c8  STR             R1, [SP,#0x74+var_54]
000066cc  LDR             R1, [SP,#0x74+var_C]
000066d0  LDR             R1, [R1,#0x8B8]
000066d4  STR             R1, [SP,#0x74+var_18]
000066d8  ADD             R1, LR, R0,LSL#2
000066dc  SUB             R1, R1, #4
000066e0  STR             R1, [SP,#0x74+var_38]
000066e4  ADD             R1, R12, R0,LSL#2
000066e8  SUB             R12, R1, #4
000066ec  ADD             R1, R3, R0,LSL#2
000066f0  ADD             R0, R2, R0
000066f4  SUB             R2, R0, #1
000066f8  ADD             R0, SP, #0x74+var_40
000066fc  SUB             R3, R1, #4
00006700  STM             R0, {R3,R12}
00006704  B               loc_6734
00006708  ADD             R0, R1, R0,LSL#2
0000670c  SUB             R1, R0, #4
00006710  STR             R1, [SP,#0x74+var_4C]
00006714  STR             R5, [SP,#0x74+var_50]
00006718  LDR             R1, [R4,#0x20]
0000671c  ADD             R0, SP, #0x74+var_40
00006720  STR             R1, [SP,#0x74+var_54]
00006724  LDR             R1, [SP,#0x74+var_C]
00006728  LDR             R1, [R1,#0x8B4]
0000672c  STR             R1, [SP,#0x74+var_18]
00006730  STM             R0, {R3,R12,LR}
00006734  LDR             R1, [SP,#0x74+var_C]
00006738  STR             R2, [SP,#0x74+var_44]
0000673c  LDR             R0, [R1,#0x834]
00006740  BL              sub_197A8
00006744  MOV             R1, R0,ASR#8
00006748  LDR             R3, [SP,#0x74+var_C]
0000674c  STR             R1, [SP,#0x74+var_24]
00006750  LDR             R0, [R3,#0x834]
00006754  BL              sub_196D8
00006758  MOV             R2, R0,ASR#8
0000675c  LDR             R3, [SP,#0x74+var_C]
00006760  STR             R2, [SP,#0x74+var_28]
00006764  LDR             R0, [R3,#0x828]
00006768  MOV             R9, #0xA
0000676c  MOV             R2, R0,LSL#10
00006770  STR             R2, [SP,#0x74+var_2C]
00006774  LDR             R0, [R3,#0x82C]
00006778  MOV             R2, #0xF
0000677c  MOV             R1, R0,LSL#10
00006780  STR             R1, [SP,#0x74+var_30]
00006784  LDR             R3, [SP,#0x74+var_10]
00006788  MOV             R10, #0x7C00
0000678c  LDRH            R1, [R3,#0x9C]
00006790  LDR             R3, [SP,#0x74+var_C]
00006794  STR             R2, [SP,#0x74+var_5C]
00006798  STR             R1, [SP,#0x74+var_34]
0000679c  LDR             R0, [R3,#0x898]
000067a0  LDRH            R1, [R0]
000067a4  MOV             R1, R1,LSL#15
000067a8  STR             R1, [SP,#0x74+var_68]
000067ac  LDRH            R0, [R0,#2]
000067b0  MOV             R1, R0,LSL#15
000067b4  STR             R1, [SP,#0x74+var_6C]
000067b8  MOV             R0, #0
000067bc  B               loc_6E7C
000067c0  LDR             R0, [SP,#0x74+var_4]
000067c4  LDR             R1, [SP,#0x74+var_38]
000067c8  CMP             R0, #0
000067cc  LDR             R0, [R1]
000067d0  BEQ             loc_6814
000067d4  SUB             R1, R1, #4
000067d8  LDR             R2, [SP,#0x74+var_3C]
000067dc  STR             R1, [SP,#0x74+var_38]
000067e0  LDR             R1, [R2],#-4
000067e4  STR             R2, [SP,#0x74+var_3C]
000067e8  LDR             R2, [SP,#0x74+var_44]
000067ec  LDRB            R12, [R2],#-1
000067f0  STR             R2, [SP,#0x74+var_44]
000067f4  STR             R12, [SP,#0x74+var_20]
000067f8  LDR             R2, [SP,#0x74+var_40]
000067fc  LDR             R3, [R2],#-4
00006800  STR             R2, [SP,#0x74+var_40]
00006804  STR             R3, [SP,#0x74+var_1C]
00006808  LDR             R3, [SP,#0x74+var_4C]
0000680c  LDR             R2, [R3],#4
00006810  B               loc_6850
00006814  ADD             R1, R1, #4
00006818  LDR             R2, [SP,#0x74+var_3C]
0000681c  STR             R1, [SP,#0x74+var_38]
00006820  LDR             R1, [R2],#4
00006824  STR             R2, [SP,#0x74+var_3C]
00006828  LDR             R2, [SP,#0x74+var_44]
0000682c  LDRB            R12, [R2],#1
00006830  STR             R2, [SP,#0x74+var_44]
00006834  STR             R12, [SP,#0x74+var_20]
00006838  LDR             R2, [SP,#0x74+var_40]
0000683c  LDR             R3, [R2],#4
00006840  STR             R2, [SP,#0x74+var_40]
00006844  STR             R3, [SP,#0x74+var_1C]
00006848  LDR             R3, [SP,#0x74+var_4C]
0000684c  LDR             R2, [R3],#-4
00006850  STR             R3, [SP,#0x74+var_4C]
00006854  LDR             R3, [SP,#0x74+var_10]
00006858  LDRH            R3, [R3,#0xA0]
0000685c  ADD             R4, R2, R3,LSL#1
00006860  LDR             R2, [SP,#0x74+var_24]
00006864  MUL             R2, R1, R2
00006868  MOV             R3, R2,ASR#31
0000686c  ADD             R2, R2, R3,LSR#24
00006870  MOV             R2, R2,ASR#8
00006874  RSB             R8, R2, #0
00006878  LDR             R2, [SP,#0x74+var_28]
0000687c  LDR             R3, [SP,#0x74+var_34]
00006880  MUL             R1, R2, R1
00006884  MOV             R2, R1,ASR#31
00006888  ADD             R1, R1, R2,LSR#24
0000688c  LDR             R2, [SP,#0x74+var_28]
00006890  MOV             R7, R1,ASR#8
00006894  MUL             R1, R2, R0
00006898  MOV             R2, R1,ASR#31
0000689c  ADD             R1, R1, R2,LSR#24
000068a0  LDR             R2, [SP,#0x74+var_2C]
000068a4  ADD             R2, R2, R1,ASR#8
000068a8  MUL             R1, R3, R8
000068ac  ADD             R1, R1, R1,LSR#31
000068b0  SUB             R5, R2, R1,ASR#1
000068b4  LDR             R1, [SP,#0x74+var_24]
000068b8  LDR             R3, [SP,#0x74+var_34]
000068bc  MUL             R0, R1, R0
000068c0  MOV             R1, R0,ASR#31
000068c4  ADD             R0, R0, R1,LSR#24
000068c8  LDR             R1, [SP,#0x74+var_30]
000068cc  CMP             R5, #0
000068d0  ADD             R1, R1, R0,ASR#8
000068d4  MUL             R0, R3, R7
000068d8  ADD             R0, R0, R0,LSR#31
000068dc  SUB             R6, R1, R0,ASR#1
000068e0  BGE             loc_690C
000068e4  CMP             R8, #0
000068e8  BLE             loc_6934
000068ec  LDR             R1, [SP,#0x74+var_34]
000068f0  MLA             R0, R1, R8, R5
000068f4  CMP             R0, #0
000068f8  SUBGE           R0, R8, R5
000068fc  SUBGE           R1, R0, #1
00006900  MOVGE           R0, R8
00006904  BGE             loc_694C
00006908  B               loc_6934
0000690c  LDR             R1, [SP,#0x74+var_68]
00006910  CMP             R5, R1
00006914  MOVLT           R11, #0
00006918  BLT             loc_6954
0000691c  CMP             R8, #0
00006920  LDRLT           R1, [SP,#0x74+var_34]
00006924  MLALT           R0, R1, R8, R5
00006928  LDRLT           R1, [SP,#0x74+var_68]
0000692c  CMPLT           R0, R1
00006930  BLT             loc_693C
00006934  LDR             R11, [SP,#0x74+var_34]
00006938  B               loc_6954
0000693c  LDR             R1, [SP,#0x74+var_68]
00006940  SUB             R0, R5, R1
00006944  SUB             R1, R0, R8
00006948  RSB             R0, R8, #0
0000694c  BL              sub_104
00006950  MOV             R11, R0
00006954  LDR             R1, [SP,#0x74+var_34]
00006958  CMP             R11, R1
0000695c  BGE             loc_69DC
00006960  MLAS            R0, R7, R11, R6
00006964  BPL             loc_6994
00006968  CMP             R7, #0
0000696c  BLE             loc_69BC
00006970  LDR             R1, [SP,#0x74+var_34]
00006974  SUB             R1, R1, R11
00006978  MLA             R2, R1, R7, R0
0000697c  CMP             R2, #0
00006980  SUBGE           R0, R7, R0
00006984  SUBGE           R1, R0, #1
00006988  MOVGE           R0, R7
0000698c  BGE             loc_69D4
00006990  B               loc_69BC
00006994  LDR             R1, [SP,#0x74+var_6C]
00006998  CMP             R0, R1
0000699c  BLT             loc_69DC
000069a0  CMP             R7, #0
000069a4  LDRLT           R1, [SP,#0x74+var_34]
000069a8  SUBLT           R1, R1, R11
000069ac  MLALT           R2, R1, R7, R0
000069b0  LDRLT           R1, [SP,#0x74+var_6C]
000069b4  CMPLT           R2, R1
000069b8  BLT             loc_69C4
000069bc  LDR             R11, [SP,#0x74+var_34]
000069c0  B               loc_69DC
000069c4  LDR             R1, [SP,#0x74+var_6C]
000069c8  SUB             R0, R0, R1
000069cc  SUB             R1, R0, R7
000069d0  RSB             R0, R7, #0
000069d4  BL              sub_104
000069d8  ADD             R11, R0, R11
000069dc  LDR             R1, [SP,#0x74+var_34]
000069e0  CMP             R11, R1
000069e4  MOVGE           R0, #0
000069e8  BGE             loc_6AA4
000069ec  LDR             R1, [SP,#0x74+var_34]
000069f0  MLA             R0, R1, R8, R5
000069f4  CMP             R0, #0
000069f8  ADDLT           R0, R0, R8
000069fc  MLA             R2, R1, R7, R6
00006a00  ADDLT           R0, R0, #1
00006a04  RSBLT           R1, R0, #0
00006a08  RSBLT           R0, R8, #0
00006a0c  STR             R2, [SP,#0x74+var_64]
00006a10  BLT             loc_6A38
00006a14  LDR             R1, [SP,#0x74+var_68]
00006a18  CMP             R0, R1
00006a1c  MOVLT           R0, #0
00006a20  BLT             loc_6A3C
00006a24  LDR             R1, [SP,#0x74+var_68]
00006a28  SUB             R0, R0, R1
00006a2c  ADD             R0, R0, R8
00006a30  SUB             R1, R0, #1
00006a34  MOV             R0, R8
00006a38  BL              sub_104
00006a3c  STR             R0, [SP,#0x74+var_60]
00006a40  LDR             R1, [SP,#0x74+var_34]
00006a44  ADD             R0, R11, R0
00006a48  CMP             R0, R1
00006a4c  BGE             loc_6AA8
00006a50  LDR             R0, [SP,#0x74+var_60]
00006a54  LDR             R2, [SP,#0x74+var_64]
00006a58  MUL             R0, R7, R0
00006a5c  SUB             R0, R2, R0
00006a60  CMP             R0, #0
00006a64  ADDLT           R0, R0, R7
00006a68  ADDLT           R0, R0, #1
00006a6c  RSBLT           R1, R0, #0
00006a70  RSBLT           R0, R7, #0
00006a74  BLT             loc_6A98
00006a78  LDR             R1, [SP,#0x74+var_6C]
00006a7c  CMP             R0, R1
00006a80  BLT             loc_6AA8
00006a84  LDR             R1, [SP,#0x74+var_6C]
00006a88  SUB             R0, R0, R1
00006a8c  ADD             R0, R0, R7
00006a90  SUB             R1, R0, #1
00006a94  MOV             R0, R7
00006a98  BL              sub_104
00006a9c  LDR             R1, [SP,#0x74+var_60]
00006aa0  ADD             R0, R0, R1
00006aa4  STR             R0, [SP,#0x74+var_60]
00006aa8  LDR             R1, [SP,#0x74+var_34]
00006aac  LDR             R12, [SP,#0x74+var_20]
00006ab0  SUB             R0, R1, R11
00006ab4  LDR             R1, [SP,#0x74+var_60]
00006ab8  CMP             R12, #0x20 ; ' '
00006abc  SUB             R0, R0, R1
00006ac0  ADD             R1, R4, R11,LSL#1
00006ac4  BNE             loc_6B04
00006ac8  B               loc_6AF8
00006acc  AND             R2, R6, R10
00006ad0  LDR             R3, [SP,#0x74+var_50]
00006ad4  MOV             R2, R2,ASR R9
00006ad8  ADD             R2, R3, R2,LSL#6
00006adc  AND             R3, R5, R10
00006ae0  MOV             R3, R3,ASR R9
00006ae4  ADD             R2, R2, R3,LSL#1
00006ae8  LDRH            R2, [R2]
00006aec  ADD             R5, R5, R8
00006af0  ADD             R6, R6, R7
00006af4  STRH            R2, [R4],#2
00006af8  CMP             R4, R1
00006afc  BCC             loc_6ACC
00006b00  B               loc_6BA0
00006b04  LDR             R12, [SP,#0x74+var_20]
00006b08  CMP             R12, #0
00006b0c  BNE             loc_6B98
00006b10  CMP             R4, R1
00006b14  LDRCC           R2, [SP,#0x74+var_58]
00006b18  ADDCC           R5, R5, R8
00006b1c  ADDCC           R6, R6, R7
00006b20  STRHCC          R2, [R4],#2
00006b24  BCC             loc_6B10
00006b28  B               loc_6BA0
00006b2c  AND             R2, R6, R10
00006b30  LDR             R3, [SP,#0x74+var_50]
00006b34  MOV             R2, R2,ASR R9
00006b38  ADD             R2, R3, R2,LSL#6
00006b3c  AND             R3, R5, R10
00006b40  MOV             R3, R3,ASR R9
00006b44  ADD             R2, R2, R3,LSL#1
00006b48  LDRH            R2, [R2]
00006b4c  ADD             R5, R5, R8
00006b50  ADD             R6, R6, R7
00006b54  AND             R3, R2, #0xF800
00006b58  AND             R12, R2, #0x7E0
00006b5c  MOV             R3, R3,LSL#11
00006b60  ORR             R3, R3, R12,LSL#5
00006b64  AND             R2, R2, #0x1F
00006b68  ORR             R2, R3, R2
00006b6c  LDR             R3, [SP,#0x74+var_1C]
00006b70  LDR             R12, [SP,#0x74+var_20]
00006b74  MLA             R2, R12, R2, R3
00006b78  MOV             R2, R2,LSR#5
00006b7c  AND             R3, R2, #0x7C00000
00006b80  AND             R12, R2, #0xFC00
00006b84  MOV             R3, R3,LSR#11
00006b88  ORR             R3, R3, R12,LSR#5
00006b8c  AND             R2, R2, #0x1F
00006b90  ORR             R2, R3, R2
00006b94  STRH            R2, [R4],#2
00006b98  CMP             R4, R1
00006b9c  BCC             loc_6B2C
00006ba0  LDR             R12, [SP,#0x74+var_20]
00006ba4  ADD             R0, R1, R0,LSL#1
00006ba8  CMP             R12, #0x20 ; ' '
00006bac  BNE             loc_6C0C
00006bb0  B               loc_6C00
00006bb4  LDR             R2, [SP,#0x74+var_5C]
00006bb8  MOV             R1, R6,ASR R2
00006bbc  LDR             R2, [SP,#0x74+var_54]
00006bc0  LDR             R1, [R2,R1,LSL#2]
00006bc4  LDR             R2, [SP,#0x74+var_5C]
00006bc8  MOV             R2, R5,ASR R2
00006bcc  LDRB            R1, [R1,R2]
00006bd0  AND             R2, R6, R10
00006bd4  MOV             R2, R2,ASR R9
00006bd8  ADD             R1, R2, R1,LSL#5
00006bdc  AND             R2, R5, R10
00006be0  LDR             R3, [SP,#0x74+var_48]
00006be4  MOV             R2, R2,ASR R9
00006be8  ADD             R1, R3, R1,LSL#6
00006bec  ADD             R1, R1, R2,LSL#1
00006bf0  LDRH            R1, [R1]
00006bf4  ADD             R5, R5, R8
00006bf8  ADD             R6, R6, R7
00006bfc  STRH            R1, [R4],#2
00006c00  CMP             R4, R0
00006c04  BCC             loc_6BB4
00006c08  B               loc_6D90
00006c0c  LDR             R12, [SP,#0x74+var_20]
00006c10  CMP             R12, #0
00006c14  BNE             loc_6D88
00006c18  B               loc_6CA8
00006c1c  LDR             R2, [SP,#0x74+var_5C]
00006c20  MOV             R1, R6,ASR R2
00006c24  LDR             R2, [SP,#0x74+var_54]
00006c28  LDR             R1, [R2,R1,LSL#2]
00006c2c  LDR             R2, [SP,#0x74+var_5C]
00006c30  MOV             R2, R5,ASR R2
00006c34  LDRB            R1, [R1,R2]
00006c38  LDR             R2, [SP,#0x74+var_70]
00006c3c  LDRB            R2, [R2,R1]
00006c40  CMP             R2, #0
00006c44  BEQ             loc_6C94
00006c48  LDR             R3, [SP,#0x74+var_74]
00006c4c  LDRB            R2, [R3,R1]
00006c50  CMP             R2, #0
00006c54  BEQ             loc_6C68
00006c58  LDR             R3, [SP,#0x74+var_C]
00006c5c  LDR             R2, [R3,#0x8A4]
00006c60  TST             R2, #4
00006c64  BEQ             loc_6C94
00006c68  AND             R2, R6, R10
00006c6c  MOV             R2, R2,ASR R9
00006c70  ADD             R1, R2, R1,LSL#5
00006c74  AND             R2, R5, R10
00006c78  LDR             R3, [SP,#0x74+var_48]
00006c7c  MOV             R2, R2,ASR R9
00006c80  ADD             R1, R3, R1,LSL#6
00006c84  ADD             R1, R1, R2,LSL#1
00006c88  LDRH            R1, [R1]
00006c8c  STRH            R1, [R4]
00006c90  B               loc_6C9C
00006c94  LDR             R2, [SP,#0x74+var_58]
00006c98  STRH            R2, [R4]
00006c9c  ADD             R4, R4, #2
00006ca0  ADD             R5, R5, R8
00006ca4  ADD             R6, R6, R7
00006ca8  CMP             R4, R0
00006cac  BCC             loc_6C1C
00006cb0  B               loc_6D90
00006cb4  LDR             R2, [SP,#0x74+var_5C]
00006cb8  MOV             R1, R6,ASR R2
00006cbc  LDR             R2, [SP,#0x74+var_54]
00006cc0  LDR             R1, [R2,R1,LSL#2]
00006cc4  LDR             R2, [SP,#0x74+var_5C]
00006cc8  MOV             R2, R5,ASR R2
00006ccc  LDRB            R2, [R1,R2]
00006cd0  LDR             R1, [SP,#0x74+var_70]
00006cd4  LDRB            R1, [R1,R2]
00006cd8  CMP             R1, #0
00006cdc  BEQ             loc_6D04
00006ce0  LDR             R3, [SP,#0x74+var_74]
00006ce4  MOV             R1, #1
00006ce8  LDRB            R3, [R3,R2]
00006cec  CMP             R3, #0
00006cf0  BEQ             loc_6D08
00006cf4  LDR             R3, [SP,#0x74+var_C]
00006cf8  LDR             R3, [R3,#0x8A4]
00006cfc  TST             R3, #4
00006d00  BNE             loc_6D08
00006d04  MOV             R1, #0
00006d08  AND             R3, R6, R10
00006d0c  MOV             R3, R3,ASR R9
00006d10  ADD             R2, R3, R2,LSL#5
00006d14  LDR             R3, [SP,#0x74+var_48]
00006d18  CMP             R1, #0
00006d1c  ADD             R2, R3, R2,LSL#6
00006d20  AND             R3, R5, R10
00006d24  MOV             R3, R3,ASR R9
00006d28  ADD             R2, R2, R3,LSL#1
00006d2c  LDRH            R2, [R2]
00006d30  STRHNE          R2, [R4]
00006d34  BNE             loc_6D7C
00006d38  AND             R1, R2, #0xF800
00006d3c  AND             R3, R2, #0x7E0
00006d40  MOV             R1, R1,LSL#11
00006d44  ORR             R1, R1, R3,LSL#5
00006d48  LDR             R3, [SP,#0x74+var_1C]
00006d4c  AND             R2, R2, #0x1F
00006d50  LDR             R12, [SP,#0x74+var_20]
00006d54  ORR             R1, R1, R2
00006d58  MLA             R1, R12, R1, R3
00006d5c  MOV             R1, R1,LSR#5
00006d60  AND             R2, R1, #0x7C00000
00006d64  AND             R3, R1, #0xFC00
00006d68  MOV             R2, R2,LSR#11
00006d6c  ORR             R2, R2, R3,LSR#5
00006d70  AND             R1, R1, #0x1F
00006d74  ORR             R1, R2, R1
00006d78  STRH            R1, [R4]
00006d7c  ADD             R4, R4, #2
00006d80  ADD             R5, R5, R8
00006d84  ADD             R6, R6, R7
00006d88  CMP             R4, R0
00006d8c  BCC             loc_6CB4
00006d90  LDR             R1, [SP,#0x74+var_60]
00006d94  LDR             R12, [SP,#0x74+var_20]
00006d98  ADD             R1, R0, R1,LSL#1
00006d9c  CMP             R12, #0x20 ; ' '
00006da0  BNE             loc_6DE0
00006da4  B               loc_6DD4
00006da8  AND             R0, R6, R10
00006dac  LDR             R3, [SP,#0x74+var_50]
00006db0  AND             R2, R5, R10
00006db4  MOV             R0, R0,ASR R9
00006db8  ADD             R0, R3, R0,LSL#6
00006dbc  MOV             R2, R2,ASR R9
00006dc0  ADD             R0, R0, R2,LSL#1
00006dc4  LDRH            R0, [R0]
00006dc8  ADD             R5, R5, R8
00006dcc  ADD             R6, R6, R7
00006dd0  STRH            R0, [R4],#2
00006dd4  CMP             R4, R1
00006dd8  BCC             loc_6DA8
00006ddc  B               loc_6E74
00006de0  LDR             R12, [SP,#0x74+var_20]
00006de4  CMP             R12, #0
00006de8  BNE             loc_6E6C
00006dec  CMP             R4, R1
00006df0  LDRCC           R2, [SP,#0x74+var_58]
00006df4  STRHCC          R2, [R4],#2
00006df8  BCC             loc_6DEC
00006dfc  B               loc_6E74
00006e00  AND             R0, R6, R10
00006e04  LDR             R3, [SP,#0x74+var_50]
00006e08  AND             R2, R5, R10
00006e0c  MOV             R0, R0,ASR R9
00006e10  ADD             R0, R3, R0,LSL#6
00006e14  MOV             R2, R2,ASR R9
00006e18  ADD             R0, R0, R2,LSL#1
00006e1c  LDRH            R0, [R0]
00006e20  LDR             R12, [SP,#0x74+var_20]
00006e24  ADD             R5, R5, R8
00006e28  AND             R2, R0, #0xF800
00006e2c  AND             R3, R0, #0x7E0
00006e30  MOV             R2, R2,LSL#11
00006e34  ORR             R2, R2, R3,LSL#5
00006e38  LDR             R3, [SP,#0x74+var_1C]
00006e3c  AND             R0, R0, #0x1F
00006e40  ORR             R0, R2, R0
00006e44  MLA             R0, R12, R0, R3
00006e48  MOV             R0, R0,LSR#5
00006e4c  AND             R2, R0, #0x7C00000
00006e50  AND             R3, R0, #0xFC00
00006e54  MOV             R2, R2,LSR#11
00006e58  ORR             R2, R2, R3,LSR#5
00006e5c  AND             R0, R0, #0x1F
00006e60  ORR             R0, R2, R0
00006e64  STRH            R0, [R4],#2
00006e68  ADD             R6, R6, R7
00006e6c  CMP             R4, R1
00006e70  BCC             loc_6E00
00006e74  LDR             R0, [SP,#0x74+var_14]
00006e78  ADD             R0, R0, #1
00006e7c  LDR             R1, [SP,#0x74+var_18]
00006e80  STR             R0, [SP,#0x74+var_14]
00006e84  CMP             R0, R1
00006e88  BLT             loc_67C0
00006e8c  ADD             SP, SP, #0x74 ; 't'
00006e90  POP             {R4-R11,LR}
00006e94  BX              LR
