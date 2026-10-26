0001ad24  PUSH            {R4-R11,LR}
0001ad28  MOV             R5, R0
0001ad2c  MOV             R4, R1
0001ad30  LDRSH           R0, [R4,#2]
0001ad34  MOV             R1, #0
0001ad38  SUB             SP, SP, #0x274
0001ad3c  LDR             R3, =0x2104
0001ad40  STMEA           SP, {R0,R1,R3}
0001ad44  STR             R3, [SP,#0x274+var_268]
0001ad48  MOV             R6, R2
0001ad4c  MOV             R2, #0
0001ad50  LDRSH           R3, [R4]
0001ad54  MOV             R0, R4
0001ad58  BL              sub_10C58
0001ad5c  LDRB            R0, [R5,#0x1A4]
0001ad60  LDR             R7, =0x1002
0001ad64  MOV             R11, #0
0001ad68  ADD             R9, R5, #0x100
0001ad6c  CMP             R0, #7; switch 8 cases
0001ad70  ADDLS           PC, PC, R0,LSL#2; switch jump
0001ad74  B               def_1AD70; jumptable 0001AD70 default case, case 1
0001ad78  B               loc_1B148; jumptable 0001AD70 case 0
0001ad7c  B               def_1AD70; jumptable 0001AD70 default case, case 1
0001ad80  B               loc_1B0B0; jumptable 0001AD70 case 2
0001ad84  B               loc_1B09C; jumptable 0001AD70 case 3
0001ad88  B               loc_1B170; jumptable 0001AD70 case 4
0001ad8c  B               loc_1AD98; jumptable 0001AD70 case 5
0001ad90  B               loc_1B110; jumptable 0001AD70 case 6
0001ad94  B               loc_1AFCC; jumptable 0001AD70 case 7
0001ad98  MOV             R2, R6; jumptable 0001AD70 case 5
0001ad9c  MOV             R1, R4
0001ada0  LDR             R0, [R5,#0x18C]
0001ada4  BL              sub_1E204
0001ada8  MOV             R3, #0
0001adac  MOV             R2, R6
0001adb0  MOV             R1, R4
0001adb4  MOV             R0, R5
0001adb8  BL              sub_77C4
0001adbc  LDRSH           R0, [R4,#2]
0001adc0  MOV             R3, #0
0001adc4  MOV             R2, #0
0001adc8  STMEA           SP, {R0,R7}
0001adcc  ADD             R0, SP, #0x274+var_26C
0001add0  STM             R0, {R2,R3}
0001add4  LDRSH           R3, [R4]
0001add8  MOV             R0, R4
0001addc  MOV             R1, #0
0001ade0  BL              sub_10C58
0001ade4  MOV             R2, #8
0001ade8  MOV             R1, #0
0001adec  LDR             R0, [R5,#0x188]
0001adf0  BL              sub_103F4
0001adf4  LDRH            R0, [R4]
0001adf8  LDR             R1, [R5,#0x188]
0001adfc  MOV             R0, R0,LSR#1
0001ae00  STRH            R0, [R1,#0xE]
0001ae04  LDRH            R0, [R4,#2]
0001ae08  LDR             R1, [R5,#0x188]
0001ae0c  MOV             R0, R0,LSR#1
0001ae10  STRH            R0, [R1,#0x10]
0001ae14  LDR             R1, [R5,#0x188]
0001ae18  MOV             R0, #3
0001ae1c  STRH            R0, [R1,#8]
0001ae20  LDR             R0, [R5,#0x188]
0001ae24  BL              sub_21BA8
0001ae28  MOV             R2, R6
0001ae2c  MOV             R1, R4
0001ae30  LDR             R0, [R5,#0x188]
0001ae34  BL              sub_1CE08
0001ae38  LDR             R9, =(start - 0x1AE44)
0001ae3c  ADD             R9, PC, R9; start
0001ae40  LDR             R0, [R9,#(dword_8 - 0xC)]
0001ae44  ADR             LR, loc_1AE50
0001ae48  LDR             R0, [R0,#0xC0]
0001ae4c  BX              R0
0001ae50  LDR             R8, [R0,#0x28]
0001ae54  MOV             R3, #0x100
0001ae58  LDR             R7, [R8,#0x64]
0001ae5c  STRH            R11, [SP,#0x274+var_248]
0001ae60  STRH            R11, [SP,#0x274+var_246]
0001ae64  LDRH            R0, [R4]
0001ae68  ADD             R2, SP, #0x274+var_100
0001ae6c  LDR             R1, =0x1F54
0001ae70  STRH            R0, [SP,#0x274+var_244]
0001ae74  LDRH            R0, [R4,#2]
0001ae78  STRH            R0, [SP,#0x274+var_242]
0001ae7c  MOV             R0, R8
0001ae80  BL              sub_19618
0001ae84  MOV             R2, #1
0001ae88  ADD             R1, SP, #0x274+var_100
0001ae8c  MOV             R0, R7
0001ae90  BL              sub_12BC8
0001ae94  LDRH            R1, [R4]
0001ae98  LDR             R2, =(aT00001H00ff00S_5 - 0x1AED4); "$T00001$H00ff00$S000000%s"
0001ae9c  ADD             R3, SP, #0x274+var_100
0001aea0  SUB             R0, R1, R0
0001aea4  ADD             R0, R0, R0,LSR#31
0001aea8  MOV             R0, R0,ASR#1
0001aeac  MOV             R10, R0,LSL#16
0001aeb0  LDRH            R0, [R4,#2]
0001aeb4  MOV             R1, #0xFFFFFFEC
0001aeb8  MOV             R10, R10,ASR#16
0001aebc  ADD             R0, R1, R0,LSR#1
0001aec0  MOV             R11, R0,LSL#16
0001aec4  LDR             R0, [R9,#(dword_8 - 0xC)]
0001aec8  MOV             R11, R11,ASR#16
0001aecc  ADD             R2, PC, R2; "$T00001$H00ff00$S000000%s"
0001aed0  LDR             R12, [R0,#0x3C]
0001aed4  ADD             R0, SP, #0x274+var_240
0001aed8  MOV             R1, #0x140
0001aedc  MOV             LR, PC
0001aee0  BX              R12
0001aee4  MOV             R3, #0
0001aee8  MOV             R2, #1
0001aeec  MOV             R1, #0
0001aef0  ADD             R0, SP, #0x274+var_260
0001aef4  STM             R0, {R1-R3}
0001aef8  STR             R10, [SP,#0x274+var_264]
0001aefc  MOV             R2, #0
0001af00  ADD             R0, SP, #0x274+var_240
0001af04  STMEA           SP, {R0-R3}
0001af08  ADD             R3, SP, #0x274+var_248
0001af0c  MOV             R2, R11
0001af10  MOV             R1, R4
0001af14  MOV             R0, R7
0001af18  BL              sub_98BC
0001af1c  MOV             R3, #0x100
0001af20  ADD             R2, SP, #0x274+var_100
0001af24  LDR             R1, =0x1F55
0001af28  MOV             R0, R8
0001af2c  BL              sub_19618
0001af30  MOV             R2, #1
0001af34  ADD             R1, SP, #0x274+var_100
0001af38  MOV             R0, R7
0001af3c  BL              sub_12BC8
0001af40  LDRH            R1, [R4]
0001af44  LDR             R2, =(aT00001Hff8040S_1 - 0x1AF80); "$T00001$Hff8040$S000000%s"
0001af48  ADD             R3, SP, #0x274+var_100
0001af4c  SUB             R0, R1, R0
0001af50  ADD             R0, R0, R0,LSR#31
0001af54  MOV             R0, R0,ASR#1
0001af58  MOV             R8, R0,LSL#16
0001af5c  LDRH            R0, [R4,#2]
0001af60  MOV             R1, #0xA
0001af64  MOV             R8, R8,ASR#16
0001af68  ADD             R0, R1, R0,LSR#1
0001af6c  MOV             R10, R0,LSL#16
0001af70  LDR             R0, [R9,#(dword_8 - 0xC)]
0001af74  MOV             R10, R10,ASR#16
0001af78  ADD             R2, PC, R2; "$T00001$Hff8040$S000000%s"
0001af7c  LDR             R12, [R0,#0x3C]
0001af80  ADD             R0, SP, #0x274+var_240
0001af84  MOV             R1, #0x140
0001af88  MOV             LR, PC
0001af8c  BX              R12
0001af90  MOV             R3, #0
0001af94  MOV             R2, #1
0001af98  MOV             R1, #0
0001af9c  ADD             R0, SP, #0x274+var_260
0001afa0  STM             R0, {R1-R3}
0001afa4  STR             R8, [SP,#0x274+var_264]
0001afa8  MOV             R2, #0
0001afac  ADD             R0, SP, #0x274+var_240
0001afb0  STMEA           SP, {R0-R3}
0001afb4  ADD             R3, SP, #0x274+var_248
0001afb8  MOV             R2, R10
0001afbc  MOV             R1, R4
0001afc0  MOV             R0, R7
0001afc4  BL              sub_98BC
0001afc8  B               def_1AD70; jumptable 0001AD70 default case, case 1
0001afcc  LDRSH           R0, [R4,#2]; jumptable 0001AD70 case 7
0001afd0  LDR             R3, =0x2124
0001afd4  MOV             R1, #0
0001afd8  STMEA           SP, {R0,R1,R3}
0001afdc  STR             R3, [SP,#0x274+var_268]
0001afe0  LDRSH           R3, [R4]
0001afe4  MOV             R0, R4
0001afe8  MOV             R2, #0
0001afec  BL              sub_10C58
0001aff0  LDRH            R0, [R4]
0001aff4  LDR             R1, [R5,#0x188]
0001aff8  MOV             R2, #8
0001affc  MOV             R0, R0,LSR#1
0001b000  STRH            R0, [R1,#0xE]
0001b004  LDR             R0, [R5,#0x188]
0001b008  MOV             R1, #0
0001b00c  STRH            R11, [R0,#0x10]
0001b010  LDR             R0, [R5,#0x188]
0001b014  BL              sub_103F4
0001b018  LDR             R0, [R5,#0x188]
0001b01c  MOV             R1, #0xA
0001b020  STRH            R1, [R0,#8]
0001b024  LDR             R0, [R5,#0x188]
0001b028  BL              sub_21BA8
0001b02c  MOV             R2, R6
0001b030  MOV             R1, R4
0001b034  LDR             R0, [R5,#0x188]
0001b038  BL              sub_1CE08
0001b03c  LDR             R1, [R5,#0x188]
0001b040  MOV             R0, #2
0001b044  STRH            R0, [R1,#8]
0001b048  LDRH            R0, [R4,#2]
0001b04c  LDR             R1, [R5,#0x188]
0001b050  STRH            R0, [R1,#0x10]
0001b054  LDR             R0, [R5,#0x188]
0001b058  BL              sub_21BA8
0001b05c  MOV             R2, R6
0001b060  MOV             R1, R4
0001b064  LDR             R0, [R5,#0x188]
0001b068  BL              sub_1CE08
0001b06c  LDR             R0, [R5,#0x1B0]
0001b070  LDRSH           R1, [R9,#0xAA]
0001b074  ADD             R0, R0, R0,LSR#31
0001b078  SUB             R3, R1, R0,ASR#1
0001b07c  LDR             R0, [R5,#0x1AC]
0001b080  LDRSH           R1, [R9,#0xA8]
0001b084  ADD             R0, R0, R0,LSR#31
0001b088  SUB             R2, R1, R0,ASR#1
0001b08c  MOV             R1, R4
0001b090  LDR             R0, [R5,#0x18C]
0001b094  BL              sub_7228
0001b098  B               def_1AD70; jumptable 0001AD70 default case, case 1
0001b09c  MOV             R2, R6; jumptable 0001AD70 case 3
0001b0a0  MOV             R1, R4
0001b0a4  LDR             R0, [R5,#0x1A0]
0001b0a8  BL              sub_1D8E0
0001b0ac  B               def_1AD70; jumptable 0001AD70 default case, case 1
0001b0b0  MOV             R2, R6; jumptable 0001AD70 case 2
0001b0b4  MOV             R1, R4
0001b0b8  LDR             R0, [R5,#0x18C]
0001b0bc  BL              sub_1E204
0001b0c0  MOV             R3, #0
0001b0c4  MOV             R2, R6
0001b0c8  MOV             R1, R4
0001b0cc  MOV             R0, R5
0001b0d0  BL              sub_77C4
0001b0d4  LDRSH           R0, [R4,#2]
0001b0d8  MOV             R3, #0
0001b0dc  MOV             R2, #0
0001b0e0  STMEA           SP, {R0,R7}
0001b0e4  ADD             R0, SP, #0x274+var_26C
0001b0e8  STM             R0, {R2,R3}
0001b0ec  LDRSH           R3, [R4]
0001b0f0  MOV             R0, R4
0001b0f4  MOV             R1, #0
0001b0f8  BL              sub_10C58
0001b0fc  MOV             R2, R6
0001b100  MOV             R1, R4
0001b104  LDR             R0, [R5,#0x198]
0001b108  BL              sub_1E6A8
0001b10c  B               def_1AD70; jumptable 0001AD70 default case, case 1
0001b110  MOV             R2, R6; jumptable 0001AD70 case 6
0001b114  MOV             R1, R4
0001b118  LDR             R0, [R5,#0x18C]
0001b11c  BL              sub_1E204
0001b120  MOV             R3, #0
0001b124  MOV             R2, R6
0001b128  MOV             R1, R4
0001b12c  MOV             R0, R5
0001b130  BL              sub_77C4
0001b134  MOV             R2, R6
0001b138  MOV             R1, R4
0001b13c  LDR             R0, [R5,#0x194]
0001b140  BL              sub_1C1B4
0001b144  B               def_1AD70; jumptable 0001AD70 default case, case 1
0001b148  MOV             R2, R6; jumptable 0001AD70 case 0
0001b14c  MOV             R1, R4
0001b150  LDR             R0, [R5,#0x18C]
0001b154  BL              sub_1E204
0001b158  MOV             R3, #0
0001b15c  MOV             R2, R6
0001b160  MOV             R1, R4
0001b164  MOV             R0, R5
0001b168  BL              sub_77C4
0001b16c  B               def_1AD70; jumptable 0001AD70 default case, case 1
0001b170  MOV             R2, R6; jumptable 0001AD70 case 4
0001b174  MOV             R1, R4
0001b178  LDR             R0, [R5,#0x18C]
0001b17c  BL              sub_1E204
0001b180  MOV             R3, #0
0001b184  MOV             R2, R6
0001b188  MOV             R1, R4
0001b18c  MOV             R0, R5
0001b190  BL              sub_77C4
0001b194  LDRSH           R0, [R4,#2]
0001b198  MOV             R3, #0
0001b19c  MOV             R2, #0
0001b1a0  STMEA           SP, {R0,R7}
0001b1a4  ADD             R0, SP, #0x274+var_26C
0001b1a8  STM             R0, {R2,R3}
0001b1ac  LDRSH           R3, [R4]
0001b1b0  MOV             R0, R4
0001b1b4  MOV             R1, #0
0001b1b8  BL              sub_10C58
0001b1bc  MOV             R2, #8
0001b1c0  MOV             R1, #3
0001b1c4  LDR             R0, [R5,#0x188]
0001b1c8  BL              sub_103F4
0001b1cc  LDRH            R0, [R4]
0001b1d0  LDR             R1, [R5,#0x188]
0001b1d4  MOV             R0, R0,LSR#1
0001b1d8  STRH            R0, [R1,#0xE]
0001b1dc  LDRH            R0, [R4,#2]
0001b1e0  LDR             R1, [R5,#0x188]
0001b1e4  MOV             R0, R0,LSR#1
0001b1e8  STRH            R0, [R1,#0x10]
0001b1ec  LDR             R1, [R5,#0x188]
0001b1f0  MOV             R0, #4
0001b1f4  STRH            R0, [R1,#8]
0001b1f8  LDR             R0, [R5,#0x188]
0001b1fc  BL              sub_21BA8
0001b200  MOV             R2, R6
0001b204  MOV             R1, R4
0001b208  LDR             R0, [R5,#0x188]
0001b20c  BL              sub_1CE08
0001b210  LDR             R10, =(start - 0x1B21C)
0001b214  ADD             R10, PC, R10; start
0001b218  LDR             R0, [R10,#(dword_8 - 0xC)]
0001b21c  ADR             LR, loc_1B228
0001b220  LDR             R0, [R0,#0xC0]
0001b224  BX              R0
0001b228  LDR             R8, [R0,#0x28]
0001b22c  MOV             R0, #0
0001b230  LDR             R7, [R8,#0x64]
0001b234  STRH            R11, [SP,#0x274+var_248]
0001b238  STRH            R0, [SP,#0x274+var_246]
0001b23c  LDRH            R0, [R4]
0001b240  MOV             R3, #0x100
0001b244  ADD             R2, SP, #0x274+var_100
0001b248  STRH            R0, [SP,#0x274+var_244]
0001b24c  LDRH            R0, [R4,#2]
0001b250  LDR             R1, =0x1F43
0001b254  STRH            R0, [SP,#0x274+var_242]
0001b258  MOV             R0, R8
0001b25c  BL              sub_19618
0001b260  MOV             R2, #0xFFFFFFFF
0001b264  ADD             R1, SP, #0x274+var_100
0001b268  MOV             R0, R7
0001b26c  BL              sub_12BC8
0001b270  LDRH            R1, [R4]
0001b274  LDR             R2, =(aT00001Hff0000S - 0x1B2B4); "$T00001$Hff0000$S000000%s"
0001b278  ADD             R3, SP, #0x274+var_100
0001b27c  SUB             R0, R1, R0
0001b280  ADD             R0, R0, R0,LSR#31
0001b284  MOV             R0, R0,ASR#1
0001b288  MOV             R0, R0,LSL#16
0001b28c  MOV             R0, R0,ASR#16
0001b290  STR             R0, [SP,#0x274+var_24C]
0001b294  LDRH            R0, [R4,#2]
0001b298  MOV             R1, #0xFFFFFFE4
0001b29c  ADD             R0, R1, R0,LSR#1
0001b2a0  MOV             R11, R0,LSL#16
0001b2a4  LDR             R0, [R10,#(dword_8 - 0xC)]
0001b2a8  MOV             R11, R11,ASR#16
0001b2ac  ADD             R2, PC, R2; "$T00001$Hff0000$S000000%s"
0001b2b0  LDR             R12, [R0,#0x3C]
0001b2b4  ADD             R0, SP, #0x274+var_240
0001b2b8  MOV             R1, #0x140
0001b2bc  MOV             LR, PC
0001b2c0  BX              R12
0001b2c4  LDR             R0, [SP,#0x274+var_24C]
0001b2c8  MOV             R3, #0
0001b2cc  MOV             R2, #0xFFFFFFFF
0001b2d0  MOV             R1, #0
0001b2d4  ADD             R12, SP, #0x274+var_264
0001b2d8  STM             R12, {R0-R3}
0001b2dc  MOV             R2, #0
0001b2e0  ADD             R0, SP, #0x274+var_240
0001b2e4  STMEA           SP, {R0-R3}
0001b2e8  ADD             R3, SP, #0x274+var_248
0001b2ec  MOV             R2, R11
0001b2f0  MOV             R1, R4
0001b2f4  MOV             R0, R7
0001b2f8  BL              sub_98BC
0001b2fc  MOV             R3, #0x100
0001b300  ADD             R2, SP, #0x274+var_100
0001b304  LDR             R1, =0x1F44
0001b308  MOV             R0, R8
0001b30c  BL              sub_19618
0001b310  MOV             R2, #1
0001b314  ADD             R1, SP, #0x274+var_100
0001b318  MOV             R0, R7
0001b31c  BL              sub_12BC8
0001b320  LDRH            R1, [R4]
0001b324  LDR             R11, =(aT00001HffffffS_2 - 0x1B368); "$T00001$Hffffff$S000000%s"
0001b328  ADD             R3, SP, #0x274+var_100
0001b32c  SUB             R0, R1, R0
0001b330  ADD             R0, R0, R0,LSR#31
0001b334  MOV             R0, R0,ASR#1
0001b338  MOV             R0, R0,LSL#16
0001b33c  MOV             R0, R0,ASR#16
0001b340  STR             R0, [SP,#0x274+var_24C]
0001b344  LDRH            R0, [R4,#2]
0001b348  MOV             R1, #0xFFFFFFFA
0001b34c  ADD             R0, R1, R0,LSR#1
0001b350  MOV             R0, R0,LSL#16
0001b354  MOV             R0, R0,ASR#16
0001b358  STR             R0, [SP,#0x274+var_250]
0001b35c  LDR             R0, [R10,#(dword_8 - 0xC)]
0001b360  ADD             R11, PC, R11; "$T00001$Hffffff$S000000%s"
0001b364  LDR             R12, [R0,#0x3C]
0001b368  ADD             R0, SP, #0x274+var_240
0001b36c  MOV             R2, R11
0001b370  MOV             R1, #0x140
0001b374  MOV             LR, PC
0001b378  BX              R12
0001b37c  LDR             R0, [SP,#0x274+var_24C]
0001b380  MOV             R3, #0
0001b384  MOV             R2, #1
0001b388  MOV             R1, #0
0001b38c  ADD             R12, SP, #0x274+var_264
0001b390  STM             R12, {R0-R3}
0001b394  ADD             R0, SP, #0x274+var_240
0001b398  MOV             R2, #0
0001b39c  STMEA           SP, {R0-R3}
0001b3a0  LDR             R2, [SP,#0x274+var_250]
0001b3a4  ADD             R3, SP, #0x274+var_248
0001b3a8  MOV             R1, R4
0001b3ac  MOV             R0, R7
0001b3b0  BL              sub_98BC
0001b3b4  MOV             R3, #0x100
0001b3b8  ADD             R2, SP, #0x274+var_100
0001b3bc  LDR             R1, =0x1F45
0001b3c0  MOV             R0, R8
0001b3c4  BL              sub_19618
0001b3c8  MOV             R2, #1
0001b3cc  ADD             R1, SP, #0x274+var_100
0001b3d0  MOV             R0, R7
0001b3d4  BL              sub_12BC8
0001b3d8  LDRH            R1, [R4]
0001b3dc  ADD             R3, SP, #0x274+var_100
0001b3e0  SUB             R0, R1, R0
0001b3e4  ADD             R0, R0, R0,LSR#31
0001b3e8  MOV             R0, R0,ASR#1
0001b3ec  SUB             R0, R0, #0x32 ; '2'
0001b3f0  MOV             R0, R0,LSL#16
0001b3f4  MOV             R0, R0,ASR#16
0001b3f8  STR             R0, [SP,#0x274+var_24C]
0001b3fc  LDRH            R0, [R4,#2]
0001b400  MOV             R1, #0xF
0001b404  ADD             R0, R1, R0,LSR#1
0001b408  MOV             R0, R0,LSL#16
0001b40c  MOV             R0, R0,ASR#16
0001b410  STR             R0, [SP,#0x274+var_250]
0001b414  LDRH            R0, [R9,#0x9C]
0001b418  CMP             R0, #0
0001b41c  LDR             R0, [R10,#(dword_8 - 0xC)]
0001b420  LDR             R12, [R0,#0x3C]
0001b424  BNE             loc_1B444
0001b428  LDR             R2, =(aT00001H00ff00S_5 - 0x1B434); "$T00001$H00ff00$S000000%s"
0001b42c  ADD             R2, PC, R2; "$T00001$H00ff00$S000000%s"
0001b430  MOV             R1, #0x140
0001b434  ADD             R0, SP, #0x274+var_240
0001b438  MOV             LR, PC
0001b43c  BX              R12
0001b440  B               loc_1B458
0001b444  MOV             R2, R11
0001b448  MOV             R1, #0x140
0001b44c  ADD             R0, SP, #0x274+var_240
0001b450  MOV             LR, PC
0001b454  BX              R12
0001b458  LDR             R0, [SP,#0x274+var_24C]
0001b45c  MOV             R3, #0
0001b460  MOV             R2, #1
0001b464  MOV             R1, #0
0001b468  ADD             R12, SP, #0x274+var_264
0001b46c  STM             R12, {R0-R3}
0001b470  ADD             R0, SP, #0x274+var_240
0001b474  MOV             R2, #0
0001b478  STMEA           SP, {R0-R3}
0001b47c  LDR             R2, [SP,#0x274+var_250]
0001b480  ADD             R3, SP, #0x274+var_248
0001b484  MOV             R1, R4
0001b488  MOV             R0, R7
0001b48c  BL              sub_98BC
0001b490  MOV             R3, #0x100
0001b494  ADD             R2, SP, #0x274+var_100
0001b498  LDR             R1, =0x1F46
0001b49c  MOV             R0, R8
0001b4a0  BL              sub_19618
0001b4a4  MOV             R2, #1
0001b4a8  ADD             R1, SP, #0x274+var_100
0001b4ac  MOV             R0, R7
0001b4b0  BL              sub_12BC8
0001b4b4  LDRH            R1, [R4]
0001b4b8  ADD             R3, SP, #0x274+var_100
0001b4bc  SUB             R0, R1, R0
0001b4c0  ADD             R0, R0, R0,LSR#31
0001b4c4  MOV             R0, R0,ASR#1
0001b4c8  ADD             R0, R0, #0x32 ; '2'
0001b4cc  MOV             R0, R0,LSL#16
0001b4d0  MOV             R0, R0,ASR#16
0001b4d4  STR             R0, [SP,#0x274+var_24C]
0001b4d8  LDRH            R0, [R4,#2]
0001b4dc  MOV             R1, #0xF
0001b4e0  ADD             R0, R1, R0,LSR#1
0001b4e4  MOV             R8, R0,LSL#16
0001b4e8  LDRH            R0, [R9,#0x9C]
0001b4ec  MOV             R8, R8,ASR#16
0001b4f0  CMP             R0, #1
0001b4f4  LDR             R0, [R10,#(dword_8 - 0xC)]
0001b4f8  LDR             R12, [R0,#0x3C]
0001b4fc  BNE             loc_1B51C
0001b500  LDR             R2, =(aT00001H00ff00S_5 - 0x1B50C); "$T00001$H00ff00$S000000%s"
0001b504  ADD             R2, PC, R2; "$T00001$H00ff00$S000000%s"
0001b508  MOV             R1, #0x140
0001b50c  ADD             R0, SP, #0x274+var_240
0001b510  MOV             LR, PC
0001b514  BX              R12
0001b518  B               loc_1B530
0001b51c  MOV             R2, R11
0001b520  MOV             R1, #0x140
0001b524  ADD             R0, SP, #0x274+var_240
0001b528  MOV             LR, PC
0001b52c  BX              R12
0001b530  LDR             R0, [SP,#0x274+var_24C]
0001b534  MOV             R3, #0
0001b538  MOV             R2, #1
0001b53c  MOV             R1, #0
0001b540  ADD             R9, SP, #0x274+var_264
0001b544  STM             R9, {R0-R3}
0001b548  MOV             R2, #0
0001b54c  ADD             R0, SP, #0x274+var_240
0001b550  STMEA           SP, {R0-R3}
0001b554  ADD             R3, SP, #0x274+var_248
0001b558  MOV             R2, R8
0001b55c  MOV             R1, R4
0001b560  MOV             R0, R7
0001b564  BL              sub_98BC
0001b568  MOV             R2, #8
0001b56c  MOV             R1, #6
0001b570  LDR             R0, [R5,#0x188]
0001b574  BL              sub_103F4
0001b578  LDRH            R0, [R4]
0001b57c  LDR             R1, [R5,#0x188]
0001b580  MOV             R0, R0,LSR#1
0001b584  STRH            R0, [R1,#0xE]
0001b588  LDRH            R0, [R4,#2]
0001b58c  LDR             R1, [R5,#0x188]
0001b590  STRH            R0, [R1,#0x10]
0001b594  LDR             R1, [R5,#0x188]
0001b598  MOV             R0, #9
0001b59c  STRH            R0, [R1,#8]
0001b5a0  LDR             R0, [R5,#0x188]
0001b5a4  BL              sub_21BA8
0001b5a8  MOV             R2, R6
0001b5ac  MOV             R1, R4
0001b5b0  LDR             R0, [R5,#0x188]
0001b5b4  BL              sub_1CE08
0001b5b8  MOV             R2, R6; jumptable 0001AD70 default case, case 1
0001b5bc  MOV             R1, R4
0001b5c0  ADD             R0, R5, #0x220
0001b5c4  ADD             SP, SP, #0x274
0001b5c8  POP             {R4-R11,LR}
0001b5cc  B               sub_1D040
