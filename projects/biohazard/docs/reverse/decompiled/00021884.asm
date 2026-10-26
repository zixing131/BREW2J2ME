00021884  PUSH            {R4-R7,LR}
00021888  SUB             SP, SP, #0x4C
0002188c  LDR             R1, [R0,#0xE0]
00021890  MOV             R4, R0
00021894  BL              sub_1058
00021898  MOV             R6, #0
0002189c  STRH            R6, [SP,#0x4C+var_8]
000218a0  STRH            R6, [SP,#0x4C+var_6]
000218a4  MOV             R5, R0
000218a8  LDRH            R0, [R4,#4]
000218ac  STRH            R0, [SP,#0x4C+var_4]
000218b0  LDR             R0, [R4,#0x44]
000218b4  ADD             R1, R0, R0,LSL#1
000218b8  MOV             R0, #5
000218bc  BL              sub_104
000218c0  STRH            R0, [SP,#0x4C+var_2]
000218c4  LDR             R0, [R5,#0xC]
000218c8  LDR             R2, =0x40606000
000218cc  ADD             R1, SP, #0x4C+var_8
000218d0  BL              sub_144D0
000218d4  STRH            R6, [SP,#0x4C+var_10]
000218d8  LDRH            R0, [SP,#0x4C+var_2]
000218dc  LDR             R2, =0x80606000
000218e0  ADD             R1, SP, #0x4C+var_10
000218e4  STRH            R0, [SP,#0x4C+var_E]
000218e8  LDRH            R0, [R4,#4]
000218ec  STRH            R0, [SP,#0x4C+var_C]
000218f0  LDR             R0, [R4,#0x44]
000218f4  STRH            R0, [SP,#0x4C+var_A]
000218f8  LDR             R0, [R5,#0xC]
000218fc  BL              sub_144D0
00021900  STRH            R6, [SP,#0x4C+var_18]
00021904  STRH            R6, [SP,#0x4C+var_16]
00021908  LDRH            R0, [R4,#4]
0002190c  MOV             R2, #0xFFFFFF00
00021910  STRH            R0, [SP,#0x4C+var_14]
00021914  LDRH            R0, [SP,#0x4C+var_2]
00021918  LDRH            R1, [SP,#0x4C+var_A]
0002191c  ADD             R0, R0, R1
00021920  STRH            R0, [SP,#0x4C+var_12]
00021924  LDR             R0, [R5,#0xC]
00021928  LDR             R1, [R0]
0002192c  LDR             R3, [R1,#0x28]
00021930  MOV             R1, #1
00021934  BLX             R3
00021938  LDRSH           R0, [SP,#0x4C+var_18]
0002193c  LDRSH           R1, [SP,#0x4C+var_16]
00021940  ADD             R2, SP, #0x4C+var_18
00021944  LDR             R3, =0x8220
00021948  STMEA           SP, {R0-R3}
0002194c  LDR             R2, =(word_28292 - 0x2195C)
00021950  MOV             R3, #0xFFFFFFFF
00021954  ADD             R2, PC, R2; word_28292
00021958  MOV             R1, #0x8000
0002195c  LDR             R0, [R5,#0xC]
00021960  BL              sub_143D4
00021964  STRH            R6, [SP,#0x4C+var_28]
00021968  LDRH            R0, [R4,#6]
0002196c  LDR             R1, [R4,#0x44]
00021970  MOV             R2, #0
00021974  SUB             R0, R0, R1
00021978  STRH            R0, [SP,#0x4C+var_26]
0002197c  LDRH            R0, [R4,#4]
00021980  ADD             R1, SP, #0x4C+var_28
00021984  STRH            R0, [SP,#0x4C+var_24]
00021988  LDR             R0, [R4,#0x44]
0002198c  STRH            R0, [SP,#0x4C+var_22]
00021990  LDR             R0, [R5,#0xC]
00021994  BL              sub_144D0
00021998  STRH            R6, [SP,#0x4C+var_20]
0002199c  LDR             R0, [R4,#0x44]
000219a0  ADD             R1, R0, R0,LSL#1
000219a4  MOV             R0, #5
000219a8  BL              sub_104
000219ac  LDRH            R1, [SP,#0x4C+var_26]
000219b0  SUB             R0, R1, R0
000219b4  STRH            R0, [SP,#0x4C+var_1E]
000219b8  LDRH            R0, [R4,#4]
000219bc  STRH            R0, [SP,#0x4C+var_1C]
000219c0  LDR             R0, [R4,#0x44]
000219c4  ADD             R1, R0, R0,LSL#1
000219c8  MOV             R0, #5
000219cc  BL              sub_104
000219d0  STRH            R0, [SP,#0x4C+var_1A]
000219d4  LDR             R0, [R5,#0xC]
000219d8  LDR             R2, =0x40404000
000219dc  ADD             R1, SP, #0x4C+var_20
000219e0  BL              sub_144D0
000219e4  MOV             R3, #0
000219e8  MOV             R2, #0xFFFFFFFF
000219ec  LDR             R0, [R5,#0xC]
000219f0  STMEA           SP, {R2,R3}
000219f4  LDR             R1, [R0]
000219f8  LDR             R7, =(word_2824E - 0x21A08)
000219fc  LDR             R12, [R1,#0xC]
00021a00  ADD             R7, PC, R7; word_2824E
00021a04  MOV             R2, R7
00021a08  MOV             R1, #0x8000
00021a0c  MOV             R3, #0xFFFFFFFF
00021a10  BLX             R12
00021a14  RSB             R1, R0, R0,LSL#3
00021a18  MOV             R0, #5
00021a1c  BL              sub_104
00021a20  MOV             R2, R0
00021a24  LDRH            R0, [R4,#4]
00021a28  SUB             R0, R0, R2
00021a2c  MOV             R0, R0,LSL#16
00021a30  MOV             R0, R0,ASR#16
00021a34  STRH            R0, [R4,#0xEC]
00021a38  LDRSH           R1, [SP,#0x4C+var_1E]
00021a3c  STRH            R1, [R4,#0xEE]
00021a40  STRH            R2, [R4,#0xF0]
00021a44  LDRH            R2, [SP,#0x4C+var_1A]
00021a48  LDRH            R3, [SP,#0x4C+var_22]
00021a4c  ADD             R2, R2, R3
00021a50  STRH            R2, [R4,#0xF2]
00021a54  ADD             R2, R4, #0xEC
00021a58  LDR             R3, =0x8220
00021a5c  STMEA           SP, {R0-R3}
00021a60  LDR             R0, [R5,#0xC]
00021a64  MOV             R3, #0xFFFFFFFF
00021a68  MOV             R2, R7
00021a6c  MOV             R1, #0x8000
00021a70  BL              sub_143D4
00021a74  STRH            R6, [SP,#0x4C+var_30]
00021a78  LDRH            R0, [SP,#0x4C+var_12]
00021a7c  LDR             R2, =0xC0DCC000
00021a80  STRH            R0, [SP,#0x4C+var_2E]
00021a84  LDRH            R0, [R4,#4]
00021a88  STRH            R0, [SP,#0x4C+var_2C]
00021a8c  LDRH            R0, [R4,#6]
00021a90  LDRH            R1, [SP,#0x4C+var_12]
00021a94  SUB             R0, R0, R1
00021a98  LDRH            R1, [R4,#0xF2]
00021a9c  SUB             R0, R0, R1
00021aa0  STRH            R0, [SP,#0x4C+var_2A]
00021aa4  LDR             R0, [R5,#0xC]
00021aa8  ADD             R1, SP, #0x4C+var_30
00021aac  BL              sub_144D0
00021ab0  STRH            R6, [SP,#0x4C+var_38]
00021ab4  LDRH            R0, [R4,#6]
00021ab8  ADD             R0, R0, R0,LSL#1
00021abc  MOV             R0, R0,LSR#3
00021ac0  STRH            R0, [SP,#0x4C+var_36]
00021ac4  LDRH            R0, [R4,#4]
00021ac8  STRH            R0, [SP,#0x4C+var_34]
00021acc  LDR             R0, [R4,#0x44]
00021ad0  MOV             R1, R0,LSL#3
00021ad4  MOV             R0, #5
00021ad8  BL              sub_104
00021adc  STRH            R0, [SP,#0x4C+var_32]
00021ae0  LDR             R0, [R5,#0xC]
00021ae4  MOV             R2, #0
00021ae8  LDR             R1, [R0]
00021aec  LDR             R3, [R1,#0x28]
00021af0  MOV             R1, #1
00021af4  BLX             R3
00021af8  LDRSH           R0, [SP,#0x4C+var_38]
00021afc  LDRSH           R1, [SP,#0x4C+var_36]
00021b00  ADD             R2, SP, #0x4C+var_38
00021b04  LDR             R3, =0x8220
00021b08  STMEA           SP, {R0-R3}
00021b0c  LDR             R2, =(dword_2829C - 0x21B1C)
00021b10  MOV             R3, #0xFFFFFFFF
00021b14  ADD             R2, PC, R2; dword_2829C
00021b18  MOV             R1, #0x8000
00021b1c  LDR             R0, [R5,#0xC]
00021b20  BL              sub_143D4
00021b24  LDRH            R5, [R4,#4]
00021b28  MOV             R0, R5
00021b2c  BL              sub_2E4
00021b30  STRH            R0, [R4,#0xF4]
00021b34  LDRH            R0, [SP,#0x4C+var_36]
00021b38  LDRH            R1, [SP,#0x4C+var_32]
00021b3c  ADD             R0, R0, R1
00021b40  STRH            R0, [R4,#0xF6]
00021b44  MOV             R0, R5,LSL#3
00021b48  BL              sub_2E4
00021b4c  STRH            R0, [R4,#0xF8]
00021b50  LDR             R0, [R4,#0x44]
00021b54  ADD             R0, R0, R0,LSL#2
00021b58  MOV             R1, R0,ASR#31
00021b5c  ADD             R0, R0, R1,LSR#29
00021b60  MOV             R0, R0,ASR#3
00021b64  STRH            R0, [R4,#0xFA]
00021b68  MOV             R0, #8
00021b6c  STR             R0, [R4,#0xE8]
00021b70  STR             R6, [R4,#0xE4]
00021b74  MOV             R0, R4
00021b78  BL              sub_223D0
00021b7c  MOV             R0, #0
00021b80  ADD             SP, SP, #0x4C ; 'L'
00021b84  POP             {R4-R7,PC}
