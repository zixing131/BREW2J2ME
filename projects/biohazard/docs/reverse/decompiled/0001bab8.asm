0001bab8  PUSH            {R0-R11,LR}
0001babc  LDR             R5, [R0,#0x898]
0001bac0  SUB             SP, SP, #0x14
0001bac4  CMP             R5, #0
0001bac8  BEQ             loc_1C1A8
0001bacc  LDR             R1, [SP,#0x24+arg_4]
0001bad0  MOV             R8, #0xD
0001bad4  CMP             R1, #0
0001bad8  BNE             loc_1BAEC
0001badc  LDR             R0, [R0,#0x8B0]
0001bae0  LDRB            R0, [R0,#0x20]
0001bae4  CMP             R0, #0
0001bae8  MOVNE           R8, #1
0001baec  LDR             R0, [SP,#0x24+var_4]
0001baf0  MOV             R4, #0x10
0001baf4  LDR             R10, [R0]
0001baf8  LDR             R0, [SP,#0x24+arg_0]
0001bafc  SUB             R1, R10, #8
0001bb00  LDR             R11, [R0]
0001bb04  LDR             R9, [R5,#0x28]
0001bb08  MOV             R0, R4
0001bb0c  BL              sub_104
0001bb10  MOV             R6, R0
0001bb14  MOV             R0, R4
0001bb18  SUB             R1, R11, #8
0001bb1c  BL              sub_104
0001bb20  MOV             R7, R0
0001bb24  LDR             R0, [SP,#0x24+arg_4]
0001bb28  CMP             R0, #0
0001bb2c  LDR             R0, [R9,R7,LSL#2]
0001bb30  LDRB            R1, [R0,R6]!
0001bb34  BEQ             loc_1BB7C
0001bb38  BIC             R1, R1, #4
0001bb3c  STRB            R1, [R0]
0001bb40  ADD             R1, R9, R7,LSL#2
0001bb44  LDR             R0, [R1,#4]
0001bb48  LDRB            R2, [R0,R6]!
0001bb4c  BIC             R2, R2, #4
0001bb50  STRB            R2, [R0]
0001bb54  LDR             R0, [R1,#4]
0001bb58  ADD             R0, R0, R6
0001bb5c  LDRB            R1, [R0,#1]!
0001bb60  BIC             R1, R1, #4
0001bb64  STRB            R1, [R0]
0001bb68  LDR             R0, [R9,R7,LSL#2]
0001bb6c  ADD             R0, R0, R6
0001bb70  LDRB            R1, [R0,#1]!
0001bb74  BIC             R1, R1, #4
0001bb78  B               loc_1BBBC
0001bb7c  BIC             R1, R1, #8
0001bb80  STRB            R1, [R0]
0001bb84  ADD             R1, R9, R7,LSL#2
0001bb88  LDR             R0, [R1,#4]
0001bb8c  LDRB            R2, [R0,R6]!
0001bb90  BIC             R2, R2, #8
0001bb94  STRB            R2, [R0]
0001bb98  LDR             R0, [R1,#4]
0001bb9c  ADD             R0, R0, R6
0001bba0  LDRB            R1, [R0,#1]!
0001bba4  BIC             R1, R1, #8
0001bba8  STRB            R1, [R0]
0001bbac  LDR             R0, [R9,R7,LSL#2]
0001bbb0  ADD             R0, R0, R6
0001bbb4  LDRB            R1, [R0,#1]!
0001bbb8  BIC             R1, R1, #8
0001bbbc  STRB            R1, [R0]
0001bbc0  LDR             R0, [SP,#0x24+var_C]
0001bbc4  BL              sub_196D8
0001bbc8  LDR             R1, [SP,#0x24+var_8]
0001bbcc  MUL             R0, R1, R0
0001bbd0  ADD             R10, R10, R0,ASR#16
0001bbd4  LDR             R0, [SP,#0x24+var_C]
0001bbd8  BL              sub_197A8
0001bbdc  LDR             R1, [SP,#0x24+var_8]
0001bbe0  MUL             R0, R1, R0
0001bbe4  ADD             R11, R11, R0,ASR#16
0001bbe8  LDR             R0, [SP,#0x24+var_4]
0001bbec  LDR             R0, [R0]
0001bbf0  CMP             R0, R10
0001bbf4  MOVLE           R1, #0
0001bbf8  MOVGT           R1, #1
0001bbfc  LDR             R0, [SP,#0x24+arg_0]
0001bc00  STR             R1, [SP,#0x24+var_24]
0001bc04  LDR             R0, [R0]
0001bc08  CMP             R0, R11
0001bc0c  MOVLE           R3, #0
0001bc10  MOVGT           R3, #1
0001bc14  STR             R3, [SP,#0x24+var_20]
0001bc18  LDRH            R0, [R5]
0001bc1c  CMP             R10, #0x10
0001bc20  MOVLT           R10, R4
0001bc24  STR             R0, [SP,#0x24+var_14]
0001bc28  MOV             R0, R0,LSL#1
0001bc2c  MOV             R0, R0,LSL#4
0001bc30  LDRH            R12, [R5,#2]
0001bc34  SUB             R0, R0, #0x10
0001bc38  CMP             R0, R10
0001bc3c  SUBLE           R10, R0, #1
0001bc40  MOV             R1, R12,LSL#1
0001bc44  MOV             R1, R1,LSL#4
0001bc48  SUB             R0, R1, #0x10
0001bc4c  CMP             R11, #0x10
0001bc50  MOVLT           R11, R4
0001bc54  CMP             R0, R11
0001bc58  SUBLE           R11, R0, #1
0001bc5c  MOV             R0, R4
0001bc60  SUB             R1, R10, #8
0001bc64  STR             R12, [SP,#0x24+var_18]
0001bc68  BL              sub_104
0001bc6c  MOV             R5, R0
0001bc70  MOV             R0, R4
0001bc74  SUB             R1, R11, #8
0001bc78  BL              sub_104
0001bc7c  LDR             R2, [R9,R0,LSL#2]
0001bc80  LDRB            R1, [R2,R5]
0001bc84  ADD             R2, R2, R5
0001bc88  ANDS            R1, R1, R8
0001bc8c  MOVNE           R1, #1
0001bc90  STRB            R1, [SP,#0x24+var_1C]
0001bc94  LDRB            R1, [R2,#1]
0001bc98  ANDS            R1, R1, R8
0001bc9c  MOVNE           R1, #1
0001bca0  STRB            R1, [SP,#0x24+var_1B]
0001bca4  ADD             R1, R9, R0,LSL#2
0001bca8  LDR             R12, [R1,#4]
0001bcac  LDRB            R3, [R12,R5]
0001bcb0  ANDS            R3, R3, R8
0001bcb4  MOVNE           R3, #1
0001bcb8  STRB            R3, [SP,#0x24+var_1A]
0001bcbc  ADD             R3, R12, R5
0001bcc0  LDRB            R12, [R3,#1]
0001bcc4  ANDS            R12, R12, R8
0001bcc8  MOVNE           R12, #1
0001bccc  CMP             R5, R6
0001bcd0  CMPNE           R0, R7
0001bcd4  STRB            R12, [SP,#0x24+var_19]
0001bcd8  BNE             loc_1BE8C
0001bcdc  MOV             R2, #0xFFFFFFFE
0001bce0  CMP             R0, R7
0001bce4  BNE             loc_1BD78
0001bce8  LDR             R3, [SP,#0x24+var_20]
0001bcec  CMP             R3, #1
0001bcf0  MOV             R3, #0
0001bcf4  BNE             loc_1BD34
0001bcf8  CMP             R0, #0
0001bcfc  BLE             loc_1BD1C
0001bd00  LDR             R1, [R1,#-4]
0001bd04  LDRB            R12, [R1,R6]
0001bd08  TST             R12, R8
0001bd0c  ADDEQ           R1, R1, R6
0001bd10  LDRBEQ          R1, [R1,#1]
0001bd14  TSTEQ           R1, R8
0001bd18  BEQ             loc_1BD20
0001bd1c  MOV             R3, #1
0001bd20  CMP             R3, #0
0001bd24  MLANE           R1, R4, R0, R4
0001bd28  CMPNE           R1, R11
0001bd2c  BLE             loc_1BD78
0001bd30  B               loc_1BD74
0001bd34  LDR             R12, [SP,#0x24+var_18]
0001bd38  ADD             R12, R2, R12,LSL#1
0001bd3c  CMP             R12, R0
0001bd40  BLE             loc_1BD60
0001bd44  LDR             R1, [R1,#8]
0001bd48  LDRB            R12, [R1,R6]
0001bd4c  TST             R12, R8
0001bd50  ADDEQ           R1, R1, R6
0001bd54  LDRBEQ          R1, [R1,#1]
0001bd58  TSTEQ           R1, R8
0001bd5c  BEQ             loc_1BD64
0001bd60  MOV             R3, #1
0001bd64  CMP             R3, #0
0001bd68  MLANE           R1, R4, R0, R4
0001bd6c  CMPNE           R1, R11
0001bd70  BGE             loc_1BD78
0001bd74  MOV             R11, R1
0001bd78  CMP             R5, R6
0001bd7c  BNE             loc_1BE14
0001bd80  LDR             R1, [SP,#0x24+var_24]
0001bd84  CMP             R1, #1
0001bd88  BNE             loc_1BDCC
0001bd8c  CMP             R5, #0
0001bd90  BLE             loc_1BDBC
0001bd94  LDR             R1, [R9,R7,LSL#2]
0001bd98  ADD             R1, R1, R5
0001bd9c  LDRB            R1, [R1,#-1]
0001bda0  TST             R1, R8
0001bda4  ADDEQ           R1, R9, R7,LSL#2
0001bda8  LDREQ           R1, [R1,#4]
0001bdac  ADDEQ           R1, R1, R5
0001bdb0  LDRBEQ          R1, [R1,#-1]
0001bdb4  TSTEQ           R1, R8
0001bdb8  BEQ             loc_1BE14
0001bdbc  MLA             R1, R4, R5, R4
0001bdc0  CMP             R1, R10
0001bdc4  BLE             loc_1BE14
0001bdc8  B               loc_1BE10
0001bdcc  LDR             R1, [SP,#0x24+var_14]
0001bdd0  ADD             R1, R2, R1,LSL#1
0001bdd4  CMP             R1, R5
0001bdd8  BLE             loc_1BE04
0001bddc  LDR             R1, [R9,R7,LSL#2]
0001bde0  ADD             R1, R1, R5
0001bde4  LDRB            R1, [R1,#2]
0001bde8  TST             R1, R8
0001bdec  ADDEQ           R1, R9, R7,LSL#2
0001bdf0  LDREQ           R1, [R1,#4]
0001bdf4  ADDEQ           R1, R1, R5
0001bdf8  LDRBEQ          R1, [R1,#2]
0001bdfc  TSTEQ           R1, R8
0001be00  BEQ             loc_1BE14
0001be04  MLA             R1, R4, R5, R4
0001be08  CMP             R1, R10
0001be0c  BGE             loc_1BE14
0001be10  MOV             R10, R1
0001be14  CMP             R0, R7
0001be18  BGE             loc_1BE34
0001be1c  LDRB            R0, [SP,#0x24+var_1C]
0001be20  CMP             R0, #0
0001be24  LDRBEQ          R0, [SP,#0x24+var_1B]
0001be28  CMPEQ           R0, #0
0001be2c  BEQ             loc_1BE50
0001be30  B               loc_1BE4C
0001be34  BLE             loc_1BE50
0001be38  LDRB            R0, [SP,#0x24+var_1A]
0001be3c  CMP             R0, #0
0001be40  LDRBEQ          R0, [SP,#0x24+var_19]
0001be44  CMPEQ           R0, #0
0001be48  BEQ             loc_1BE50
0001be4c  MLA             R11, R4, R7, R4
0001be50  CMP             R5, R6
0001be54  BGE             loc_1BE70
0001be58  LDRB            R0, [SP,#0x24+var_1C]
0001be5c  CMP             R0, #0
0001be60  LDRBEQ          R0, [SP,#0x24+var_1A]
0001be64  CMPEQ           R0, #0
0001be68  BEQ             loc_1C0E0
0001be6c  B               loc_1C0D4
0001be70  BLE             loc_1C0E0
0001be74  LDRB            R0, [SP,#0x24+var_1B]
0001be78  CMP             R0, #0
0001be7c  LDRBEQ          R0, [SP,#0x24+var_19]
0001be80  CMPEQ           R0, #0
0001be84  BEQ             loc_1C0E0
0001be88  B               loc_1C0D4
0001be8c  CMP             R5, R6
0001be90  CMPGT           R0, R7
0001be94  MOV             R12, #0
0001be98  BLE             loc_1BEC4
0001be9c  LDRB            LR, [SP,#0x24+var_1B]
0001bea0  CMP             LR, #0
0001bea4  BNE             loc_1BF60
0001bea8  LDRB            LR, [SP,#0x24+var_19]
0001beac  CMP             LR, #0
0001beb0  LDRNE           LR, [R1,#-4]
0001beb4  ADDNE           LR, LR, R5
0001beb8  LDRBNE          LR, [LR,#1]
0001bebc  TSTNE           LR, R8
0001bec0  BNE             loc_1BF60
0001bec4  CMP             R5, R6
0001bec8  BLE             loc_1BEFC
0001becc  CMP             R0, R7
0001bed0  BGE             loc_1BEFC
0001bed4  LDRB            LR, [SP,#0x24+var_19]
0001bed8  CMP             LR, #0
0001bedc  BNE             loc_1BF60
0001bee0  LDRB            LR, [SP,#0x24+var_1B]
0001bee4  CMP             LR, #0
0001bee8  LDRNE           LR, [R1,#8]
0001beec  ADDNE           LR, LR, R5
0001bef0  LDRBNE          LR, [LR,#1]
0001bef4  TSTNE           LR, R8
0001bef8  BNE             loc_1BF60
0001befc  CMP             R5, R6
0001bf00  BGE             loc_1BF30
0001bf04  CMP             R0, R7
0001bf08  BLE             loc_1BF30
0001bf0c  LDRB            LR, [SP,#0x24+var_1C]
0001bf10  CMP             LR, #0
0001bf14  BNE             loc_1BF60
0001bf18  LDRB            LR, [SP,#0x24+var_1A]
0001bf1c  CMP             LR, #0
0001bf20  LDRNE           LR, [R1,#-4]
0001bf24  LDRBNE          LR, [LR,R5]
0001bf28  TSTNE           LR, R8
0001bf2c  BNE             loc_1BF60
0001bf30  CMP             R5, R6
0001bf34  CMPLT           R0, R7
0001bf38  BGE             loc_1BF68
0001bf3c  LDRB            LR, [SP,#0x24+var_1A]
0001bf40  CMP             LR, #0
0001bf44  BNE             loc_1BF60
0001bf48  LDRB            LR, [SP,#0x24+var_1C]
0001bf4c  CMP             LR, #0
0001bf50  LDRNE           R1, [R1,#8]
0001bf54  LDRBNE          R1, [R1,R5]
0001bf58  TSTNE           R1, R8
0001bf5c  BEQ             loc_1BF68
0001bf60  MLA             R10, R4, R6, R4
0001bf64  MOV             R12, #1
0001bf68  CMP             R5, R6
0001bf6c  CMPGT           R0, R7
0001bf70  BLE             loc_1BF94
0001bf74  LDRB            R1, [SP,#0x24+var_1A]
0001bf78  CMP             R1, #0
0001bf7c  BNE             loc_1C0DC
0001bf80  LDRB            R1, [SP,#0x24+var_19]
0001bf84  CMP             R1, #0
0001bf88  LDRBNE          R1, [R3,#-1]
0001bf8c  TSTNE           R1, R8
0001bf90  BNE             loc_1C0DC
0001bf94  CMP             R5, R6
0001bf98  BLE             loc_1BFC4
0001bf9c  CMP             R0, R7
0001bfa0  BGE             loc_1BFC4
0001bfa4  LDRB            R1, [SP,#0x24+var_1C]
0001bfa8  CMP             R1, #0
0001bfac  BNE             loc_1C0DC
0001bfb0  LDRB            R1, [SP,#0x24+var_1B]
0001bfb4  CMP             R1, #0
0001bfb8  LDRBNE          R1, [R2,#-1]
0001bfbc  TSTNE           R1, R8
0001bfc0  BNE             loc_1C0DC
0001bfc4  CMP             R5, R6
0001bfc8  BGE             loc_1BFF4
0001bfcc  CMP             R0, R7
0001bfd0  BLE             loc_1BFF4
0001bfd4  LDRB            R1, [SP,#0x24+var_19]
0001bfd8  CMP             R1, #0
0001bfdc  BNE             loc_1C0DC
0001bfe0  LDRB            R1, [SP,#0x24+var_1A]
0001bfe4  CMP             R1, #0
0001bfe8  LDRBNE          R1, [R3,#2]
0001bfec  TSTNE           R1, R8
0001bff0  BNE             loc_1C0DC
0001bff4  CMP             R5, R6
0001bff8  CMPLT           R0, R7
0001bffc  BGE             loc_1C020
0001c000  LDRB            R1, [SP,#0x24+var_1B]
0001c004  CMP             R1, #0
0001c008  BNE             loc_1C0DC
0001c00c  LDRB            R1, [SP,#0x24+var_1C]
0001c010  CMP             R1, #0
0001c014  LDRBNE          R1, [R2,#2]
0001c018  TSTNE           R1, R8
0001c01c  BNE             loc_1C0DC
0001c020  CMP             R12, #0
0001c024  BNE             loc_1C0E0
0001c028  CMP             R5, R6
0001c02c  CMPGT           R0, R7
0001c030  BLE             loc_1C040
0001c034  LDRB            R1, [SP,#0x24+var_19]
0001c038  CMP             R1, #0
0001c03c  BNE             loc_1C090
0001c040  CMP             R5, R6
0001c044  BLE             loc_1C05C
0001c048  CMP             R0, R7
0001c04c  BGE             loc_1C05C
0001c050  LDRB            R1, [SP,#0x24+var_1B]
0001c054  CMP             R1, #0
0001c058  BNE             loc_1C090
0001c05c  CMP             R5, R6
0001c060  BGE             loc_1C078
0001c064  CMP             R0, R7
0001c068  BLE             loc_1C078
0001c06c  LDRB            R1, [SP,#0x24+var_1A]
0001c070  CMP             R1, #0
0001c074  BNE             loc_1C090
0001c078  CMP             R5, R6
0001c07c  CMPLT           R0, R7
0001c080  BGE             loc_1C0E0
0001c084  LDRB            R0, [SP,#0x24+var_1C]
0001c088  CMP             R0, #0
0001c08c  BEQ             loc_1C0E0
0001c090  LDR             R0, [SP,#0x24+var_C]
0001c094  CMP             R0, #0
0001c098  LDRLT           R0, [SP,#0x24+var_C]
0001c09c  ADDLT           R0, R0, #0x168
0001c0a0  MOVLT           R0, R0,LSL#16
0001c0a4  MOVLT           R0, R0,ASR#16
0001c0a8  STRLT           R0, [SP,#0x24+var_C]
0001c0ac  LDR             R1, [SP,#0x24+var_C]
0001c0b0  MOV             R0, #0x168
0001c0b4  BL              sub_104
0001c0b8  MOV             R0, R1,LSL#16
0001c0bc  MOV             R0, R0,ASR#16
0001c0c0  SUB             R1, R0, #0x2E ; '.'
0001c0c4  CMP             R1, #0x59 ; 'Y'
0001c0c8  SUBCS           R0, R0, #0xE2
0001c0cc  CMPCS           R0, #0x59 ; 'Y'
0001c0d0  BCS             loc_1C0DC
0001c0d4  MLA             R10, R4, R6, R4
0001c0d8  B               loc_1C0E0
0001c0dc  MLA             R11, R4, R7, R4
0001c0e0  SUB             R1, R10, #8
0001c0e4  MOV             R0, R4
0001c0e8  BL              sub_104
0001c0ec  MOV             R5, R0
0001c0f0  MOV             R0, R4
0001c0f4  SUB             R1, R11, #8
0001c0f8  BL              sub_104
0001c0fc  LDR             R1, [SP,#0x24+arg_4]
0001c100  CMP             R1, #0
0001c104  LDR             R1, [R9,R0,LSL#2]
0001c108  LDRB            R2, [R1,R5]!
0001c10c  BEQ             loc_1C154
0001c110  ORR             R2, R2, #4
0001c114  STRB            R2, [R1]
0001c118  ADD             R2, R9, R0,LSL#2
0001c11c  LDR             R1, [R2,#4]
0001c120  LDRB            R3, [R1,R5]!
0001c124  ORR             R3, R3, #4
0001c128  STRB            R3, [R1]
0001c12c  LDR             R1, [R2,#4]
0001c130  ADD             R1, R1, R5
0001c134  LDRB            R2, [R1,#1]!
0001c138  ORR             R2, R2, #4
0001c13c  STRB            R2, [R1]
0001c140  LDR             R0, [R9,R0,LSL#2]
0001c144  ADD             R0, R0, R5
0001c148  LDRB            R1, [R0,#1]!
0001c14c  ORR             R1, R1, #4
0001c150  B               loc_1C194
0001c154  ORR             R2, R2, #8
0001c158  STRB            R2, [R1]
0001c15c  ADD             R2, R9, R0,LSL#2
0001c160  LDR             R1, [R2,#4]
0001c164  LDRB            R3, [R1,R5]!
0001c168  ORR             R3, R3, #8
0001c16c  STRB            R3, [R1]
0001c170  LDR             R1, [R2,#4]
0001c174  ADD             R1, R1, R5
0001c178  LDRB            R2, [R1,#1]!
0001c17c  ORR             R2, R2, #8
0001c180  STRB            R2, [R1]
0001c184  LDR             R0, [R9,R0,LSL#2]
0001c188  ADD             R0, R0, R5
0001c18c  LDRB            R1, [R0,#1]!
0001c190  ORR             R1, R1, #8
0001c194  STRB            R1, [R0]
0001c198  LDR             R0, [SP,#0x24+var_4]
0001c19c  STR             R10, [R0]
0001c1a0  LDR             R0, [SP,#0x24+arg_0]
0001c1a4  STR             R11, [R0]
0001c1a8  ADD             SP, SP, #0x24 ; '$'
0001c1ac  POP             {R4-R11,LR}
0001c1b0  BX              LR
