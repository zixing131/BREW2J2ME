0000b96c  PUSH            {R4-R11,LR}
0000b970  LDR             R10, =(start - 0xB98C)
0000b974  SUB             SP, SP, #0x274
0000b978  MOV             R8, R2
0000b97c  MOV             R5, R0
0000b980  MOV             R4, R1
0000b984  ADD             R10, PC, R10; start
0000b988  LDR             R0, [R10,#(dword_8 - 0xC)]
0000b98c  ADR             LR, loc_B998
0000b990  LDR             R0, [R0,#0xC0]
0000b994  BX              R0
0000b998  LDR             R7, [R0,#0x28]
0000b99c  MOV             R9, #0
0000b9a0  LDR             R6, [R7,#0x64]
0000b9a4  STRH            R9, [SP,#0x274+var_248]
0000b9a8  STRH            R9, [SP,#0x274+var_246]
0000b9ac  LDRH            R0, [R4]
0000b9b0  LDR             R3, =0x2124
0000b9b4  MOV             R1, #0
0000b9b8  STRH            R0, [SP,#0x274+var_244]
0000b9bc  LDRH            R0, [R4,#2]
0000b9c0  MOV             R2, #0
0000b9c4  STRH            R0, [SP,#0x274+var_242]
0000b9c8  LDRSH           R0, [R4,#2]
0000b9cc  STMEA           SP, {R0,R1,R3}
0000b9d0  STR             R3, [SP,#0x274+var_268]
0000b9d4  LDRSH           R3, [R4]
0000b9d8  MOV             R0, R4
0000b9dc  BL              sub_10C58
0000b9e0  MOV             R2, #8
0000b9e4  MOV             R1, #2
0000b9e8  LDR             R0, [R5,#0x114]
0000b9ec  BL              sub_103F4
0000b9f0  LDRH            R0, [R4]
0000b9f4  LDR             R1, [R5,#0x114]
0000b9f8  MOV             R0, R0,LSR#1
0000b9fc  STRH            R0, [R1,#0xE]
0000ba00  LDR             R0, [R5,#0x114]
0000ba04  STRH            R9, [R0,#0x10]
0000ba08  LDR             R0, [R5,#0x114]
0000ba0c  STRH            R9, [R0,#8]
0000ba10  LDR             R0, [R5,#0x114]
0000ba14  BL              sub_21BA8
0000ba18  MOV             R2, R8
0000ba1c  MOV             R1, R4
0000ba20  LDR             R0, [R5,#0x114]
0000ba24  BL              sub_1CE08
0000ba28  LDRH            R0, [R4,#2]
0000ba2c  LDR             R1, [R5,#0x114]
0000ba30  STRH            R0, [R1,#0x10]
0000ba34  LDR             R0, [R5,#0x114]
0000ba38  MOV             R1, #1
0000ba3c  STRH            R1, [R0,#8]
0000ba40  LDR             R0, [R5,#0x114]
0000ba44  BL              sub_21BA8
0000ba48  MOV             R2, R8
0000ba4c  MOV             R1, R4
0000ba50  LDR             R0, [R5,#0x114]
0000ba54  BL              sub_1CE08
0000ba58  MOV             R3, #0x50 ; 'P'
0000ba5c  ADD             R2, SP, #0x274+var_100
0000ba60  LDR             R1, =0x2429
0000ba64  MOV             R0, R7
0000ba68  BL              sub_19618
0000ba6c  MOV             R2, #0
0000ba70  ADD             R1, SP, #0x274+var_100
0000ba74  MOV             R0, R6
0000ba78  BL              sub_12BC8
0000ba7c  MOV             R9, R0
0000ba80  LDR             R0, [R5,#0x110]
0000ba84  LDR             R2, =(aD - 0xBA98); "%d"
0000ba88  LDR             R3, [R0,#0x1C]
0000ba8c  LDR             R0, [R10,#(dword_8 - 0xC)]
0000ba90  ADD             R2, PC, R2; "%d"
0000ba94  LDR             R12, [R0,#0x3C]
0000ba98  ADD             R0, SP, #0x274+var_240
0000ba9c  MOV             R1, #0x140
0000baa0  MOV             LR, PC
0000baa4  BX              R12
0000baa8  MOV             R2, #0
0000baac  ADD             R1, SP, #0x274+var_240
0000bab0  MOV             R0, R6
0000bab4  BL              sub_12BC8
0000bab8  LDRH            R1, [R4]
0000babc  ADD             R0, R0, R9
0000bac0  MOV             R0, R0,LSL#16
0000bac4  SUB             R0, R1, R0,ASR#16
0000bac8  ADD             R0, R0, R0,LSR#31
0000bacc  MOV             R0, R0,ASR#1
0000bad0  MOV             R9, R0,LSL#16
0000bad4  LDR             R0, [R5,#0x110]
0000bad8  LDR             R2, =(aT00001Hffff00S_2 - 0xBAF8); "$T00001$Hffff00$S000000%s:%d"
0000badc  LDR             R3, [R0,#0x1C]
0000bae0  MOV             R9, R9,ASR#16
0000bae4  STR             R3, [SP,#0x274+var_274]
0000bae8  LDR             R0, [R10,#(dword_8 - 0xC)]
0000baec  ADD             R3, SP, #0x274+var_100
0000baf0  ADD             R2, PC, R2; "$T00001$Hffff00$S000000%s:%d"
0000baf4  LDR             R12, [R0,#0x3C]
0000baf8  ADD             R0, SP, #0x274+var_240
0000bafc  MOV             R1, #0x140
0000bb00  MOV             LR, PC
0000bb04  BX              R12
0000bb08  MOV             R3, #0
0000bb0c  MOV             R2, #0
0000bb10  MOV             R1, #0
0000bb14  ADD             R0, SP, #0x274+var_260
0000bb18  STM             R0, {R1-R3}
0000bb1c  STR             R9, [SP,#0x274+var_264]
0000bb20  ADD             R0, SP, #0x274+var_240
0000bb24  STMEA           SP, {R0-R3}
0000bb28  ADD             R3, SP, #0x274+var_248
0000bb2c  MOV             R2, #0x28 ; '('
0000bb30  MOV             R1, R4
0000bb34  MOV             R0, R6
0000bb38  BL              sub_98BC
0000bb3c  MOV             R2, R8
0000bb40  MOV             R1, R4
0000bb44  MOV             R0, R5
0000bb48  BL              sub_8164
0000bb4c  ADD             R9, R5, #0x100
0000bb50  LDRH            R0, [R9,#0x22]
0000bb54  CMP             R0, #1
0000bb58  BNE             loc_C0EC
0000bb5c  LDRSH           R0, [R4,#2]
0000bb60  MOV             R3, #0
0000bb64  MOV             R2, #0
0000bb68  LDR             R1, =0x1002
0000bb6c  STMEA           SP, {R0-R3}
0000bb70  LDRSH           R3, [R4]
0000bb74  MOV             R1, #0
0000bb78  MOV             R0, R4
0000bb7c  BL              sub_10C58
0000bb80  LDRH            R0, [R4]
0000bb84  LDR             R1, [R5,#0x114]
0000bb88  MOV             R0, R0,LSR#1
0000bb8c  STRH            R0, [R1,#0xE]
0000bb90  LDRH            R0, [R4,#2]
0000bb94  LDR             R1, [R5,#0x114]
0000bb98  MOV             R0, R0,LSR#1
0000bb9c  STRH            R0, [R1,#0x10]
0000bba0  LDRSH           R1, [R5,#2]
0000bba4  LDR             R0, [R5,#0x110]
0000bba8  ADD             R1, R5, R1,LSL#3
0000bbac  LDRSH           R1, [R1,#6]
0000bbb0  LDR             R0, [R0,#0x1C]
0000bbb4  CMP             R0, R1
0000bbb8  LDR             R1, [R5,#0x114]
0000bbbc  MOVLT           R0, #0xD
0000bbc0  MOVGE           R0, #0xE
0000bbc4  STRH            R0, [R1,#8]
0000bbc8  LDR             R0, [R5,#0x114]
0000bbcc  BL              sub_21BA8
0000bbd0  MOV             R2, R8
0000bbd4  MOV             R1, R4
0000bbd8  LDR             R0, [R5,#0x114]
0000bbdc  BL              sub_1CE08
0000bbe0  LDR             R0, [R5,#0x110]
0000bbe4  LDR             R1, [R0,#0x1C]
0000bbe8  LDRSH           R0, [R5,#2]
0000bbec  ADD             R2, R5, R0,LSL#3
0000bbf0  LDRSH           R2, [R2,#6]
0000bbf4  CMP             R1, R2
0000bbf8  BLT             loc_BF64
0000bbfc  LDR             R1, [R5,#0x114]
0000bc00  ADD             R0, R0, #7
0000bc04  STRH            R0, [R1,#8]
0000bc08  LDRH            R0, [R4]
0000bc0c  MOV             R1, #0xFFFFFFE2
0000bc10  ADD             R0, R1, R0,LSR#1
0000bc14  LDR             R1, [R5,#0x114]
0000bc18  STRH            R0, [R1,#0xE]
0000bc1c  LDRH            R0, [R4,#2]
0000bc20  MOV             R1, #0xFFFFFFDA
0000bc24  ADD             R0, R1, R0,LSR#1
0000bc28  LDR             R1, [R5,#0x114]
0000bc2c  STRH            R0, [R1,#0x10]
0000bc30  LDR             R0, [R5,#0x114]
0000bc34  BL              sub_21BA8
0000bc38  MOV             R2, R8
0000bc3c  MOV             R1, R4
0000bc40  LDR             R0, [R5,#0x114]
0000bc44  BL              sub_1CE08
0000bc48  LDRH            R0, [R4]
0000bc4c  LDR             R1, [R5,#0x114]
0000bc50  MOV             R3, #0x50 ; 'P'
0000bc54  MOV             R0, R0,LSR#1
0000bc58  STRH            R0, [R1,#0xE]
0000bc5c  LDRH            R0, [R4,#2]
0000bc60  LDR             R1, [R5,#0x114]
0000bc64  ADD             R2, SP, #0x274+var_100
0000bc68  MOV             R0, R0,LSR#1
0000bc6c  STRH            R0, [R1,#0x10]
0000bc70  LDR             R1, =0x2428
0000bc74  MOV             R0, R7
0000bc78  BL              sub_19618
0000bc7c  MOV             R2, #0
0000bc80  ADD             R1, SP, #0x274+var_100
0000bc84  MOV             R0, R6
0000bc88  BL              sub_12BC8
0000bc8c  LDRH            R1, [R4]
0000bc90  ADD             R3, SP, #0x274+var_100
0000bc94  LDR             R2, =(aT00001Hffff00S_1 - 0xBCE4); "$T00001$Hffff00$S000000%d%s"
0000bc98  SUB             R0, R1, R0
0000bc9c  ADD             R0, R0, R0,LSR#31
0000bca0  MOV             R0, R0,ASR#1
0000bca4  ADD             R0, R0, #0x14
0000bca8  MOV             R0, R0,LSL#16
0000bcac  MOV             R0, R0,ASR#16
0000bcb0  STR             R0, [SP,#0x274+var_24C]
0000bcb4  LDRH            R0, [R4,#2]
0000bcb8  MOV             R1, #0xFFFFFFE8
0000bcbc  STR             R3, [SP,#0x274+var_274]
0000bcc0  ADD             R0, R1, R0,LSR#1
0000bcc4  MOV             R11, R0,LSL#16
0000bcc8  LDRSH           R0, [R5,#2]
0000bccc  MOV             R11, R11,ASR#16
0000bcd0  ADD             R0, R5, R0,LSL#3
0000bcd4  LDRSH           R3, [R0,#6]
0000bcd8  LDR             R0, [R10,#(dword_8 - 0xC)]
0000bcdc  ADD             R2, PC, R2; "$T00001$Hffff00$S000000%d%s"
0000bce0  LDR             R12, [R0,#0x3C]
0000bce4  ADD             R0, SP, #0x274+var_240
0000bce8  MOV             R1, #0x140
0000bcec  MOV             LR, PC
0000bcf0  BX              R12
0000bcf4  LDR             R0, [SP,#0x274+var_24C]
0000bcf8  MOV             R3, #0
0000bcfc  MOV             R2, #0
0000bd00  MOV             R1, #0
0000bd04  ADD             R12, SP, #0x274+var_264
0000bd08  STM             R12, {R0-R3}
0000bd0c  ADD             R0, SP, #0x274+var_240
0000bd10  STMEA           SP, {R0-R3}
0000bd14  ADD             R3, SP, #0x274+var_248
0000bd18  MOV             R2, R11
0000bd1c  MOV             R1, R4
0000bd20  MOV             R0, R6
0000bd24  BL              sub_98BC
0000bd28  MOV             R3, #0x50 ; 'P'
0000bd2c  ADD             R2, SP, #0x274+var_100
0000bd30  LDR             R1, =0x242B
0000bd34  MOV             R0, R7
0000bd38  BL              sub_19618
0000bd3c  MOV             R2, #1
0000bd40  ADD             R1, SP, #0x274+var_100
0000bd44  MOV             R0, R6
0000bd48  BL              sub_12BC8
0000bd4c  LDRH            R1, [R4]
0000bd50  SUB             R0, R1, R0
0000bd54  ADD             R0, R0, R0,LSR#31
0000bd58  MOV             R0, R0,ASR#1
0000bd5c  MOV             R0, R0,LSL#16
0000bd60  MOV             R0, R0,ASR#16
0000bd64  STR             R0, [SP,#0x274+var_24C]
0000bd68  LDRH            R0, [R4,#2]
0000bd6c  MOV             R1, #0xFFFFFFF6
0000bd70  ADD             R0, R1, R0,LSR#1
0000bd74  MOV             R0, R0,LSL#16
0000bd78  MOV             R0, R0,ASR#16
0000bd7c  STR             R0, [SP,#0x274+var_250]
0000bd80  LDR             R0, =(start - 0xBD8C)
0000bd84  ADD             R0, PC, R0; start
0000bd88  LDR             R0, [R0,#(dword_8 - 0xC)]
0000bd8c  LDR             R11, =(aT00001Hff8040S_0 - 0xBD9C); "$T00001$Hff8040$S000000%s"
0000bd90  ADD             R3, SP, #0x274+var_100
0000bd94  ADD             R11, PC, R11; "$T00001$Hff8040$S000000%s"
0000bd98  LDR             R12, [R0,#0x3C]
0000bd9c  ADD             R0, SP, #0x274+var_240
0000bda0  MOV             R2, R11
0000bda4  MOV             R1, #0x140
0000bda8  MOV             LR, PC
0000bdac  BX              R12
0000bdb0  LDR             R0, [SP,#0x274+var_24C]
0000bdb4  MOV             R3, #0
0000bdb8  MOV             R2, #2
0000bdbc  MOV             R1, #0
0000bdc0  ADD             R12, SP, #0x274+var_264
0000bdc4  STM             R12, {R0-R3}
0000bdc8  ADD             R0, SP, #0x274+var_240
0000bdcc  MOV             R2, #0
0000bdd0  STMEA           SP, {R0-R3}
0000bdd4  LDR             R2, [SP,#0x274+var_250]
0000bdd8  ADD             R3, SP, #0x274+var_248
0000bddc  MOV             R1, R4
0000bde0  MOV             R0, R6
0000bde4  BL              sub_98BC
0000bde8  MOV             R3, #0x50 ; 'P'
0000bdec  ADD             R2, SP, #0x274+var_100
0000bdf0  LDR             R1, =0x262A
0000bdf4  MOV             R0, R7
0000bdf8  BL              sub_19618
0000bdfc  LDRH            R0, [R4]
0000be00  MOV             R1, #0xFFFFFFDD
0000be04  ADD             R3, SP, #0x274+var_100
0000be08  ADD             R0, R1, R0,LSR#1
0000be0c  MOV             R0, R0,LSL#16
0000be10  MOV             R0, R0,ASR#16
0000be14  STR             R0, [SP,#0x274+var_24C]
0000be18  LDRH            R0, [R4,#2]
0000be1c  MOV             R1, #0xA
0000be20  ADD             R0, R1, R0,LSR#1
0000be24  MOV             R0, R0,LSL#16
0000be28  MOV             R0, R0,ASR#16
0000be2c  STR             R0, [SP,#0x274+var_250]
0000be30  LDRH            R0, [R9,#0x4E]
0000be34  CMP             R0, #0
0000be38  LDR             R0, [R10,#(dword_8 - 0xC)]
0000be3c  LDR             R12, [R0,#0x3C]
0000be40  BNE             loc_BE5C
0000be44  MOV             R2, R11
0000be48  MOV             R1, #0x140
0000be4c  ADD             R0, SP, #0x274+var_240
0000be50  MOV             LR, PC
0000be54  BX              R12
0000be58  B               loc_BE74
0000be5c  LDR             R2, =(aT00001Hfffff7S_0 - 0xBE68); "$T00001$Hfffff7$S000000%s"
0000be60  ADD             R2, PC, R2; "$T00001$Hfffff7$S000000%s"
0000be64  MOV             R1, #0x140
0000be68  ADD             R0, SP, #0x274+var_240
0000be6c  MOV             LR, PC
0000be70  BX              R12
0000be74  LDR             R0, [SP,#0x274+var_24C]
0000be78  MOV             R3, #0
0000be7c  MOV             R2, #2
0000be80  MOV             R1, #0
0000be84  ADD             R12, SP, #0x274+var_264
0000be88  STM             R12, {R0-R3}
0000be8c  ADD             R0, SP, #0x274+var_240
0000be90  MOV             R2, #0
0000be94  STMEA           SP, {R0-R3}
0000be98  LDR             R2, [SP,#0x274+var_250]
0000be9c  ADD             R3, SP, #0x274+var_248
0000bea0  MOV             R1, R4
0000bea4  MOV             R0, R6
0000bea8  BL              sub_98BC
0000beac  MOV             R3, #0x50 ; 'P'
0000beb0  ADD             R2, SP, #0x274+var_100
0000beb4  LDR             R1, =0x262B
0000beb8  MOV             R0, R7
0000bebc  BL              sub_19618
0000bec0  LDRH            R0, [R4]
0000bec4  MOV             R1, #0x17
0000bec8  ADD             R3, SP, #0x274+var_100
0000becc  ADD             R0, R1, R0,LSR#1
0000bed0  MOV             R0, R0,LSL#16
0000bed4  MOV             R0, R0,ASR#16
0000bed8  STR             R0, [SP,#0x274+var_24C]
0000bedc  LDRH            R0, [R4,#2]
0000bee0  MOV             R1, #0xA
0000bee4  ADD             R0, R1, R0,LSR#1
0000bee8  MOV             R7, R0,LSL#16
0000beec  LDRH            R0, [R9,#0x4E]
0000bef0  MOV             R7, R7,ASR#16
0000bef4  CMP             R0, #1
0000bef8  LDR             R0, [R10,#(dword_8 - 0xC)]
0000befc  LDR             R12, [R0,#0x3C]
0000bf00  BNE             loc_BF1C
0000bf04  MOV             R2, R11
0000bf08  MOV             R1, #0x140
0000bf0c  ADD             R0, SP, #0x274+var_240
0000bf10  MOV             LR, PC
0000bf14  BX              R12
0000bf18  B               loc_BF34
0000bf1c  LDR             R2, =(aT00001Hfffff7S_0 - 0xBF28); "$T00001$Hfffff7$S000000%s"
0000bf20  ADD             R2, PC, R2; "$T00001$Hfffff7$S000000%s"
0000bf24  MOV             R1, #0x140
0000bf28  ADD             R0, SP, #0x274+var_240
0000bf2c  MOV             LR, PC
0000bf30  BX              R12
0000bf34  LDR             R0, [SP,#0x274+var_24C]
0000bf38  MOV             R3, #0
0000bf3c  MOV             R2, #2
0000bf40  MOV             R1, #0
0000bf44  ADD             R12, SP, #0x274+var_264
0000bf48  STM             R12, {R0-R3}
0000bf4c  MOV             R2, #0
0000bf50  ADD             R0, SP, #0x274+var_240
0000bf54  STMEA           SP, {R0-R3}
0000bf58  ADD             R3, SP, #0x274+var_248
0000bf5c  MOV             R2, R7
0000bf60  B               loc_C0B0
0000bf64  MOV             R3, #0x50 ; 'P'
0000bf68  ADD             R2, SP, #0x274+var_100
0000bf6c  LDR             R1, =0x242C
0000bf70  MOV             R0, R7
0000bf74  BL              sub_19618
0000bf78  MOV             R2, #1
0000bf7c  ADD             R1, SP, #0x274+var_100
0000bf80  MOV             R0, R6
0000bf84  BL              sub_12BC8
0000bf88  LDRH            R1, [R4]
0000bf8c  LDR             R2, =(aT00001Hff8040S_0 - 0xBFC8); "$T00001$Hff8040$S000000%s"
0000bf90  ADD             R3, SP, #0x274+var_100
0000bf94  SUB             R0, R1, R0
0000bf98  ADD             R0, R0, R0,LSR#31
0000bf9c  MOV             R0, R0,ASR#1
0000bfa0  MOV             R9, R0,LSL#16
0000bfa4  LDRH            R0, [R4,#2]
0000bfa8  MOV             R1, #0xFFFFFFF6
0000bfac  MOV             R9, R9,ASR#16
0000bfb0  ADD             R0, R1, R0,LSR#1
0000bfb4  MOV             R11, R0,LSL#16
0000bfb8  LDR             R0, [R10,#(dword_8 - 0xC)]
0000bfbc  MOV             R11, R11,ASR#16
0000bfc0  ADD             R2, PC, R2; "$T00001$Hff8040$S000000%s"
0000bfc4  LDR             R12, [R0,#0x3C]
0000bfc8  ADD             R0, SP, #0x274+var_240
0000bfcc  MOV             R1, #0x140
0000bfd0  MOV             LR, PC
0000bfd4  BX              R12
0000bfd8  MOV             R3, #0
0000bfdc  MOV             R2, #2
0000bfe0  MOV             R1, #0
0000bfe4  ADD             R0, SP, #0x274+var_260
0000bfe8  STM             R0, {R1-R3}
0000bfec  STR             R9, [SP,#0x274+var_264]
0000bff0  MOV             R2, #0
0000bff4  ADD             R0, SP, #0x274+var_240
0000bff8  STMEA           SP, {R0-R3}
0000bffc  ADD             R3, SP, #0x274+var_248
0000c000  MOV             R2, R11
0000c004  MOV             R1, R4
0000c008  MOV             R0, R6
0000c00c  BL              sub_98BC
0000c010  MOV             R3, #0x50 ; 'P'
0000c014  ADD             R2, SP, #0x274+var_100
0000c018  LDR             R1, =0x138A
0000c01c  MOV             R0, R7
0000c020  BL              sub_19618
0000c024  MOV             R2, #1
0000c028  ADD             R1, SP, #0x274+var_100
0000c02c  MOV             R0, R6
0000c030  BL              sub_12BC8
0000c034  LDRH            R1, [R4]
0000c038  LDR             R2, =(aT00001H00ff00S_3 - 0xC074); "$T00001$H00ff00$S000000%s"
0000c03c  ADD             R3, SP, #0x274+var_100
0000c040  SUB             R0, R1, R0
0000c044  ADD             R0, R0, R0,LSR#31
0000c048  MOV             R0, R0,ASR#1
0000c04c  MOV             R7, R0,LSL#16
0000c050  LDRH            R0, [R4,#2]
0000c054  MOV             R1, #0xA
0000c058  MOV             R7, R7,ASR#16
0000c05c  ADD             R0, R1, R0,LSR#1
0000c060  MOV             R9, R0,LSL#16
0000c064  LDR             R0, [R10,#(dword_8 - 0xC)]
0000c068  MOV             R9, R9,ASR#16
0000c06c  ADD             R2, PC, R2; "$T00001$H00ff00$S000000%s"
0000c070  LDR             R12, [R0,#0x3C]
0000c074  ADD             R0, SP, #0x274+var_240
0000c078  MOV             R1, #0x140
0000c07c  MOV             LR, PC
0000c080  BX              R12
0000c084  MOV             R3, #0
0000c088  MOV             R2, #2
0000c08c  MOV             R1, #0
0000c090  ADD             R0, SP, #0x274+var_260
0000c094  STM             R0, {R1-R3}
0000c098  STR             R7, [SP,#0x274+var_264]
0000c09c  MOV             R2, #0
0000c0a0  ADD             R0, SP, #0x274+var_240
0000c0a4  STMEA           SP, {R0-R3}
0000c0a8  ADD             R3, SP, #0x274+var_248
0000c0ac  MOV             R2, R9
0000c0b0  MOV             R1, R4
0000c0b4  MOV             R0, R6
0000c0b8  BL              sub_98BC
0000c0bc  LDR             R0, [R5,#0x114]
0000c0c0  MOV             R1, #1
0000c0c4  STRH            R1, [R0,#8]
0000c0c8  LDRH            R0, [R4,#2]
0000c0cc  LDR             R1, [R5,#0x114]
0000c0d0  STRH            R0, [R1,#0x10]
0000c0d4  LDR             R0, [R5,#0x114]
0000c0d8  BL              sub_21BA8
0000c0dc  MOV             R2, R8
0000c0e0  MOV             R1, R4
0000c0e4  LDR             R0, [R5,#0x114]
0000c0e8  BL              sub_1CE08
0000c0ec  ADD             SP, SP, #0x274
0000c0f0  POP             {R4-R11,LR}
0000c0f4  BX              LR
