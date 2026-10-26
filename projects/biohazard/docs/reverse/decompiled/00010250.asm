00010250  SUB             R12, R1, #0x100
00010254  SUBS            R12, R12, #2
00010258  PUSH            {LR}
0001025c  BNE             loc_103A0
00010260  SUBS            R12, R2, #0xE000
00010264  SUBSGE          R12, R12, #0x32 ; '2'
00010268  ADD             R1, R0, #0x100
0001026c  BEQ             loc_102C0
00010270  BGT             loc_102A4
00010274  SUB             R12, R2, #0xE000
00010278  SUBS            R12, R12, #0x21 ; '!'
0001027c  BEQ             loc_103AC
00010280  SUB             R12, R2, #0xE000
00010284  SUBS            R12, R12, #0x31 ; '1'
00010288  BNE             loc_103A0
0001028c  LDRH            R0, [R1,#0x26]
00010290  LDRH            R2, [R1,#0x20]
00010294  CMP             R0, R2
00010298  SUBCS           R0, R0, R2
0001029c  MOVCC           R0, #0
000102a0  B               loc_10350
000102a4  SUB             R12, R2, #0xE000
000102a8  SUBS            R12, R12, #0x36 ; '6'
000102ac  BEQ             loc_10300
000102b0  SUB             R12, R2, #0xE000
000102b4  SUBS            R12, R12, #0x37 ; '7'
000102b8  BNE             loc_103A0
000102bc  B               loc_103AC
000102c0  LDRH            R3, [R1,#0x26]
000102c4  LDRH            R0, [R1,#0x2A]
000102c8  LDRH            R2, [R1,#0x28]
000102cc  ADD             R12, R3, R0
000102d0  CMP             R12, R2
000102d4  BHI             loc_103A0
000102d8  LDRH            R12, [R1,#0x20]
000102dc  ADD             R3, R3, R12
000102e0  MOV             R3, R3,LSL#16
000102e4  MOV             R3, R3,LSR#16
000102e8  STRH            R3, [R1,#0x26]
000102ec  ADD             R3, R3, R0
000102f0  CMP             R3, R2
000102f4  SUBHI           R0, R2, R0
000102f8  BHI             loc_10350
000102fc  B               loc_103A0
00010300  LDRH            R2, [R1,#0x2E]
00010304  CMP             R2, #1
00010308  BNE             loc_10358
0001030c  LDRH            R12, [R1,#0x26]
00010310  LDRH            R2, [R1,#0x2A]
00010314  LDRH            R3, [R1,#0x28]
00010318  ADD             LR, R12, R2
0001031c  CMP             LR, R3
00010320  BCS             loc_103AC
00010324  LDRH            LR, [R0,#0x98]
00010328  LDRH            R0, [R0,#0x9C]
0001032c  SUB             R0, LR, R0,LSL#1
00010330  ADD             R0, R0, R12
00010334  MOV             R0, R0,LSL#16
00010338  MOV             R0, R0,LSR#16
0001033c  STRH            R0, [R1,#0x26]
00010340  ADD             R0, R0, R2
00010344  CMP             R0, R3
00010348  BLS             loc_103A0
0001034c  SUB             R0, R3, R2
00010350  STRH            R0, [R1,#0x26]
00010354  B               loc_103A0
00010358  CMP             R2, #0
0001035c  BNE             loc_103A0
00010360  LDRH            R12, [R1,#0x26]
00010364  LDRH            R2, [R1,#0x2A]
00010368  LDRH            R3, [R1,#0x28]
0001036c  ADD             LR, R12, R2
00010370  CMP             LR, R3
00010374  BCS             loc_103A0
00010378  LDRH            LR, [R0,#0x98]
0001037c  LDRH            R0, [R0,#0x9C]
00010380  SUB             R0, LR, R0,LSL#1
00010384  ADD             R0, R0, R12
00010388  MOV             R0, R0,LSL#16
0001038c  MOV             R0, R0,LSR#16
00010390  STRH            R0, [R1,#0x26]
00010394  ADD             R0, R0, R2
00010398  CMP             R0, R3
0001039c  BHI             loc_1034C
000103a0  MOV             R0, #1
000103a4  POP             {LR}
000103a8  BX              LR
000103ac  MOV             R0, #0
000103b0  B               loc_103A4
