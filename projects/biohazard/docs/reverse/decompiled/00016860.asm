00016860  PUSH            {R4-R8,LR}
00016864  LDR             R5, =(start - 0x16874)
00016868  MOV             R4, R0
0001686c  ADD             R5, PC, R5; start
00016870  LDR             R0, [R5,#(dword_8 - 0xC)]
00016874  ADR             LR, loc_16880
00016878  LDR             R0, [R0,#0xC0]
0001687c  BX              R0
00016880  LDR             R0, [R0,#0x28]
00016884  MOV             R2, #0
00016888  LDR             R1, =0x3A98
0001688c  BL              sub_18818
00016890  MOVS            R6, R0
00016894  BEQ             loc_16B08
00016898  LDR             R0, [R5,#(dword_8 - 0xC)]
0001689c  MOV             R2, #2
000168a0  LDR             R3, [R0]
000168a4  ADD             R0, R4, #4
000168a8  MOV             R1, R6
000168ac  MOV             LR, PC
000168b0  BX              R3
000168b4  LDRH            R0, [R4,#4]
000168b8  MOV             R1, #0x14
000168bc  ADD             R7, R6, #2
000168c0  MUL             R0, R1, R0
000168c4  LDR             R1, [R5,#(dword_8 - 0xC)]
000168c8  ADR             LR, loc_168D4
000168cc  LDR             R1, [R1,#0x68]
000168d0  BX              R1
000168d4  STR             R0, [R4,#8]
000168d8  LDRH            R2, [R4,#4]
000168dc  MOV             R1, #0x14
000168e0  ADR             LR, loc_168F8
000168e4  MUL             R2, R1, R2
000168e8  LDR             R1, [R5,#(dword_8 - 0xC)]
000168ec  LDR             R3, [R1]
000168f0  MOV             R1, R7
000168f4  BX              R3
000168f8  LDRH            R0, [R4,#4]
000168fc  MOV             R2, #2
00016900  ADD             R0, R0, R0,LSL#2
00016904  ADD             R7, R7, R0,LSL#2
00016908  LDR             R0, [R5,#(dword_8 - 0xC)]
0001690c  MOV             R1, R7
00016910  LDR             R3, [R0]
00016914  ADD             R0, R4, #0xC
00016918  MOV             LR, PC
0001691c  BX              R3
00016920  LDRH            R0, [R4,#0xC]
00016924  MOV             R8, #0x48 ; 'H'
00016928  LDR             R1, [R5,#(dword_8 - 0xC)]
0001692c  ADD             R7, R7, #2
00016930  LDR             R1, [R1,#0x68]
00016934  ADR             LR, loc_16940
00016938  MUL             R0, R8, R0
0001693c  BX              R1
00016940  STR             R0, [R4,#0x10]
00016944  LDRH            R1, [R4,#0xC]
00016948  ADR             LR, loc_16960
0001694c  MUL             R2, R8, R1
00016950  LDR             R1, [R5,#(dword_8 - 0xC)]
00016954  LDR             R3, [R1]
00016958  MOV             R1, R7
0001695c  BX              R3
00016960  LDR             R0, [R5,#(dword_8 - 0xC)]
00016964  LDR             R1, [R0,#0x6C]
00016968  MOV             R0, R6
0001696c  MOV             LR, PC
00016970  BX              R1
00016974  LDR             R0, [R5,#(dword_8 - 0xC)]
00016978  LDR             R0, [R0,#0xC0]
0001697c  MOV             LR, PC
00016980  BX              R0
00016984  LDR             R0, [R0,#0x760]
00016988  LDR             R0, [R0,#0x18C]
0001698c  ADR             LR, loc_169A8
00016990  ADD             R0, R0, #0x800
00016994  ADD             R0, R0, #0x28 ; '('
00016998  STR             R0, [R4,#0x324]
0001699c  LDR             R0, [R5,#(dword_8 - 0xC)]
000169a0  LDR             R0, [R0,#0xC0]
000169a4  BX              R0
000169a8  LDR             R0, [R0,#0x760]
000169ac  LDR             R0, [R0,#0x18C]
000169b0  ADR             LR, loc_169CC
000169b4  ADD             R0, R0, #0x800
000169b8  ADD             R0, R0, #0x2C ; ','
000169bc  STR             R0, [R4,#0x328]
000169c0  LDR             R0, [R5,#(dword_8 - 0xC)]
000169c4  LDR             R0, [R0,#0xC0]
000169c8  BX              R0
000169cc  LDR             R0, [R0,#0x760]
000169d0  LDR             R0, [R0,#0x18C]
000169d4  ADR             LR, loc_169F0
000169d8  ADD             R0, R0, #0x800
000169dc  ADD             R0, R0, #0x34 ; '4'
000169e0  STR             R0, [R4,#0x32C]
000169e4  LDR             R0, [R5,#(dword_8 - 0xC)]
000169e8  LDR             R0, [R0,#0xC0]
000169ec  BX              R0
000169f0  LDR             R0, [R0,#0x760]
000169f4  LDR             R0, [R0,#0x18C]
000169f8  ADR             LR, loc_16A14
000169fc  ADD             R0, R0, #0x800
00016a00  ADD             R0, R0, #0x44 ; 'D'
00016a04  STR             R0, [R4,#0x330]
00016a08  LDR             R0, [R5,#(dword_8 - 0xC)]
00016a0c  LDR             R0, [R0,#0xC0]
00016a10  BX              R0
00016a14  LDR             R0, [R0,#0x760]
00016a18  ADD             R0, R0, #0x17C
00016a1c  STR             R0, [R4,#0x14]
00016a20  LDR             R0, [R5,#(dword_8 - 0xC)]
00016a24  ADR             LR, loc_16A30
00016a28  LDR             R0, [R0,#0xC0]
00016a2c  BX              R0
00016a30  LDR             R0, [R0,#0x760]
00016a34  ADD             R0, R0, #0x180
00016a38  STR             R0, [R4,#0x18]
00016a3c  LDR             R0, [R5,#(dword_8 - 0xC)]
00016a40  ADR             LR, loc_16A4C
00016a44  LDR             R0, [R0,#0xC0]
00016a48  BX              R0
00016a4c  LDR             R0, [R0,#0x760]
00016a50  ADD             R0, R0, #0x184
00016a54  STR             R0, [R4,#0x334]
00016a58  LDR             R0, [R5,#(dword_8 - 0xC)]
00016a5c  ADR             LR, loc_16A68
00016a60  LDR             R0, [R0,#0xC0]
00016a64  BX              R0
00016a68  LDR             R0, [R0,#0x760]
00016a6c  MOV             R6, #0x32 ; '2'
00016a70  STR             R6, [R0,#0x17C]
00016a74  LDR             R0, [R5,#(dword_8 - 0xC)]
00016a78  ADR             LR, loc_16A84
00016a7c  LDR             R0, [R0,#0xC0]
00016a80  BX              R0
00016a84  LDR             R0, [R0,#0x760]
00016a88  STR             R6, [R0,#0x180]
00016a8c  LDR             R0, [R5,#(dword_8 - 0xC)]
00016a90  ADR             LR, loc_16A9C
00016a94  LDR             R0, [R0,#0xC0]
00016a98  BX              R0
00016a9c  LDR             R0, [R0,#0x760]
00016aa0  MOV             R7, #0xFFFFFFFF
00016aa4  ADD             R0, R0, #0x100
00016aa8  STRH            R7, [R0,#0x84]
00016aac  MOV             R6, #0
00016ab0  STRB            R6, [R4,#0x338]
00016ab4  STR             R6, [R4,#0x1C]
00016ab8  STRB            R6, [R4,#0x20]
00016abc  STRB            R6, [R4,#0x21]
00016ac0  STR             R6, [R4,#0x24]
00016ac4  LDR             R0, [R5,#(dword_8 - 0xC)]
00016ac8  MOV             R2, #0x1F4
00016acc  LDR             R3, [R0,#4]
00016ad0  ADD             R0, R4, #0x28 ; '('
00016ad4  MOV             R1, #0
00016ad8  MOV             LR, PC
00016adc  BX              R3
00016ae0  MOV             R0, #0x21C
00016ae4  STRH            R6, [R0,R4]
00016ae8  ADD             R0, R4, #0x300
00016aec  STRH            R7, [R0,#0x1E]
00016af0  STRH            R7, [R0,#0x20]
00016af4  STRH            R6, [R0,#0x22]
00016af8  STRB            R6, [R4,#0x340]
00016afc  STRB            R6, [R4,#0x341]
00016b00  STRB            R6, [R4,#0x342]
00016b04  MOV             R0, #1
00016b08  POP             {R4-R8,LR}
00016b0c  BX              LR
