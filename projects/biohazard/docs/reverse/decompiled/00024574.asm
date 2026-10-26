00024574  PUSH            {R4-R9,LR}
00024578  SUB             SP, SP, #0x1C
0002457c  LDR             R1, [R0,#0xE0]
00024580  MOV             R6, R0
00024584  BL              sub_1058
00024588  MOV             R5, R0
0002458c  LDR             R0, [R0,#0xD4]
00024590  LDR             R7, =(start - 0x2459C)
00024594  ADD             R7, PC, R7; start
00024598  CMP             R0, #0
0002459c  BNE             loc_245B4
000245a0  LDR             R0, [R7,#(dword_8 - 0xC)]
000245a4  LDR             R1, [R0,#0x68]
000245a8  MOV             R0, #0x200
000245ac  BLX             R1
000245b0  STR             R0, [R5,#0xD4]
000245b4  LDR             R0, [R7,#(dword_8 - 0xC)]
000245b8  LDR             R1, [R0,#0x68]
000245bc  MOV             R0, #0x200
000245c0  BLX             R1
000245c4  MOV             R4, R0
000245c8  LDR             R0, [R5,#0xD4]
000245cc  CMP             R0, #0
000245d0  BEQ             loc_245F4
000245d4  MOV             R9, #0
000245d8  CMP             R4, #0
000245dc  BNE             loc_24614
000245e0  LDR             R1, [R7,#(dword_8 - 0xC)]
000245e4  LDR             R1, [R1,#0x6C]
000245e8  BLX             R1
000245ec  STR             R9, [R5,#0xD4]
000245f0  B               loc_24608
000245f4  CMP             R4, #0
000245f8  LDRNE           R0, [R7,#(dword_8 - 0xC)]
000245fc  LDRNE           R1, [R0,#0x6C]
00024600  MOVNE           R0, R4
00024604  BLXNE           R1
00024608  MOV             R0, #2
0002460c  ADD             SP, SP, #0x1C
00024610  POP             {R4-R9,PC}
00024614  LDR             R1, [R7,#(dword_8 - 0xC)]
00024618  MOV             R2, #0x200
0002461c  LDR             R3, [R1,#0x14C]
00024620  LDR             R1, =(aHttp_0 - 0x2462C); "http://"
00024624  ADD             R1, PC, R1; "http://"
00024628  BLX             R3
0002462c  LDR             R1, [R7,#(dword_8 - 0xC)]
00024630  LDR             R0, [R5,#0xD4]
00024634  LDR             R3, [R1,#0x150]
00024638  LDR             R1, =(aSmsbilling189b_0 - 0x24648); "smsbilling.189brew.com:8080"
0002463c  MOV             R2, #0x200
00024640  ADD             R1, PC, R1; "smsbilling.189brew.com:8080"
00024644  BLX             R3
00024648  LDR             R1, [R7,#(dword_8 - 0xC)]
0002464c  LDR             R0, [R5,#0xD4]
00024650  LDR             R3, [R1,#0x150]
00024654  LDR             R1, =(aSmsbillingOrde_0 - 0x24664); "/smsbilling/orderReq"
00024658  MOV             R2, #0x200
0002465c  ADD             R1, PC, R1; "/smsbilling/orderReq"
00024660  BLX             R3
00024664  LDR             R0, [R6,#0x114]
00024668  MOV             R3, #1
0002466c  LDR             R1, [R6,#0x170]
00024670  LDR             R2, [R6,#0x174]
00024674  STMEA           SP, {R0-R3}
00024678  LDR             R0, [R7,#(dword_8 - 0xC)]
0002467c  LDR             R3, =(a109_0 - 0x24688); "1.0.9"
00024680  ADD             R3, PC, R3; "1.0.9"
00024684  LDR             R2, =(aVersionSCharge - 0x24690); "?Version=%s&ChargeType=%d&Currency=%d&P"...
00024688  ADD             R2, PC, R2; "?Version=%s&ChargeType=%d&Currency=%d&P"...
0002468c  LDR             R12, [R0,#0x144]
00024690  MOV             R0, R4
00024694  MOV             R1, #0x200
00024698  BLX             R12
0002469c  LDR             R1, [R7,#(dword_8 - 0xC)]
000246a0  LDR             R0, [R5,#0xD4]
000246a4  LDR             R3, [R1,#0x150]
000246a8  MOV             R1, R4
000246ac  MOV             R2, #0x200
000246b0  BLX             R3
000246b4  ADD             R3, R6, #0x48 ; 'H'
000246b8  STR             R3, [SP,#0x1C+var_1C]
000246bc  LDR             R3, [R6,#0x40]
000246c0  LDR             R0, [R7,#(dword_8 - 0xC)]
000246c4  LDR             R2, =(aIdentifydevice - 0x246D0); "&IdentifyDevice=%d&SubscriberID=%s&User"...
000246c8  ADD             R2, PC, R2; "&IdentifyDevice=%d&SubscriberID=%s&User"...
000246cc  LDR             R12, [R0,#0x144]
000246d0  MOV             R0, R4
000246d4  MOV             R1, #0x200
000246d8  BLX             R12
000246dc  LDR             R1, [R7,#(dword_8 - 0xC)]
000246e0  LDR             R0, [R5,#0xD4]
000246e4  LDR             R3, [R1,#0x150]
000246e8  MOV             R1, R4
000246ec  MOV             R2, #0x200
000246f0  BLX             R3
000246f4  LDR             R0, [R7,#(dword_8 - 0xC)]
000246f8  LDR             R1, [R0,#0x30]
000246fc  ADD             R0, R6, #0x17C
00024700  MOV             R8, R0
00024704  BLX             R1
00024708  MOV             R0, R0,LSL#1
0002470c  STR             R0, [SP,#0x1C+var_4]
00024710  MOV             R0, #0x200
00024714  STR             R0, [SP,#0x1C+var_8]
00024718  LDR             R0, [R7,#(dword_8 - 0xC)]
0002471c  MOV             R2, #0x200
00024720  LDR             R3, [R0,#4]
00024724  MOV             R0, R4
00024728  MOV             R1, #0
0002472c  BLX             R3
00024730  ADD             R3, SP, #0x1C+var_8
00024734  STR             R3, [SP,#0x1C+var_1C]
00024738  LDR             R0, [R5,#0x88]
0002473c  MOV             R3, R4
00024740  LDR             R1, [R0]
00024744  ADD             R2, SP, #0x1C+var_4
00024748  LDR             R12, [R1,#0x14]
0002474c  MOV             R1, R8
00024750  BLX             R12
00024754  LDR             R1, [R7,#(dword_8 - 0xC)]
00024758  LDR             R0, [R5,#0xD4]
0002475c  LDR             R3, [R1,#0x150]
00024760  MOV             R1, R4
00024764  MOV             R2, #0x200
00024768  BLX             R3
0002476c  LDR             R3, [R6,#0x118]
00024770  LDR             R0, [R7,#(dword_8 - 0xC)]
00024774  LDR             R2, =(aItemidD - 0x24780); "&ItemID=%d"
00024778  ADD             R2, PC, R2; "&ItemID=%d"
0002477c  LDR             R12, [R0,#0x144]
00024780  MOV             R0, R4
00024784  MOV             R1, #0x200
00024788  BLX             R12
0002478c  LDR             R1, [R7,#(dword_8 - 0xC)]
00024790  LDR             R0, [R5,#0xD4]
00024794  LDR             R3, [R1,#0x150]
00024798  MOV             R1, R4
0002479c  MOV             R2, #0x200
000247a0  BLX             R3
000247a4  LDR             R1, [R7,#(dword_8 - 0xC)]
000247a8  LDR             R0, [R5,#0xD4]
000247ac  LDR             R3, [R1,#0x150]
000247b0  LDR             R1, =(aItemname - 0x247C0); "&ItemName="
000247b4  MOV             R2, #0x200
000247b8  ADD             R1, PC, R1; "&ItemName="
000247bc  BLX             R3
000247c0  LDR             R0, [R7,#(dword_8 - 0xC)]
000247c4  LDR             R1, [R0,#0x30]
000247c8  ADD             R0, R6, #0x11C
000247cc  MOV             R8, R0
000247d0  BLX             R1
000247d4  MOV             R0, R0,LSL#1
000247d8  STR             R0, [SP,#0x1C+var_4]
000247dc  MOV             R0, #0x200
000247e0  STR             R0, [SP,#0x1C+var_8]
000247e4  LDR             R0, [R7,#(dword_8 - 0xC)]
000247e8  MOV             R2, #0x200
000247ec  LDR             R3, [R0,#4]
000247f0  MOV             R0, R4
000247f4  MOV             R1, #0
000247f8  BLX             R3
000247fc  ADD             R3, SP, #0x1C+var_8
00024800  STR             R3, [SP,#0x1C+var_1C]
00024804  LDR             R0, [R5,#0x88]
00024808  MOV             R3, R4
0002480c  LDR             R1, [R0]
00024810  ADD             R2, SP, #0x1C+var_4
00024814  LDR             R12, [R1,#0x14]
00024818  MOV             R1, R8
0002481c  BLX             R12
00024820  LDR             R1, [R7,#(dword_8 - 0xC)]
00024824  LDR             R0, [R5,#0xD4]
00024828  LDR             R3, [R1,#0x150]
0002482c  MOV             R1, R4
00024830  MOV             R2, #0x200
00024834  BLX             R3
00024838  LDR             R3, [R6,#0x178]
0002483c  LDR             R0, [R7,#(dword_8 - 0xC)]
00024840  LDR             R2, =(aProvideridD - 0x2484C); "&ProviderID=%d"
00024844  ADD             R2, PC, R2; "&ProviderID=%d"
00024848  LDR             R12, [R0,#0x144]
0002484c  MOV             R0, R4
00024850  MOV             R1, #0x200
00024854  BLX             R12
00024858  LDR             R1, [R7,#(dword_8 - 0xC)]
0002485c  LDR             R0, [R5,#0xD4]
00024860  LDR             R3, [R1,#0x150]
00024864  MOV             R1, R4
00024868  MOV             R2, #0x200
0002486c  BLX             R3
00024870  LDR             R3, [R5,#0x1C]
00024874  LDR             R0, [R7,#(dword_8 - 0xC)]
00024878  LDR             R2, =(aCallingapptype - 0x24884); "&CallingAppType=%d"
0002487c  ADD             R2, PC, R2; "&CallingAppType=%d"
00024880  LDR             R12, [R0,#0x144]
00024884  MOV             R0, R4
00024888  MOV             R1, #0x200
0002488c  BLX             R12
00024890  LDR             R1, [R7,#(dword_8 - 0xC)]
00024894  LDR             R0, [R5,#0xD4]
00024898  LDR             R3, [R1,#0x150]
0002489c  MOV             R1, R4
000248a0  MOV             R2, #0x200
000248a4  BLX             R3
000248a8  LDR             R1, [R7,#(dword_8 - 0xC)]
000248ac  LDR             R0, [R5,#0xD4]
000248b0  LDR             R3, [R1,#0x150]
000248b4  LDR             R1, =(aCallingapp - 0x248C4); "&CallingApp="
000248b8  MOV             R2, #0x200
000248bc  ADD             R1, PC, R1; "&CallingApp="
000248c0  BLX             R3
000248c4  LDR             R0, [R7,#(dword_8 - 0xC)]
000248c8  LDR             R1, [R0,#0x30]
000248cc  ADD             R0, R6, #0x5C ; '\'
000248d0  MOV             R8, R0
000248d4  BLX             R1
000248d8  MOV             R0, R0,LSL#1
000248dc  STR             R0, [SP,#0x1C+var_4]
000248e0  MOV             R0, #0x200
000248e4  STR             R0, [SP,#0x1C+var_8]
000248e8  LDR             R0, [R7,#(dword_8 - 0xC)]
000248ec  MOV             R2, #0x200
000248f0  LDR             R3, [R0,#4]
000248f4  MOV             R0, R4
000248f8  MOV             R1, #0
000248fc  BLX             R3
00024900  ADD             R3, SP, #0x1C+var_8
00024904  STR             R3, [SP,#0x1C+var_1C]
00024908  LDR             R0, [R5,#0x88]
0002490c  MOV             R3, R4
00024910  LDR             R1, [R0]
00024914  ADD             R2, SP, #0x1C+var_4
00024918  LDR             R12, [R1,#0x14]
0002491c  MOV             R1, R8
00024920  BLX             R12
00024924  LDR             R1, [R7,#(dword_8 - 0xC)]
00024928  LDR             R0, [R5,#0xD4]
0002492c  LDR             R3, [R1,#0x150]
00024930  MOV             R1, R4
00024934  MOV             R2, #0x200
00024938  BLX             R3
0002493c  MOV             R0, R6
00024940  BL              sub_26170
00024944  MOVS            R8, R0
00024948  STR             R9, [R5,#0x188]
0002494c  BNE             loc_2496C
00024950  MOV             R2, #0
00024954  MOV             R0, R6
00024958  LDR             R1, [R5,#0xD4]
0002495c  BL              sub_26E2C
00024960  MOVS            R8, R0
00024964  MOVNE           R0, R6
00024968  BLNE            sub_26C90
0002496c  LDR             R0, [R7,#(dword_8 - 0xC)]
00024970  LDR             R1, [R0,#0x6C]
00024974  MOV             R0, R4
00024978  BLX             R1
0002497c  MOV             R0, R8
00024980  B               loc_2460C
