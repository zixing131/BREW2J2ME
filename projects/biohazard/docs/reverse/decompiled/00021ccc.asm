00021ccc  PUSH            {R4-R10,LR}
00021cd0  LDR             R5, =(start - 0x21CEC)
00021cd4  MOV             R10, R2
00021cd8  MOV             R8, R3
00021cdc  MOV             R7, R1
00021ce0  MOV             R4, R0
00021ce4  ADD             R5, PC, R5; start
00021ce8  LDR             R6, [SP,#arg_0]
00021cec  LDR             R9, [SP,#arg_4]
00021cf0  LDR             R0, [R5,#(dword_8 - 0xC)]
00021cf4  LDR             R3, =0x28F
00021cf8  LDR             R2, =(aIsmsbillingC - 0x21D08); "ismsbilling.c"
00021cfc  LDR             R12, [R0,#0x9C]
00021d00  ADD             R2, PC, R2; "ismsbilling.c"
00021d04  LDR             R0, =(aDbgprintfDSD - 0x21D14); "*dbgprintf-%d* %s:%d"
00021d08  MOV             R1, #4
00021d0c  ADD             R0, PC, R0; "*dbgprintf-%d* %s:%d"
00021d10  BLX             R12
00021d14  LDR             R0, [R5,#(dword_8 - 0xC)]
00021d18  MOV             R1, R7
00021d1c  LDR             R2, [R0,#0x9C]
00021d20  LDR             R0, =(aIsmsbillingRet - 0x21D2C); "ISMSBilling ret: %d"
00021d24  ADD             R0, PC, R0; "ISMSBilling ret: %d"
00021d28  BLX             R2
00021d2c  LDR             R0, [R5,#(dword_8 - 0xC)]
00021d30  MOV             R3, #0x290
00021d34  LDR             R2, =(aIsmsbillingC - 0x21D40); "ismsbilling.c"
00021d38  ADD             R2, PC, R2; "ismsbilling.c"
00021d3c  LDR             R12, [R0,#0x9C]
00021d40  LDR             R0, =(aDbgprintfDSD - 0x21D50); "*dbgprintf-%d* %s:%d"
00021d44  MOV             R1, #4
00021d48  ADD             R0, PC, R0; "*dbgprintf-%d* %s:%d"
00021d4c  BLX             R12
00021d50  LDR             R0, [R5,#(dword_8 - 0xC)]
00021d54  MOV             R1, R8
00021d58  LDR             R2, [R0,#0x9C]
00021d5c  LDR             R0, =(aPriceD - 0x21D68); "price: %d"
00021d60  ADD             R0, PC, R0; "price: %d"
00021d64  BLX             R2
00021d68  LDR             R0, [R5,#(dword_8 - 0xC)]
00021d6c  LDR             R12, [R0,#0x9C]
00021d70  LDR             R2, =(aIsmsbillingC - 0x21D80); "ismsbilling.c"
00021d74  LDR             R3, =0x291
00021d78  ADD             R2, PC, R2; "ismsbilling.c"
00021d7c  LDR             R0, =(aDbgprintfDSD - 0x21D8C); "*dbgprintf-%d* %s:%d"
00021d80  MOV             R1, #4
00021d84  ADD             R0, PC, R0; "*dbgprintf-%d* %s:%d"
00021d88  BLX             R12
00021d8c  LDR             R0, [R5,#(dword_8 - 0xC)]
00021d90  MOV             R1, R6
00021d94  LDR             R2, [R0,#0x9C]
00021d98  LDR             R0, =(aOrderS - 0x21DA4); "order: %s"
00021d9c  ADD             R0, PC, R0; "order: %s"
00021da0  BLX             R2
00021da4  CMP             R4, #0
00021da8  STRBNE          R10, [R4,#0xD4]
00021dac  LDR             R0, [R4,#0x110]
00021db0  STR             R7, [R0]
00021db4  LDR             R0, [R4,#0x110]
00021db8  STR             R8, [R0,#4]
00021dbc  LDR             R0, [R4,#0x110]
00021dc0  STR             R6, [R0,#8]
00021dc4  LDR             R0, [R4,#0x110]
00021dc8  STR             R9, [R0,#0xC]
00021dcc  LDR             R0, [R4],#0x10C
00021dd0  LDR             R1, [R4]
00021dd4  LDR             R2, [R0]
00021dd8  LDR             R2, [R2,#0x90]
00021ddc  POP             {R4-R10,LR}
00021de0  BX              R2
