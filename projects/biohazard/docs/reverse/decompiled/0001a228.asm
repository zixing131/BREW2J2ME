0001a228  PUSH            {R0-R11,LR}
0001a22c  SUB             SP, SP, #0xAC
0001a230  ADD             R2, SP, #0xBC+arg_10
0001a234  LDM             R2, {R0,R2}
0001a238  LDR             R1, [SP,#0xBC+var_10]
0001a23c  LDR             R3, [SP,#0xBC+arg_8]
0001a240  LDR             R10, [SP,#0xBC+arg_0]
0001a244  LDR             R1, [R1,#4]
0001a248  CMP             R1, #0
0001a24c  BEQ             loc_1AD14
0001a250  LDR             R1, [SP,#0xBC+var_C]
0001a254  CMP             R3, #0
0001a258  LDRH            R1, [R1,#2]
0001a25c  STR             R1, [SP,#0xBC+var_84]
0001a260  LDR             R1, [SP,#0xBC+var_C]
0001a264  LDRH            R8, [R1,#4]
0001a268  LDRH            R1, [R1,#8]
0001a26c  STR             R1, [SP,#0xBC+var_34]
0001a270  LDR             R1, [SP,#0xBC+var_C]
0001a274  LDRH            R9, [R1,#6]
0001a278  LDRH            R1, [R1,#0xA]
0001a27c  STR             R1, [SP,#0xBC+var_38]
0001a280  BEQ             loc_1A2C4
0001a284  LDRSH           R1, [R3]
0001a288  LDRSH           R12, [R3,#4]
0001a28c  CMP             R1, R8
0001a290  MOVGT           R8, R1
0001a294  ADD             R1, R1, R12
0001a298  LDR             R12, [SP,#0xBC+var_34]
0001a29c  CMP             R1, R12
0001a2a0  STRLT           R1, [SP,#0xBC+var_34]
0001a2a4  LDRSH           R1, [R3,#2]
0001a2a8  LDRSH           R3, [R3,#6]
0001a2ac  CMP             R1, R9
0001a2b0  MOVGT           R9, R1
0001a2b4  ADD             R1, R1, R3
0001a2b8  LDR             R3, [SP,#0xBC+var_38]
0001a2bc  CMP             R1, R3
0001a2c0  STRLT           R1, [SP,#0xBC+var_38]
0001a2c4  LDR             R1, [SP,#0xBC+arg_C]
0001a2c8  MOV             R4, R2,LSL#16
0001a2cc  ANDS            R3, R1, #0x60 ; '`'
0001a2d0  AND             R11, R1, #0xF
0001a2d4  MOV             R1, R2,LSR#16
0001a2d8  STR             R1, [SP,#0xBC+var_80]
0001a2dc  LDR             R2, [SP,#0xBC+arg_C]
0001a2e0  MOVNE           R3, #1
0001a2e4  MOV             R1, R0,LSL#16
0001a2e8  MOV             R1, R1,LSR#16
0001a2ec  STR             R3, [SP,#0xBC+var_88]
0001a2f0  TST             R2, #0x10
0001a2f4  MOV             R4, R4,LSR#16
0001a2f8  BEQ             loc_1A3E0
0001a2fc  AND             R1, R0, #0xF800
0001a300  MOV             R1, R1,LSR#8
0001a304  STR             R1, [SP,#0xBC+var_9C]
0001a308  AND             R1, R0, #0x7E0
0001a30c  MOV             R1, R1,LSR#3
0001a310  STR             R1, [SP,#0xBC+var_A0]
0001a314  MOV             R1, R0,LSL#27
0001a318  MOV             R1, R1,LSR#24
0001a31c  STR             R1, [SP,#0xBC+var_A4]
0001a320  BIC             R1, R0, #0x7000000
0001a324  MOV             R1, R1,LSR#24
0001a328  STR             R1, [SP,#0xBC+var_A8]
0001a32c  BIC             R1, R0, #0xF8000000
0001a330  BIC             R1, R1, #0x180000
0001a334  MOV             R1, R1,LSR#19
0001a338  STR             R1, [SP,#0xBC+var_AC]
0001a33c  AND             R0, R0, #0x1F0000
0001a340  MOV             R1, R0,LSR#13
0001a344  STR             R1, [SP,#0xBC+var_B0]
0001a348  MOV             R6, #0
0001a34c  LDR             R0, [SP,#0xBC+var_9C]
0001a350  RSB             R7, R6, #0xC
0001a354  LDR             R1, [SP,#0xBC+var_A8]
0001a358  MUL             R0, R7, R0
0001a35c  MLA             R1, R6, R1, R0
0001a360  MOV             R0, #0xC
0001a364  BL              sub_1DC
0001a368  STR             R0, [SP,#0xBC+var_B4]
0001a36c  LDR             R0, [SP,#0xBC+var_A0]
0001a370  LDR             R1, [SP,#0xBC+var_AC]
0001a374  MUL             R0, R7, R0
0001a378  MLA             R1, R6, R1, R0
0001a37c  MOV             R0, #0xC
0001a380  BL              sub_1DC
0001a384  AND             R0, R0, #0xFF
0001a388  STR             R0, [SP,#0xBC+var_B8]
0001a38c  LDR             R0, [SP,#0xBC+var_A4]
0001a390  LDR             R1, [SP,#0xBC+var_B0]
0001a394  MUL             R0, R7, R0
0001a398  MLA             R1, R6, R1, R0
0001a39c  MOV             R0, #0xC
0001a3a0  BL              sub_1DC
0001a3a4  LDR             R1, [SP,#0xBC+var_B4]
0001a3a8  LDR             R2, [SP,#0xBC+var_B8]
0001a3ac  MOV             R1, R1,LSR#3
0001a3b0  MOV             R1, R1,LSL#11
0001a3b4  MOV             R2, R2,LSR#2
0001a3b8  ORR             R1, R1, R2,LSL#5
0001a3bc  AND             R0, R0, #0xFF
0001a3c0  ORR             R0, R1, R0,LSR#3
0001a3c4  ADD             R1, SP, #0xBC+var_7C
0001a3c8  ADD             R1, R1, R6,LSL#1
0001a3cc  ADD             R6, R6, #1
0001a3d0  CMP             R6, #0xC
0001a3d4  STRH            R0, [R1]
0001a3d8  BLT             loc_1A34C
0001a3dc  B               loc_1A3FC
0001a3e0  MOV             R0, #0
0001a3e4  ADD             R2, SP, #0xBC+var_7C
0001a3e8  ADD             R2, R2, R0,LSL#1
0001a3ec  ADD             R0, R0, #1
0001a3f0  CMP             R0, #0xC
0001a3f4  STRH            R1, [R2]
0001a3f8  BLT             loc_1A3E4
0001a3fc  MOV             R0, #0
0001a400  STR             R0, [SP,#0xBC+var_2C]
0001a404  LDR             R0, [SP,#0xBC+var_84]
0001a408  SUB             R0, R0, #1
0001a40c  STR             R0, [SP,#0xBC+var_14]
0001a410  LDR             R12, [SP,#0xBC+var_34]
0001a414  LDR             R0, [SP,#0xBC+var_38]
0001a418  SUB             R7, R12, #1
0001a41c  SUB             R6, R0, #1
0001a420  LDR             R0, [SP,#0xBC+var_10]
0001a424  LDRH            R2, [R0,#0x30]
0001a428  LDR             R3, [SP,#0xBC+arg_4]
0001a42c  ADD             R0, R2, R3
0001a430  CMP             R0, R9
0001a434  BLE             loc_1AD14
0001a438  LDR             R0, [SP,#0xBC+var_38]
0001a43c  LDR             R3, [SP,#0xBC+arg_4]
0001a440  CMP             R3, R0
0001a444  BGE             loc_1AD14
0001a448  LDR             R0, [SP,#0xBC+var_8]
0001a44c  LDR             R1, [SP,#0xBC+var_2C]
0001a450  ADD             R0, R0, R1,LSL#1
0001a454  STR             R0, [SP,#0xBC+var_18]
0001a458  LDRH            R1, [R0]
0001a45c  CMP             R1, #0
0001a460  BEQ             loc_1AD14
0001a464  LDR             R3, [SP,#0xBC+var_4]
0001a468  CMP             R3, #0
0001a46c  LDRGE           R0, [SP,#0xBC+var_2C]
0001a470  LDRGE           R3, [SP,#0xBC+var_4]
0001a474  CMPGE           R0, R3
0001a478  BGE             loc_1AD14
0001a47c  LDR             R0, [SP,#0xBC+var_10]
0001a480  LDRH            R0, [R0,#0x32]
0001a484  ADD             R3, R0, R10
0001a488  CMP             R3, R8
0001a48c  BGT             loc_1A4AC
0001a490  CMP             R1, #0x100
0001a494  ADDCC           R10, R10, R0,LSR#1
0001a498  LDR             R0, [SP,#0xBC+var_2C]
0001a49c  MOVCS           R10, R3
0001a4a0  ADD             R0, R0, #1
0001a4a4  STR             R0, [SP,#0xBC+var_2C]
0001a4a8  B               loc_1A420
0001a4ac  LDR             R12, [SP,#0xBC+var_34]
0001a4b0  CMP             R10, R12
0001a4b4  BGE             loc_1AD14
0001a4b8  LDR             R3, [SP,#0xBC+var_88]
0001a4bc  CMP             R3, #0
0001a4c0  BEQ             loc_1A624
0001a4c4  CMP             R1, #0x100
0001a4c8  MOVCC           R0, R0,LSR#1
0001a4cc  STR             R0, [SP,#0xBC+var_94]
0001a4d0  STR             R10, [SP,#0xBC+var_8C]
0001a4d4  LDR             R0, [SP,#0xBC+var_8C]
0001a4d8  LDR             R3, [SP,#0xBC+arg_4]
0001a4dc  CMP             R0, R8
0001a4e0  LDRLT           R0, [SP,#0xBC+var_94]
0001a4e4  LDRLT           R1, [SP,#0xBC+var_8C]
0001a4e8  STRLT           R8, [SP,#0xBC+var_8C]
0001a4ec  ADDLT           R0, R0, R1
0001a4f0  SUBLT           R0, R0, R8
0001a4f4  STRLT           R0, [SP,#0xBC+var_94]
0001a4f8  LDR             R1, [SP,#0xBC+var_94]
0001a4fc  LDR             R0, [SP,#0xBC+var_8C]
0001a500  LDR             R12, [SP,#0xBC+var_34]
0001a504  ADD             R0, R0, R1
0001a508  CMP             R0, R12
0001a50c  LDRGT           R0, [SP,#0xBC+var_8C]
0001a510  LDRGT           R12, [SP,#0xBC+var_34]
0001a514  STR             R3, [SP,#0xBC+var_90]
0001a518  SUBGT           R0, R12, R0
0001a51c  STRGT           R0, [SP,#0xBC+var_94]
0001a520  LDR             R0, [SP,#0xBC+var_90]
0001a524  STR             R2, [SP,#0xBC+var_98]
0001a528  CMP             R0, R9
0001a52c  LDRLT           R0, [SP,#0xBC+var_98]
0001a530  LDRLT           R3, [SP,#0xBC+var_90]
0001a534  SUBLT           R0, R0, R9
0001a538  ADDLT           R0, R0, R3
0001a53c  STRLT           R0, [SP,#0xBC+var_98]
0001a540  STRLT           R9, [SP,#0xBC+var_90]
0001a544  LDR             R0, [SP,#0xBC+var_90]
0001a548  LDR             R2, [SP,#0xBC+var_98]
0001a54c  LDR             R1, [SP,#0xBC+var_38]
0001a550  ADD             R0, R0, R2
0001a554  CMP             R0, R1
0001a558  LDRGT           R0, [SP,#0xBC+var_38]
0001a55c  LDRGT           R3, [SP,#0xBC+var_90]
0001a560  SUBGT           R0, R0, R3
0001a564  STRGT           R0, [SP,#0xBC+var_98]
0001a568  LDR             R0, [SP,#0xBC+var_94]
0001a56c  CMP             R0, #0
0001a570  LDRGT           R0, [SP,#0xBC+var_98]
0001a574  CMPGT           R0, #0
0001a578  BLE             loc_1A624
0001a57c  LDR             R0, [SP,#0xBC+arg_C]
0001a580  TST             R0, #0x40
0001a584  BEQ             loc_1A5C8
0001a588  MOV             R2, #0
0001a58c  LDR             R3, [SP,#0xBC+var_80]
0001a590  STMEA           SP, {R2,R3}
0001a594  LDR             R0, [SP,#0xBC+var_90]
0001a598  LDR             R2, [SP,#0xBC+var_98]
0001a59c  ADD             R0, R0, R2
0001a5a0  MOV             R2, R0,LSL#16
0001a5a4  LDR             R0, [SP,#0xBC+var_94]
0001a5a8  MOV             R2, R2,ASR#16
0001a5ac  MOV             R3, R0,LSL#16
0001a5b0  LDR             R0, [SP,#0xBC+var_8C]
0001a5b4  MOV             R3, R3,ASR#16
0001a5b8  MOV             R1, R0,LSL#16
0001a5bc  MOV             R1, R1,ASR#16
0001a5c0  LDR             R0, [SP,#0xBC+var_C]
0001a5c4  BL              sub_109D0
0001a5c8  LDR             R0, [SP,#0xBC+arg_C]
0001a5cc  TST             R0, #0x20
0001a5d0  BEQ             loc_1A624
0001a5d4  LDR             R0, [SP,#0xBC+var_98]
0001a5d8  MOV             R3, #0
0001a5dc  ADD             R0, R0, #1
0001a5e0  MOV             R0, R0,LSL#16
0001a5e4  MOV             R0, R0,ASR#16
0001a5e8  MOV             R1, #0
0001a5ec  LDR             R2, [SP,#0xBC+var_80]
0001a5f0  STMEA           SP, {R0-R3}
0001a5f4  LDR             R0, [SP,#0xBC+var_94]
0001a5f8  MOV             R3, R0,LSL#16
0001a5fc  LDR             R0, [SP,#0xBC+var_90]
0001a600  MOV             R3, R3,ASR#16
0001a604  SUB             R0, R0, #1
0001a608  MOV             R2, R0,LSL#16
0001a60c  LDR             R0, [SP,#0xBC+var_8C]
0001a610  MOV             R2, R2,ASR#16
0001a614  MOV             R1, R0,LSL#16
0001a618  MOV             R1, R1,ASR#16
0001a61c  LDR             R0, [SP,#0xBC+var_C]
0001a620  BL              sub_10C58
0001a624  LDR             R0, [SP,#0xBC+var_18]
0001a628  LDRH            R1, [R0]
0001a62c  CMP             R1, #0x100
0001a630  BCS             loc_1A978
0001a634  SUB             R0, R1, #0x20 ; ' '
0001a638  CMP             R0, #0x5F ; '_'
0001a63c  LDRCS           R0, [SP,#0xBC+var_10]
0001a640  LDRBCS          R0, [R0,#0x1E]
0001a644  ANDCC           R0, R1, #0xFF
0001a648  LDR             R1, [SP,#0xBC+var_10]
0001a64c  ADD             R0, R0, R0,LSL#1
0001a650  LDR             R1, [R1,#0x18]
0001a654  ADD             R0, R1, R0,LSL#2
0001a658  SUB             R0, R0, #0x180
0001a65c  STR             R0, [SP,#0xBC+var_3C]
0001a660  LDR             R0, [SP,#0xBC+var_C]
0001a664  LDR             R0, [R0,#0x14]
0001a668  LDR             R3, [SP,#0xBC+arg_4]
0001a66c  ADD             R2, R0, R3,LSL#2
0001a670  STR             R2, [SP,#0xBC+var_40]
0001a674  MOV             R2, #0
0001a678  STR             R2, [SP,#0xBC+var_30]
0001a67c  LDR             R2, [SP,#0xBC+var_30]
0001a680  LDR             R3, [SP,#0xBC+arg_4]
0001a684  ADD             R1, R3, R2
0001a688  CMP             R1, R9
0001a68c  LDRCC           R2, [SP,#0xBC+var_40]
0001a690  ADDCC           R2, R2, #4
0001a694  STRCC           R2, [SP,#0xBC+var_40]
0001a698  BCC             loc_1A948
0001a69c  LDR             R0, [SP,#0xBC+var_38]
0001a6a0  CMP             R1, R0
0001a6a4  BCS             loc_1A95C
0001a6a8  LDR             R2, [SP,#0xBC+var_30]
0001a6ac  ADD             R0, SP, #0xBC+var_7C
0001a6b0  ADD             R0, R0, R2,LSL#1
0001a6b4  LDRH            R12, [R0]
0001a6b8  CMP             R11, #0
0001a6bc  STR             R12, [SP,#0xBC+var_64]
0001a6c0  BEQ             loc_1A734
0001a6c4  CMP             R1, #0
0001a6c8  LDRNE           R2, [SP,#0xBC+var_40]
0001a6cc  LDRNE           R0, [R2,#-4]
0001a6d0  ADDNE           R12, R0, R10,LSL#1
0001a6d4  LDR             R0, [SP,#0xBC+var_14]
0001a6d8  STRNE           R12, [SP,#0xBC+var_48]
0001a6dc  CMP             R1, R0
0001a6e0  LDRCC           R2, [SP,#0xBC+var_40]
0001a6e4  LDRCC           R0, [R2,#4]
0001a6e8  LDR             R2, [SP,#0xBC+var_30]
0001a6ec  ADDCC           R5, R0, R10,LSL#1
0001a6f0  CMP             R2, #0
0001a6f4  MOVEQ           LR, #0
0001a6f8  STREQ           LR, [SP,#0xBC+var_50]
0001a6fc  BEQ             loc_1A720
0001a700  LDR             R0, [SP,#0xBC+var_3C]
0001a704  LDR             R2, [SP,#0xBC+var_30]
0001a708  ADD             R0, R0, R2
0001a70c  LDRB            LR, [R0,#-1]
0001a710  CMP             R2, #0xB
0001a714  STR             LR, [SP,#0xBC+var_50]
0001a718  MOVEQ           LR, #0
0001a71c  BEQ             loc_1A730
0001a720  LDR             R0, [SP,#0xBC+var_3C]
0001a724  LDR             R2, [SP,#0xBC+var_30]
0001a728  ADD             R0, R0, R2
0001a72c  LDRB            LR, [R0,#1]
0001a730  STR             LR, [SP,#0xBC+var_54]
0001a734  LDR             R2, [SP,#0xBC+var_40]
0001a738  LDR             R0, [R2],#4
0001a73c  STR             R2, [SP,#0xBC+var_40]
0001a740  ADD             R12, R0, R10,LSL#1
0001a744  LDR             R0, [SP,#0xBC+var_3C]
0001a748  LDR             R2, [SP,#0xBC+var_30]
0001a74c  STR             R12, [SP,#0xBC+var_44]
0001a750  LDRB            LR, [R0,R2]
0001a754  MOV             R0, #0
0001a758  STR             LR, [SP,#0xBC+var_4C]
0001a75c  LDR             LR, [SP,#0xBC+var_4C]
0001a760  RSB             R3, R0, #7
0001a764  MOV             R2, LR,LSR R3
0001a768  TST             R2, #1
0001a76c  BEQ             loc_1A930
0001a770  ADD             R2, R10, R0
0001a774  CMP             R2, R8
0001a778  BCC             loc_1A930
0001a77c  LDR             R12, [SP,#0xBC+var_34]
0001a780  CMP             R2, R12
0001a784  BCS             loc_1A930
0001a788  LDR             R12, [SP,#0xBC+var_64]
0001a78c  LDR             LR, [SP,#0xBC+var_44]
0001a790  CMP             R11, #0
0001a794  STRH            R12, [LR]
0001a798  BEQ             loc_1A930
0001a79c  CMP             R11, #1
0001a7a0  BNE             loc_1A8C8
0001a7a4  ADD             R12, R3, #1
0001a7a8  LDR             LR, [SP,#0xBC+var_50]
0001a7ac  STR             R12, [SP,#0xBC+var_1C]
0001a7b0  MOV             R12, LR,LSR R12
0001a7b4  TST             R12, #1
0001a7b8  BNE             loc_1A7D0
0001a7bc  CMP             R1, R9
0001a7c0  CMPHI           R2, R8
0001a7c4  LDRHI           R12, [SP,#0xBC+var_48]
0001a7c8  ADDHI           R12, R12, R0,LSL#1
0001a7cc  STRHHI          R4, [R12,#-2]
0001a7d0  LDR             LR, [SP,#0xBC+var_50]
0001a7d4  MOV             R12, LR,LSR R3
0001a7d8  TST             R12, #1
0001a7dc  BNE             loc_1A7F0
0001a7e0  CMP             R1, R9
0001a7e4  LDRHI           R12, [SP,#0xBC+var_48]
0001a7e8  ADDHI           R12, R12, R0,LSL#1
0001a7ec  STRHHI          R4, [R12]
0001a7f0  SUB             R12, R3, #1
0001a7f4  LDR             LR, [SP,#0xBC+var_50]
0001a7f8  STR             R12, [SP,#0xBC+var_20]
0001a7fc  MOV             R12, LR,LSR R12
0001a800  TST             R12, #1
0001a804  BNE             loc_1A820
0001a808  CMP             R1, R9
0001a80c  BLS             loc_1A820
0001a810  CMP             R2, R7
0001a814  LDRCC           R12, [SP,#0xBC+var_48]
0001a818  ADDCC           R12, R12, R0,LSL#1
0001a81c  STRHCC          R4, [R12,#2]
0001a820  LDR             R12, [SP,#0xBC+var_1C]
0001a824  LDR             LR, [SP,#0xBC+var_4C]
0001a828  MOV             R12, LR,LSR R12
0001a82c  TST             R12, #1
0001a830  BNE             loc_1A840
0001a834  CMP             R2, R8
0001a838  LDRHI           R12, [SP,#0xBC+var_44]
0001a83c  STRHHI          R4, [R12,#-2]
0001a840  LDR             R12, [SP,#0xBC+var_20]
0001a844  LDR             LR, [SP,#0xBC+var_4C]
0001a848  MOV             R12, LR,LSR R12
0001a84c  TST             R12, #1
0001a850  BNE             loc_1A860
0001a854  CMP             R2, R7
0001a858  LDRCC           R12, [SP,#0xBC+var_44]
0001a85c  STRHCC          R4, [R12,#2]
0001a860  LDR             R12, [SP,#0xBC+var_1C]
0001a864  LDR             LR, [SP,#0xBC+var_54]
0001a868  MOV             R12, LR,LSR R12
0001a86c  TST             R12, #1
0001a870  BNE             loc_1A888
0001a874  CMP             R1, R6
0001a878  BCS             loc_1A888
0001a87c  CMP             R2, R8
0001a880  ADDHI           R12, R5, R0,LSL#1
0001a884  STRHHI          R4, [R12,#-2]
0001a888  LDR             LR, [SP,#0xBC+var_54]
0001a88c  MOV             R3, LR,LSR R3
0001a890  TST             R3, #1
0001a894  BNE             loc_1A8A4
0001a898  CMP             R1, R6
0001a89c  ADDCC           R3, R5, R0,LSL#1
0001a8a0  STRHCC          R4, [R3]
0001a8a4  LDR             R12, [SP,#0xBC+var_20]
0001a8a8  LDR             LR, [SP,#0xBC+var_54]
0001a8ac  MOV             R3, LR,LSR R12
0001a8b0  TST             R3, #1
0001a8b4  BNE             loc_1A930
0001a8b8  CMP             R1, R6
0001a8bc  CMPCC           R2, R7
0001a8c0  BCS             loc_1A930
0001a8c4  B               loc_1A928
0001a8c8  CMP             R11, #2
0001a8cc  BNE             loc_1A930
0001a8d0  LDR             LR, [SP,#0xBC+var_4C]
0001a8d4  SUB             R12, R3, #1
0001a8d8  MOV             LR, LR,LSR R12
0001a8dc  TST             LR, #1
0001a8e0  BNE             loc_1A8F0
0001a8e4  CMP             R2, R7
0001a8e8  LDRCC           LR, [SP,#0xBC+var_44]
0001a8ec  STRHCC          R4, [LR,#2]
0001a8f0  LDR             LR, [SP,#0xBC+var_54]
0001a8f4  MOV             R3, LR,LSR R3
0001a8f8  TST             R3, #1
0001a8fc  BNE             loc_1A90C
0001a900  CMP             R1, R6
0001a904  ADDCC           R3, R5, R0,LSL#1
0001a908  STRHCC          R4, [R3]
0001a90c  LDR             LR, [SP,#0xBC+var_54]
0001a910  MOV             R3, LR,LSR R12
0001a914  TST             R3, #1
0001a918  BNE             loc_1A930
0001a91c  CMP             R1, R6
0001a920  CMPCC           R2, R7
0001a924  BCS             loc_1A930
0001a928  ADD             R2, R5, R0,LSL#1
0001a92c  STRH            R4, [R2,#2]
0001a930  LDR             R12, [SP,#0xBC+var_44]
0001a934  ADD             R0, R0, #1
0001a938  ADD             R12, R12, #2
0001a93c  STR             R12, [SP,#0xBC+var_44]
0001a940  CMP             R0, #6
0001a944  BCC             loc_1A75C
0001a948  LDR             R2, [SP,#0xBC+var_30]
0001a94c  ADD             R2, R2, #1
0001a950  STR             R2, [SP,#0xBC+var_30]
0001a954  CMP             R2, #0xC
0001a958  BCC             loc_1A67C
0001a95c  LDR             R0, [SP,#0xBC+var_2C]
0001a960  ADD             R0, R0, #1
0001a964  STR             R0, [SP,#0xBC+var_2C]
0001a968  LDR             R0, [SP,#0xBC+var_10]
0001a96c  LDRH            R0, [R0,#0x32]
0001a970  ADD             R10, R10, R0,LSR#1
0001a974  B               loc_1A420
0001a978  LDR             R0, [SP,#0xBC+var_10]
0001a97c  BL              sub_12384
0001a980  SUB             R12, R0, #0xFF00
0001a984  SUBS            R12, R12, #0xFF
0001a988  LDRNE           R1, [SP,#0xBC+var_10]
0001a98c  LDRNE           R1, [R1,#0x14]
0001a990  BNE             loc_1A9D0
0001a994  LDR             R0, [SP,#0xBC+var_18]
0001a998  LDRH            R1, [R0]
0001a99c  LDR             R0, [SP,#0xBC+var_10]
0001a9a0  BL              sub_122B8
0001a9a4  SUB             R12, R0, #0xFF00
0001a9a8  SUBS            R12, R12, #0xFF
0001a9ac  LDREQ           R0, [SP,#0xBC+var_10]
0001a9b0  LDREQ           R0, [R0,#0x14]
0001a9b4  LDREQ           R1, [SP,#0xBC+var_10]
0001a9b8  LDRHEQ          R1, [R1,#0x1C]
0001a9bc  ADDEQ           R1, R1, R1,LSL#1
0001a9c0  ADDEQ           R2, R0, R1,LSL#3
0001a9c4  BEQ             loc_1A9D8
0001a9c8  LDR             R1, [SP,#0xBC+var_10]
0001a9cc  LDR             R1, [R1,#0x2C]
0001a9d0  ADD             R0, R0, R0,LSL#1
0001a9d4  ADD             R2, R1, R0,LSL#3
0001a9d8  LDR             R0, [SP,#0xBC+var_C]
0001a9dc  STR             R2, [SP,#0xBC+var_3C]
0001a9e0  LDR             R0, [R0,#0x14]
0001a9e4  LDR             R3, [SP,#0xBC+arg_4]
0001a9e8  ADD             R2, R0, R3,LSL#2
0001a9ec  MOV             R0, #0
0001a9f0  STR             R0, [SP,#0xBC+var_30]
0001a9f4  STR             R2, [SP,#0xBC+var_40]
0001a9f8  LDR             R0, [SP,#0xBC+var_30]
0001a9fc  LDR             R3, [SP,#0xBC+arg_4]
0001aa00  ADD             R1, R3, R0
0001aa04  CMP             R1, R9
0001aa08  LDRCC           R2, [SP,#0xBC+var_40]
0001aa0c  ADDCC           R2, R2, #4
0001aa10  STRCC           R2, [SP,#0xBC+var_40]
0001aa14  BCC             loc_1ACE4
0001aa18  LDR             R0, [SP,#0xBC+var_38]
0001aa1c  CMP             R1, R0
0001aa20  BCS             loc_1ACF8
0001aa24  LDR             R3, [SP,#0xBC+var_30]
0001aa28  ADD             R0, SP, #0xBC+var_7C
0001aa2c  ADD             R0, R0, R3,LSL#1
0001aa30  LDRH            R12, [R0]
0001aa34  CMP             R11, #0
0001aa38  STR             R12, [SP,#0xBC+var_64]
0001aa3c  BEQ             loc_1AAC4
0001aa40  CMP             R1, #0
0001aa44  LDRNE           R2, [SP,#0xBC+var_40]
0001aa48  LDRNE           R0, [R2,#-4]
0001aa4c  ADDNE           R12, R0, R10,LSL#1
0001aa50  LDR             R0, [SP,#0xBC+var_14]
0001aa54  STRNE           R12, [SP,#0xBC+var_48]
0001aa58  CMP             R1, R0
0001aa5c  LDRCC           R2, [SP,#0xBC+var_40]
0001aa60  LDRCC           R0, [R2,#4]
0001aa64  ADDCC           R5, R0, R10,LSL#1
0001aa68  LDR             R0, [SP,#0xBC+var_30]
0001aa6c  CMP             R0, #0
0001aa70  MOVEQ           LR, #0
0001aa74  STREQ           LR, [SP,#0xBC+var_5C]
0001aa78  BEQ             loc_1AAA8
0001aa7c  LDR             R0, [SP,#0xBC+var_30]
0001aa80  LDR             R2, [SP,#0xBC+var_3C]
0001aa84  ADD             R0, R2, R0,LSL#1
0001aa88  LDRB            R2, [R0,#-1]
0001aa8c  LDRB            R0, [R0,#-2]
0001aa90  ORR             LR, R2, R0,LSL#8
0001aa94  LDR             R0, [SP,#0xBC+var_30]
0001aa98  STR             LR, [SP,#0xBC+var_5C]
0001aa9c  CMP             R0, #0xB
0001aaa0  MOVEQ           LR, #0
0001aaa4  BEQ             loc_1AAC0
0001aaa8  LDR             R2, [SP,#0xBC+var_3C]
0001aaac  LDR             R3, [SP,#0xBC+var_30]
0001aab0  ADD             R0, R2, R3,LSL#1
0001aab4  LDRB            R2, [R0,#3]
0001aab8  LDRB            R0, [R0,#2]
0001aabc  ORR             LR, R2, R0,LSL#8
0001aac0  STR             LR, [SP,#0xBC+var_60]
0001aac4  LDR             R2, [SP,#0xBC+var_40]
0001aac8  LDR             R0, [R2],#4
0001aacc  STR             R2, [SP,#0xBC+var_40]
0001aad0  LDR             R2, [SP,#0xBC+var_3C]
0001aad4  LDR             R3, [SP,#0xBC+var_30]
0001aad8  ADD             R12, R0, R10,LSL#1
0001aadc  STR             R12, [SP,#0xBC+var_44]
0001aae0  ADD             R0, R2, R3,LSL#1
0001aae4  LDRB            R0, [R0,#1]
0001aae8  LDRB            R2, [R2,R3,LSL#1]
0001aaec  ORR             LR, R0, R2,LSL#8
0001aaf0  STR             LR, [SP,#0xBC+var_58]
0001aaf4  MOV             R0, #0
0001aaf8  LDR             LR, [SP,#0xBC+var_58]
0001aafc  RSB             R3, R0, #0xF
0001ab00  MOV             R2, LR,LSR R3
0001ab04  TST             R2, #1
0001ab08  BEQ             loc_1ACCC
0001ab0c  ADD             R2, R10, R0
0001ab10  CMP             R2, R8
0001ab14  BCC             loc_1ACCC
0001ab18  LDR             R12, [SP,#0xBC+var_34]
0001ab1c  CMP             R2, R12
0001ab20  BCS             loc_1ACCC
0001ab24  LDR             R12, [SP,#0xBC+var_64]
0001ab28  LDR             LR, [SP,#0xBC+var_44]
0001ab2c  CMP             R11, #0
0001ab30  STRH            R12, [LR]
0001ab34  BEQ             loc_1ACCC
0001ab38  CMP             R11, #1
0001ab3c  BNE             loc_1AC64
0001ab40  ADD             R12, R3, #1
0001ab44  LDR             LR, [SP,#0xBC+var_5C]
0001ab48  STR             R12, [SP,#0xBC+var_24]
0001ab4c  MOV             R12, LR,LSR R12
0001ab50  TST             R12, #1
0001ab54  BNE             loc_1AB6C
0001ab58  CMP             R1, R9
0001ab5c  CMPHI           R2, R8
0001ab60  LDRHI           R12, [SP,#0xBC+var_48]
0001ab64  ADDHI           R12, R12, R0,LSL#1
0001ab68  STRHHI          R4, [R12,#-2]
0001ab6c  LDR             LR, [SP,#0xBC+var_5C]
0001ab70  MOV             R12, LR,LSR R3
0001ab74  TST             R12, #1
0001ab78  BNE             loc_1AB8C
0001ab7c  CMP             R1, R9
0001ab80  LDRHI           R12, [SP,#0xBC+var_48]
0001ab84  ADDHI           R12, R12, R0,LSL#1
0001ab88  STRHHI          R4, [R12]
0001ab8c  SUB             R12, R3, #1
0001ab90  LDR             LR, [SP,#0xBC+var_5C]
0001ab94  STR             R12, [SP,#0xBC+var_28]
0001ab98  MOV             R12, LR,LSR R12
0001ab9c  TST             R12, #1
0001aba0  BNE             loc_1ABBC
0001aba4  CMP             R1, R9
0001aba8  BLS             loc_1ABBC
0001abac  CMP             R2, R7
0001abb0  LDRCC           R12, [SP,#0xBC+var_48]
0001abb4  ADDCC           R12, R12, R0,LSL#1
0001abb8  STRHCC          R4, [R12,#2]
0001abbc  LDR             R12, [SP,#0xBC+var_24]
0001abc0  LDR             LR, [SP,#0xBC+var_58]
0001abc4  MOV             R12, LR,LSR R12
0001abc8  TST             R12, #1
0001abcc  BNE             loc_1ABDC
0001abd0  CMP             R2, R8
0001abd4  LDRHI           R12, [SP,#0xBC+var_44]
0001abd8  STRHHI          R4, [R12,#-2]
0001abdc  LDR             R12, [SP,#0xBC+var_28]
0001abe0  LDR             LR, [SP,#0xBC+var_58]
0001abe4  MOV             R12, LR,LSR R12
0001abe8  TST             R12, #1
0001abec  BNE             loc_1ABFC
0001abf0  CMP             R2, R7
0001abf4  LDRCC           R12, [SP,#0xBC+var_44]
0001abf8  STRHCC          R4, [R12,#2]
0001abfc  LDR             R12, [SP,#0xBC+var_24]
0001ac00  LDR             LR, [SP,#0xBC+var_60]
0001ac04  MOV             R12, LR,LSR R12
0001ac08  TST             R12, #1
0001ac0c  BNE             loc_1AC24
0001ac10  CMP             R1, R6
0001ac14  BCS             loc_1AC24
0001ac18  CMP             R2, R8
0001ac1c  ADDHI           R12, R5, R0,LSL#1
0001ac20  STRHHI          R4, [R12,#-2]
0001ac24  LDR             LR, [SP,#0xBC+var_60]
0001ac28  MOV             R3, LR,LSR R3
0001ac2c  TST             R3, #1
0001ac30  BNE             loc_1AC40
0001ac34  CMP             R1, R6
0001ac38  ADDCC           R3, R5, R0,LSL#1
0001ac3c  STRHCC          R4, [R3]
0001ac40  LDR             R12, [SP,#0xBC+var_28]
0001ac44  LDR             LR, [SP,#0xBC+var_60]
0001ac48  MOV             R3, LR,LSR R12
0001ac4c  TST             R3, #1
0001ac50  BNE             loc_1ACCC
0001ac54  CMP             R1, R6
0001ac58  CMPCC           R2, R7
0001ac5c  BCS             loc_1ACCC
0001ac60  B               loc_1ACC4
0001ac64  CMP             R11, #2
0001ac68  BNE             loc_1ACCC
0001ac6c  LDR             LR, [SP,#0xBC+var_58]
0001ac70  SUB             R12, R3, #1
0001ac74  MOV             LR, LR,LSR R12
0001ac78  TST             LR, #1
0001ac7c  BNE             loc_1AC8C
0001ac80  CMP             R2, R7
0001ac84  LDRCC           LR, [SP,#0xBC+var_44]
0001ac88  STRHCC          R4, [LR,#2]
0001ac8c  LDR             LR, [SP,#0xBC+var_60]
0001ac90  MOV             R3, LR,LSR R3
0001ac94  TST             R3, #1
0001ac98  BNE             loc_1ACA8
0001ac9c  CMP             R1, R6
0001aca0  ADDCC           R3, R5, R0,LSL#1
0001aca4  STRHCC          R4, [R3]
0001aca8  LDR             LR, [SP,#0xBC+var_60]
0001acac  MOV             R3, LR,LSR R12
0001acb0  TST             R3, #1
0001acb4  BNE             loc_1ACCC
0001acb8  CMP             R1, R6
0001acbc  CMPCC           R2, R7
0001acc0  BCS             loc_1ACCC
0001acc4  ADD             R2, R5, R0,LSL#1
0001acc8  STRH            R4, [R2,#2]
0001accc  LDR             R12, [SP,#0xBC+var_44]
0001acd0  ADD             R0, R0, #1
0001acd4  ADD             R12, R12, #2
0001acd8  STR             R12, [SP,#0xBC+var_44]
0001acdc  CMP             R0, #0xC
0001ace0  BCC             loc_1AAF8
0001ace4  LDR             R0, [SP,#0xBC+var_30]
0001ace8  ADD             R0, R0, #1
0001acec  STR             R0, [SP,#0xBC+var_30]
0001acf0  CMP             R0, #0xC
0001acf4  BCC             loc_1A9F8
0001acf8  LDR             R0, [SP,#0xBC+var_2C]
0001acfc  ADD             R0, R0, #1
0001ad00  STR             R0, [SP,#0xBC+var_2C]
0001ad04  LDR             R0, [SP,#0xBC+var_10]
0001ad08  LDRH            R0, [R0,#0x32]
0001ad0c  ADD             R10, R0, R10
0001ad10  B               loc_1A420
0001ad14  ADD             SP, SP, #0xBC
0001ad18  POP             {R4-R11,LR}
0001ad1c  MOV             R0, #0
0001ad20  BX              LR
