00019c14  LDRSH           R2, [R0]
00019c18  LDRSH           R3, [R1]
00019c1c  CMP             R2, R3
00019c20  LDRSHGT         R12, [R1,#4]
00019c24  ADDGT           R3, R12, R3
00019c28  CMPGT           R3, R2
00019c2c  BLE             loc_19C50
00019c30  LDRSH           R0, [R0,#2]
00019c34  LDRSH           R2, [R1,#2]
00019c38  CMP             R0, R2
00019c3c  LDRSHGE         R1, [R1,#6]
00019c40  ADDGE           R1, R1, R2
00019c44  CMPGE           R1, R0
00019c48  MOVGT           R0, #1
00019c4c  BXGT            LR
00019c50  MOV             R0, #0
00019c54  BX              LR
