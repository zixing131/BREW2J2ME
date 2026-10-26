00025608  PUSH            {R4-R11,LR}
0002560c  SUB             SP, SP, #0x9C
00025610  LDR             R1, [R0,#0xE0]
00025614  MOV             R5, R0
00025618  BL              sub_1058
0002561c  LDRH            R7, [R5,#4]
00025620  MOV             R4, R0
00025624  MOV             R0, R7,LSL#1
00025628  MOV             R9, R0,LSR#4
0002562c  LDR             R0, [R5,#0x44]
00025630  ADD             R1, R0, R0,LSL#3
00025634  MOV             R0, #6
00025638  BL              sub_104
0002563c  MOV             R6, R0
00025640  MOV             R11, #0
00025644  STRH            R11, [SP,#0x9C+var_38]
00025648  SUB             R0, R7, R9
0002564c  SUB             R8, R0, #8
00025650  STRH            R11, [SP,#0x9C+var_36]
00025654  LDRH            R0, [R5,#4]
00025658  LDR             R2, =0xC0DCC000
0002565c  ADD             R1, SP, #0x9C+var_38
00025660  STRH            R0, [SP,#0x9C+var_34]
00025664  LDRH            R0, [R5,#6]
00025668  STRH            R0, [SP,#0x9C+var_32]
0002566c  LDR             R0, [R4,#0xC]
00025670  BL              sub_144F4
00025674  STRH            R11, [SP,#0x9C+var_8]
00025678  STRH            R11, [SP,#0x9C+var_6]
0002567c  LDRH            R0, [R5,#4]
00025680  STRH            R0, [SP,#0x9C+var_4]
00025684  LDR             R0, [R5,#0x44]
00025688  ADD             R1, R0, R0,LSL#1
0002568c  MOV             R0, #7
00025690  BL              sub_104
00025694  STRH            R0, [SP,#0x9C+var_2]
00025698  LDR             R0, [R4,#0xC]
0002569c  LDR             R2, =0x40606000
000256a0  ADD             R1, SP, #0x9C+var_8
000256a4  BL              sub_144F4
000256a8  STRH            R11, [SP,#0x9C+var_10]
000256ac  LDRH            R0, [SP,#0x9C+var_2]
000256b0  STRH            R0, [SP,#0x9C+var_E]
000256b4  LDRH            R0, [R5,#4]
000256b8  STRH            R0, [SP,#0x9C+var_C]
000256bc  LDR             R1, [R5,#0x44]
000256c0  MOV             R0, #6
000256c4  MUL             R1, R0, R1
000256c8  MOV             R0, #7
000256cc  BL              sub_104
000256d0  STRH            R0, [SP,#0x9C+var_A]
000256d4  LDR             R0, [R4,#0xC]
000256d8  LDR             R2, =0x80606000
000256dc  ADD             R1, SP, #0x9C+var_10
000256e0  BL              sub_144F4
000256e4  STRH            R11, [SP,#0x9C+var_18]
000256e8  STRH            R11, [SP,#0x9C+var_16]
000256ec  LDRH            R0, [R5,#4]
000256f0  MOV             R2, #0xFFFFFF00
000256f4  STRH            R0, [SP,#0x9C+var_14]
000256f8  LDRH            R0, [SP,#0x9C+var_2]
000256fc  LDRH            R1, [SP,#0x9C+var_A]
00025700  ADD             R0, R0, R1
00025704  STRH            R0, [SP,#0x9C+var_12]
00025708  LDR             R0, [R4,#0xC]
0002570c  MOV             R1, #1
00025710  BL              sub_14594
00025714  LDRSH           R0, [SP,#0x9C+var_18]
00025718  LDRSH           R1, [SP,#0x9C+var_16]
0002571c  LDR             R3, =0x8220
00025720  ADD             R2, SP, #0x9C+var_18
00025724  STMEA           SP, {R0-R3}
00025728  LDR             R2, =(word_282B2 - 0x25738)
0002572c  MOV             R3, #0xFFFFFFFF
00025730  ADD             R2, PC, R2; word_282B2
00025734  MOV             R1, #0x8000
00025738  LDR             R0, [R4,#0xC]
0002573c  BL              sub_1441C
00025740  MOV             R7, R9,LSL#16
00025744  MOV             R7, R7,ASR#16
00025748  STRH            R7, [SP,#0x9C+var_38]
0002574c  LDR             R1, [R5,#0x44]
00025750  MOV             R0, #0
00025754  ADD             R1, R1, #3
00025758  MLA             R0, R1, R0, R6
0002575c  MOV             R8, R8,LSL#16
00025760  MOV             R8, R8,ASR#16
00025764  STRH            R0, [SP,#0x9C+var_36]
00025768  STRH            R8, [SP,#0x9C+var_34]
0002576c  LDR             R0, [R5,#0x44]
00025770  MOV             R1, #1
00025774  ADD             R0, R0, #3
00025778  STRH            R0, [SP,#0x9C+var_32]
0002577c  LDR             R0, [R4,#0xC]
00025780  MOV             R2, #0
00025784  BL              sub_14594
00025788  LDRSH           R0, [SP,#0x9C+var_38]
0002578c  LDRSH           R1, [SP,#0x9C+var_36]
00025790  LDR             R3, =0x8010
00025794  ADD             R2, SP, #0x9C+var_38
00025798  STMEA           SP, {R0-R3}
0002579c  LDR             R10, =(word_28262 - 0x257AC)
000257a0  LDR             R0, [R4,#0xC]
000257a4  ADD             R10, PC, R10; word_28262
000257a8  MOV             R2, R10
000257ac  MOV             R3, #0xFFFFFFFF
000257b0  MOV             R1, #0x8000
000257b4  BL              sub_1441C
000257b8  STR             R11, [R4,#0x4C]
000257bc  MOV             R0, #0x32 ; '2'
000257c0  STR             R0, [R4,#0x58]
000257c4  MOV             R0, #1
000257c8  STR             R0, [R4,#0x5C]
000257cc  MOV             R0, #0x28 ; '('
000257d0  STR             R0, [R4,#0x60]
000257d4  STR             R11, [R4,#0x50]
000257d8  LDR             R11, =(start - 0x257E8)
000257dc  MOV             R0, #0x14
000257e0  ADD             R11, PC, R11; start
000257e4  STR             R0, [R4,#0x64]
000257e8  LDR             R0, [R11,#(dword_8 - 0xC)]
000257ec  MOV             R2, #0x3C ; '<'
000257f0  LDR             R3, [R0,#4]
000257f4  ADD             R0, SP, #0x9C+var_74
000257f8  MOV             R1, #0
000257fc  BLX             R3
00025800  LDR             R0, [R4,#0x10]
00025804  ADD             R0, R0, #0x400
00025808  LDR             R1, =(start - 0x25818)
0002580c  ADD             R0, R0, #0xEC
00025810  ADD             R1, PC, R1; start
00025814  LDR             R1, [R1,#(dword_8 - 0xC)]
00025818  MOV             R3, #0x3C ; '<'
0002581c  LDR             R12, [R1,#0x50]
00025820  MOV             R1, #0x5A ; 'Z'
00025824  ADD             R2, SP, #0x9C+var_74
00025828  BLX             R12
0002582c  LDR             R0, [R4,#0x70]
00025830  CMP             R0, #0
00025834  BNE             loc_2584C
00025838  LDR             R0, [R11,#(dword_8 - 0xC)]
0002583c  LDR             R1, [R0,#0x70]
00025840  ADD             R0, SP, #0x9C+var_74
00025844  BLX             R1
00025848  STR             R0, [R4,#0x70]
0002584c  MOV             R2, R10
00025850  MOV             R1, #0x8000
00025854  LDR             R0, [R4,#0xC]
00025858  BL              sub_14568
0002585c  LDRH            R1, [SP,#0x9C+var_38]
00025860  ADD             R1, R1, R0
00025864  STRH            R1, [R4,#0x74]
00025868  LDRH            R1, [SP,#0x9C+var_36]
0002586c  STRH            R1, [R4,#0x76]
00025870  LDRH            R1, [SP,#0x9C+var_34]
00025874  SUB             R0, R1, R0
00025878  STRH            R0, [R4,#0x78]
0002587c  LDRH            R0, [SP,#0x9C+var_32]
00025880  STRH            R0, [R4,#0x7A]
00025884  MOV             R0, #0xFF00
00025888  STR             R0, [R4,#0x68]
0002588c  LDR             R0, =0xC0DCC000
00025890  STR             R0, [R4,#0x6C]
00025894  LDR             R0, =(sub_26F78 - 0x258A0)
00025898  ADD             R0, PC, R0; sub_26F78
0002589c  STR             R0, [R4,#0x80]
000258a0  MOV             R0, R5
000258a4  ADD             R1, R4, #0x4C ; 'L'
000258a8  BL              sub_24EB4
000258ac  STRH            R7, [SP,#0x9C+var_38]
000258b0  LDR             R1, [R5,#0x44]
000258b4  MOV             R0, #1
000258b8  ADD             R1, R1, #3
000258bc  MLA             R0, R1, R0, R6
000258c0  MOV             R1, #1
000258c4  STRH            R0, [SP,#0x9C+var_36]
000258c8  STRH            R8, [SP,#0x9C+var_34]
000258cc  LDR             R0, [R5,#0x44]
000258d0  MOV             R2, #0
000258d4  ADD             R0, R0, #3
000258d8  STRH            R0, [SP,#0x9C+var_32]
000258dc  LDR             R0, [R4,#0xC]
000258e0  BL              sub_14594
000258e4  LDRSH           R0, [SP,#0x9C+var_38]
000258e8  LDRSH           R1, [SP,#0x9C+var_36]
000258ec  LDR             R3, =0x8010
000258f0  ADD             R2, SP, #0x9C+var_38
000258f4  STMEA           SP, {R0-R3}
000258f8  LDR             R2, =(word_2826A - 0x25908)
000258fc  MOV             R3, #0xFFFFFFFF
00025900  ADD             R2, PC, R2; word_2826A
00025904  MOV             R1, #0x8000
00025908  LDR             R0, [R4,#0xC]
0002590c  BL              sub_1441C
00025910  LDR             R2, =(word_2826A - 0x2591C)
00025914  ADD             R2, PC, R2; word_2826A
00025918  MOV             R1, #0x8000
0002591c  LDR             R0, [R4,#0xC]
00025920  BL              sub_14568
00025924  LDRH            R1, [SP,#0x9C+var_38]
00025928  MOV             R2, #0
0002592c  ADD             R1, R1, R0
00025930  STRH            R1, [SP,#0x9C+var_38]
00025934  LDRH            R1, [SP,#0x9C+var_34]
00025938  SUB             R0, R1, R0
0002593c  STRH            R0, [SP,#0x9C+var_34]
00025940  LDR             R0, [R4,#0xC]
00025944  MOV             R1, #1
00025948  BL              sub_14594
0002594c  LDR             R0, [R11,#(dword_8 - 0xC)]
00025950  MOV             R2, #0x3C ; '<'
00025954  LDR             R3, [R0,#4]
00025958  ADD             R0, SP, #0x9C+var_74
0002595c  MOV             R1, #0
00025960  BLX             R3
00025964  LDR             R0, [R4,#0x10]
00025968  LDR             R1, [R11,#(dword_8 - 0xC)]
0002596c  ADD             R0, R0, #0x400
00025970  LDR             R12, [R1,#0x50]
00025974  MOV             R1, #0x5A ; 'Z'
00025978  ADD             R0, R0, #0x8C
0002597c  MOV             R3, #0x3C ; '<'
00025980  ADD             R2, SP, #0x9C+var_74
00025984  BLX             R12
00025988  LDRSH           R0, [SP,#0x9C+var_38]
0002598c  LDRSH           R1, [SP,#0x9C+var_36]
00025990  ADD             R2, SP, #0x9C+var_38
00025994  LDR             R3, =0x8010
00025998  STMEA           SP, {R0-R3}
0002599c  LDR             R0, [R4,#0xC]
000259a0  MOV             R3, #0xFFFFFFFF
000259a4  ADD             R2, SP, #0x9C+var_74
000259a8  MOV             R1, #0x8000
000259ac  BL              sub_1441C
000259b0  STRH            R7, [SP,#0x9C+var_38]
000259b4  LDR             R1, [R5,#0x44]
000259b8  MOV             R0, #2
000259bc  ADD             R1, R1, #3
000259c0  MLA             R0, R1, R0, R6
000259c4  MOV             R1, #1
000259c8  STRH            R0, [SP,#0x9C+var_36]
000259cc  STRH            R8, [SP,#0x9C+var_34]
000259d0  LDR             R0, [R5,#0x44]
000259d4  MOV             R2, #0
000259d8  ADD             R0, R0, #3
000259dc  STRH            R0, [SP,#0x9C+var_32]
000259e0  LDR             R0, [R4,#0xC]
000259e4  BL              sub_14594
000259e8  LDRSH           R0, [SP,#0x9C+var_38]
000259ec  LDRSH           R1, [SP,#0x9C+var_36]
000259f0  LDR             R3, =0x8010
000259f4  ADD             R2, SP, #0x9C+var_38
000259f8  STMEA           SP, {R0-R3}
000259fc  LDR             R10, =(word_2825A - 0x25A0C)
00025a00  LDR             R0, [R4,#0xC]
00025a04  ADD             R10, PC, R10; word_2825A
00025a08  MOV             R2, R10
00025a0c  MOV             R3, #0xFFFFFFFF
00025a10  MOV             R1, #0x8000
00025a14  BL              sub_1441C
00025a18  MOV             R2, R10
00025a1c  MOV             R1, #0x8000
00025a20  LDR             R0, [R4,#0xC]
00025a24  BL              sub_14568
00025a28  LDRH            R1, [SP,#0x9C+var_38]
00025a2c  MOV             R2, #0xFF00
00025a30  ADD             R1, R1, R0
00025a34  STRH            R1, [SP,#0x9C+var_38]
00025a38  LDRH            R1, [SP,#0x9C+var_34]
00025a3c  SUB             R0, R1, R0
00025a40  STRH            R0, [SP,#0x9C+var_34]
00025a44  LDR             R0, [R4,#0xC]
00025a48  MOV             R1, #1
00025a4c  BL              sub_14594
00025a50  LDRSH           R0, [SP,#0x9C+var_38]
00025a54  LDRSH           R1, [SP,#0x9C+var_36]
00025a58  LDR             R3, =0x8010
00025a5c  ADD             R2, SP, #0x9C+var_38
00025a60  STMEA           SP, {R0-R3}
00025a64  LDR             R0, [R4,#0xC]
00025a68  MOV             R3, #0xFFFFFFFF
00025a6c  ADD             R2, R5, #0x11C
00025a70  MOV             R1, #0x8000
00025a74  BL              sub_1441C
00025a78  STRH            R7, [SP,#0x9C+var_38]
00025a7c  LDR             R1, [R5,#0x44]
00025a80  MOV             R0, #3
00025a84  ADD             R1, R1, R0
00025a88  MLA             R0, R1, R0, R6
00025a8c  MOV             R1, #1
00025a90  STRH            R0, [SP,#0x9C+var_36]
00025a94  STRH            R8, [SP,#0x9C+var_34]
00025a98  LDR             R0, [R5,#0x44]
00025a9c  MOV             R2, #0
00025aa0  ADD             R0, R0, #3
00025aa4  STRH            R0, [SP,#0x9C+var_32]
00025aa8  LDR             R0, [R4,#0xC]
00025aac  BL              sub_14594
00025ab0  LDRSH           R0, [SP,#0x9C+var_38]
00025ab4  LDRSH           R1, [SP,#0x9C+var_36]
00025ab8  LDR             R3, =0x8010
00025abc  ADD             R2, SP, #0x9C+var_38
00025ac0  STMEA           SP, {R0-R3}
00025ac4  LDR             R2, =(dword_28274 - 0x25AD4)
00025ac8  MOV             R3, #0xFFFFFFFF
00025acc  ADD             R2, PC, R2; dword_28274
00025ad0  MOV             R1, #0x8000
00025ad4  LDR             R0, [R4,#0xC]
00025ad8  BL              sub_1441C
00025adc  LDR             R0, [R4,#0x10]
00025ae0  LDR             R10, [R0,#0x54C]
00025ae4  MOV             R0, #0x64 ; 'd'
00025ae8  MOV             R1, R10
00025aec  BL              sub_1DC
00025af0  MOV             R1, #0x19
00025af4  MUL             R2, R1, R0
00025af8  SUB             R3, R10, R2,LSL#2
00025afc  STR             R3, [SP,#0x9C+var_9C]
00025b00  LDR             R1, [R11,#(dword_8 - 0xC)]
00025b04  LDR             R2, =(aD2d - 0x25B14); "%d.%2d"
00025b08  MOV             R3, R0
00025b0c  ADD             R2, PC, R2; "%d.%2d"
00025b10  LDR             R12, [R1,#0x144]
00025b14  MOV             R1, #8
00025b18  ADD             R0, SP, #0x9C+var_7C
00025b1c  BLX             R12
00025b20  LDR             R0, [R11,#(dword_8 - 0xC)]
00025b24  MOV             R2, #0x3C ; '<'
00025b28  LDR             R3, [R0,#0x40]
00025b2c  ADD             R0, SP, #0x9C+var_7C
00025b30  ADD             R1, SP, #0x9C+var_74
00025b34  BLX             R3
00025b38  LDR             R0, [R11,#(dword_8 - 0xC)]
00025b3c  MOV             R2, #0x1E
00025b40  LDR             R1, =(dword_282D0 - 0x25B4C)
00025b44  ADD             R1, PC, R1; dword_282D0
00025b48  LDR             R3, [R0,#0x158]
00025b4c  ADD             R0, SP, #0x9C+var_74
00025b50  BLX             R3
00025b54  LDR             R2, =(dword_28274 - 0x25B60)
00025b58  ADD             R2, PC, R2; dword_28274
00025b5c  MOV             R1, #0x8000
00025b60  LDR             R0, [R4,#0xC]
00025b64  BL              sub_14568
00025b68  LDRH            R1, [SP,#0x9C+var_38]
00025b6c  MOV             R2, #0xFF00
00025b70  ADD             R1, R1, R0
00025b74  STRH            R1, [SP,#0x9C+var_38]
00025b78  LDRH            R1, [SP,#0x9C+var_34]
00025b7c  SUB             R0, R1, R0
00025b80  STRH            R0, [SP,#0x9C+var_34]
00025b84  LDR             R0, [R4,#0xC]
00025b88  MOV             R1, #1
00025b8c  BL              sub_14594
00025b90  LDRSH           R0, [SP,#0x9C+var_38]
00025b94  LDRSH           R1, [SP,#0x9C+var_36]
00025b98  LDR             R3, =0x8010
00025b9c  ADD             R2, SP, #0x9C+var_38
00025ba0  STMEA           SP, {R0-R3}
00025ba4  LDR             R0, [R4,#0xC]
00025ba8  MOV             R3, #0xFFFFFFFF
00025bac  ADD             R2, SP, #0x9C+var_74
00025bb0  MOV             R1, #0x8000
00025bb4  BL              sub_1441C
00025bb8  STRH            R7, [SP,#0x9C+var_38]
00025bbc  LDR             R1, [R5,#0x44]
00025bc0  MOV             R0, #4
00025bc4  ADD             R1, R1, #3
00025bc8  MLA             R0, R1, R0, R6
00025bcc  MOV             R1, #1
00025bd0  STRH            R0, [SP,#0x9C+var_36]
00025bd4  STRH            R8, [SP,#0x9C+var_34]
00025bd8  LDR             R0, [R5,#0x44]
00025bdc  MOV             R2, #0
00025be0  ADD             R0, R0, #3
00025be4  STRH            R0, [SP,#0x9C+var_32]
00025be8  LDR             R0, [R4,#0xC]
00025bec  BL              sub_14594
00025bf0  LDRSH           R0, [SP,#0x9C+var_38]
00025bf4  LDRSH           R1, [SP,#0x9C+var_36]
00025bf8  LDR             R3, =0x8010
00025bfc  ADD             R2, SP, #0x9C+var_38
00025c00  STMEA           SP, {R0-R3}
00025c04  LDR             R8, =(dword_2827C - 0x25C14)
00025c08  LDR             R0, [R4,#0xC]
00025c0c  ADD             R8, PC, R8; dword_2827C
00025c10  MOV             R2, R8
00025c14  MOV             R3, #0xFFFFFFFF
00025c18  MOV             R1, #0x8000
00025c1c  BL              sub_1441C
00025c20  LDR             R0, [R4,#0x44]
00025c24  MOV             R2, #0xC
00025c28  LDR             R1, [R0]
00025c2c  LDR             R3, [R1,#0x30]
00025c30  ADD             R1, SP, #0x9C+var_88
00025c34  BLX             R3
00025c38  MOV             R2, R8
00025c3c  MOV             R1, #0x8000
00025c40  LDR             R0, [R4,#0xC]
00025c44  BL              sub_14568
00025c48  MOV             LR, R0
00025c4c  LDR             R0, [R4,#0x44]
00025c50  MOV             R3, #2
00025c54  MOV             R2, #0
00025c58  MOV             R1, #0
00025c5c  STMFA           SP, {R0-R3}
00025c60  LDR             R3, [SP,#0x9C+var_84]
00025c64  STR             R3, [SP,#0x9C+var_9C]
00025c68  LDR             R3, [SP,#0x9C+var_88]
00025c6c  LDRSH           R0, [SP,#0x9C+var_38]
00025c70  LDRSH           R2, [SP,#0x9C+var_36]
00025c74  ADD             R0, R0, LR
00025c78  ADD             R1, R0, #2
00025c7c  LDR             R0, [R4,#0xC]
00025c80  BL              sub_14338
00025c84  LDRB            R0, [R5,#0xD5]
00025c88  MOV             R8, #5
00025c8c  CMP             R0, #3
00025c90  BNE             loc_25E84
00025c94  MOV             R11, #0
00025c98  STRH            R11, [SP,#0x9C+var_28]
00025c9c  LDR             R0, [R5,#0x44]
00025ca0  MOV             R1, #6
00025ca4  MUL             R1, R0, R1
00025ca8  MOV             R0, #7
00025cac  BL              sub_104
00025cb0  LDRH            R1, [R5,#6]
00025cb4  MOV             R2, #0
00025cb8  SUB             R0, R1, R0
00025cbc  STRH            R0, [SP,#0x9C+var_26]
00025cc0  LDRH            R0, [R5,#4]
00025cc4  ADD             R1, SP, #0x9C+var_28
00025cc8  STRH            R0, [SP,#0x9C+var_24]
00025ccc  LDR             R0, [R5,#0x44]
00025cd0  STRH            R0, [SP,#0x9C+var_22]
00025cd4  LDR             R0, [R4,#0xC]
00025cd8  BL              sub_144F4
00025cdc  STRH            R11, [SP,#0x9C+var_20]
00025ce0  LDR             R0, [R5,#0x44]
00025ce4  ADD             R1, R0, R0,LSL#1
00025ce8  MOV             R0, #7
00025cec  BL              sub_104
00025cf0  LDRH            R1, [SP,#0x9C+var_26]
00025cf4  SUB             R0, R1, R0
00025cf8  STRH            R0, [SP,#0x9C+var_1E]
00025cfc  LDRH            R0, [R5,#4]
00025d00  STRH            R0, [SP,#0x9C+var_1C]
00025d04  LDR             R0, [R5,#0x44]
00025d08  ADD             R1, R0, R0,LSL#1
00025d0c  MOV             R0, #7
00025d10  BL              sub_104
00025d14  STRH            R0, [SP,#0x9C+var_1A]
00025d18  LDR             R0, [R4,#0xC]
00025d1c  LDR             R2, =0x40404000
00025d20  ADD             R1, SP, #0x9C+var_20
00025d24  BL              sub_144F4
00025d28  MOV             R2, #0xFFFFFF00
00025d2c  MOV             R1, #1
00025d30  LDR             R0, [R4,#0xC]
00025d34  BL              sub_14594
00025d38  LDR             R2, =(dword_28248 - 0x25D44)
00025d3c  ADD             R2, PC, R2; dword_28248
00025d40  MOV             R1, #0x8000
00025d44  LDR             R0, [R4,#0xC]
00025d48  BL              sub_14568
00025d4c  RSB             R1, R0, R0,LSL#3
00025d50  MOV             R0, #5
00025d54  BL              sub_104
00025d58  STRH            R11, [R5,#0xFC]
00025d5c  LDRSH           R1, [SP,#0x9C+var_1E]
00025d60  ADD             R10, R5, #0x100
00025d64  LDR             R3, =0x8220
00025d68  STRH            R1, [R5,#0xFE]
00025d6c  STRH            R0, [R10]
00025d70  LDRH            R0, [SP,#0x9C+var_1A]
00025d74  LDRH            R2, [SP,#0x9C+var_22]
00025d78  ADD             R0, R0, R2
00025d7c  STRH            R0, [R10,#2]
00025d80  ADD             R2, R5, #0xFC
00025d84  STMFA           SP, {R1-R3}
00025d88  LDR             R2, =(dword_28248 - 0x25D9C)
00025d8c  STR             R11, [SP,#0x9C+var_9C]
00025d90  MOV             R3, #0xFFFFFFFF
00025d94  ADD             R2, PC, R2; dword_28248
00025d98  MOV             R1, #0x8000
00025d9c  LDR             R0, [R4,#0xC]
00025da0  BL              sub_1441C
00025da4  LDR             R2, =(word_2824E - 0x25DB0)
00025da8  ADD             R2, PC, R2; word_2824E
00025dac  MOV             R1, #0x8000
00025db0  LDR             R0, [R4,#0xC]
00025db4  BL              sub_14568
00025db8  RSB             R1, R0, R0,LSL#3
00025dbc  MOV             R0, #5
00025dc0  BL              sub_104
00025dc4  MOV             R2, R0
00025dc8  LDRH            R0, [R5,#4]
00025dcc  SUB             R0, R0, R2
00025dd0  MOV             R0, R0,LSL#16
00025dd4  MOV             R0, R0,ASR#16
00025dd8  STRH            R0, [R10,#4]
00025ddc  LDRSH           R1, [SP,#0x9C+var_1E]
00025de0  STRH            R1, [R10,#6]
00025de4  STRH            R2, [R10,#8]
00025de8  LDRH            R2, [SP,#0x9C+var_1A]
00025dec  LDRH            R3, [SP,#0x9C+var_22]
00025df0  ADD             R2, R2, R3
00025df4  STRH            R2, [R10,#0xA]
00025df8  ADD             R2, R5, #0x104
00025dfc  LDR             R3, =0x8220
00025e00  STMEA           SP, {R0-R3}
00025e04  LDR             R2, =(word_2824E - 0x25E14)
00025e08  MOV             R3, #0xFFFFFFFF
00025e0c  ADD             R2, PC, R2; word_2824E
00025e10  MOV             R1, #0x8000
00025e14  LDR             R0, [R4,#0xC]
00025e18  BL              sub_1441C
00025e1c  MOV             R2, #0
00025e20  MOV             R1, #1
00025e24  LDR             R0, [R4,#0xC]
00025e28  BL              sub_14594
00025e2c  STRH            R11, [SP,#0x9C+var_38]
00025e30  LDRH            R0, [R10,#6]
00025e34  LDR             R1, [R5,#0x44]
00025e38  LDR             R3, =0x8220
00025e3c  SUB             R0, R0, R1
00025e40  SUB             R0, R0, #3
00025e44  STRH            R0, [SP,#0x9C+var_36]
00025e48  LDRH            R0, [R5,#4]
00025e4c  ADD             R2, SP, #0x9C+var_38
00025e50  STRH            R0, [SP,#0x9C+var_34]
00025e54  LDR             R0, [R5,#0x44]
00025e58  ADD             R0, R0, #3
00025e5c  STRH            R0, [SP,#0x9C+var_32]
00025e60  LDRSH           R0, [SP,#0x9C+var_38]
00025e64  LDRSH           R1, [SP,#0x9C+var_36]
00025e68  STMEA           SP, {R0-R3}
00025e6c  LDR             R2, =(dword_282BC - 0x25E7C)
00025e70  MOV             R3, #0xFFFFFFFF
00025e74  ADD             R2, PC, R2; dword_282BC
00025e78  MOV             R1, #0x8000
00025e7c  LDR             R0, [R4,#0xC]
00025e80  BL              sub_1441C
00025e84  STRH            R7, [R4,#4]
00025e88  LDR             R0, [R5,#0x44]
00025e8c  ADD             R0, R0, #3
00025e90  MLA             R1, R0, R8, R6
00025e94  STRH            R1, [R4,#6]
00025e98  LDRH            R0, [R5,#4]
00025e9c  ADD             R1, R4, #4
00025ea0  SUB             R0, R0, R9,LSL#1
00025ea4  STRH            R0, [R4,#8]
00025ea8  LDR             R0, [R5,#0x44]
00025eac  ADD             R0, R0, #3
00025eb0  STRH            R0, [R4,#0xA]
00025eb4  LDR             R0, [R4]
00025eb8  BL              sub_15344
00025ebc  MOV             R0, #0
00025ec0  STRH            R0, [SP,#0x9C+var_30]
00025ec4  LDRH            R0, [R5,#6]
00025ec8  ADD             R1, SP, #0x9C+var_30
00025ecc  SUB             R0, R0, #0x58 ; 'X'
00025ed0  STRH            R0, [SP,#0x9C+var_2E]
00025ed4  MOV             R0, #0xF0
00025ed8  STRH            R0, [SP,#0x9C+var_2C]
00025edc  MOV             R0, #0x58 ; 'X'
00025ee0  STRH            R0, [SP,#0x9C+var_2A]
00025ee4  LDR             R0, [R4]
00025ee8  BL              sub_15368
00025eec  MOV             R1, #4
00025ef0  LDR             R0, [R4]
00025ef4  BL              sub_15334
00025ef8  LDRB            R0, [R5,#0xD5]
00025efc  MOV             R1, #1
00025f00  LDR             R0, [R4]
00025f04  BL              sub_152CC
00025f08  LDR             R0, [R4]
00025f0c  BL              sub_14FF8
00025f10  MOV             R2, #0
00025f14  MOV             R1, #1
00025f18  LDR             R0, [R4,#0xC]
00025f1c  BL              sub_14594
00025f20  LDR             R0, [R4,#0xC]
00025f24  BL              sub_145AC
00025f28  MOV             R0, #0
00025f2c  ADD             SP, SP, #0x9C
00025f30  POP             {R4-R11,PC}
