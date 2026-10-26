0000c3e0  PUSH            {R4-R11,LR}
0000c3e4  MOV             R5, R0
0000c3e8  LDR             R0, =(start - 0xC400)
0000c3ec  SUB             SP, SP, #0x274
0000c3f0  MOV             R9, R2
0000c3f4  MOV             R4, R1
0000c3f8  ADD             R0, PC, R0; start
0000c3fc  LDR             R0, [R0,#(dword_8 - 0xC)]
0000c400  ADR             LR, loc_C40C
0000c404  LDR             R0, [R0,#0xC0]
0000c408  BX              R0
0000c40c  LDR             R8, [R0,#0x28]
0000c410  MOV             R0, #0
0000c414  LDR             R6, [R8,#0x64]
0000c418  STRH            R0, [SP,#0x274+var_248]
0000c41c  STRH            R0, [SP,#0x274+var_246]
0000c420  LDRH            R0, [R4]
0000c424  ADD             R11, R5, #0x100
0000c428  LDR             R7, =(aT00001Hfffff7S_0 - 0xC448); "$T00001$Hfffff7$S000000%s"
0000c42c  STRH            R0, [SP,#0x274+var_244]
0000c430  LDRH            R0, [R4,#2]
0000c434  MOV             R10, #4
0000c438  STRH            R0, [SP,#0x274+var_242]
0000c43c  LDRSH           R0, [R11,#0x4A]
0000c440  ADD             R7, PC, R7; "$T00001$Hfffff7$S000000%s"
0000c444  CMP             R0, #1
0000c448  BEQ             loc_CCA8
0000c44c  LDR             R3, =0x2124
0000c450  CMP             R0, #4
0000c454  BEQ             loc_C5B0
0000c458  CMP             R0, #5
0000c45c  BEQ             loc_C994
0000c460  CMP             R0, #6
0000c464  BNE             loc_C988
0000c468  LDRSH           R0, [R4,#2]
0000c46c  MOV             R2, R3
0000c470  MOV             R1, #0
0000c474  STMEA           SP, {R0-R3}
0000c478  LDRSH           R3, [R4]
0000c47c  MOV             R2, #0
0000c480  MOV             R0, R4
0000c484  BL              sub_10C58
0000c488  LDRH            R0, [R4]
0000c48c  LDR             R1, [R5,#0x114]
0000c490  MOV             R2, #8
0000c494  MOV             R0, R0,LSR#1
0000c498  STRH            R0, [R1,#0xE]
0000c49c  LDR             R1, [R5,#0x114]
0000c4a0  MOV             R0, #0
0000c4a4  STRH            R0, [R1,#0x10]
0000c4a8  LDR             R0, [R5,#0x114]
0000c4ac  MOV             R1, #0
0000c4b0  BL              sub_103F4
0000c4b4  LDR             R1, [R5,#0x114]
0000c4b8  MOV             R0, #6
0000c4bc  STRH            R0, [R1,#8]
0000c4c0  LDR             R0, [R5,#0x114]
0000c4c4  BL              sub_21BA8
0000c4c8  MOV             R2, R9
0000c4cc  MOV             R1, R4
0000c4d0  LDR             R0, [R5,#0x114]
0000c4d4  BL              sub_1CE08
0000c4d8  MOV             R3, R8
0000c4dc  MOV             R2, R9
0000c4e0  MOV             R1, R4
0000c4e4  LDR             R0, [R5,#0x11C]
0000c4e8  BL              sub_F7D0
0000c4ec  LDR             R1, [R5,#0x114]
0000c4f0  MOV             R0, #2
0000c4f4  STRH            R0, [R1,#8]
0000c4f8  LDRH            R0, [R4,#2]
0000c4fc  LDR             R1, [R5,#0x114]
0000c500  STRH            R0, [R1,#0x10]
0000c504  LDR             R0, [R5,#0x114]
0000c508  BL              sub_21BA8
0000c50c  MOV             R2, R9
0000c510  MOV             R1, R4
0000c514  LDR             R0, [R5,#0x114]
0000c518  BL              sub_1CE08
0000c51c  LDR             R0, [R5,#0x11C]
0000c520  ADD             R0, R0, #0x100
0000c524  LDRH            R1, [R0,#0x26]
0000c528  LDRH            R2, [R0,#0x2A]
0000c52c  LDRH            R0, [R0,#0x28]
0000c530  ADD             R1, R1, R2
0000c534  CMP             R1, R0
0000c538  LDRCC           R1, [R5,#0x144]
0000c53c  LDRH            R0, [R4,#2]
0000c540  MOVCC           R1, R1,LSL#30
0000c544  ADDCC           R0, R0, R1,LSR#31
0000c548  LDR             R1, [R5,#0x114]
0000c54c  SUB             R0, R0, #8
0000c550  STRH            R0, [R1,#0x10]
0000c554  LDR             R1, [R5,#0x114]
0000c558  MOV             R0, #8
0000c55c  STRH            R0, [R1,#8]
0000c560  LDR             R0, [R5,#0x114]
0000c564  BL              sub_21BA8
0000c568  MOV             R2, R9
0000c56c  MOV             R1, R4
0000c570  LDR             R0, [R5,#0x114]
0000c574  BL              sub_1CE08
0000c578  LDR             R0, [R5,#0x11C]
0000c57c  ADD             R0, R0, #0x100
0000c580  LDRH            R1, [R0,#0x26]
0000c584  MOV             R0, #0x39 ; '9'
0000c588  CMP             R1, #0
0000c58c  LDRNE           R1, [R5,#0x144]
0000c590  MOVNE           R1, R1,LSL#30
0000c594  ADDNE           R0, R0, R1,LSR#31
0000c598  LDR             R1, [R5,#0x114]
0000c59c  STRH            R0, [R1,#0x10]
0000c5a0  LDR             R1, [R5,#0x114]
0000c5a4  MOV             R0, #7
0000c5a8  STRH            R0, [R1,#8]
0000c5ac  B               loc_D16C
0000c5b0  LDRSH           R0, [R4,#2]
0000c5b4  LDR             R2, =0x2124
0000c5b8  MOV             R1, #0
0000c5bc  STMEA           SP, {R0-R3}
0000c5c0  LDRSH           R3, [R4]
0000c5c4  MOV             R2, #0
0000c5c8  MOV             R0, R4
0000c5cc  BL              sub_10C58
0000c5d0  LDRH            R0, [R4]
0000c5d4  LDR             R1, [R5,#0x114]
0000c5d8  MOV             R2, #8
0000c5dc  MOV             R0, R0,LSR#1
0000c5e0  STRH            R0, [R1,#0xE]
0000c5e4  LDR             R0, [R5,#0x114]
0000c5e8  MOV             R1, #0
0000c5ec  STRH            R1, [R0,#0x10]
0000c5f0  LDR             R0, [R5,#0x114]
0000c5f4  BL              sub_103F4
0000c5f8  LDR             R1, [R5,#0x114]
0000c5fc  MOV             R0, #9
0000c600  STRH            R0, [R1,#8]
0000c604  LDR             R0, [R5,#0x114]
0000c608  BL              sub_21BA8
0000c60c  MOV             R2, R9
0000c610  MOV             R1, R4
0000c614  LDR             R0, [R5,#0x114]
0000c618  BL              sub_1CE08
0000c61c  LDR             R1, [R5,#0x114]
0000c620  MOV             R0, #2
0000c624  STRH            R0, [R1,#8]
0000c628  LDRH            R0, [R4,#2]
0000c62c  LDR             R1, [R5,#0x114]
0000c630  STRH            R0, [R1,#0x10]
0000c634  LDR             R0, [R5,#0x114]
0000c638  BL              sub_21BA8
0000c63c  MOV             R2, R9
0000c640  MOV             R1, R4
0000c644  LDR             R0, [R5,#0x114]
0000c648  BL              sub_1CE08
0000c64c  MOV             R12, #0x19
0000c650  MOV             R2, #0x30 ; '0'
0000c654  ADD             R0, SP, #0x274+var_250
0000c658  STM             R0, {R2,R12}
0000c65c  MOV             R7, #0
0000c660  LDR             R0, =(start - 0xC66C)
0000c664  ADD             R0, PC, R0; start
0000c668  LDR             R0, [R0,#(dword_8 - 0xC)]
0000c66c  ADR             LR, loc_C678
0000c670  LDR             R0, [R0,#0xC0]
0000c674  BX              R0
0000c678  LDR             R0, [R0,#0x760]
0000c67c  ADD             R0, R0, #0x100
0000c680  LDRSH           R0, [R0,#0x84]
0000c684  LDR             R1, =(dword_2779C - 0xC690)
0000c688  ADD             R1, PC, R1; dword_2779C
0000c68c  ADD             R0, R1, R0,LSL#1
0000c690  LDRH            R0, [R0]
0000c694  CMP             R0, R7
0000c698  BNE             loc_C6A8
0000c69c  LDR             R0, [R5,#0x140]
0000c6a0  MOVS            R0, R0,LSL#30
0000c6a4  BPL             loc_C720
0000c6a8  LDR             R0, =(dword_27788 - 0xC6B8)
0000c6ac  MOV             R3, #0
0000c6b0  ADD             R0, PC, R0; dword_27788
0000c6b4  ADD             R0, R0, R7,LSL#1
0000c6b8  LDRH            R2, [R0]
0000c6bc  LDR             R0, =(dword_27738 - 0xC6CC)
0000c6c0  MOV             R1, #0
0000c6c4  ADD             R0, PC, R0; dword_27738
0000c6c8  ADD             R12, R0, R7,LSL#3
0000c6cc  LDRH            R0, [R12,#6]
0000c6d0  LDRH            LR, [R12,#2]
0000c6d4  SUB             R0, R0, LR
0000c6d8  MOV             R0, R0,LSL#16
0000c6dc  MOV             R0, R0,ASR#16
0000c6e0  STMEA           SP, {R0-R3}
0000c6e4  LDRH            R1, [R12,#4]
0000c6e8  LDRH            R0, [R12]
0000c6ec  LDR             R2, [SP,#0x274+var_250]
0000c6f0  LDR             R12, [SP,#0x274+var_24C]
0000c6f4  SUB             R1, R1, R0
0000c6f8  MOV             R3, R1,LSL#16
0000c6fc  ADD             R1, LR, R2
0000c700  MOV             R2, R1,LSL#16
0000c704  ADD             R0, R0, R12
0000c708  MOV             R1, R0,LSL#16
0000c70c  MOV             R1, R1,ASR#16
0000c710  MOV             R0, R4
0000c714  MOV             R2, R2,ASR#16
0000c718  MOV             R3, R3,ASR#16
0000c71c  BL              sub_10C58
0000c720  LDR             R0, =(dword_27738 - 0xC730)
0000c724  LDR             R3, =0xFFFF
0000c728  ADD             R0, PC, R0; dword_27738
0000c72c  ADD             R10, R0, R7,LSL#3
0000c730  LDRH            R1, [R10,#6]
0000c734  LDRH            R0, [R10,#2]
0000c738  SUB             R1, R1, R0
0000c73c  ADD             R1, R1, #1
0000c740  MOV             R2, R1,LSL#16
0000c744  MOV             R2, R2,ASR#16
0000c748  STMEA           SP, {R2,R3}
0000c74c  LDRH            R2, [R10,#4]
0000c750  LDRH            R1, [R10]
0000c754  LDR             R12, [SP,#0x274+var_24C]
0000c758  SUB             R2, R2, R1
0000c75c  ADD             R2, R2, #1
0000c760  MOV             R3, R2,LSL#16
0000c764  LDR             R2, [SP,#0x274+var_250]
0000c768  MOV             R3, R3,ASR#16
0000c76c  ADD             R0, R0, R2
0000c770  MOV             R2, R0,LSL#16
0000c774  ADD             R0, R1, R12
0000c778  MOV             R1, R0,LSL#16
0000c77c  MOV             R1, R1,ASR#16
0000c780  MOV             R0, R4
0000c784  MOV             R2, R2,ASR#16
0000c788  BL              sub_B5F8
0000c78c  MOV             R3, #0xC0
0000c790  ADD             R2, SP, #0x274+var_C0
0000c794  ADD             R1, R7, #0xFA0
0000c798  MOV             R0, R8
0000c79c  BL              sub_19618
0000c7a0  LDRH            R0, [R10]
0000c7a4  LDR             R12, [SP,#0x274+var_24C]
0000c7a8  MOV             R3, #0
0000c7ac  ADD             R0, R0, R12
0000c7b0  ADD             R0, R0, #2
0000c7b4  MOV             R0, R0,LSL#16
0000c7b8  MOV             R0, R0,ASR#16
0000c7bc  ADD             R12, SP, #0x274+var_264
0000c7c0  MOV             R2, #0xFFFFFFFF
0000c7c4  MOV             R1, #0
0000c7c8  STM             R12, {R0-R3}
0000c7cc  ADD             R0, SP, #0x274+var_C0
0000c7d0  MOV             R2, R2,LSR#16
0000c7d4  MOV             R3, #0
0000c7d8  MOV             R1, #0
0000c7dc  STMEA           SP, {R0-R3}
0000c7e0  LDRH            R0, [R10,#2]
0000c7e4  LDR             R2, [SP,#0x274+var_250]
0000c7e8  ADD             R3, SP, #0x274+var_248
0000c7ec  ADD             R0, R0, R2
0000c7f0  ADD             R0, R0, #2
0000c7f4  MOV             R2, R0,LSL#16
0000c7f8  MOV             R2, R2,ASR#16
0000c7fc  MOV             R0, R6
0000c800  MOV             R1, R4
0000c804  BL              sub_98BC
0000c808  ADD             R0, R7, #1
0000c80c  MOV             R7, R0,LSL#16
0000c810  MOV             R7, R7,ASR#16
0000c814  CMP             R7, #0xA
0000c818  BLT             loc_C660
0000c81c  LDR             R7, =(start - 0xC828)
0000c820  ADD             R7, PC, R7; start
0000c824  LDR             R0, [R7,#(dword_8 - 0xC)]
0000c828  ADR             LR, loc_C834
0000c82c  LDR             R0, [R0,#0xC0]
0000c830  BX              R0
0000c834  LDR             R0, [R0,#0x760]
0000c838  MOV             R3, #0xC0
0000c83c  ADD             R0, R0, #0x100
0000c840  LDRSH           R0, [R0,#0x84]
0000c844  ADD             R2, SP, #0x274+var_C0
0000c848  ADD             R1, R0, #0x800
0000c84c  ADD             R1, R1, #0x3B8
0000c850  MOV             R0, R8
0000c854  BL              sub_19618
0000c858  MOV             R3, #0xC0
0000c85c  ADD             R2, SP, #0x274+var_180
0000c860  LDR             R1, =0xBB7
0000c864  MOV             R0, R8
0000c868  BL              sub_19618
0000c86c  MOV             R0, #0
0000c870  STRH            R0, [SP,#0x274+var_240]
0000c874  LDR             R0, [R7,#(dword_8 - 0xC)]
0000c878  ADD             R3, SP, #0x274+var_C0
0000c87c  LDR             R12, [R0,#0x3C]
0000c880  ADD             R0, SP, #0x274+var_240
0000c884  ADD             R2, SP, #0x274+var_180
0000c888  MOV             R1, #0xC0
0000c88c  MOV             LR, PC
0000c890  BX              R12
0000c894  MOV             R3, #0
0000c898  MOV             R2, #0
0000c89c  MOV             R1, #0
0000c8a0  MOV             R0, #0x19
0000c8a4  ADD             R10, SP, #0x274+var_264
0000c8a8  STM             R10, {R0-R3}
0000c8ac  LDR             R2, =0x17DF
0000c8b0  ADD             R0, SP, #0x274+var_240
0000c8b4  STMEA           SP, {R0-R3}
0000c8b8  ADD             R3, SP, #0x274+var_248
0000c8bc  MOV             R2, #0x7A ; 'z'
0000c8c0  MOV             R1, R4
0000c8c4  MOV             R0, R6
0000c8c8  BL              sub_98BC
0000c8cc  MOV             R0, #0xC
0000c8d0  STRH            R0, [SP,#0x274+var_248]
0000c8d4  MOV             R0, #0x96
0000c8d8  STRH            R0, [SP,#0x274+var_246]
0000c8dc  MOV             R0, #0x98
0000c8e0  STRH            R0, [SP,#0x274+var_244]
0000c8e4  MOV             R0, #0xD
0000c8e8  B               loc_C8F4
0000c8ec  LDRH            R0, [SP,#0x274+var_242]
0000c8f0  ADD             R0, R0, #0xD
0000c8f4  STRH            R0, [SP,#0x274+var_242]
0000c8f8  LDRSH           R0, [SP,#0x274+var_246]
0000c8fc  LDRSH           R1, [SP,#0x274+var_242]
0000c900  ADD             R0, R0, R1
0000c904  LDRH            R1, [R11,#0x3C]
0000c908  SUB             R1, R1, #0x25 ; '%'
0000c90c  CMP             R0, R1
0000c910  BLE             loc_C8EC
0000c914  LDR             R0, [R5,#0x110]
0000c918  LDR             R1, =(dword_27670 - 0xC928)
0000c91c  LDRB            R0, [R0,#0x29]
0000c920  ADD             R1, PC, R1; dword_27670
0000c924  MOV             R3, #0xC0
0000c928  ADD             R0, R1, R0,LSL#1
0000c92c  LDRSH           R1, [R0]
0000c930  MOV             R0, R8
0000c934  ADD             R2, SP, #0x274+var_C0
0000c938  BL              sub_19618
0000c93c  LDR             R0, [R7,#(dword_8 - 0xC)]
0000c940  LDR             R2, =(aT00001H00ff00S_3 - 0xC950); "$T00001$H00ff00$S000000%s"
0000c944  ADD             R3, SP, #0x274+var_C0
0000c948  ADD             R2, PC, R2; "$T00001$H00ff00$S000000%s"
0000c94c  LDR             R12, [R0,#0x3C]
0000c950  ADD             R0, SP, #0x274+var_180
0000c954  MOV             R1, #0xC0
0000c958  MOV             LR, PC
0000c95c  BX              R12
0000c960  MOV             R3, #1
0000c964  STR             R3, [SP,#0x274+var_26C]
0000c968  ADD             R1, SP, #0x274+var_248
0000c96c  LDM             R1, {R0,R1}
0000c970  STMEA           SP, {R0,R1}
0000c974  MOV             R1, R4
0000c978  MOV             R0, R5
0000c97c  ADD             R3, SP, #0x274+var_180
0000c980  MOV             R2, R9
0000c984  BL              sub_7C60
0000c988  ADD             SP, SP, #0x274
0000c98c  POP             {R4-R11,LR}
0000c990  BX              LR
0000c994  LDRSH           R0, [R4,#2]
0000c998  LDR             R2, =0x2124
0000c99c  MOV             R1, #0
0000c9a0  STMEA           SP, {R0-R3}
0000c9a4  LDRSH           R3, [R4]
0000c9a8  MOV             R2, #0
0000c9ac  MOV             R0, R4
0000c9b0  BL              sub_10C58
0000c9b4  LDRH            R0, [R4]
0000c9b8  LDR             R1, [R5,#0x114]
0000c9bc  MOV             R2, #8
0000c9c0  MOV             R0, R0,LSR#1
0000c9c4  STRH            R0, [R1,#0xE]
0000c9c8  LDR             R1, [R5,#0x114]
0000c9cc  MOV             R0, #0
0000c9d0  STRH            R0, [R1,#0x10]
0000c9d4  LDR             R0, [R5,#0x114]
0000c9d8  MOV             R1, #0
0000c9dc  BL              sub_103F4
0000c9e0  LDR             R1, [R5,#0x114]
0000c9e4  MOV             R0, #5
0000c9e8  STRH            R0, [R1,#8]
0000c9ec  LDR             R0, [R5,#0x114]
0000c9f0  BL              sub_21BA8
0000c9f4  MOV             R2, R9
0000c9f8  MOV             R1, R4
0000c9fc  LDR             R0, [R5,#0x114]
0000ca00  BL              sub_1CE08
0000ca04  LDR             R1, [R5,#0x114]
0000ca08  MOV             R0, #2
0000ca0c  STRH            R0, [R1,#8]
0000ca10  LDRH            R0, [R4,#2]
0000ca14  LDR             R1, [R5,#0x114]
0000ca18  STRH            R0, [R1,#0x10]
0000ca1c  LDR             R0, [R5,#0x114]
0000ca20  BL              sub_21BA8
0000ca24  MOV             R2, R9
0000ca28  MOV             R1, R4
0000ca2c  LDR             R0, [R5,#0x114]
0000ca30  BL              sub_1CE08
0000ca34  LDRH            R0, [R4]
0000ca38  LDR             R1, [R5,#0x114]
0000ca3c  MOV             R0, R0,LSR#1
0000ca40  STRH            R0, [R1,#0xE]
0000ca44  LDRH            R0, [R4,#2]
0000ca48  LDR             R1, [R5,#0x114]
0000ca4c  MOV             R0, R0,LSR#1
0000ca50  STRH            R0, [R1,#0x10]
0000ca54  LDR             R0, [R5,#0x114]
0000ca58  STRH            R10, [R0,#8]
0000ca5c  LDR             R0, [R5,#0x114]
0000ca60  BL              sub_21BA8
0000ca64  MOV             R2, R9
0000ca68  MOV             R1, R4
0000ca6c  LDR             R0, [R5,#0x114]
0000ca70  BL              sub_1CE08
0000ca74  MOV             R3, #0x50 ; 'P'
0000ca78  ADD             R2, SP, #0x274+var_C0
0000ca7c  LDR             R1, =0x2331
0000ca80  MOV             R0, R8
0000ca84  BL              sub_19618
0000ca88  MOV             R2, #1
0000ca8c  ADD             R1, SP, #0x274+var_C0
0000ca90  MOV             R0, R6
0000ca94  BL              sub_12BC8
0000ca98  LDRH            R1, [R4]
0000ca9c  LDR             R5, =(start - 0xCAD4)
0000caa0  SUB             R0, R1, R0
0000caa4  ADD             R0, R0, R0,LSR#31
0000caa8  MOV             R0, R0,ASR#1
0000caac  MOV             R0, R0,LSL#16
0000cab0  MOV             R0, R0,ASR#16
0000cab4  STR             R0, [SP,#0x274+var_24C]
0000cab8  LDRH            R0, [R4,#2]
0000cabc  MOV             R1, #0xFFFFFFF4
0000cac0  ADD             R0, R1, R0,LSR#1
0000cac4  MOV             R10, R0,LSL#16
0000cac8  MOV             R10, R10,ASR#16
0000cacc  ADD             R5, PC, R5; start
0000cad0  LDR             R0, [R5,#(dword_8 - 0xC)]
0000cad4  LDR             R9, =(aT00001Hff8040S_0 - 0xCAE4); "$T00001$Hff8040$S000000%s"
0000cad8  LDR             R12, [R0,#0x3C]
0000cadc  ADD             R9, PC, R9; "$T00001$Hff8040$S000000%s"
0000cae0  MOV             R2, R9
0000cae4  ADD             R0, SP, #0x274+var_180
0000cae8  ADD             R3, SP, #0x274+var_C0
0000caec  MOV             R1, #0xC0
0000caf0  MOV             LR, PC
0000caf4  BX              R12
0000caf8  LDR             R0, [SP,#0x274+var_24C]
0000cafc  MOV             R3, #0
0000cb00  MOV             R2, #2
0000cb04  MOV             R1, #0
0000cb08  ADD             R12, SP, #0x274+var_264
0000cb0c  STM             R12, {R0-R3}
0000cb10  MOV             R2, #0
0000cb14  ADD             R0, SP, #0x274+var_180
0000cb18  STMEA           SP, {R0-R3}
0000cb1c  ADD             R3, SP, #0x274+var_248
0000cb20  MOV             R2, R10
0000cb24  MOV             R1, R4
0000cb28  MOV             R0, R6
0000cb2c  BL              sub_98BC
0000cb30  MOV             R3, #0x50 ; 'P'
0000cb34  ADD             R2, SP, #0x274+var_C0
0000cb38  LDR             R1, =0x262A
0000cb3c  MOV             R0, R8
0000cb40  BL              sub_19618
0000cb44  LDRH            R0, [R4]
0000cb48  MOV             R1, #0xFFFFFFDD
0000cb4c  ADD             R3, SP, #0x274+var_C0
0000cb50  ADD             R0, R1, R0,LSR#1
0000cb54  MOV             R0, R0,LSL#16
0000cb58  MOV             R0, R0,ASR#16
0000cb5c  STR             R0, [SP,#0x274+var_24C]
0000cb60  LDRH            R0, [R4,#2]
0000cb64  MOV             R1, #0xA
0000cb68  ADD             R0, R1, R0,LSR#1
0000cb6c  MOV             R10, R0,LSL#16
0000cb70  LDRH            R0, [R11,#0x4E]
0000cb74  MOV             R10, R10,ASR#16
0000cb78  CMP             R0, #0
0000cb7c  LDR             R0, [R5,#(dword_8 - 0xC)]
0000cb80  LDR             R12, [R0,#0x3C]
0000cb84  BNE             loc_CBA0
0000cb88  MOV             R2, R9
0000cb8c  MOV             R1, #0xC0
0000cb90  ADD             R0, SP, #0x274+var_180
0000cb94  MOV             LR, PC
0000cb98  BX              R12
0000cb9c  B               loc_CBB4
0000cba0  MOV             R2, R7
0000cba4  MOV             R1, #0xC0
0000cba8  ADD             R0, SP, #0x274+var_180
0000cbac  MOV             LR, PC
0000cbb0  BX              R12
0000cbb4  LDR             R0, [SP,#0x274+var_24C]
0000cbb8  MOV             R3, #0
0000cbbc  MOV             R2, #2
0000cbc0  MOV             R1, #0
0000cbc4  ADD             R12, SP, #0x274+var_264
0000cbc8  STM             R12, {R0-R3}
0000cbcc  MOV             R2, #0
0000cbd0  ADD             R0, SP, #0x274+var_180
0000cbd4  STMEA           SP, {R0-R3}
0000cbd8  ADD             R3, SP, #0x274+var_248
0000cbdc  MOV             R2, R10
0000cbe0  MOV             R1, R4
0000cbe4  MOV             R0, R6
0000cbe8  BL              sub_98BC
0000cbec  MOV             R3, #0x50 ; 'P'
0000cbf0  ADD             R2, SP, #0x274+var_C0
0000cbf4  LDR             R1, =0x262B
0000cbf8  MOV             R0, R8
0000cbfc  BL              sub_19618
0000cc00  LDRH            R0, [R4]
0000cc04  MOV             R1, #0x17
0000cc08  ADD             R3, SP, #0x274+var_C0
0000cc0c  ADD             R0, R1, R0,LSR#1
0000cc10  MOV             R8, R0,LSL#16
0000cc14  LDRH            R0, [R4,#2]
0000cc18  MOV             R1, #0xA
0000cc1c  MOV             R8, R8,ASR#16
0000cc20  ADD             R0, R1, R0,LSR#1
0000cc24  MOV             R10, R0,LSL#16
0000cc28  LDRH            R0, [R11,#0x4E]
0000cc2c  MOV             R10, R10,ASR#16
0000cc30  CMP             R0, #1
0000cc34  LDR             R0, [R5,#(dword_8 - 0xC)]
0000cc38  LDR             R12, [R0,#0x3C]
0000cc3c  BNE             loc_CC58
0000cc40  MOV             R2, R9
0000cc44  MOV             R1, #0xC0
0000cc48  ADD             R0, SP, #0x274+var_180
0000cc4c  MOV             LR, PC
0000cc50  BX              R12
0000cc54  B               loc_CC6C
0000cc58  MOV             R2, R7
0000cc5c  MOV             R1, #0xC0
0000cc60  ADD             R0, SP, #0x274+var_180
0000cc64  MOV             LR, PC
0000cc68  BX              R12
0000cc6c  MOV             R3, #0
0000cc70  MOV             R2, #2
0000cc74  MOV             R1, #0
0000cc78  ADD             R0, SP, #0x274+var_260
0000cc7c  STM             R0, {R1-R3}
0000cc80  STR             R8, [SP,#0x274+var_264]
0000cc84  MOV             R2, #0
0000cc88  ADD             R0, SP, #0x274+var_180
0000cc8c  STMEA           SP, {R0-R3}
0000cc90  ADD             R3, SP, #0x274+var_248
0000cc94  MOV             R2, R10
0000cc98  MOV             R1, R4
0000cc9c  MOV             R0, R6
0000cca0  BL              sub_98BC
0000cca4  B               loc_C988
0000cca8  LDRH            R0, [R4]
0000ccac  LDR             R1, [R5,#0x114]
0000ccb0  MOV             R2, #8
0000ccb4  MOV             R0, R0,LSR#1
0000ccb8  STRH            R0, [R1,#0xE]
0000ccbc  LDRH            R0, [R4,#2]
0000ccc0  LDR             R1, [R5,#0x114]
0000ccc4  MOV             R0, R0,LSR#1
0000ccc8  STRH            R0, [R1,#0x10]
0000cccc  LDR             R0, [R5,#0x114]
0000ccd0  MOV             R1, #0
0000ccd4  BL              sub_103F4
0000ccd8  LDRSH           R0, [R11,#0x4C]
0000ccdc  CMP             R0, #0
0000cce0  LDRLE           R1, [R5,#0x114]
0000cce4  MOVLE           R0, #3
0000cce8  STRHLE          R0, [R1,#8]
0000ccec  LDRGT           R0, [R5,#0x114]
0000ccf0  STRHGT          R10, [R0,#8]
0000ccf4  LDR             R0, [R5,#0x114]
0000ccf8  BL              sub_21BA8
0000ccfc  MOV             R2, R9
0000cd00  MOV             R1, R4
0000cd04  LDR             R0, [R5,#0x114]
0000cd08  BL              sub_1CE08
0000cd0c  LDRSH           R0, [R11,#0x4C]
0000cd10  MOV             R3, #0x50 ; 'P'
0000cd14  ADD             R2, SP, #0x274+var_C0
0000cd18  CMP             R0, #0
0000cd1c  BLE             loc_CFF4
0000cd20  LDR             R1, =0x23F0
0000cd24  MOV             R0, R8
0000cd28  BL              sub_19618
0000cd2c  MOV             R2, #1
0000cd30  ADD             R1, SP, #0x274+var_C0
0000cd34  MOV             R0, R6
0000cd38  BL              sub_12BC8
0000cd3c  LDRH            R1, [R4]
0000cd40  LDR             R10, =(start - 0xCD78)
0000cd44  SUB             R0, R1, R0
0000cd48  ADD             R0, R0, R0,LSR#31
0000cd4c  MOV             R0, R0,ASR#1
0000cd50  MOV             R0, R0,LSL#16
0000cd54  MOV             R0, R0,ASR#16
0000cd58  STR             R0, [SP,#0x274+var_24C]
0000cd5c  LDRH            R0, [R4,#2]
0000cd60  MOV             R1, #0xFFFFFFE7
0000cd64  ADD             R0, R1, R0,LSR#1
0000cd68  MOV             R0, R0,LSL#16
0000cd6c  MOV             R0, R0,ASR#16
0000cd70  ADD             R10, PC, R10; start
0000cd74  STR             R0, [SP,#0x274+var_250]
0000cd78  LDR             R0, [R10,#(dword_8 - 0xC)]
0000cd7c  LDR             R2, =(aT00001Hff8040S_0 - 0xCD8C); "$T00001$Hff8040$S000000%s"
0000cd80  ADD             R3, SP, #0x274+var_C0
0000cd84  ADD             R2, PC, R2; "$T00001$Hff8040$S000000%s"
0000cd88  LDR             R12, [R0,#0x3C]
0000cd8c  ADD             R0, SP, #0x274+var_180
0000cd90  MOV             R1, #0xC0
0000cd94  MOV             LR, PC
0000cd98  BX              R12
0000cd9c  LDR             R0, [SP,#0x274+var_24C]
0000cda0  MOV             R3, #0
0000cda4  MOV             R2, #2
0000cda8  MOV             R1, #0
0000cdac  ADD             R12, SP, #0x274+var_264
0000cdb0  STM             R12, {R0-R3}
0000cdb4  ADD             R0, SP, #0x274+var_180
0000cdb8  MOV             R2, #0
0000cdbc  STMEA           SP, {R0-R3}
0000cdc0  LDR             R2, [SP,#0x274+var_250]
0000cdc4  ADD             R3, SP, #0x274+var_248
0000cdc8  MOV             R1, R4
0000cdcc  MOV             R0, R6
0000cdd0  BL              sub_98BC
0000cdd4  MOV             R3, #0x50 ; 'P'
0000cdd8  ADD             R2, SP, #0x274+var_C0
0000cddc  LDR             R1, =0x23F1
0000cde0  MOV             R0, R8
0000cde4  BL              sub_19618
0000cde8  MOV             R2, #1
0000cdec  ADD             R1, SP, #0x274+var_C0
0000cdf0  MOV             R0, R6
0000cdf4  BL              sub_12BC8
0000cdf8  LDRH            R1, [R4]
0000cdfc  LDR             R2, =(aT00001H00ff00S_4 - 0xCE4C); "$T00001$H00ff00$S000000%s$T00100$Hffff8"...
0000ce00  SUB             R0, R1, R0
0000ce04  ADD             R0, R0, R0,LSR#31
0000ce08  MOV             R0, R0,ASR#1
0000ce0c  SUB             R0, R0, #0xA
0000ce10  MOV             R0, R0,LSL#16
0000ce14  MOV             R0, R0,ASR#16
0000ce18  STR             R0, [SP,#0x274+var_24C]
0000ce1c  LDRH            R0, [R4,#2]
0000ce20  MOV             R1, #0xFFFFFFF8
0000ce24  ADD             R0, R1, R0,LSR#1
0000ce28  MOV             R0, R0,LSL#16
0000ce2c  MOV             R0, R0,ASR#16
0000ce30  STR             R0, [SP,#0x274+var_250]
0000ce34  LDRSH           R3, [R11,#0x4C]
0000ce38  STR             R3, [SP,#0x274+var_274]
0000ce3c  LDR             R0, [R10,#(dword_8 - 0xC)]
0000ce40  ADD             R3, SP, #0x274+var_C0
0000ce44  ADD             R2, PC, R2; "$T00001$H00ff00$S000000%s$T00100$Hffff8"...
0000ce48  LDR             R12, [R0,#0x3C]
0000ce4c  ADD             R0, SP, #0x274+var_180
0000ce50  MOV             R1, #0xC0
0000ce54  MOV             LR, PC
0000ce58  BX              R12
0000ce5c  LDR             R0, [SP,#0x274+var_24C]
0000ce60  MOV             R3, #0
0000ce64  MOV             R2, #2
0000ce68  MOV             R1, #0
0000ce6c  ADD             R12, SP, #0x274+var_264
0000ce70  STM             R12, {R0-R3}
0000ce74  ADD             R0, SP, #0x274+var_180
0000ce78  MOV             R2, #0
0000ce7c  STMEA           SP, {R0-R3}
0000ce80  LDR             R2, [SP,#0x274+var_250]
0000ce84  ADD             R3, SP, #0x274+var_248
0000ce88  MOV             R1, R4
0000ce8c  MOV             R0, R6
0000ce90  BL              sub_98BC
0000ce94  MOV             R3, #0x50 ; 'P'
0000ce98  ADD             R2, SP, #0x274+var_C0
0000ce9c  LDR             R1, =0x262A
0000cea0  MOV             R0, R8
0000cea4  BL              sub_19618
0000cea8  LDRH            R0, [R4]
0000ceac  MOV             R1, #0xFFFFFFDD
0000ceb0  ADD             R3, SP, #0x274+var_C0
0000ceb4  ADD             R0, R1, R0,LSR#1
0000ceb8  MOV             R0, R0,LSL#16
0000cebc  MOV             R0, R0,ASR#16
0000cec0  STR             R0, [SP,#0x274+var_24C]
0000cec4  LDRH            R0, [R4,#2]
0000cec8  MOV             R1, #0xA
0000cecc  ADD             R0, R1, R0,LSR#1
0000ced0  MOV             R0, R0,LSL#16
0000ced4  MOV             R0, R0,ASR#16
0000ced8  STR             R0, [SP,#0x274+var_250]
0000cedc  LDRH            R0, [R11,#0x4E]
0000cee0  CMP             R0, #0
0000cee4  LDR             R0, [R10,#(dword_8 - 0xC)]
0000cee8  LDR             R12, [R0,#0x3C]
0000ceec  BNE             loc_CF0C
0000cef0  LDR             R2, =(aT00001Hff8040S_0 - 0xCEFC); "$T00001$Hff8040$S000000%s"
0000cef4  ADD             R2, PC, R2; "$T00001$Hff8040$S000000%s"
0000cef8  MOV             R1, #0xC0
0000cefc  ADD             R0, SP, #0x274+var_180
0000cf00  MOV             LR, PC
0000cf04  BX              R12
0000cf08  B               loc_CF20
0000cf0c  MOV             R2, R7
0000cf10  MOV             R1, #0xC0
0000cf14  ADD             R0, SP, #0x274+var_180
0000cf18  MOV             LR, PC
0000cf1c  BX              R12
0000cf20  LDR             R0, [SP,#0x274+var_24C]
0000cf24  MOV             R3, #0
0000cf28  MOV             R2, #2
0000cf2c  MOV             R1, #0
0000cf30  ADD             R12, SP, #0x274+var_264
0000cf34  STM             R12, {R0-R3}
0000cf38  ADD             R0, SP, #0x274+var_180
0000cf3c  MOV             R2, #0
0000cf40  STMEA           SP, {R0-R3}
0000cf44  LDR             R2, [SP,#0x274+var_250]
0000cf48  ADD             R3, SP, #0x274+var_248
0000cf4c  MOV             R1, R4
0000cf50  MOV             R0, R6
0000cf54  BL              sub_98BC
0000cf58  MOV             R3, #0x50 ; 'P'
0000cf5c  ADD             R2, SP, #0x274+var_C0
0000cf60  LDR             R1, =0x262B
0000cf64  MOV             R0, R8
0000cf68  BL              sub_19618
0000cf6c  LDRH            R0, [R4]
0000cf70  MOV             R1, #0x17
0000cf74  ADD             R3, SP, #0x274+var_C0
0000cf78  ADD             R0, R1, R0,LSR#1
0000cf7c  MOV             R0, R0,LSL#16
0000cf80  MOV             R0, R0,ASR#16
0000cf84  STR             R0, [SP,#0x274+var_24C]
0000cf88  LDRH            R0, [R4,#2]
0000cf8c  MOV             R1, #0xA
0000cf90  ADD             R0, R1, R0,LSR#1
0000cf94  MOV             R8, R0,LSL#16
0000cf98  LDRH            R0, [R11,#0x4E]
0000cf9c  MOV             R8, R8,ASR#16
0000cfa0  CMP             R0, #1
0000cfa4  LDR             R0, [R10,#(dword_8 - 0xC)]
0000cfa8  LDR             R12, [R0,#0x3C]
0000cfac  BNE             loc_CFCC
0000cfb0  LDR             R2, =(aT00001Hff8040S_0 - 0xCFBC); "$T00001$Hff8040$S000000%s"
0000cfb4  ADD             R2, PC, R2; "$T00001$Hff8040$S000000%s"
0000cfb8  MOV             R1, #0xC0
0000cfbc  ADD             R0, SP, #0x274+var_180
0000cfc0  MOV             LR, PC
0000cfc4  BX              R12
0000cfc8  B               loc_CFE0
0000cfcc  MOV             R2, R7
0000cfd0  MOV             R1, #0xC0
0000cfd4  ADD             R0, SP, #0x274+var_180
0000cfd8  MOV             LR, PC
0000cfdc  BX              R12
0000cfe0  MOV             R3, #0
0000cfe4  MOV             R2, #2
0000cfe8  MOV             R1, #0
0000cfec  LDR             R0, [SP,#0x274+var_24C]
0000cff0  B               loc_D124
0000cff4  LDR             R1, =0x23F2
0000cff8  MOV             R0, R8
0000cffc  BL              sub_19618
0000d000  MOV             R2, #1
0000d004  ADD             R1, SP, #0x274+var_C0
0000d008  MOV             R0, R6
0000d00c  BL              sub_12BC8
0000d010  LDRH            R1, [R4]
0000d014  LDR             R11, =(start - 0xD048)
0000d018  SUB             R0, R1, R0
0000d01c  ADD             R0, R0, R0,LSR#31
0000d020  MOV             R0, R0,ASR#1
0000d024  MOV             R7, R0,LSL#16
0000d028  LDRH            R0, [R4,#2]
0000d02c  MOV             R1, #0xFFFFFFF1
0000d030  MOV             R7, R7,ASR#16
0000d034  ADD             R0, R1, R0,LSR#1
0000d038  MOV             R10, R0,LSL#16
0000d03c  MOV             R10, R10,ASR#16
0000d040  ADD             R11, PC, R11; start
0000d044  LDR             R0, [R11,#(dword_8 - 0xC)]
0000d048  LDR             R2, =(aT00001Hff8040S_0 - 0xD058); "$T00001$Hff8040$S000000%s"
0000d04c  ADD             R3, SP, #0x274+var_C0
0000d050  ADD             R2, PC, R2; "$T00001$Hff8040$S000000%s"
0000d054  LDR             R12, [R0,#0x3C]
0000d058  ADD             R0, SP, #0x274+var_180
0000d05c  MOV             R1, #0xC0
0000d060  MOV             LR, PC
0000d064  BX              R12
0000d068  MOV             R3, #0
0000d06c  MOV             R2, #2
0000d070  MOV             R1, #0
0000d074  ADD             R0, SP, #0x274+var_260
0000d078  STM             R0, {R1-R3}
0000d07c  STR             R7, [SP,#0x274+var_264]
0000d080  MOV             R2, #0
0000d084  ADD             R0, SP, #0x274+var_180
0000d088  STMEA           SP, {R0-R3}
0000d08c  ADD             R3, SP, #0x274+var_248
0000d090  MOV             R2, R10
0000d094  MOV             R1, R4
0000d098  MOV             R0, R6
0000d09c  BL              sub_98BC
0000d0a0  MOV             R3, #0x50 ; 'P'
0000d0a4  ADD             R2, SP, #0x274+var_C0
0000d0a8  LDR             R1, =0x138A
0000d0ac  MOV             R0, R8
0000d0b0  BL              sub_19618
0000d0b4  MOV             R2, #1
0000d0b8  ADD             R1, SP, #0x274+var_C0
0000d0bc  MOV             R0, R6
0000d0c0  BL              sub_12BC8
0000d0c4  LDRH            R1, [R4]
0000d0c8  LDR             R2, =(aT00001H00ff00S_3 - 0xD104); "$T00001$H00ff00$S000000%s"
0000d0cc  ADD             R3, SP, #0x274+var_C0
0000d0d0  SUB             R0, R1, R0
0000d0d4  ADD             R0, R0, R0,LSR#31
0000d0d8  MOV             R0, R0,ASR#1
0000d0dc  MOV             R7, R0,LSL#16
0000d0e0  LDRH            R0, [R4,#2]
0000d0e4  MOV             R1, #0xA
0000d0e8  MOV             R7, R7,ASR#16
0000d0ec  ADD             R0, R1, R0,LSR#1
0000d0f0  MOV             R8, R0,LSL#16
0000d0f4  LDR             R0, [R11,#(dword_8 - 0xC)]
0000d0f8  MOV             R8, R8,ASR#16
0000d0fc  ADD             R2, PC, R2; "$T00001$H00ff00$S000000%s"
0000d100  LDR             R12, [R0,#0x3C]
0000d104  ADD             R0, SP, #0x274+var_180
0000d108  MOV             R1, #0xC0
0000d10c  MOV             LR, PC
0000d110  BX              R12
0000d114  MOV             R3, #0
0000d118  MOV             R2, #2
0000d11c  MOV             R1, #0
0000d120  MOV             R0, R7
0000d124  ADD             R7, SP, #0x274+var_264
0000d128  STM             R7, {R0-R3}
0000d12c  MOV             R3, #0
0000d130  MOV             R2, #0
0000d134  MOV             R1, #0
0000d138  ADD             R0, SP, #0x274+var_180
0000d13c  STMEA           SP, {R0-R3}
0000d140  ADD             R3, SP, #0x274+var_248
0000d144  MOV             R2, R8
0000d148  MOV             R1, R4
0000d14c  MOV             R0, R6
0000d150  BL              sub_98BC
0000d154  LDR             R1, [R5,#0x114]
0000d158  MOV             R0, #2
0000d15c  STRH            R0, [R1,#8]
0000d160  LDRH            R0, [R4,#2]
0000d164  LDR             R1, [R5,#0x114]
0000d168  STRH            R0, [R1,#0x10]
0000d16c  LDR             R0, [R5,#0x114]
0000d170  BL              sub_21BA8
0000d174  MOV             R2, R9
0000d178  MOV             R1, R4
0000d17c  LDR             R0, [R5,#0x114]
0000d180  BL              sub_1CE08
0000d184  B               loc_C988
