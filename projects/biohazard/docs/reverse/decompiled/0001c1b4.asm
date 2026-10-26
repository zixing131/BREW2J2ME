0001c1b4  PUSH            {R4-R11,LR}
0001c1b8  LDR             R10, =(start - 0x1C1D4)
0001c1bc  SUB             SP, SP, #0xEC
0001c1c0  MOV             R9, R2
0001c1c4  MOV             R5, R0
0001c1c8  MOV             R4, R1
0001c1cc  ADD             R10, PC, R10; start
0001c1d0  LDR             R0, [R10,#(dword_8 - 0xC)]
0001c1d4  ADR             LR, loc_1C1E0
0001c1d8  LDR             R0, [R0,#0xC0]
0001c1dc  BX              R0
0001c1e0  LDR             R8, [R0,#0x28]
0001c1e4  MOV             R11, #2
0001c1e8  LDR             R6, [R8,#0x64]
0001c1ec  LDRSH           R0, [R5,#0x28]
0001c1f0  CMP             R0, #0
0001c1f4  BLE             loc_1C228
0001c1f8  ORR             R0, R11, R0,LSL#8
0001c1fc  MOV             R1, R0,LSL#16
0001c200  LDRSH           R0, [R4,#2]
0001c204  MOV             R1, R1,LSR#16
0001c208  MOV             R3, #0
0001c20c  LDRH            R2, [R5,#0x26]
0001c210  STMEA           SP, {R0-R3}
0001c214  LDRSH           R3, [R4]
0001c218  MOV             R2, #0
0001c21c  MOV             R1, #0
0001c220  MOV             R0, R4
0001c224  BL              sub_10C58
0001c228  LDRSB           R0, [R5,#5]
0001c22c  CMP             R0, #0x11
0001c230  BEQ             loc_1CA24
0001c234  BGT             loc_1C280
0001c238  MOV             R1, #1
0001c23c  CMP             R0, #1
0001c240  BEQ             loc_1C574
0001c244  CMP             R0, #2
0001c248  BEQ             loc_1C594
0001c24c  CMP             R0, #4
0001c250  LDREQ           R0, [R5,#8]
0001c254  LDRBEQ          R1, [R0,#0x12C]
0001c258  CMPEQ           R1, #1
0001c25c  MOVEQ           R3, R8
0001c260  MOVEQ           R2, R9
0001c264  MOVEQ           R1, R4
0001c268  ADDEQ           SP, SP, #0xEC
0001c26c  POPEQ           {R4-R11,LR}
0001c270  BEQ             sub_F7D0
0001c274  ADD             SP, SP, #0xEC
0001c278  POP             {R4-R11,LR}
0001c27c  BX              LR
0001c280  CMP             R0, #0x12
0001c284  BEQ             loc_1C5E4
0001c288  CMP             R0, #0x15
0001c28c  BNE             loc_1C274
0001c290  LDRSH           R0, [R4,#2]
0001c294  MOV             R3, #0
0001c298  MOV             R2, #0
0001c29c  LDR             R1, =0x1002
0001c2a0  STMEA           SP, {R0-R3}
0001c2a4  LDRSH           R3, [R4]
0001c2a8  MOV             R1, #0
0001c2ac  MOV             R0, R4
0001c2b0  BL              sub_10C58
0001c2b4  LDR             R0, [R10,#(dword_8 - 0xC)]
0001c2b8  ADR             LR, loc_1C2C4
0001c2bc  LDR             R0, [R0,#0xC0]
0001c2c0  BX              R0
0001c2c4  LDR             R0, [R0,#0x760]
0001c2c8  MOV             R2, #8
0001c2cc  LDR             R7, [R0,#0x188]
0001c2d0  LDRH            R0, [R4]
0001c2d4  MOV             R1, #0
0001c2d8  MOV             R0, R0,LSR#1
0001c2dc  STRH            R0, [R7,#0xE]
0001c2e0  LDRH            R0, [R4,#2]
0001c2e4  MOV             R0, R0,LSR#1
0001c2e8  STRH            R0, [R7,#0x10]
0001c2ec  MOV             R0, R7
0001c2f0  BL              sub_103F4
0001c2f4  MOV             R0, #4
0001c2f8  STRH            R0, [R7,#8]
0001c2fc  MOV             R0, R7
0001c300  BL              sub_21BA8
0001c304  MOV             R2, R9
0001c308  MOV             R1, R4
0001c30c  MOV             R0, R7
0001c310  BL              sub_1CE08
0001c314  LDRH            R0, [R4,#2]
0001c318  STRH            R0, [R7,#0x10]
0001c31c  STRH            R11, [R7,#8]
0001c320  MOV             R0, R7
0001c324  BL              sub_21BA8
0001c328  MOV             R2, R9
0001c32c  MOV             R1, R4
0001c330  MOV             R0, R7
0001c334  BL              sub_1CE08
0001c338  MOV             R0, #0
0001c33c  STRH            R0, [SP,#0xEC+var_C8]
0001c340  STRH            R0, [SP,#0xEC+var_C6]
0001c344  LDRH            R0, [R4]
0001c348  MOV             R3, #0x40 ; '@'
0001c34c  ADD             R2, SP, #0xEC+var_40
0001c350  STRH            R0, [SP,#0xEC+var_C4]
0001c354  LDRH            R0, [R4,#2]
0001c358  LDR             R1, =0x1FA4
0001c35c  STRH            R0, [SP,#0xEC+var_C2]
0001c360  MOV             R0, R8
0001c364  BL              sub_19618
0001c368  MOV             R2, #2
0001c36c  ADD             R1, SP, #0xEC+var_40
0001c370  MOV             R0, R6
0001c374  BL              sub_12BC8
0001c378  LDRH            R1, [R4]
0001c37c  LDR             R11, =(aT00001Hff8040S_2 - 0x1C3B8); "$T00001$Hff8040$S000000%s"
0001c380  ADD             R3, SP, #0xEC+var_40
0001c384  SUB             R0, R1, R0
0001c388  ADD             R0, R0, R0,LSR#31
0001c38c  MOV             R0, R0,ASR#1
0001c390  MOV             R7, R0,LSL#16
0001c394  LDRH            R0, [R4,#2]
0001c398  MOV             R1, #0xFFFFFFF6
0001c39c  MOV             R7, R7,ASR#16
0001c3a0  ADD             R0, R1, R0,LSR#1
0001c3a4  MOV             R9, R0,LSL#16
0001c3a8  LDR             R0, [R10,#(dword_8 - 0xC)]
0001c3ac  MOV             R9, R9,ASR#16
0001c3b0  ADD             R11, PC, R11; "$T00001$Hff8040$S000000%s"
0001c3b4  LDR             R12, [R0,#0x3C]
0001c3b8  ADD             R0, SP, #0xEC+var_C0
0001c3bc  MOV             R2, R11
0001c3c0  MOV             R1, #0x80
0001c3c4  MOV             LR, PC
0001c3c8  BX              R12
0001c3cc  MOV             R3, #0
0001c3d0  MOV             R2, #2
0001c3d4  MOV             R1, #0
0001c3d8  ADD             R0, SP, #0xEC+var_D8
0001c3dc  STM             R0, {R1-R3}
0001c3e0  STR             R7, [SP,#0xEC+var_DC]
0001c3e4  MOV             R2, #0
0001c3e8  ADD             R0, SP, #0xEC+var_C0
0001c3ec  STMEA           SP, {R0-R3}
0001c3f0  ADD             R3, SP, #0xEC+var_C8
0001c3f4  MOV             R2, R9
0001c3f8  MOV             R1, R4
0001c3fc  MOV             R0, R6
0001c400  BL              sub_98BC
0001c404  MOV             R3, #0x50 ; 'P'
0001c408  ADD             R2, SP, #0xEC+var_40
0001c40c  LDR             R1, =0x262A
0001c410  MOV             R0, R8
0001c414  BL              sub_19618
0001c418  LDRH            R0, [R4]
0001c41c  MOV             R1, #0xFFFFFFDD
0001c420  ADD             R3, SP, #0xEC+var_40
0001c424  ADD             R0, R1, R0,LSR#1
0001c428  MOV             R7, R0,LSL#16
0001c42c  LDRH            R0, [R4,#2]
0001c430  MOV             R1, #0xA
0001c434  MOV             R7, R7,ASR#16
0001c438  ADD             R0, R1, R0,LSR#1
0001c43c  MOV             R9, R0,LSL#16
0001c440  LDRB            R0, [R5,#0x14]
0001c444  MOV             R9, R9,ASR#16
0001c448  CMP             R0, #0
0001c44c  LDR             R0, [R10,#(dword_8 - 0xC)]
0001c450  LDR             R12, [R0,#0x3C]
0001c454  BNE             loc_1C470
0001c458  MOV             R2, R11
0001c45c  MOV             R1, #0x80
0001c460  ADD             R0, SP, #0xEC+var_C0
0001c464  MOV             LR, PC
0001c468  BX              R12
0001c46c  B               loc_1C488
0001c470  LDR             R2, =(aT00001Hfffff7S_1 - 0x1C47C); "$T00001$Hfffff7$S000000%s"
0001c474  ADD             R2, PC, R2; "$T00001$Hfffff7$S000000%s"
0001c478  MOV             R1, #0x80
0001c47c  ADD             R0, SP, #0xEC+var_C0
0001c480  MOV             LR, PC
0001c484  BX              R12
0001c488  MOV             R3, #0
0001c48c  MOV             R2, #2
0001c490  MOV             R1, #0
0001c494  ADD             R0, SP, #0xEC+var_D8
0001c498  STM             R0, {R1-R3}
0001c49c  STR             R7, [SP,#0xEC+var_DC]
0001c4a0  MOV             R2, #0
0001c4a4  ADD             R0, SP, #0xEC+var_C0
0001c4a8  STMEA           SP, {R0-R3}
0001c4ac  ADD             R3, SP, #0xEC+var_C8
0001c4b0  MOV             R2, R9
0001c4b4  MOV             R1, R4
0001c4b8  MOV             R0, R6
0001c4bc  BL              sub_98BC
0001c4c0  MOV             R3, #0x50 ; 'P'
0001c4c4  ADD             R2, SP, #0xEC+var_40
0001c4c8  LDR             R1, =0x262B
0001c4cc  MOV             R0, R8
0001c4d0  BL              sub_19618
0001c4d4  LDRH            R0, [R4]
0001c4d8  MOV             R1, #0x17
0001c4dc  ADD             R3, SP, #0xEC+var_40
0001c4e0  ADD             R0, R1, R0,LSR#1
0001c4e4  MOV             R7, R0,LSL#16
0001c4e8  LDRH            R0, [R4,#2]
0001c4ec  MOV             R1, #0xA
0001c4f0  MOV             R7, R7,ASR#16
0001c4f4  ADD             R0, R1, R0,LSR#1
0001c4f8  MOV             R8, R0,LSL#16
0001c4fc  LDRB            R0, [R5,#0x14]
0001c500  MOV             R8, R8,ASR#16
0001c504  CMP             R0, #1
0001c508  LDR             R0, [R10,#(dword_8 - 0xC)]
0001c50c  LDR             R12, [R0,#0x3C]
0001c510  BNE             loc_1C52C
0001c514  MOV             R2, R11
0001c518  MOV             R1, #0x80
0001c51c  ADD             R0, SP, #0xEC+var_C0
0001c520  MOV             LR, PC
0001c524  BX              R12
0001c528  B               loc_1C544
0001c52c  LDR             R2, =(aT00001Hfffff7S_1 - 0x1C538); "$T00001$Hfffff7$S000000%s"
0001c530  ADD             R2, PC, R2; "$T00001$Hfffff7$S000000%s"
0001c534  MOV             R1, #0x80
0001c538  ADD             R0, SP, #0xEC+var_C0
0001c53c  MOV             LR, PC
0001c540  BX              R12
0001c544  MOV             R3, #0
0001c548  MOV             R2, #2
0001c54c  MOV             R1, #0
0001c550  ADD             R0, SP, #0xEC+var_D8
0001c554  STM             R0, {R1-R3}
0001c558  STR             R7, [SP,#0xEC+var_DC]
0001c55c  MOV             R2, #0
0001c560  ADD             R0, SP, #0xEC+var_C0
0001c564  STMEA           SP, {R0-R3}
0001c568  ADD             R3, SP, #0xEC+var_C8
0001c56c  MOV             R2, R8
0001c570  B               loc_1CA14
0001c574  LDRSH           R0, [R5,#0x2C]
0001c578  CMP             R0, #0
0001c57c  STRHLE          R1, [R5,#0x2C]
0001c580  LDRSH           R0, [R5,#0x2A]
0001c584  MOV             R1, R0,LSL#5
0001c588  LDRSH           R0, [R5,#0x2C]
0001c58c  BL              sub_104
0001c590  B               loc_1C5B4
0001c594  LDRSH           R0, [R5,#0x2C]
0001c598  CMP             R0, #0
0001c59c  STRHLE          R1, [R5,#0x2C]
0001c5a0  LDRSH           R0, [R5,#0x2A]
0001c5a4  MOV             R1, R0,LSL#5
0001c5a8  LDRSH           R0, [R5,#0x2C]
0001c5ac  BL              sub_104
0001c5b0  RSB             R0, R0, #0x20 ; ' '
0001c5b4  AND             R0, R0, #0xFF
0001c5b8  ORR             R1, R11, R0,LSL#8
0001c5bc  LDRSH           R0, [R4,#2]
0001c5c0  MOV             R3, #0
0001c5c4  LDRH            R2, [R5,#0x2E]
0001c5c8  STMEA           SP, {R0-R3}
0001c5cc  LDRSH           R3, [R4]
0001c5d0  MOV             R2, #0
0001c5d4  MOV             R1, #0
0001c5d8  MOV             R0, R4
0001c5dc  BL              sub_10C58
0001c5e0  B               loc_1C274
0001c5e4  LDRSH           R0, [R4,#2]
0001c5e8  MOV             R3, #0
0001c5ec  MOV             R2, #0
0001c5f0  LDR             R1, =0x1002
0001c5f4  STMEA           SP, {R0-R3}
0001c5f8  LDRSH           R3, [R4]
0001c5fc  MOV             R1, #0
0001c600  MOV             R0, R4
0001c604  BL              sub_10C58
0001c608  LDR             R0, [R10,#(dword_8 - 0xC)]
0001c60c  ADR             LR, loc_1C618
0001c610  LDR             R0, [R0,#0xC0]
0001c614  BX              R0
0001c618  LDR             R0, [R0,#0x760]
0001c61c  MOV             R2, #8
0001c620  LDR             R7, [R0,#0x188]
0001c624  LDRH            R0, [R4]
0001c628  MOV             R1, #0
0001c62c  MOV             R0, R0,LSR#1
0001c630  STRH            R0, [R7,#0xE]
0001c634  LDRH            R0, [R4,#2]
0001c638  MOV             R0, R0,LSR#1
0001c63c  STRH            R0, [R7,#0x10]
0001c640  MOV             R0, R7
0001c644  BL              sub_103F4
0001c648  LDRB            R0, [R5,#0x15]
0001c64c  CMP             R0, #0
0001c650  MOVNE           R0, #3
0001c654  MOVEQ           R0, #4
0001c658  STRH            R0, [R7,#8]
0001c65c  MOV             R0, R7
0001c660  BL              sub_21BA8
0001c664  MOV             R2, R9
0001c668  MOV             R1, R4
0001c66c  MOV             R0, R7
0001c670  BL              sub_1CE08
0001c674  LDRB            R0, [R5,#0x15]
0001c678  CMP             R0, #0
0001c67c  BNE             loc_1C6A4
0001c680  LDRH            R0, [R4,#2]
0001c684  STRH            R0, [R7,#0x10]
0001c688  STRH            R11, [R7,#8]
0001c68c  MOV             R0, R7
0001c690  BL              sub_21BA8
0001c694  MOV             R2, R9
0001c698  MOV             R1, R4
0001c69c  MOV             R0, R7
0001c6a0  BL              sub_1CE08
0001c6a4  MOV             R0, #0
0001c6a8  STRH            R0, [SP,#0xEC+var_C8]
0001c6ac  STRH            R0, [SP,#0xEC+var_C6]
0001c6b0  LDRH            R0, [R4]
0001c6b4  STRH            R0, [SP,#0xEC+var_C4]
0001c6b8  LDRH            R0, [R4,#2]
0001c6bc  STRH            R0, [SP,#0xEC+var_C2]
0001c6c0  LDRB            R0, [R5,#0x15]
0001c6c4  CMP             R0, #0
0001c6c8  BNE             loc_1C8C0
0001c6cc  MOV             R3, #0x40 ; '@'
0001c6d0  ADD             R2, SP, #0xEC+var_40
0001c6d4  LDR             R1, =0x262C
0001c6d8  MOV             R0, R8
0001c6dc  BL              sub_19618
0001c6e0  MOV             R2, #2
0001c6e4  ADD             R1, SP, #0xEC+var_40
0001c6e8  MOV             R0, R6
0001c6ec  BL              sub_12BC8
0001c6f0  LDRH            R1, [R4]
0001c6f4  LDR             R11, =(aT00001Hff8040S_2 - 0x1C730); "$T00001$Hff8040$S000000%s"
0001c6f8  ADD             R3, SP, #0xEC+var_40
0001c6fc  SUB             R0, R1, R0
0001c700  ADD             R0, R0, R0,LSR#31
0001c704  MOV             R0, R0,ASR#1
0001c708  MOV             R7, R0,LSL#16
0001c70c  LDRH            R0, [R4,#2]
0001c710  MOV             R1, #0xFFFFFFF6
0001c714  MOV             R7, R7,ASR#16
0001c718  ADD             R0, R1, R0,LSR#1
0001c71c  MOV             R9, R0,LSL#16
0001c720  LDR             R0, [R10,#(dword_8 - 0xC)]
0001c724  MOV             R9, R9,ASR#16
0001c728  ADD             R11, PC, R11; "$T00001$Hff8040$S000000%s"
0001c72c  LDR             R12, [R0,#0x3C]
0001c730  ADD             R0, SP, #0xEC+var_C0
0001c734  MOV             R2, R11
0001c738  MOV             R1, #0x80
0001c73c  MOV             LR, PC
0001c740  BX              R12
0001c744  MOV             R3, #0
0001c748  MOV             R2, #2
0001c74c  MOV             R1, #0
0001c750  ADD             R0, SP, #0xEC+var_D8
0001c754  STM             R0, {R1-R3}
0001c758  STR             R7, [SP,#0xEC+var_DC]
0001c75c  MOV             R2, #0
0001c760  ADD             R0, SP, #0xEC+var_C0
0001c764  STMEA           SP, {R0-R3}
0001c768  ADD             R3, SP, #0xEC+var_C8
0001c76c  MOV             R2, R9
0001c770  MOV             R1, R4
0001c774  MOV             R0, R6
0001c778  BL              sub_98BC
0001c77c  MOV             R3, #0x50 ; 'P'
0001c780  ADD             R2, SP, #0xEC+var_40
0001c784  LDR             R1, =0x262A
0001c788  MOV             R0, R8
0001c78c  BL              sub_19618
0001c790  LDRH            R0, [R4]
0001c794  MOV             R1, #0xFFFFFFDD
0001c798  ADD             R3, SP, #0xEC+var_40
0001c79c  ADD             R0, R1, R0,LSR#1
0001c7a0  MOV             R7, R0,LSL#16
0001c7a4  LDRH            R0, [R4,#2]
0001c7a8  MOV             R1, #0xA
0001c7ac  MOV             R7, R7,ASR#16
0001c7b0  ADD             R0, R1, R0,LSR#1
0001c7b4  MOV             R9, R0,LSL#16
0001c7b8  LDRB            R0, [R5,#0x14]
0001c7bc  MOV             R9, R9,ASR#16
0001c7c0  CMP             R0, #0
0001c7c4  LDR             R0, [R10,#(dword_8 - 0xC)]
0001c7c8  LDR             R12, [R0,#0x3C]
0001c7cc  BNE             loc_1C7E8
0001c7d0  MOV             R2, R11
0001c7d4  MOV             R1, #0x80
0001c7d8  ADD             R0, SP, #0xEC+var_C0
0001c7dc  MOV             LR, PC
0001c7e0  BX              R12
0001c7e4  B               loc_1C800
0001c7e8  LDR             R2, =(aT00001Hfffff7S_1 - 0x1C7F4); "$T00001$Hfffff7$S000000%s"
0001c7ec  ADD             R2, PC, R2; "$T00001$Hfffff7$S000000%s"
0001c7f0  MOV             R1, #0x80
0001c7f4  ADD             R0, SP, #0xEC+var_C0
0001c7f8  MOV             LR, PC
0001c7fc  BX              R12
0001c800  MOV             R3, #0
0001c804  MOV             R2, #2
0001c808  MOV             R1, #0
0001c80c  ADD             R0, SP, #0xEC+var_D8
0001c810  STM             R0, {R1-R3}
0001c814  STR             R7, [SP,#0xEC+var_DC]
0001c818  MOV             R2, #0
0001c81c  ADD             R0, SP, #0xEC+var_C0
0001c820  STMEA           SP, {R0-R3}
0001c824  ADD             R3, SP, #0xEC+var_C8
0001c828  MOV             R2, R9
0001c82c  MOV             R1, R4
0001c830  MOV             R0, R6
0001c834  BL              sub_98BC
0001c838  MOV             R3, #0x50 ; 'P'
0001c83c  ADD             R2, SP, #0xEC+var_40
0001c840  LDR             R1, =0x262B
0001c844  MOV             R0, R8
0001c848  BL              sub_19618
0001c84c  LDRH            R0, [R4]
0001c850  MOV             R1, #0x17
0001c854  ADD             R3, SP, #0xEC+var_40
0001c858  ADD             R0, R1, R0,LSR#1
0001c85c  MOV             R7, R0,LSL#16
0001c860  LDRH            R0, [R4,#2]
0001c864  MOV             R1, #0xA
0001c868  MOV             R7, R7,ASR#16
0001c86c  ADD             R0, R1, R0,LSR#1
0001c870  MOV             R8, R0,LSL#16
0001c874  LDRB            R0, [R5,#0x14]
0001c878  MOV             R8, R8,ASR#16
0001c87c  CMP             R0, #1
0001c880  LDR             R0, [R10,#(dword_8 - 0xC)]
0001c884  LDR             R12, [R0,#0x3C]
0001c888  BNE             loc_1C8A4
0001c88c  MOV             R2, R11
0001c890  MOV             R1, #0x80
0001c894  ADD             R0, SP, #0xEC+var_C0
0001c898  MOV             LR, PC
0001c89c  BX              R12
0001c8a0  B               loc_1C544
0001c8a4  LDR             R2, =(aT00001Hfffff7S_1 - 0x1C8B0); "$T00001$Hfffff7$S000000%s"
0001c8a8  ADD             R2, PC, R2; "$T00001$Hfffff7$S000000%s"
0001c8ac  MOV             R1, #0x80
0001c8b0  ADD             R0, SP, #0xEC+var_C0
0001c8b4  MOV             LR, PC
0001c8b8  BX              R12
0001c8bc  B               loc_1C544
0001c8c0  CMP             R0, #1
0001c8c4  BNE             loc_1C274
0001c8c8  MOV             R3, #0x40 ; '@'
0001c8cc  ADD             R2, SP, #0xEC+var_40
0001c8d0  LDR             R1, =0x262D
0001c8d4  MOV             R0, R8
0001c8d8  BL              sub_19618
0001c8dc  MOV             R2, #2
0001c8e0  ADD             R1, SP, #0xEC+var_40
0001c8e4  MOV             R0, R6
0001c8e8  BL              sub_12BC8
0001c8ec  LDRH            R1, [R4]
0001c8f0  LDR             R2, =(aT00001Hff8040S_2 - 0x1C92C); "$T00001$Hff8040$S000000%s"
0001c8f4  ADD             R3, SP, #0xEC+var_40
0001c8f8  SUB             R0, R1, R0
0001c8fc  ADD             R0, R0, R0,LSR#31
0001c900  MOV             R0, R0,ASR#1
0001c904  MOV             R5, R0,LSL#16
0001c908  LDRH            R0, [R4,#2]
0001c90c  MOV             R1, #0xFFFFFFF6
0001c910  MOV             R5, R5,ASR#16
0001c914  ADD             R0, R1, R0,LSR#1
0001c918  MOV             R7, R0,LSL#16
0001c91c  LDR             R0, [R10,#(dword_8 - 0xC)]
0001c920  MOV             R7, R7,ASR#16
0001c924  ADD             R2, PC, R2; "$T00001$Hff8040$S000000%s"
0001c928  LDR             R12, [R0,#0x3C]
0001c92c  ADD             R0, SP, #0xEC+var_C0
0001c930  MOV             R1, #0x80
0001c934  MOV             LR, PC
0001c938  BX              R12
0001c93c  MOV             R3, #0
0001c940  MOV             R2, #2
0001c944  MOV             R1, #0
0001c948  ADD             R0, SP, #0xEC+var_D8
0001c94c  STM             R0, {R1-R3}
0001c950  STR             R5, [SP,#0xEC+var_DC]
0001c954  MOV             R2, #0
0001c958  ADD             R0, SP, #0xEC+var_C0
0001c95c  STMEA           SP, {R0-R3}
0001c960  ADD             R3, SP, #0xEC+var_C8
0001c964  MOV             R2, R7
0001c968  MOV             R1, R4
0001c96c  MOV             R0, R6
0001c970  BL              sub_98BC
0001c974  MOV             R3, #0x50 ; 'P'
0001c978  ADD             R2, SP, #0xEC+var_40
0001c97c  LDR             R1, =0x138A
0001c980  MOV             R0, R8
0001c984  BL              sub_19618
0001c988  MOV             R2, #2
0001c98c  ADD             R1, SP, #0xEC+var_40
0001c990  MOV             R0, R6
0001c994  BL              sub_12BC8
0001c998  LDRH            R1, [R4]
0001c99c  LDR             R2, =(aT00001H00ff00S_6 - 0x1C9D8); "$T00001$H00ff00$S000000%s"
0001c9a0  ADD             R3, SP, #0xEC+var_40
0001c9a4  SUB             R0, R1, R0
0001c9a8  ADD             R0, R0, R0,LSR#31
0001c9ac  MOV             R0, R0,ASR#1
0001c9b0  MOV             R5, R0,LSL#16
0001c9b4  LDRH            R0, [R4,#2]
0001c9b8  MOV             R1, #0xA
0001c9bc  MOV             R5, R5,ASR#16
0001c9c0  ADD             R0, R1, R0,LSR#1
0001c9c4  MOV             R7, R0,LSL#16
0001c9c8  LDR             R0, [R10,#(dword_8 - 0xC)]
0001c9cc  MOV             R7, R7,ASR#16
0001c9d0  ADD             R2, PC, R2; "$T00001$H00ff00$S000000%s"
0001c9d4  LDR             R12, [R0,#0x3C]
0001c9d8  ADD             R0, SP, #0xEC+var_C0
0001c9dc  MOV             R1, #0x80
0001c9e0  MOV             LR, PC
0001c9e4  BX              R12
0001c9e8  MOV             R3, #0
0001c9ec  MOV             R2, #2
0001c9f0  MOV             R1, #0
0001c9f4  ADD             R0, SP, #0xEC+var_D8
0001c9f8  STM             R0, {R1-R3}
0001c9fc  STR             R5, [SP,#0xEC+var_DC]
0001ca00  MOV             R2, #0
0001ca04  ADD             R0, SP, #0xEC+var_C0
0001ca08  STMEA           SP, {R0-R3}
0001ca0c  ADD             R3, SP, #0xEC+var_C8
0001ca10  MOV             R2, R7
0001ca14  MOV             R1, R4
0001ca18  MOV             R0, R6
0001ca1c  BL              sub_98BC
0001ca20  B               loc_1C274
0001ca24  LDR             R0, [R5,#0xC]
0001ca28  LDRB            R1, [R0,#0x3E]
0001ca2c  CMP             R1, #1
0001ca30  MOVEQ           R2, R9
0001ca34  MOVEQ           R1, R4
0001ca38  ADDEQ           SP, SP, #0xEC
0001ca3c  POPEQ           {R4-R11,LR}
0001ca40  BEQ             sub_1D170
0001ca44  B               loc_1C274
