00012d60  MOV             R2, #0
00012d64  STR             R2, [R1]
00012d68  LDRH            R2, [R0]
00012d6c  CMP             R2, #0x30 ; '0'
00012d70  CMPNE           R2, #0x31 ; '1'
00012d74  BXNE            LR
00012d78  CMP             R2, #0x31 ; '1'
00012d7c  MOVEQ           R2, #0x10
00012d80  STREQ           R2, [R1]
00012d84  ADD             R2, R0, #2
00012d88  LDRH            R0, [R0,#2]
00012d8c  CMP             R0, #0x30 ; '0'
00012d90  CMPNE           R0, #0x31 ; '1'
00012d94  BXNE            LR
00012d98  CMP             R0, #0x31 ; '1'
00012d9c  LDREQ           R0, [R1]
00012da0  ORREQ           R0, R0, #0x40 ; '@'
00012da4  STREQ           R0, [R1]
00012da8  LDRH            R0, [R2,#2]!
00012dac  CMP             R0, #0x30 ; '0'
00012db0  CMPNE           R0, #0x31 ; '1'
00012db4  BXNE            LR
00012db8  CMP             R0, #0x31 ; '1'
00012dbc  LDREQ           R0, [R1]
00012dc0  ORREQ           R0, R0, #2
00012dc4  STREQ           R0, [R1]
00012dc8  LDRH            R0, [R2,#2]!
00012dcc  CMP             R0, #0x30 ; '0'
00012dd0  CMPNE           R0, #0x31 ; '1'
00012dd4  BXNE            LR
00012dd8  CMP             R0, #0x31 ; '1'
00012ddc  LDREQ           R0, [R1]
00012de0  ORREQ           R0, R0, #0x20 ; ' '
00012de4  STREQ           R0, [R1]
00012de8  LDRH            R0, [R2,#2]
00012dec  CMP             R0, #0x30 ; '0'
00012df0  CMPNE           R0, #0x31 ; '1'
00012df4  BXNE            LR
00012df8  CMP             R0, #0x31 ; '1'
00012dfc  LDREQ           R0, [R1]
00012e00  ORREQ           R0, R0, #1
00012e04  STREQ           R0, [R1]
00012e08  BX              LR
