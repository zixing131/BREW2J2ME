000252a0  LDRH            R1, [R0]
000252a4  CMP             R1, #0
000252a8  LDRSHNE         R1, [R0,#2]
000252ac  LDRSHNE         R3, [R0]
000252b0  CMPNE           R1, R3
000252b4  BXGE            LR
000252b8  SUB             R1, R1, #1
000252bc  ADD             R0, R0, #0x100
000252c0  STRH            R1, [R0,#4]
000252c4  LDRSH           R2, [R0,#6]
000252c8  LDRSH           R1, [R0,#4]
000252cc  ADD             R12, R1, R2
000252d0  CMP             R12, R3
000252d4  SUBGT           R1, R1, #1
000252d8  STRHGT          R1, [R0,#4]
000252dc  BGT             loc_252C8
000252e0  LDRSH           R2, [R0,#4]
000252e4  CMP             R2, #0
000252e8  MOVLT           R1, #0
000252ec  STRH            R1, [R0,#4]
000252f0  BX              LR
