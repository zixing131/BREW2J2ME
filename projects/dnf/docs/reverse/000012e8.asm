0x12e8 PUSH            {R4-R6,LR}
0x12ea SUB             SP, SP, #0x20
0x12ec ADD             R4, SP, #0x20+var_10
0x12ee MOVS            R1, #0
0x12f0 MOVS            R2, #0x10
0x12f2 LDR             R3, =unk_140329C
0x12f4 MOVS            R0, R4
0x12f6 BL              sub_1400
0x12fa MOVS            R1, R4
0x12fc LDR             R3, =unk_14033DC
0x12fe LDR             R0, =aPhonemodel; "PHONEMODEL"
0x1300 MOVS            R2, #0x10
0x1302 BL              sub_1400
0x1306 LDR             R0, =aLgLu9400; "LG-LU9400"
0x1308 MOVS            R1, R4
0x130a LDR             R3, =unk_140325C
0x130c BL              sub_1400
0x1310 CMP             R0, #0
0x1312 BNE             loc_137C
0x1314 LDR             R3, =unk_14033CC
0x1316 BL              sub_1400
0x131a LDR             R2, =qword_1501C0C
0x131c LDR             R3, [R2,#(qword_1501C0C+4 - 0x1501C0C)]
0x131e STR             R0, [SP,#0x20+var_20]
0x1320 STR             R1, [SP,#0x20+var_20+4]
0x1322 CMP             R3, R1
0x1324 BHI             loc_1334
0x1326 LDR             R1, [SP,#0x20+var_20+4]
0x1328 CMP             R3, R1
0x132a BNE             loc_133C
0x132c LDR             R3, [R2]
0x132e LDR             R4, [SP,#0x20+var_20]
0x1330 CMP             R3, R4
0x1332 BLS             loc_133C
0x1334 LDR             R5, [SP,#0x20+var_20]
0x1336 LDR             R6, [SP,#0x20+var_20+4]
0x1338 STR             R5, [R2]
0x133a STR             R6, [R2,#(qword_1501C0C+4 - 0x1501C0C)]
0x133c LDR             R3, =dword_1501BEC
0x133e LDR             R3, [R3]
0x1340 LSLS            R0, R3, #4
0x1342 SUBS            R0, R0, R3
0x1344 MOVS            R1, #0xA
0x1346 LDR             R3, =0x8C065
0x1348 BL              sub_1400
0x134c ADDS            R0, #0x32 ; '2'
0x134e MOVS            R1, R0
0x1350 ASRS            R2, R0, #0x1F
0x1352 LDR             R0, =qword_1501C0C
0x1354 LDR             R5, [SP,#0x20+var_20]
0x1356 LDR             R6, [SP,#0x20+var_20+4]
0x1358 LDR             R3, [R0]
0x135a LDR             R4, [R0,#(qword_1501C0C+4 - 0x1501C0C)]
0x135c SUBS            R5, R5, R3
0x135e SBCS            R6, R4
0x1360 STR             R5, [SP,#0x20+var_18]
0x1362 STR             R6, [SP,#0x20+var_18+4]
0x1364 CMP             R2, R6
0x1366 BHI             loc_13AE
0x1368 LDR             R6, [SP,#0x20+var_18+4]
0x136a CMP             R2, R6
0x136c BNE             loc_1372
0x136e CMP             R1, R5
0x1370 BHI             loc_13AE
0x1372 LDR             R3, =qword_1501C0C
0x1374 LDR             R1, [SP,#0x20+var_20]
0x1376 LDR             R2, [SP,#0x20+var_20+4]
0x1378 STR             R1, [R3]
0x137a STR             R2, [R3,#(qword_1501C0C+4 - 0x1501C0C)]
0x137c LDR             R1, =dword_1501BF8
0x137e LDR             R3, [R1]
0x1380 LDR             R2, =0xC350
0x1382 ADDS            R3, #1
0x1384 STR             R3, [R1]
0x1386 CMP             R3, R2
0x1388 BLE             loc_138E
0x138a MOVS            R3, #0x64 ; 'd'
0x138c STR             R3, [R1]
0x138e LDR             R0, =unk_15000D0
0x1390 LDR             R3, =0x1AA1
0x1392 BL              sub_1400
0x1396 LDR             R3, =0x673E1
0x1398 BL              sub_1400
0x139c LDR             R3, =0x36475
0x139e BL              sub_1400
0x13a2 LDR             R3, =0x3A8F5
0x13a4 BL              sub_1400
0x13a8 LDR             R3, =0x2E4C9
0x13aa BL              sub_1400
0x13ae BL              sub_114C
0x13b2 ADD             SP, SP, #0x20 ; ' '
0x13b4 POP             {R4-R6}
0x13b6 POP             {R0}
0x13b8 BX              R0