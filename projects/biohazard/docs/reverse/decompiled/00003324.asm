00003324  PUSH            {R0-R11,LR}
00003328  SUB             SP, SP, #0x74
0000332c  LDR             R9, [SP,#0x84+arg_0]
00003330  ADD             LR, SP, #0x84+arg_C
00003334  LDM             LR, {R7,LR}
00003338  LDR             R8, [SP,#0x84+arg_14]
0000333c  LDR             R3, [R0,#0x14]
00003340  CMP             R3, #0
00003344  MOVEQ           R0, #7
00003348  STR             R3, [SP,#0x84+var_14]
0000334c  BEQ             loc_4888
00003350  LDR             R3, [SP,#0x84+arg_4]
00003354  CMP             R3, #0
00003358  MOVEQ           R0, #2
0000335c  BEQ             loc_4888
00003360  LDR             R3, [SP,#0x84+arg_4]
00003364  LDR             R3, [R3,#8]
00003368  CMP             R3, #0
0000336c  MOVEQ           R0, #0x65 ; 'e'
00003370  STR             R3, [SP,#0x84+var_18]
00003374  BEQ             loc_4888
00003378  LDR             R3, [SP,#0x84+arg_4]
0000337c  LDRH            R3, [R3,#4]
00003380  STR             R3, [SP,#0x84+var_1C]
00003384  AND             R3, R3, #3
00003388  CMP             R3, #2
0000338c  MOVEQ           R0, #1
00003390  STR             R3, [SP,#0x84+var_2C]
00003394  BEQ             loc_4888
00003398  LDR             R11, [SP,#0x84+arg_18]
0000339c  MOV             R5, #1
000033a0  MOV             R3, R11,LSL#16
000033a4  AND             R4, LR, #1
000033a8  STR             R4, [SP,#0x84+var_30]
000033ac  AND             R11, R5, LR,LSR#3
000033b0  AND             R4, R5, LR,LSR#1
000033b4  AND             R6, R5, LR,LSR#2
000033b8  ANDS            R5, R5, LR,LSR#4
000033bc  STR             R5, [SP,#0x84+var_38]
000033c0  MOVEQ           R5, #1
000033c4  ANDEQ           LR, R5, LR,LSR#5
000033c8  STR             R11, [SP,#0x84+var_34]
000033cc  LDRNE           R11, [SP,#0x84+arg_18]
000033d0  MOVNE           LR, #0
000033d4  STR             LR, [SP,#0x84+var_3C]
000033d8  LDR             LR, [SP,#0x84+var_34]
000033dc  MOVNE           R12, R11,LSL#8
000033e0  MOVNE           R12, R12,LSR#24
000033e4  CMP             LR, #0
000033e8  MOV             R3, R3,LSR#16
000033ec  BEQ             loc_3410
000033f0  ANDS            R10, R8, #0xFF
000033f4  RSB             LR, R10, #0x20 ; ' '
000033f8  AND             LR, LR, #0xFF
000033fc  STR             LR, [SP,#0x84+var_70]
00003400  BEQ             loc_4884
00003404  CMP             R10, #0x20 ; ' '
00003408  MOVEQ           LR, #0
0000340c  STREQ           LR, [SP,#0x84+var_34]
00003410  LDR             R11, [SP,#0x84+arg_18]
00003414  MOV             LR, #0
00003418  AND             R5, R11, #0xF800
0000341c  MOV             R5, R5,LSL#11
00003420  AND             R8, R11, #0x7E0
00003424  ORR             R5, R5, R8,LSL#5
00003428  STR             LR, [SP,#0x84+var_74]
0000342c  LDR             LR, [SP,#0x84+var_38]
00003430  AND             R8, R11, #0x1F
00003434  ORR             R5, R5, R8
00003438  STR             R5, [SP,#0x84+var_20]
0000343c  CMP             LR, #0
00003440  BEQ             loc_3478
00003444  RSB             LR, R12, #0x20 ; ' '
00003448  AND             LR, LR, #0xFF
0000344c  STR             LR, [SP,#0x84+var_6C]
00003450  CMP             R12, #0
00003454  MOVEQ           LR, #0
00003458  STREQ           LR, [SP,#0x84+var_38]
0000345c  BEQ             loc_3478
00003460  CMP             R12, #0x20 ; ' '
00003464  MOVEQ           LR, #1
00003468  ADDEQ           R5, SP, #0x84+var_78
0000346c  STMEQ           R5, {R3,LR}
00003470  LDREQ           R5, [SP,#0x84+var_20]
00003474  STREQ           R5, [SP,#0x84+var_7C]
00003478  LDRH            R3, [R0,#0xC]
0000347c  ADD             R1, R3, R1
00003480  MOV             LR, R1,LSL#16
00003484  LDRH            R1, [R0,#0xE]
00003488  MOV             LR, LR,ASR#16
0000348c  ADD             R1, R1, R2
00003490  LDRH            R2, [R0,#4]
00003494  MOV             R1, R1,LSL#16
00003498  MOV             R1, R1,ASR#16
0000349c  CMP             R2, LR
000034a0  MOVLT           R2, LR
000034a4  MOV             R8, R2,LSL#16
000034a8  LDRH            R2, [R0,#6]
000034ac  LDR             R3, [SP,#0x84+var_4]
000034b0  LDRH            R5, [R0,#8]
000034b4  CMP             R2, R1
000034b8  MOVLT           R2, R1
000034bc  MOV             R2, R2,LSL#16
000034c0  MOV             R11, R2,ASR#16
000034c4  ADD             R2, LR, R3
000034c8  CMP             R2, R5
000034cc  MOVGT           R2, R5
000034d0  MOV             R2, R2,LSL#16
000034d4  MOV             R2, R2,ASR#16
000034d8  STR             R2, [SP,#0x84+var_40]
000034dc  LDRH            R0, [R0,#0xA]
000034e0  ADD             R2, R1, R9
000034e4  MOV             R8, R8,ASR#16
000034e8  CMP             R2, R0
000034ec  MOVLE           R0, R2
000034f0  MOV             R0, R0,LSL#16
000034f4  MOV             R0, R0,ASR#16
000034f8  STR             R0, [SP,#0x84+var_44]
000034fc  CMP             R4, #0
00003500  LDR             R0, [SP,#0x84+arg_8]
00003504  LDRNE           R3, [SP,#0x84+var_4]
00003508  ADDEQ           R0, R0, R8
0000350c  SUBEQ           R0, R0, LR
00003510  ADDNE           R0, R0, LR
00003514  LDRNE           R2, [SP,#0x84+var_40]
00003518  ADDNE           R0, R0, R3
0000351c  SUBNE           R0, R0, R2
00003520  MOV             R5, R0,LSL#16
00003524  CMP             R6, #0
00003528  ADDNE           R0, R7, R1
0000352c  LDRNE           R1, [SP,#0x84+var_44]
00003530  ADDNE           R0, R0, R9
00003534  ADDEQ           R0, R7, R11
00003538  SUB             R0, R0, R1
0000353c  MOV             R3, R0,LSL#16
00003540  MOV             R3, R3,ASR#16
00003544  LDR             R0, [SP,#0x84+arg_4]
00003548  STR             R3, [SP,#0x84+var_48]
0000354c  LDR             R2, [SP,#0x84+var_40]
00003550  LDRH            R0, [R0]
00003554  MOV             R5, R5,ASR#16
00003558  SUB             R1, R2, R8
0000355c  SUB             R2, R0, R5
00003560  CMP             R1, R2
00003564  MOVGT           R1, R2
00003568  MOV             R7, R1,LSL#16
0000356c  LDR             R1, [SP,#0x84+var_44]
00003570  MOV             R7, R7,ASR#16
00003574  SUB             R2, R1, R11
00003578  LDR             R1, [SP,#0x84+arg_4]
0000357c  LDRH            R1, [R1,#2]
00003580  LDR             R3, [SP,#0x84+var_48]
00003584  SUB             R3, R1, R3
00003588  CMP             R2, R3
0000358c  MOVGT           R2, R3
00003590  MOV             R2, R2,LSL#16
00003594  MOV             R2, R2,ASR#16
00003598  CMP             R7, #0
0000359c  CMPGT           R2, #0
000035a0  BLE             loc_4884
000035a4  LDR             R3, [SP,#0x84+var_1C]
000035a8  MOV             LR, #1
000035ac  TST             R3, #0x20
000035b0  MOVEQ           R3, #0
000035b4  STREQ           R3, [SP,#0x84+var_30]
000035b8  LDR             R3, [SP,#0x84+var_2C]
000035bc  CMP             R3, #1
000035c0  LDR             R3, [SP,#0x84+var_1C]
000035c4  LDREQ           R9, [SP,#0x84+var_20]
000035c8  AND             R3, LR, R3,LSR#4
000035cc  LDR             LR, [SP,#0x84+var_38]
000035d0  CMP             LR, #0
000035d4  LDRNE           R9, [SP,#0x84+var_20]
000035d8  MOV             LR, R11
000035dc  MULNE           R9, R12, R9
000035e0  LDR             R12, [SP,#0x84+var_14]
000035e4  CMP             R6, #0
000035e8  ADDEQ           R11, R12, LR,LSL#2
000035ec  ADDNE           R12, R12, LR,LSL#2
000035f0  ADDNE           R12, R12, R2,LSL#2
000035f4  ADDEQ           R2, R11, R2,LSL#2
000035f8  SUBNE           R11, R12, #4
000035fc  SUBNE           R2, R11, R2,LSL#2
00003600  LDR             LR, [SP,#0x84+var_3C]
00003604  STR             R2, [SP,#0x84+var_4C]
00003608  CMP             LR, #0
0000360c  BEQ             loc_3A94
00003610  LDR             LR, [SP,#0x84+var_2C]
00003614  MOV             R2, #1
00003618  LDR             R12, [SP,#0x84+arg_18]
0000361c  CMP             LR, #0
00003620  BNE             loc_3650
00003624  CMP             R12, #0
00003628  BEQ             loc_3650
0000362c  LDRH            LR, [R12,#4]
00003630  AND             LR, LR, #3
00003634  CMP             LR, #1
00003638  CMPEQ           R3, #0
0000363c  LDRHEQ          LR, [R12]
00003640  CMPEQ           R0, LR
00003644  LDRHEQ          R0, [R12,#2]
00003648  CMPEQ           R1, R0
0000364c  BEQ             loc_3654
00003650  MOV             R2, #0
00003654  CMP             R2, #0
00003658  BEQ             loc_3A94
0000365c  LDRH            R0, [R12,#4]
00003660  LDR             R3, [SP,#0x84+var_48]
00003664  TST             R0, #0x10
00003668  LDR             R0, [SP,#0x84+var_18]
0000366c  BNE             loc_3820
00003670  ADD             R1, R0, R3,LSL#2
00003674  STR             R1, [SP,#0x84+var_50]
00003678  LDR             R0, [R12,#8]
0000367c  LDR             R3, [SP,#0x84+var_48]
00003680  ADD             R1, R0, R3,LSL#2
00003684  STR             R1, [SP,#0x84+var_54]
00003688  B               loc_3780
0000368c  LDR             R1, [SP,#0x84+var_54]
00003690  CMP             R4, #0
00003694  LDR             R0, [R1],#4
00003698  STR             R1, [SP,#0x84+var_54]
0000369c  LDR             R1, [SP,#0x84+var_50]
000036a0  ADD             R12, R0, R5
000036a4  STR             R12, [SP,#0x84+var_58]
000036a8  LDR             R0, [R1],#4
000036ac  STR             R1, [SP,#0x84+var_50]
000036b0  ADD             R2, R0, R5,LSL#1
000036b4  BEQ             loc_36E0
000036b8  CMP             R6, #0
000036bc  MOV             R0, R11
000036c0  ADDEQ           R11, R0, #4
000036c4  SUBNE           R11, R0, #4
000036c8  LDR             R0, [R0]
000036cc  ADD             R0, R0, R8,LSL#1
000036d0  ADD             R0, R0, R7,LSL#1
000036d4  SUB             R0, R0, #2
000036d8  SUB             R1, R0, R7,LSL#1
000036dc  B               loc_3778
000036e0  CMP             R6, #0
000036e4  MOV             R0, R11
000036e8  ADDEQ           R11, R0, #4
000036ec  SUBNE           R11, R0, #4
000036f0  LDR             R0, [R0]
000036f4  ADD             R0, R0, R8,LSL#1
000036f8  ADD             R1, R0, R7,LSL#1
000036fc  B               loc_3778
00003700  LDR             R12, [SP,#0x84+var_58]
00003704  LDRB            R3, [R12],#1
00003708  STR             R12, [SP,#0x84+var_58]
0000370c  CMP             R3, #0
00003710  BEQ             loc_3814
00003714  LDR             LR, [SP,#0x84+var_34]
00003718  CMP             LR, #0
0000371c  MULNE           R3, R10, R3
00003720  MOVNE           R3, R3,LSL#19
00003724  MOVNE           R3, R3,LSR#24
00003728  CMP             R3, #0x20 ; ' '
0000372c  BNE             loc_3758
00003730  LDRH            R12, [R2],#2
00003734  CMP             R4, #0
00003738  BEQ             loc_3748
0000373c  MOV             R3, R0
00003740  SUB             R0, R0, #2
00003744  B               loc_3750
00003748  MOV             R3, R0
0000374c  ADD             R0, R0, #2
00003750  STRH            R12, [R3]
00003754  B               loc_3778
00003758  CMP             R3, #0
0000375c  BNE             loc_3790
00003760  CMP             R4, #0
00003764  BEQ             loc_3770
00003768  SUB             R0, R0, #2
0000376c  B               loc_3774
00003770  ADD             R0, R0, #2
00003774  ADD             R2, R2, #2
00003778  CMP             R0, R1
0000377c  BNE             loc_3700
00003780  LDR             R2, [SP,#0x84+var_4C]
00003784  CMP             R11, R2
00003788  BNE             loc_368C
0000378c  B               loc_4884
00003790  RSB             R12, R3, #0x20 ; ' '
00003794  AND             LR, R12, #0xFF
00003798  STR             LR, [SP,#0x84+var_70]
0000379c  LDRH            R9, [R0]
000037a0  LDRH            R12, [R2],#2
000037a4  CMP             R4, #0
000037a8  AND             LR, R9, #0x7E0
000037ac  STR             R12, [SP,#0x84+var_84]
000037b0  AND             R12, R9, #0xF800
000037b4  MOV             R12, R12,LSL#11
000037b8  ORR             R12, R12, LR,LSL#5
000037bc  AND             LR, R9, #0x1F
000037c0  ORR             R12, R12, LR
000037c4  LDR             LR, [SP,#0x84+var_70]
000037c8  LDR             R9, [SP,#0x84+var_84]
000037cc  MUL             R12, LR, R12
000037d0  AND             LR, R9, #0xF800
000037d4  MOV             LR, LR,LSL#11
000037d8  AND             R9, R9, #0x7E0
000037dc  ORR             LR, LR, R9,LSL#5
000037e0  LDR             R9, [SP,#0x84+var_84]
000037e4  AND             R9, R9, #0x1F
000037e8  ORR             LR, LR, R9
000037ec  MLA             R12, R3, LR, R12
000037f0  MOV             R3, R12,LSR#5
000037f4  AND             R12, R3, #0x7C00000
000037f8  AND             LR, R3, #0xFC00
000037fc  MOV             R12, R12,LSR#11
00003800  ORR             R12, R12, LR,LSR#5
00003804  AND             R3, R3, #0x1F
00003808  ORR             R12, R12, R3
0000380c  BEQ             loc_3748
00003810  B               loc_373C
00003814  CMP             R4, #0
00003818  BEQ             loc_3770
0000381c  B               loc_3768
00003820  ADD             R3, R0, R3,LSL#2
00003824  STR             R3, [SP,#0x84+var_50]
00003828  LDR             R0, [R12,#8]
0000382c  LDR             R3, [SP,#0x84+var_48]
00003830  ADD             R0, R0, R3,LSL#2
00003834  STR             R0, [SP,#0x84+var_54]
00003838  LDR             R0, [R12,#0xC]
0000383c  ADD             R0, R0, R3
00003840  STR             R0, [SP,#0x84+var_5C]
00003844  LDR             R0, [R12,#0x10]
00003848  ADD             R1, R0, R3
0000384c  STR             R1, [SP,#0x84+var_60]
00003850  ADD             R1, R5, R7
00003854  STR             R1, [SP,#0x84+var_24]
00003858  B               loc_39F4
0000385c  LDR             R0, [SP,#0x84+var_5C]
00003860  LDRB            R2, [R0],#1
00003864  LDR             R1, [SP,#0x84+var_60]
00003868  STR             R0, [SP,#0x84+var_5C]
0000386c  LDRB            R0, [R1],#1
00003870  STR             R1, [SP,#0x84+var_60]
00003874  CMP             R5, R2
00003878  ADD             R1, R0, R2
0000387c  LDR             R3, [SP,#0x84+var_24]
00003880  MOVGT           R0, R5
00003884  MOVLE           R0, R2
00003888  CMP             R3, R1
0000388c  LDRLT           R1, [SP,#0x84+var_24]
00003890  SUB             R1, R1, R0
00003894  MOV             R1, R1,LSL#16
00003898  MOV             R1, R1,ASR#16
0000389c  CMP             R1, #0
000038a0  BGT             loc_38CC
000038a4  LDR             R12, [SP,#0x84+var_54]
000038a8  LDR             R3, [SP,#0x84+var_50]
000038ac  CMP             R6, #0
000038b0  ADDEQ           R11, R11, #4
000038b4  ADD             R12, R12, #4
000038b8  ADD             R3, R3, #4
000038bc  STR             R3, [SP,#0x84+var_50]
000038c0  STR             R12, [SP,#0x84+var_54]
000038c4  SUBNE           R11, R11, #4
000038c8  B               loc_39F4
000038cc  LDR             R12, [SP,#0x84+var_54]
000038d0  SUB             R2, R0, R2
000038d4  LDR             R3, [R12],#4
000038d8  STR             R12, [SP,#0x84+var_54]
000038dc  MOV             R2, R2,LSL#16
000038e0  ADD             R12, R3, R2,ASR#17
000038e4  LDR             R3, [SP,#0x84+var_50]
000038e8  STR             R12, [SP,#0x84+var_58]
000038ec  LDR             R2, [R3],#4
000038f0  STR             R3, [SP,#0x84+var_50]
000038f4  CMP             R4, #0
000038f8  ADD             R2, R2, R0,LSL#1
000038fc  BEQ             loc_394C
00003900  SUB             R0, R8, R0
00003904  ADD             R0, R0, R5
00003908  ADD             R0, R0, R7
0000390c  SUB             R0, R0, #1
00003910  MOV             R0, R0,LSL#16
00003914  MOV             R0, R0,ASR#16
00003918  CMP             R0, R1
0000391c  LDRGE           R3, [R11]
00003920  ADDGE           R3, R3, R0,LSL#1
00003924  SUBGE           R1, R3, R1,LSL#1
00003928  LDRLT           R1, [R11]
0000392c  MOV             R3, R11
00003930  SUBLT           R1, R1, #2
00003934  CMP             R6, #0
00003938  ADDEQ           R11, R3, #4
0000393c  SUBNE           R11, R3, #4
00003940  LDR             R3, [R3]
00003944  ADD             R0, R3, R0,LSL#1
00003948  B               loc_39EC
0000394c  CMP             R6, #0
00003950  MOV             R3, R11
00003954  ADDEQ           R11, R3, #4
00003958  SUBNE           R11, R3, #4
0000395c  LDR             R3, [R3]
00003960  ADD             R3, R3, R8,LSL#1
00003964  ADD             R0, R3, R0,LSL#1
00003968  SUB             R0, R0, R5,LSL#1
0000396c  ADD             R1, R0, R1,LSL#1
00003970  B               loc_39EC
00003974  LDR             R12, [SP,#0x84+var_58]
00003978  LDRB            R3, [R12],#1
0000397c  STR             R12, [SP,#0x84+var_58]
00003980  CMP             R3, #0
00003984  BEQ             loc_3A88
00003988  LDR             LR, [SP,#0x84+var_34]
0000398c  CMP             LR, #0
00003990  MULNE           R3, R10, R3
00003994  MOVNE           R3, R3,LSL#19
00003998  MOVNE           R3, R3,LSR#24
0000399c  CMP             R3, #0x20 ; ' '
000039a0  BNE             loc_39CC
000039a4  LDRH            R12, [R2],#2
000039a8  CMP             R4, #0
000039ac  BEQ             loc_39BC
000039b0  MOV             R3, R0
000039b4  SUB             R0, R0, #2
000039b8  B               loc_39C4
000039bc  MOV             R3, R0
000039c0  ADD             R0, R0, #2
000039c4  STRH            R12, [R3]
000039c8  B               loc_39EC
000039cc  CMP             R3, #0
000039d0  BNE             loc_3A04
000039d4  CMP             R4, #0
000039d8  BEQ             loc_39E4
000039dc  SUB             R0, R0, #2
000039e0  B               loc_39E8
000039e4  ADD             R0, R0, #2
000039e8  ADD             R2, R2, #2
000039ec  CMP             R0, R1
000039f0  BNE             loc_3974
000039f4  LDR             R2, [SP,#0x84+var_4C]
000039f8  CMP             R11, R2
000039fc  BNE             loc_385C
00003a00  B               loc_4884
00003a04  RSB             R12, R3, #0x20 ; ' '
00003a08  AND             LR, R12, #0xFF
00003a0c  STR             LR, [SP,#0x84+var_70]
00003a10  LDRH            R9, [R0]
00003a14  LDRH            R12, [R2],#2
00003a18  CMP             R4, #0
00003a1c  AND             LR, R9, #0x7E0
00003a20  STR             R12, [SP,#0x84+var_84]
00003a24  AND             R12, R9, #0xF800
00003a28  MOV             R12, R12,LSL#11
00003a2c  ORR             R12, R12, LR,LSL#5
00003a30  AND             LR, R9, #0x1F
00003a34  ORR             R12, R12, LR
00003a38  LDR             LR, [SP,#0x84+var_70]
00003a3c  LDR             R9, [SP,#0x84+var_84]
00003a40  MUL             R12, LR, R12
00003a44  AND             LR, R9, #0xF800
00003a48  MOV             LR, LR,LSL#11
00003a4c  AND             R9, R9, #0x7E0
00003a50  ORR             LR, LR, R9,LSL#5
00003a54  LDR             R9, [SP,#0x84+var_84]
00003a58  AND             R9, R9, #0x1F
00003a5c  ORR             LR, LR, R9
00003a60  MLA             R12, R3, LR, R12
00003a64  MOV             R3, R12,LSR#5
00003a68  AND             R12, R3, #0x7C00000
00003a6c  AND             LR, R3, #0xFC00
00003a70  MOV             R12, R12,LSR#11
00003a74  ORR             R12, R12, LR,LSR#5
00003a78  AND             R3, R3, #0x1F
00003a7c  ORR             R12, R12, R3
00003a80  BEQ             loc_39BC
00003a84  B               loc_39B0
00003a88  CMP             R4, #0
00003a8c  BEQ             loc_39E4
00003a90  B               loc_39DC
00003a94  LDR             R1, =(start - 0x3AA0)
00003a98  ADD             R1, PC, R1; start
00003a9c  CMP             R3, #0
00003aa0  BNE             loc_414C
00003aa4  LDR             R3, [SP,#0x84+var_2C]
00003aa8  CMP             R3, #1
00003aac  BNE             loc_3BD0
00003ab0  LDR             R0, [SP,#0x84+var_18]
00003ab4  LDR             R3, [SP,#0x84+var_48]
00003ab8  ADD             R1, R0, R3,LSL#2
00003abc  STR             R1, [SP,#0x84+var_54]
00003ac0  B               loc_3BC0
00003ac4  LDR             R1, [SP,#0x84+var_54]
00003ac8  CMP             R4, #0
00003acc  LDR             R0, [R1],#4
00003ad0  STR             R1, [SP,#0x84+var_54]
00003ad4  ADD             R3, R0, R5,ASR#1
00003ad8  STR             R3, [SP,#0x84+var_58]
00003adc  BEQ             loc_3B08
00003ae0  CMP             R6, #0
00003ae4  MOV             R0, R11
00003ae8  ADDEQ           R11, R0, #4
00003aec  SUBNE           R11, R0, #4
00003af0  LDR             R0, [R0]
00003af4  ADD             R0, R0, R8,LSL#1
00003af8  ADD             R0, R0, R7,LSL#1
00003afc  SUB             R0, R0, #2
00003b00  SUB             R1, R0, R7,LSL#1
00003b04  B               loc_3BB8
00003b08  CMP             R6, #0
00003b0c  MOV             R0, R11
00003b10  ADDEQ           R11, R0, #4
00003b14  SUBNE           R11, R0, #4
00003b18  LDR             R0, [R0]
00003b1c  ADD             R0, R0, R8,LSL#1
00003b20  ADD             R1, R0, R7,LSL#1
00003b24  B               loc_3BB8
00003b28  LDR             R3, [SP,#0x84+var_58]
00003b2c  LDRB            R2, [R3],#1
00003b30  STR             R3, [SP,#0x84+var_58]
00003b34  CMP             R2, #0
00003b38  BEQ             loc_3BAC
00003b3c  LDR             LR, [SP,#0x84+var_34]
00003b40  LDRH            R3, [R0]
00003b44  CMP             LR, #0
00003b48  MULNE           R2, R10, R2
00003b4c  AND             R12, R3, #0xF800
00003b50  AND             LR, R3, #0x7E0
00003b54  MOV             R12, R12,LSL#11
00003b58  MOVNE           R2, R2,LSL#19
00003b5c  MOVNE           R2, R2,LSR#24
00003b60  ORR             R12, R12, LR,LSL#5
00003b64  AND             R3, R3, #0x1F
00003b68  ORR             R3, R12, R3
00003b6c  RSB             R12, R2, #0x20 ; ' '
00003b70  MUL             R3, R12, R3
00003b74  MLA             R3, R2, R9, R3
00003b78  MOV             R2, R3,LSR#5
00003b7c  AND             R3, R2, #0x7C00000
00003b80  AND             R12, R2, #0xFC00
00003b84  MOV             R3, R3,LSR#11
00003b88  ORR             R3, R3, R12,LSR#5
00003b8c  AND             R2, R2, #0x1F
00003b90  ORR             R3, R3, R2
00003b94  MOV             R2, R0
00003b98  CMP             R4, #0
00003b9c  ADDEQ           R0, R2, #2
00003ba0  SUBNE           R0, R2, #2
00003ba4  STRH            R3, [R2]
00003ba8  B               loc_3BB8
00003bac  CMP             R4, #0
00003bb0  ADDEQ           R0, R0, #2
00003bb4  SUBNE           R0, R0, #2
00003bb8  CMP             R0, R1
00003bbc  BNE             loc_3B28
00003bc0  LDR             R2, [SP,#0x84+var_4C]
00003bc4  CMP             R11, R2
00003bc8  BNE             loc_3AC4
00003bcc  B               loc_4884
00003bd0  LDR             R3, [SP,#0x84+var_2C]
00003bd4  CMP             R3, #0
00003bd8  BNE             loc_4884
00003bdc  LDR             R0, [SP,#0x84+var_18]
00003be0  LDR             R3, [SP,#0x84+var_48]
00003be4  ADD             R0, R0, R3,LSL#2
00003be8  STR             R0, [SP,#0x84+var_50]
00003bec  LDR             R3, [SP,#0x84+var_30]
00003bf0  CMP             R3, #0
00003bf4  LDRNE           R0, [SP,#0x84+arg_4]
00003bf8  LDRHNE          R12, [R0,#6]
00003bfc  LDR             LR, [SP,#0x84+var_34]
00003c00  STRNE           R12, [SP,#0x84+var_68]
00003c04  CMP             LR, #0
00003c08  BEQ             loc_3E04
00003c0c  B               loc_3DF4
00003c10  LDR             R1, [SP,#0x84+var_50]
00003c14  CMP             R4, #0
00003c18  LDR             R0, [R1],#4
00003c1c  STR             R1, [SP,#0x84+var_50]
00003c20  ADD             R3, R0, R5,LSL#1
00003c24  BEQ             loc_3C50
00003c28  CMP             R6, #0
00003c2c  MOV             R0, R11
00003c30  ADDEQ           R11, R0, #4
00003c34  SUBNE           R11, R0, #4
00003c38  LDR             R0, [R0]
00003c3c  ADD             R0, R0, R8,LSL#1
00003c40  ADD             R0, R0, R7,LSL#1
00003c44  SUB             R0, R0, #2
00003c48  SUB             R1, R0, R7,LSL#1
00003c4c  B               loc_3C6C
00003c50  CMP             R6, #0
00003c54  MOV             R0, R11
00003c58  ADDEQ           R11, R0, #4
00003c5c  SUBNE           R11, R0, #4
00003c60  LDR             R0, [R0]
00003c64  ADD             R0, R0, R8,LSL#1
00003c68  ADD             R1, R0, R7,LSL#1
00003c6c  LDR             R2, [SP,#0x84+var_30]
00003c70  CMP             R2, #0
00003c74  BEQ             loc_3DEC
00003c78  B               loc_3D3C
00003c7c  LDRH            R2, [R3],#2
00003c80  LDR             R12, [SP,#0x84+var_68]
00003c84  CMP             R2, R12
00003c88  BEQ             loc_3D30
00003c8c  LDR             LR, [SP,#0x84+var_74]
00003c90  CMP             LR, #0
00003c94  LDRNE           R2, [SP,#0x84+var_7C]
00003c98  BNE             loc_3CCC
00003c9c  AND             R12, R2, #0xF800
00003ca0  AND             LR, R2, #0x7E0
00003ca4  MOV             R12, R12,LSL#11
00003ca8  ORR             R12, R12, LR,LSL#5
00003cac  LDR             LR, [SP,#0x84+var_38]
00003cb0  AND             R2, R2, #0x1F
00003cb4  CMP             LR, #0
00003cb8  LDRNE           LR, [SP,#0x84+var_6C]
00003cbc  ORR             R2, R12, R2
00003cc0  LDRNE           R12, =0x7E0FC1F
00003cc4  MLANE           R2, LR, R2, R9
00003cc8  ANDNE           R2, R12, R2,LSR#5
00003ccc  LDRH            LR, [R0]
00003cd0  CMP             R4, #0
00003cd4  AND             R12, LR, #0xF800
00003cd8  STR             LR, [SP,#0x84+var_80]
00003cdc  AND             LR, LR, #0x7E0
00003ce0  MOV             R12, R12,LSL#11
00003ce4  ORR             R12, R12, LR,LSL#5
00003ce8  LDR             LR, [SP,#0x84+var_80]
00003cec  AND             LR, LR, #0x1F
00003cf0  ORR             R12, R12, LR
00003cf4  LDR             LR, [SP,#0x84+var_70]
00003cf8  MUL             R12, LR, R12
00003cfc  MLA             R2, R10, R2, R12
00003d00  MOV             R2, R2,LSR#5
00003d04  AND             R12, R2, #0x7C00000
00003d08  AND             LR, R2, #0xFC00
00003d0c  MOV             R12, R12,LSR#11
00003d10  ORR             R12, R12, LR,LSR#5
00003d14  AND             R2, R2, #0x1F
00003d18  ORR             R12, R12, R2
00003d1c  MOV             R2, R0
00003d20  ADDEQ           R0, R2, #2
00003d24  SUBNE           R0, R2, #2
00003d28  STRH            R12, [R2]
00003d2c  B               loc_3D3C
00003d30  CMP             R4, #0
00003d34  ADDEQ           R0, R0, #2
00003d38  SUBNE           R0, R0, #2
00003d3c  CMP             R0, R1
00003d40  BNE             loc_3C7C
00003d44  B               loc_3DF4
00003d48  LDR             LR, [SP,#0x84+var_74]
00003d4c  CMP             LR, #0
00003d50  LDRNE           R2, [SP,#0x84+var_7C]
00003d54  BNE             loc_3D8C
00003d58  LDRH            R2, [R3],#2
00003d5c  AND             R12, R2, #0xF800
00003d60  AND             LR, R2, #0x7E0
00003d64  MOV             R12, R12,LSL#11
00003d68  ORR             R12, R12, LR,LSL#5
00003d6c  LDR             LR, [SP,#0x84+var_38]
00003d70  AND             R2, R2, #0x1F
00003d74  CMP             LR, #0
00003d78  LDRNE           LR, [SP,#0x84+var_6C]
00003d7c  ORR             R2, R12, R2
00003d80  LDRNE           R12, =0x7E0FC1F
00003d84  MLANE           R2, LR, R2, R9
00003d88  ANDNE           R2, R12, R2,LSR#5
00003d8c  LDRH            LR, [R0]
00003d90  CMP             R4, #0
00003d94  AND             R12, LR, #0xF800
00003d98  STR             LR, [SP,#0x84+var_80]
00003d9c  AND             LR, LR, #0x7E0
00003da0  MOV             R12, R12,LSL#11
00003da4  ORR             R12, R12, LR,LSL#5
00003da8  LDR             LR, [SP,#0x84+var_80]
00003dac  AND             LR, LR, #0x1F
00003db0  ORR             R12, R12, LR
00003db4  LDR             LR, [SP,#0x84+var_70]
00003db8  MUL             R12, LR, R12
00003dbc  MLA             R2, R10, R2, R12
00003dc0  MOV             R2, R2,LSR#5
00003dc4  AND             R12, R2, #0x7C00000
00003dc8  AND             LR, R2, #0xFC00
00003dcc  MOV             R12, R12,LSR#11
00003dd0  ORR             R12, R12, LR,LSR#5
00003dd4  AND             R2, R2, #0x1F
00003dd8  ORR             R12, R12, R2
00003ddc  MOV             R2, R0
00003de0  ADDEQ           R0, R2, #2
00003de4  SUBNE           R0, R2, #2
00003de8  STRH            R12, [R2]
00003dec  CMP             R0, R1
00003df0  BNE             loc_3D48
00003df4  LDR             R2, [SP,#0x84+var_4C]
00003df8  CMP             R11, R2
00003dfc  BNE             loc_3C10
00003e00  B               loc_4884
00003e04  LDR             LR, [SP,#0x84+var_38]
00003e08  CMP             LR, #0
00003e0c  BEQ             loc_3FB8
00003e10  B               loc_3F5C
00003e14  LDR             R1, [SP,#0x84+var_50]
00003e18  CMP             R4, #0
00003e1c  LDR             R0, [R1],#4
00003e20  STR             R1, [SP,#0x84+var_50]
00003e24  ADD             R2, R0, R5,LSL#1
00003e28  BEQ             loc_3E54
00003e2c  CMP             R6, #0
00003e30  MOV             R0, R11
00003e34  ADDEQ           R11, R0, #4
00003e38  SUBNE           R11, R0, #4
00003e3c  LDR             R0, [R0]
00003e40  ADD             R0, R0, R8,LSL#1
00003e44  ADD             R0, R0, R7,LSL#1
00003e48  SUB             R0, R0, #2
00003e4c  SUB             R1, R0, R7,LSL#1
00003e50  B               loc_3E70
00003e54  CMP             R6, #0
00003e58  MOV             R0, R11
00003e5c  ADDEQ           R11, R0, #4
00003e60  SUBNE           R11, R0, #4
00003e64  LDR             R0, [R0]
00003e68  ADD             R0, R0, R8,LSL#1
00003e6c  ADD             R1, R0, R7,LSL#1
00003e70  LDR             R3, [SP,#0x84+var_30]
00003e74  CMP             R3, #0
00003e78  BEQ             loc_3F54
00003e7c  B               loc_3F18
00003e80  LDRH            R3, [R2],#2
00003e84  LDR             R12, [SP,#0x84+var_68]
00003e88  CMP             R3, R12
00003e8c  BEQ             loc_3F0C
00003e90  LDR             LR, [SP,#0x84+var_74]
00003e94  CMP             LR, #0
00003e98  BEQ             loc_3EC4
00003e9c  CMP             R4, #0
00003ea0  LDR             R12, [SP,#0x84+var_78]
00003ea4  BEQ             loc_3EB4
00003ea8  MOV             R3, R0
00003eac  SUB             R0, R0, #2
00003eb0  B               loc_3EBC
00003eb4  MOV             R3, R0
00003eb8  ADD             R0, R0, #2
00003ebc  STRH            R12, [R3]
00003ec0  B               loc_3F18
00003ec4  AND             R12, R3, #0xF800
00003ec8  AND             LR, R3, #0x7E0
00003ecc  MOV             R12, R12,LSL#11
00003ed0  ORR             R12, R12, LR,LSL#5
00003ed4  LDR             LR, [SP,#0x84+var_6C]
00003ed8  AND             R3, R3, #0x1F
00003edc  ORR             R3, R12, R3
00003ee0  MLA             R3, LR, R3, R9
00003ee4  MOV             R3, R3,LSR#5
00003ee8  AND             R12, R3, #0x7C00000
00003eec  AND             LR, R3, #0xFC00
00003ef0  MOV             R12, R12,LSR#11
00003ef4  ORR             R12, R12, LR,LSR#5
00003ef8  AND             R3, R3, #0x1F
00003efc  ORR             R12, R12, R3
00003f00  CMP             R4, #0
00003f04  BEQ             loc_3EB4
00003f08  B               loc_3EA8
00003f0c  CMP             R4, #0
00003f10  ADDEQ           R0, R0, #2
00003f14  SUBNE           R0, R0, #2
00003f18  CMP             R0, R1
00003f1c  BNE             loc_3E80
00003f20  B               loc_3F5C
00003f24  LDR             LR, [SP,#0x84+var_74]
00003f28  CMP             LR, #0
00003f2c  BEQ             loc_3F6C
00003f30  CMP             R4, #0
00003f34  LDR             R12, [SP,#0x84+var_78]
00003f38  BEQ             loc_3F48
00003f3c  MOV             R3, R0
00003f40  SUB             R0, R0, #2
00003f44  B               loc_3F50
00003f48  MOV             R3, R0
00003f4c  ADD             R0, R0, #2
00003f50  STRH            R12, [R3]
00003f54  CMP             R0, R1
00003f58  BNE             loc_3F24
00003f5c  LDR             R2, [SP,#0x84+var_4C]
00003f60  CMP             R11, R2
00003f64  BNE             loc_3E14
00003f68  B               loc_4884
00003f6c  LDRH            R3, [R2],#2
00003f70  CMP             R4, #0
00003f74  AND             R12, R3, #0xF800
00003f78  AND             LR, R3, #0x7E0
00003f7c  MOV             R12, R12,LSL#11
00003f80  ORR             R12, R12, LR,LSL#5
00003f84  LDR             LR, [SP,#0x84+var_6C]
00003f88  AND             R3, R3, #0x1F
00003f8c  ORR             R3, R12, R3
00003f90  MLA             R3, LR, R3, R9
00003f94  MOV             R3, R3,LSR#5
00003f98  AND             R12, R3, #0x7C00000
00003f9c  AND             LR, R3, #0xFC00
00003fa0  MOV             R12, R12,LSR#11
00003fa4  ORR             R12, R12, LR,LSR#5
00003fa8  AND             R3, R3, #0x1F
00003fac  ORR             R12, R12, R3
00003fb0  BEQ             loc_3F48
00003fb4  B               loc_3F3C
00003fb8  LDR             R2, [SP,#0x84+var_30]
00003fbc  CMP             R2, #0
00003fc0  BEQ             loc_4090
00003fc4  CMP             R4, #0
00003fc8  BEQ             loc_4080
00003fcc  B               loc_4024
00003fd0  LDR             R1, [SP,#0x84+var_50]
00003fd4  CMP             R6, #0
00003fd8  LDR             R0, [R1],#4
00003fdc  STR             R1, [SP,#0x84+var_50]
00003fe0  ADD             R3, R0, R5,LSL#1
00003fe4  MOV             R0, R11
00003fe8  ADDEQ           R11, R0, #4
00003fec  SUBNE           R11, R0, #4
00003ff0  LDR             R0, [R0]
00003ff4  ADD             R0, R0, R8,LSL#1
00003ff8  ADD             R0, R0, R7,LSL#1
00003ffc  SUB             R0, R0, #2
00004000  SUB             R1, R0, R7,LSL#1
00004004  B               loc_401C
00004008  LDRH            R2, [R3],#2
0000400c  LDR             R12, [SP,#0x84+var_68]
00004010  CMP             R2, R12
00004014  STRHNE          R2, [R0]
00004018  SUB             R0, R0, #2
0000401c  CMP             R0, R1
00004020  BHI             loc_4008
00004024  LDR             R2, [SP,#0x84+var_4C]
00004028  CMP             R11, R2
0000402c  BNE             loc_3FD0
00004030  B               loc_4884
00004034  CMP             R6, #0
00004038  MOV             R0, R11
0000403c  ADDEQ           R11, R0, #4
00004040  SUBNE           R11, R0, #4
00004044  LDR             R0, [R0]
00004048  LDR             R2, [SP,#0x84+var_50]
0000404c  ADD             R0, R0, R8,LSL#1
00004050  LDR             R1, [R2],#4
00004054  STR             R2, [SP,#0x84+var_50]
00004058  ADD             R3, R1, R5,LSL#1
0000405c  ADD             R1, R0, R7,LSL#1
00004060  B               loc_4078
00004064  LDRH            R2, [R3],#2
00004068  LDR             R12, [SP,#0x84+var_68]
0000406c  CMP             R2, R12
00004070  STRHNE          R2, [R0]
00004074  ADD             R0, R0, #2
00004078  CMP             R0, R1
0000407c  BCC             loc_4064
00004080  LDR             R2, [SP,#0x84+var_4C]
00004084  CMP             R11, R2
00004088  BNE             loc_4034
0000408c  B               loc_4884
00004090  CMP             R4, #0
00004094  BEQ             loc_40F0
00004098  B               loc_40E0
0000409c  CMP             R6, #0
000040a0  MOV             R0, R11
000040a4  ADDEQ           R11, R0, #4
000040a8  SUBNE           R11, R0, #4
000040ac  LDR             R0, [R0]
000040b0  LDR             R2, [SP,#0x84+var_50]
000040b4  ADD             R0, R0, R8,LSL#1
000040b8  LDR             R1, [R2],#4
000040bc  STR             R2, [SP,#0x84+var_50]
000040c0  ADD             R0, R0, R7,LSL#1
000040c4  SUB             R0, R0, #2
000040c8  ADD             R2, R1, R5,LSL#1
000040cc  SUB             R1, R0, R7,LSL#1
000040d0  CMP             R0, R1
000040d4  LDRHHI          R3, [R2],#2
000040d8  STRHHI          R3, [R0],#-2
000040dc  BHI             loc_40D0
000040e0  LDR             R2, [SP,#0x84+var_4C]
000040e4  CMP             R11, R2
000040e8  BNE             loc_409C
000040ec  B               loc_4884
000040f0  MOV             R4, R7,LSL#17
000040f4  MOV             R4, R4,ASR#16
000040f8  MOV             R7, R1
000040fc  B               loc_413C
00004100  LDR             R1, [SP,#0x84+var_50]
00004104  CMP             R6, #0
00004108  LDR             R0, [R1],#4
0000410c  STR             R1, [SP,#0x84+var_50]
00004110  ADD             R1, R0, R5,LSL#1
00004114  MOV             R0, R11
00004118  ADDEQ           R11, R0, #4
0000411c  SUBNE           R11, R0, #4
00004120  LDR             R0, [R0]
00004124  LDR             R2, [R7,#(dword_8 - 0xC)]
00004128  ADR             LR, loc_413C
0000412c  LDR             R3, [R2]
00004130  MOV             R2, R4
00004134  ADD             R0, R0, R8,LSL#1
00004138  BX              R3
0000413c  LDR             R2, [SP,#0x84+var_4C]
00004140  CMP             R11, R2
00004144  BNE             loc_4100
00004148  B               loc_4884
0000414c  LDR             R0, [SP,#0x84+arg_4]
00004150  LDR             R0, [R0,#0x14]
00004154  LDR             R3, [SP,#0x84+var_48]
00004158  ADD             R12, R0, R3
0000415c  LDR             R0, [SP,#0x84+arg_4]
00004160  STR             R12, [SP,#0x84+var_64]
00004164  LDR             R0, [R0,#0xC]
00004168  ADD             R0, R0, R3
0000416c  STR             R0, [SP,#0x84+var_5C]
00004170  LDR             R0, [SP,#0x84+arg_4]
00004174  LDR             R0, [R0,#0x10]
00004178  ADD             R2, R0, R3
0000417c  LDR             R3, [SP,#0x84+var_2C]
00004180  LDR             R0, [SP,#0x84+var_18]
00004184  CMP             R3, #0
00004188  LDR             R3, [SP,#0x84+var_48]
0000418c  STR             R2, [SP,#0x84+var_60]
00004190  ADD             R12, R0, R3,LSL#2
00004194  LDREQ           R0, [SP,#0x84+arg_4]
00004198  STRNE           R12, [SP,#0x84+var_54]
0000419c  STREQ           R12, [SP,#0x84+var_50]
000041a0  LDRHEQ          R12, [R0,#6]
000041a4  ADD             R2, R5, R7
000041a8  STREQ           R12, [SP,#0x84+var_68]
000041ac  STR             R2, [SP,#0x84+var_28]
000041b0  B               loc_4878
000041b4  LDR             R0, [SP,#0x84+var_5C]
000041b8  LDRB            R1, [R0],#1
000041bc  LDR             R2, [SP,#0x84+var_60]
000041c0  STR             R0, [SP,#0x84+var_5C]
000041c4  LDRB            R0, [R2],#1
000041c8  STR             R2, [SP,#0x84+var_60]
000041cc  CMP             R5, R1
000041d0  ADD             R2, R0, R1
000041d4  LDR             R3, [SP,#0x84+var_28]
000041d8  MOVGT           R0, R5
000041dc  MOVLE           R0, R1
000041e0  CMP             R3, R2
000041e4  LDRLT           R2, [SP,#0x84+var_28]
000041e8  SUB             R2, R2, R0
000041ec  MOV             R2, R2,LSL#16
000041f0  MOV             R2, R2,ASR#16
000041f4  CMP             R2, #0
000041f8  BGT             loc_4234
000041fc  CMP             R6, #0
00004200  ADDEQ           R11, R11, #4
00004204  LDR             R3, [SP,#0x84+var_2C]
00004208  SUBNE           R11, R11, #4
0000420c  CMP             R3, #0
00004210  LDRNE           R12, [SP,#0x84+var_54]
00004214  LDREQ           R12, [SP,#0x84+var_50]
00004218  ADD             R12, R12, #4
0000421c  STRNE           R12, [SP,#0x84+var_54]
00004220  STREQ           R12, [SP,#0x84+var_50]
00004224  LDR             R12, [SP,#0x84+var_64]
00004228  ADD             R12, R12, #1
0000422c  STR             R12, [SP,#0x84+var_64]
00004230  B               loc_4878
00004234  SUB             R1, R0, R1
00004238  LDR             R3, [SP,#0x84+var_2C]
0000423c  MOV             R1, R1,LSL#16
00004240  MOV             R1, R1,ASR#16
00004244  CMP             R3, #0
00004248  BNE             loc_4754
0000424c  LDR             R12, [SP,#0x84+var_50]
00004250  LDR             R3, [R12],#4
00004254  LDR             LR, [SP,#0x84+var_34]
00004258  STR             R12, [SP,#0x84+var_50]
0000425c  ADD             R1, R3, R1,LSL#1
00004260  CMP             LR, #0
00004264  BEQ             loc_4474
00004268  CMP             R4, #0
0000426c  BEQ             loc_42BC
00004270  SUB             R0, R8, R0
00004274  ADD             R0, R0, R5
00004278  ADD             R0, R0, R7
0000427c  SUB             R0, R0, #1
00004280  MOV             R0, R0,LSL#16
00004284  MOV             R0, R0,ASR#16
00004288  CMP             R0, R2
0000428c  LDRGE           R3, [R11]
00004290  ADDGE           R3, R3, R0,LSL#1
00004294  SUBGE           R2, R3, R2,LSL#1
00004298  LDRLT           R2, [R11]
0000429c  MOV             R3, R11
000042a0  SUBLT           R2, R2, #2
000042a4  CMP             R6, #0
000042a8  ADDEQ           R11, R3, #4
000042ac  SUBNE           R11, R3, #4
000042b0  LDR             R3, [R3]
000042b4  ADD             R0, R3, R0,LSL#1
000042b8  B               loc_42E0
000042bc  CMP             R6, #0
000042c0  MOV             R3, R11
000042c4  ADDEQ           R11, R3, #4
000042c8  SUBNE           R11, R3, #4
000042cc  LDR             R3, [R3]
000042d0  ADD             R3, R3, R8,LSL#1
000042d4  ADD             R0, R3, R0,LSL#1
000042d8  SUB             R0, R0, R5,LSL#1
000042dc  ADD             R2, R0, R2,LSL#1
000042e0  LDR             R12, [SP,#0x84+var_64]
000042e4  LDRB            R3, [R12],#1
000042e8  STR             R12, [SP,#0x84+var_64]
000042ec  CMP             R3, #0
000042f0  BEQ             loc_4468
000042f4  B               loc_43B8
000042f8  LDRH            R3, [R1],#2
000042fc  LDR             R12, [SP,#0x84+var_68]
00004300  CMP             R3, R12
00004304  BEQ             loc_43AC
00004308  LDR             LR, [SP,#0x84+var_74]
0000430c  CMP             LR, #0
00004310  LDRNE           R3, [SP,#0x84+var_7C]
00004314  BNE             loc_4348
00004318  AND             R12, R3, #0xF800
0000431c  AND             LR, R3, #0x7E0
00004320  MOV             R12, R12,LSL#11
00004324  ORR             R12, R12, LR,LSL#5
00004328  LDR             LR, [SP,#0x84+var_38]
0000432c  AND             R3, R3, #0x1F
00004330  CMP             LR, #0
00004334  LDRNE           LR, [SP,#0x84+var_6C]
00004338  ORR             R3, R12, R3
0000433c  LDRNE           R12, =0x7E0FC1F
00004340  MLANE           R3, LR, R3, R9
00004344  ANDNE           R3, R12, R3,LSR#5
00004348  LDRH            LR, [R0]
0000434c  CMP             R4, #0
00004350  AND             R12, LR, #0xF800
00004354  STR             LR, [SP,#0x84+var_80]
00004358  AND             LR, LR, #0x7E0
0000435c  MOV             R12, R12,LSL#11
00004360  ORR             R12, R12, LR,LSL#5
00004364  LDR             LR, [SP,#0x84+var_80]
00004368  AND             LR, LR, #0x1F
0000436c  ORR             R12, R12, LR
00004370  LDR             LR, [SP,#0x84+var_70]
00004374  MUL             R12, LR, R12
00004378  MLA             R3, R10, R3, R12
0000437c  MOV             R3, R3,LSR#5
00004380  AND             R12, R3, #0x7C00000
00004384  AND             LR, R3, #0xFC00
00004388  MOV             R12, R12,LSR#11
0000438c  ORR             R12, R12, LR,LSR#5
00004390  AND             R3, R3, #0x1F
00004394  ORR             R12, R12, R3
00004398  MOV             R3, R0
0000439c  ADDEQ           R0, R3, #2
000043a0  SUBNE           R0, R3, #2
000043a4  STRH            R12, [R3]
000043a8  B               loc_43B8
000043ac  CMP             R4, #0
000043b0  ADDEQ           R0, R0, #2
000043b4  SUBNE           R0, R0, #2
000043b8  CMP             R0, R2
000043bc  BNE             loc_42F8
000043c0  B               loc_4878
000043c4  LDR             LR, [SP,#0x84+var_74]
000043c8  CMP             LR, #0
000043cc  LDRNE           R3, [SP,#0x84+var_7C]
000043d0  BNE             loc_4408
000043d4  LDRH            R3, [R1],#2
000043d8  AND             R12, R3, #0xF800
000043dc  AND             LR, R3, #0x7E0
000043e0  MOV             R12, R12,LSL#11
000043e4  ORR             R12, R12, LR,LSL#5
000043e8  LDR             LR, [SP,#0x84+var_38]
000043ec  AND             R3, R3, #0x1F
000043f0  CMP             LR, #0
000043f4  LDRNE           LR, [SP,#0x84+var_6C]
000043f8  ORR             R3, R12, R3
000043fc  LDRNE           R12, =0x7E0FC1F
00004400  MLANE           R3, LR, R3, R9
00004404  ANDNE           R3, R12, R3,LSR#5
00004408  LDRH            LR, [R0]
0000440c  CMP             R4, #0
00004410  AND             R12, LR, #0xF800
00004414  STR             LR, [SP,#0x84+var_80]
00004418  AND             LR, LR, #0x7E0
0000441c  MOV             R12, R12,LSL#11
00004420  ORR             R12, R12, LR,LSL#5
00004424  LDR             LR, [SP,#0x84+var_80]
00004428  AND             LR, LR, #0x1F
0000442c  ORR             R12, R12, LR
00004430  LDR             LR, [SP,#0x84+var_70]
00004434  MUL             R12, LR, R12
00004438  MLA             R3, R10, R3, R12
0000443c  MOV             R3, R3,LSR#5
00004440  AND             R12, R3, #0x7C00000
00004444  AND             LR, R3, #0xFC00
00004448  MOV             R12, R12,LSR#11
0000444c  ORR             R12, R12, LR,LSR#5
00004450  AND             R3, R3, #0x1F
00004454  ORR             R12, R12, R3
00004458  MOV             R3, R0
0000445c  ADDEQ           R0, R3, #2
00004460  SUBNE           R0, R3, #2
00004464  STRH            R12, [R3]
00004468  CMP             R0, R2
0000446c  BNE             loc_43C4
00004470  B               loc_4878
00004474  LDR             LR, [SP,#0x84+var_38]
00004478  CMP             LR, #0
0000447c  BEQ             loc_463C
00004480  CMP             R4, #0
00004484  BEQ             loc_44D4
00004488  SUB             R0, R8, R0
0000448c  ADD             R0, R0, R5
00004490  ADD             R0, R0, R7
00004494  SUB             R0, R0, #1
00004498  MOV             R0, R0,LSL#16
0000449c  MOV             R0, R0,ASR#16
000044a0  CMP             R0, R2
000044a4  LDRGE           R3, [R11]
000044a8  ADDGE           R3, R3, R0,LSL#1
000044ac  SUBGE           R2, R3, R2,LSL#1
000044b0  LDRLT           R2, [R11]
000044b4  MOV             R3, R11
000044b8  SUBLT           R2, R2, #2
000044bc  CMP             R6, #0
000044c0  ADDEQ           R11, R3, #4
000044c4  SUBNE           R11, R3, #4
000044c8  LDR             R3, [R3]
000044cc  ADD             R0, R3, R0,LSL#1
000044d0  B               loc_44F8
000044d4  CMP             R6, #0
000044d8  MOV             R3, R11
000044dc  ADDEQ           R11, R3, #4
000044e0  SUBNE           R11, R3, #4
000044e4  LDR             R3, [R3]
000044e8  ADD             R3, R3, R8,LSL#1
000044ec  ADD             R0, R3, R0,LSL#1
000044f0  SUB             R0, R0, R5,LSL#1
000044f4  ADD             R2, R0, R2,LSL#1
000044f8  LDR             R12, [SP,#0x84+var_64]
000044fc  LDRB            R3, [R12],#1
00004500  STR             R12, [SP,#0x84+var_64]
00004504  CMP             R3, #0
00004508  BEQ             loc_45E4
0000450c  B               loc_45A8
00004510  LDRH            R3, [R1],#2
00004514  LDR             R12, [SP,#0x84+var_68]
00004518  CMP             R3, R12
0000451c  BEQ             loc_459C
00004520  LDR             LR, [SP,#0x84+var_74]
00004524  CMP             LR, #0
00004528  BEQ             loc_4554
0000452c  CMP             R4, #0
00004530  LDR             R12, [SP,#0x84+var_78]
00004534  BEQ             loc_4544
00004538  MOV             R3, R0
0000453c  SUB             R0, R0, #2
00004540  B               loc_454C
00004544  MOV             R3, R0
00004548  ADD             R0, R0, #2
0000454c  STRH            R12, [R3]
00004550  B               loc_45A8
00004554  AND             R12, R3, #0xF800
00004558  AND             LR, R3, #0x7E0
0000455c  MOV             R12, R12,LSL#11
00004560  ORR             R12, R12, LR,LSL#5
00004564  LDR             LR, [SP,#0x84+var_6C]
00004568  AND             R3, R3, #0x1F
0000456c  ORR             R3, R12, R3
00004570  MLA             R3, LR, R3, R9
00004574  MOV             R3, R3,LSR#5
00004578  AND             R12, R3, #0x7C00000
0000457c  AND             LR, R3, #0xFC00
00004580  MOV             R12, R12,LSR#11
00004584  ORR             R12, R12, LR,LSR#5
00004588  AND             R3, R3, #0x1F
0000458c  ORR             R12, R12, R3
00004590  CMP             R4, #0
00004594  BEQ             loc_4544
00004598  B               loc_4538
0000459c  CMP             R4, #0
000045a0  ADDEQ           R0, R0, #2
000045a4  SUBNE           R0, R0, #2
000045a8  CMP             R0, R2
000045ac  BNE             loc_4510
000045b0  B               loc_4878
000045b4  LDR             LR, [SP,#0x84+var_74]
000045b8  CMP             LR, #0
000045bc  BEQ             loc_45F0
000045c0  CMP             R4, #0
000045c4  LDR             R12, [SP,#0x84+var_78]
000045c8  BEQ             loc_45D8
000045cc  MOV             R3, R0
000045d0  SUB             R0, R0, #2
000045d4  B               loc_45E0
000045d8  MOV             R3, R0
000045dc  ADD             R0, R0, #2
000045e0  STRH            R12, [R3]
000045e4  CMP             R0, R2
000045e8  BNE             loc_45B4
000045ec  B               loc_4878
000045f0  LDRH            R3, [R1],#2
000045f4  CMP             R4, #0
000045f8  AND             R12, R3, #0xF800
000045fc  AND             LR, R3, #0x7E0
00004600  MOV             R12, R12,LSL#11
00004604  ORR             R12, R12, LR,LSL#5
00004608  LDR             LR, [SP,#0x84+var_6C]
0000460c  AND             R3, R3, #0x1F
00004610  ORR             R3, R12, R3
00004614  MLA             R3, LR, R3, R9
00004618  MOV             R3, R3,LSR#5
0000461c  AND             R12, R3, #0x7C00000
00004620  AND             LR, R3, #0xFC00
00004624  MOV             R12, R12,LSR#11
00004628  ORR             R12, R12, LR,LSR#5
0000462c  AND             R3, R3, #0x1F
00004630  ORR             R12, R12, R3
00004634  BEQ             loc_45D8
00004638  B               loc_45CC
0000463c  CMP             R4, #0
00004640  BEQ             loc_46D8
00004644  SUB             R0, R8, R0
00004648  ADD             R0, R0, R5
0000464c  ADD             R0, R0, R7
00004650  SUB             R0, R0, #1
00004654  MOV             R0, R0,LSL#16
00004658  MOV             R0, R0,ASR#16
0000465c  CMP             R0, R2
00004660  LDRGE           R3, [R11]
00004664  ADDGE           R3, R3, R0,LSL#1
00004668  SUBGE           R2, R3, R2,LSL#1
0000466c  LDRLT           R2, [R11]
00004670  MOV             R3, R11
00004674  SUBLT           R2, R2, #2
00004678  CMP             R6, #0
0000467c  ADDEQ           R11, R3, #4
00004680  SUBNE           R11, R3, #4
00004684  LDR             R3, [R3]
00004688  LDR             R12, [SP,#0x84+var_64]
0000468c  ADD             R0, R3, R0,LSL#1
00004690  LDRB            R3, [R12],#1
00004694  STR             R12, [SP,#0x84+var_64]
00004698  CMP             R3, #0
0000469c  BEQ             loc_46CC
000046a0  B               loc_46B8
000046a4  LDRH            R3, [R1],#2
000046a8  LDR             R12, [SP,#0x84+var_68]
000046ac  CMP             R3, R12
000046b0  STRHNE          R3, [R0]
000046b4  SUB             R0, R0, #2
000046b8  CMP             R0, R2
000046bc  BHI             loc_46A4
000046c0  B               loc_4878
000046c4  LDRH            R3, [R1],#2
000046c8  STRH            R3, [R0],#-2
000046cc  CMP             R0, R2
000046d0  BHI             loc_46C4
000046d4  B               loc_4878
000046d8  CMP             R6, #0
000046dc  MOV             R3, R11
000046e0  ADDEQ           R11, R3, #4
000046e4  SUBNE           R11, R3, #4
000046e8  LDR             R3, [R3]
000046ec  LDR             R12, [SP,#0x84+var_64]
000046f0  ADD             R3, R3, R8,LSL#1
000046f4  ADD             R0, R3, R0,LSL#1
000046f8  LDRB            R3, [R12],#1
000046fc  STR             R12, [SP,#0x84+var_64]
00004700  SUB             R0, R0, R5,LSL#1
00004704  CMP             R3, #0
00004708  BEQ             loc_4734
0000470c  ADD             R2, R0, R2,LSL#1
00004710  B               loc_4728
00004714  LDRH            R3, [R1],#2
00004718  LDR             R12, [SP,#0x84+var_68]
0000471c  CMP             R3, R12
00004720  STRHNE          R3, [R0]
00004724  ADD             R0, R0, #2
00004728  CMP             R0, R2
0000472c  BCC             loc_4714
00004730  B               loc_4878
00004734  LDR             R3, =(start - 0x4744)
00004738  MOV             R2, R2,LSL#1
0000473c  ADD             R3, PC, R3; start
00004740  LDR             R3, [R3,#(dword_8 - 0xC)]
00004744  ADR             LR, loc_4750
00004748  LDR             R3, [R3]
0000474c  BX              R3
00004750  B               loc_4878
00004754  LDR             R12, [SP,#0x84+var_54]
00004758  CMP             R4, #0
0000475c  LDR             R3, [R12],#4
00004760  ADD             R3, R3, R1,ASR#1
00004764  ADD             R1, SP, #0x84+var_58
00004768  STM             R1, {R3,R12}
0000476c  BEQ             loc_47B8
00004770  SUB             R0, R8, R0
00004774  ADD             R0, R0, R5
00004778  ADD             R0, R0, R7
0000477c  SUB             R0, R0, #1
00004780  MOV             R0, R0,LSL#16
00004784  MOV             R0, R0,ASR#16
00004788  LDR             R1, [R11]
0000478c  CMP             R0, R2
00004790  ADDGE           R1, R1, R0,LSL#1
00004794  SUBGE           R1, R1, R2,LSL#1
00004798  SUBLT           R1, R1, #2
0000479c  CMP             R6, #0
000047a0  MOV             R2, R11
000047a4  ADDEQ           R11, R2, #4
000047a8  SUBNE           R11, R2, #4
000047ac  LDR             R2, [R2]
000047b0  ADD             R0, R2, R0,LSL#1
000047b4  B               loc_4870
000047b8  CMP             R6, #0
000047bc  MOV             R1, R11
000047c0  ADDEQ           R11, R1, #4
000047c4  SUBNE           R11, R1, #4
000047c8  LDR             R1, [R1]
000047cc  ADD             R1, R1, R8,LSL#1
000047d0  ADD             R0, R1, R0,LSL#1
000047d4  SUB             R0, R0, R5,LSL#1
000047d8  ADD             R1, R0, R2,LSL#1
000047dc  B               loc_4870
000047e0  LDR             R3, [SP,#0x84+var_58]
000047e4  LDRB            R2, [R3],#1
000047e8  STR             R3, [SP,#0x84+var_58]
000047ec  CMP             R2, #0
000047f0  BEQ             loc_4864
000047f4  LDR             LR, [SP,#0x84+var_34]
000047f8  LDRH            R3, [R0]
000047fc  CMP             LR, #0
00004800  MULNE           R2, R10, R2
00004804  AND             R12, R3, #0xF800
00004808  AND             LR, R3, #0x7E0
0000480c  MOV             R12, R12,LSL#11
00004810  MOVNE           R2, R2,LSL#19
00004814  MOVNE           R2, R2,LSR#24
00004818  ORR             R12, R12, LR,LSL#5
0000481c  AND             R3, R3, #0x1F
00004820  ORR             R3, R12, R3
00004824  RSB             R12, R2, #0x20 ; ' '
00004828  MUL             R3, R12, R3
0000482c  MLA             R3, R2, R9, R3
00004830  MOV             R2, R3,LSR#5
00004834  AND             R3, R2, #0x7C00000
00004838  AND             R12, R2, #0xFC00
0000483c  MOV             R3, R3,LSR#11
00004840  ORR             R3, R3, R12,LSR#5
00004844  AND             R2, R2, #0x1F
00004848  ORR             R3, R3, R2
0000484c  MOV             R2, R0
00004850  CMP             R4, #0
00004854  ADDEQ           R0, R2, #2
00004858  SUBNE           R0, R2, #2
0000485c  STRH            R3, [R2]
00004860  B               loc_4870
00004864  CMP             R4, #0
00004868  ADDEQ           R0, R0, #2
0000486c  SUBNE           R0, R0, #2
00004870  CMP             R0, R1
00004874  BNE             loc_47E0
00004878  LDR             R2, [SP,#0x84+var_4C]
0000487c  CMP             R11, R2
00004880  BNE             loc_41B4
00004884  MOV             R0, #0
00004888  ADD             SP, SP, #0x84
0000488c  POP             {R4-R11,LR}
00004890  BX              LR
