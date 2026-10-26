000124a0  PUSH            {R3-R11,LR}
000124a4  ADD             R9, SP, #4+arg_0
000124a8  MOV             R12, R2
000124ac  CMP             R1, #0
000124b0  MOVGE           R2, #0x21C
000124b4  LDM             R9, {R7-R9}
000124b8  MOV             R4, R0
000124bc  LDRSHGE         R2, [R2,R4]
000124c0  MOV             R0, #0
000124c4  MOV             R11, R3
000124c8  CMPGE           R2, R1
000124cc  BLE             loc_1262C
000124d0  ADD             R6, R4, R1,LSL#3
000124d4  LDRB            R1, [R6,#0x21F]
000124d8  LDR             R0, [R4,#0x10]
000124dc  MOV             R3, R12
000124e0  ADD             R5, R1, R1,LSL#3
000124e4  ADD             R0, R0, R5,LSL#3
000124e8  LDRH            R2, [R0,#2]
000124ec  LDRH            R1, [R0]
000124f0  MOV             R0, R4
000124f4  BL              sub_571C
000124f8  MOV             R10, R0
000124fc  LDR             R0, [R4,#0x10]
00012500  ADD             R0, R0, R5,LSL#3
00012504  LDRH            R2, [R0,#2]
00012508  LDRH            R1, [R0]
0001250c  LDRB            R3, [R6,#0x220]
00012510  MOV             R0, R4
00012514  BL              sub_571C
00012518  SUB             R10, R10, R0
0001251c  LDR             R0, [R4,#0x10]
00012520  MOV             R3, R11
00012524  ADD             R0, R0, R5,LSL#3
00012528  LDRH            R2, [R0,#0x12]
0001252c  LDRH            R1, [R0,#0x10]
00012530  MOV             R0, R4
00012534  BL              sub_571C
00012538  MOV             R11, R0
0001253c  LDR             R0, [R4,#0x10]
00012540  ADD             R0, R0, R5,LSL#3
00012544  LDRH            R2, [R0,#0x12]
00012548  LDRH            R1, [R0,#0x10]
0001254c  LDRB            R3, [R6,#0x221]
00012550  MOV             R0, R4
00012554  BL              sub_571C
00012558  SUB             R0, R11, R0
0001255c  ADD             R10, R0, R10
00012560  LDR             R0, [R4,#0x10]
00012564  MOV             R3, R7
00012568  ADD             R0, R0, R5,LSL#3
0001256c  LDRH            R2, [R0,#0xA]
00012570  LDRH            R1, [R0,#8]
00012574  MOV             R0, R4
00012578  BL              sub_571C
0001257c  MOV             R7, R0
00012580  LDR             R0, [R4,#0x10]
00012584  ADD             R0, R0, R5,LSL#3
00012588  LDRH            R2, [R0,#0xA]
0001258c  LDRH            R1, [R0,#8]
00012590  LDRB            R3, [R6,#0x222]
00012594  MOV             R0, R4
00012598  BL              sub_571C
0001259c  SUB             R0, R7, R0
000125a0  ADD             R7, R0, R10
000125a4  LDR             R0, [R4,#0x10]
000125a8  MOV             R3, R8
000125ac  ADD             R0, R0, R5,LSL#3
000125b0  LDRH            R2, [R0,#0x22]
000125b4  LDRH            R1, [R0,#0x20]
000125b8  MOV             R0, R4
000125bc  BL              sub_571C
000125c0  MOV             R8, R0
000125c4  LDR             R0, [R4,#0x10]
000125c8  ADD             R0, R0, R5,LSL#3
000125cc  LDRH            R2, [R0,#0x22]
000125d0  LDRH            R1, [R0,#0x20]
000125d4  LDRB            R3, [R6,#0x223]
000125d8  MOV             R0, R4
000125dc  BL              sub_571C
000125e0  SUB             R0, R8, R0
000125e4  ADD             R7, R0, R7
000125e8  LDR             R0, [R4,#0x10]
000125ec  MOV             R3, R9
000125f0  ADD             R0, R0, R5,LSL#3
000125f4  LDRH            R2, [R0,#0x2A]
000125f8  LDRH            R1, [R0,#0x28]
000125fc  MOV             R0, R4
00012600  BL              sub_571C
00012604  MOV             R8, R0
00012608  LDR             R0, [R4,#0x10]
0001260c  ADD             R0, R0, R5,LSL#3
00012610  LDRH            R2, [R0,#0x2A]
00012614  LDRH            R1, [R0,#0x28]
00012618  LDRB            R3, [R6,#0x224]
0001261c  MOV             R0, R4
00012620  BL              sub_571C
00012624  SUB             R0, R8, R0
00012628  ADD             R0, R0, R7
0001262c  POP             {R3-R11,LR}
00012630  BX              LR
