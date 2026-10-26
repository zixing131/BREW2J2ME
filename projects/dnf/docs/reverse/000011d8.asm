0x11d8 PUSH            {R4,R5,LR}
0x11da LDR             R5, =(a100+4); "0"
0x11dc LDR             R4, =0xFFFFE4E8
0x11de MOVS            R1, R5
0x11e0 ADD             SP, R4
0x11e2 LDR             R0, =aCallReject; "CALL_REJECT"
0x11e4 LDR             R4, =unk_14033EC
0x11e6 BL              sub_1402
0x11ea MOVS            R1, R5
0x11ec LDR             R0, =aNoMessage; "NO_MESSAGE"
0x11ee BL              sub_1402
0x11f2 LDR             R3, =0x67761
0x11f4 BL              sub_1400
0x11f8 MOVS            R1, #2
0x11fa LDR             R2, =0xFFFFFF
0x11fc MOVS            R3, #0
0x11fe LDR             R4, =unk_140341C
0x1200 MOVS            R0, #0
0x1202 BL              sub_1402
0x1206 LDR             R3, =0x6E409
0x1208 BL              sub_1400
0x120c BL              sub_1070
0x1210 LDR             R3, =0x6C529
0x1212 BL              sub_1400
0x1216 LDR             R3, =0x23D95
0x1218 BL              sub_1400
0x121c BL              sub_114C
0x1220 LDR             R4, =unk_15000D0
0x1222 MOV             R0, SP
0x1224 LDR             R3, =0x1ACD
0x1226 BL              sub_1400
0x122a MOV             R1, SP
0x122c LDR             R2, =0x1B18
0x122e MOVS            R0, R4
0x1230 LDR             R3, =0x8C9DC
0x1232 BL              sub_1400
0x1236 LDR             R3, =dword_1501D90
0x1238 MOVS            R0, R4
0x123a STR             R4, [R3]
0x123c LDR             R3, =0x1451
0x123e BL              sub_1400
0x1242 LDR             R3, =0x73281
0x1244 BL              sub_1400
0x1248 LDR             R3, =0x1CD5
0x124a BL              sub_1400
0x124e LDR             R3, =0x1E15
0x1250 BL              sub_1400
0x1254 LDR             R3, =0x1F61
0x1256 BL              sub_1400
0x125a LDR             R3, =0x1F45
0x125c BL              sub_1400
0x1260 LDR             R3, =0x39501
0x1262 BL              sub_1400
0x1266 MOVS            R0, #0
0x1268 MOVS            R1, #0xE
0x126a MOVS            R2, #0
0x126c MOVS            R3, #0
0x126e LDR             R4, =0x1405
0x1270 BL              sub_1402
0x1274 LDR             R3, =0x2E461
0x1276 BL              sub_1400
0x127a LDR             R3, =0x1B18
0x127c ADD             SP, R3
0x127e POP             {R4,R5}
0x1280 POP             {R0}
0x1282 BX              R0