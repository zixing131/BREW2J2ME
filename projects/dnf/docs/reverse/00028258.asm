0x28258 PUSH            {R4-R7,LR}
0x2825a SUB             SP, SP, #0x68
0x2825c MOV             R4, SP
0x2825e LSLS            R2, R0, #0x10
0x28260 ADDS            R4, #0x3E ; '>'
0x28262 LSRS            R2, R2, #0x10
0x28264 LDR             R1, =aDDs; "%d.ds"
0x28266 LDR             R3, =unk_14032CC
0x28268 MOVS            R0, R4
0x2826a BL              sub_2BCB6
0x2826e MOVS            R0, R4
0x28270 LDR             R3, =0x6CBE1
0x28272 BL              sub_2BCB6
0x28276 STR             R0, [SP,#0x68+var_5C]
0x28278 CMP             R0, #0
0x2827a BNE             loc_2827E
0x2827c B               loc_28812
0x2827e MOV             R0, SP
0x28280 LDR             R5, =unk_140327C
0x28282 LDR             R1, [SP,#0x68+var_5C]
0x28284 MOVS            R2, #2
0x28286 ADDS            R0, #0x66 ; 'f'
0x28288 BL              sub_2BCBA
0x2828c LDR             R1, [SP,#0x68+var_5C]
0x2828e MOVS            R2, #4
0x28290 ADDS            R1, #2
0x28292 ADD             R0, SP, #0x68+var_C
0x28294 BL              sub_2BCBA
0x28298 LDR             R1, [SP,#0x68+var_5C]
0x2829a MOVS            R2, #4
0x2829c ADDS            R1, #6
0x2829e ADD             R0, SP, #0x68+var_8
0x282a0 BL              sub_2BCBA
0x282a4 LDR             R0, [SP,#0x68+var_C]
0x282a6 LDR             R3, =unk_14032EC
0x282a8 ADDS            R0, #2
0x282aa BL              sub_2BCB6
0x282ae STR             R0, [SP,#0x68+var_58]
0x282b0 LDR             R0, [SP,#0x68+var_5C]
0x282b2 MOVS            R1, #6
0x282b4 LDR             R3, [SP,#0x68+var_8]
0x282b6 LDR             R2, [SP,#0x68+var_C]
0x282b8 STR             R1, [SP,#0x68+var_68]
0x282ba LDR             R4, =0x692B5
0x282bc LDR             R1, [SP,#0x68+var_58]
0x282be ADDS            R0, #0xA
0x282c0 BL              sub_2BCB8
0x282c4 LDR             R4, =byte_15333E4
0x282c6 LDR             R1, [SP,#0x68+var_58]
0x282c8 MOVS            R0, R4
0x282ca MOVS            R2, #1
0x282cc BL              sub_2BCBA
0x282d0 LDR             R6, [SP,#0x68+var_58]
0x282d2 LDRB            R3, [R4]
0x282d4 ADDS            R6, #1
0x282d6 CMP             R3, #0
0x282d8 BEQ             loc_28302
0x282da MOVS            R4, #0
0x282dc B               loc_282F6
0x282de MOVS            R1, #(unk_15333E6 - 0x15332A0)
0x282e2 ADDS            R3, R2, R1; unk_15333E6
0x282e4 LSLS            R0, R4, #1
0x282e6 ADDS            R0, R0, R3
0x282e8 MOVS            R1, R6
0x282ea MOVS            R2, #2
0x282ec LDR             R3, =unk_140327C
0x282ee BL              sub_2BCB6
0x282f2 ADDS            R6, #2
0x282f4 ADDS            R4, #1
0x282f6 LDR             R2, =word_15332A0
0x282f8 MOVS            R3, #(byte_15333E4 - 0x15332A0)
0x282fc LDRB            R3, [R2,R3]; byte_15333E4
0x282fe CMP             R4, R3
0x28300 BLT             loc_282DE
0x28302 LDR             R5, =byte_1533404
0x28304 MOVS            R1, R6
0x28306 MOVS            R0, R5
0x28308 MOVS            R2, #1
0x2830a LDR             R3, =unk_140327C
0x2830c BL              sub_2BCB6
0x28310 LDRB            R4, [R5]
0x28312 ADDS            R7, R6, #1
0x28314 CMP             R4, #0
0x28316 BEQ             loc_283AC
0x28318 LSLS            R4, R4, #3
0x2831a LDR             R3, =unk_14032EC
0x2831c ADDS            R0, R4, #2
0x2831e BL              sub_2BCB6
0x28322 MOVS            R3, R5
0x28324 SUBS            R3, #0x68 ; 'h'
0x28326 STR             R0, [R3,#(dword_1533408 - 0x153339C)]
0x28328 STR             R0, [R3,#(dword_153340C - 0x153339C)]
0x2832a MOVS            R2, R4
0x2832c MOVS            R1, #0
0x2832e LDR             R3, =unk_140329C
0x28330 BL              sub_2BCB6
0x28334 MOVS            R2, #0
0x28336 STR             R2, [SP,#0x68+var_48]
0x28338 B               loc_2839E
0x2833a LDR             R3, [SP,#0x68+var_48]
0x2833c ADDS            R5, #0xFC
0x2833e LDR             R0, [R5,#(dword_153340C - 0x153339C)]
0x28340 LSLS            R4, R3, #3
0x28342 LDR             R6, =unk_140327C
0x28344 MOVS            R1, R7
0x28346 ADDS            R0, R4, R0
0x28348 MOVS            R2, #1
0x2834a BL              sub_2BCBC
0x2834e LDR             R0, [R5,#(dword_153340C - 0x153339C)]
0x28350 ADDS            R0, R4, R0
0x28352 ADDS            R1, R7, #1
0x28354 MOVS            R2, #1
0x28356 ADDS            R0, #1
0x28358 BL              sub_2BCBC
0x2835c LDR             R0, [R5,#(dword_153340C - 0x153339C)]
0x2835e ADDS            R0, R4, R0
0x28360 ADDS            R1, R7, #2
0x28362 MOVS            R2, #1
0x28364 ADDS            R0, #2
0x28366 BL              sub_2BCBC
0x2836a LDR             R0, [R5,#(dword_153340C - 0x153339C)]
0x2836c ADDS            R0, R4, R0
0x2836e ADDS            R1, R7, #3
0x28370 MOVS            R2, #1
0x28372 ADDS            R0, #3
0x28374 BL              sub_2BCBC
0x28378 LDR             R0, [R5,#(dword_153340C - 0x153339C)]
0x2837a ADDS            R0, R4, R0
0x2837c ADDS            R1, R7, #4
0x2837e MOVS            R2, #2
0x28380 ADDS            R0, #4
0x28382 BL              sub_2BCBC
0x28386 LDR             R3, [R5,#(dword_153340C - 0x153339C)]
0x28388 ADDS            R4, R4, R3
0x2838a ADDS            R4, #6
0x2838c ADDS            R1, R7, #6
0x2838e MOVS            R0, R4
0x28390 MOVS            R2, #2
0x28392 BL              sub_2BCBC
0x28396 LDR             R1, [SP,#0x68+var_48]
0x28398 ADDS            R1, #1
0x2839a STR             R1, [SP,#0x68+var_48]
0x2839c ADDS            R7, #8
0x2839e LDR             R5, =word_15332A0
0x283a0 MOVS            R3, #(byte_1533404 - 0x15332A0)
0x283a4 LDRB            R3, [R5,R3]; byte_1533404
0x283a6 LDR             R2, [SP,#0x68+var_48]
0x283a8 CMP             R2, R3
0x283aa BLT             loc_2833A
0x283ac LDR             R5, =byte_1533410
0x283ae MOVS            R1, R7
0x283b0 MOVS            R0, R5
0x283b2 MOVS            R2, #1
0x283b4 LDR             R3, =unk_140327C
0x283b6 BL              sub_2BCB6
0x283ba LDRB            R4, [R5]
0x283bc ADDS            R7, #1
0x283be CMP             R4, #0
0x283c0 BEQ             loc_28456
0x283c2 LSLS            R4, R4, #3
0x283c4 LDR             R3, =unk_14032EC
0x283c6 ADDS            R0, R4, #2
0x283c8 BL              sub_2BCB6
0x283cc MOVS            R3, R5
0x283ce SUBS            R3, #0x74 ; 't'
0x283d0 STR             R0, [R3,#(dword_1533414 - 0x153339C)]
0x283d2 STR             R0, [R3,#(dword_1533418 - 0x153339C)]
0x283d4 MOVS            R1, #0
0x283d6 LDR             R3, =unk_140329C
0x283d8 MOVS            R2, R4
0x283da BL              sub_2BCB6
0x283de MOVS            R3, #0
0x283e0 STR             R3, [SP,#0x68+var_44]
0x283e2 B               loc_28448
0x283e4 ADDS            R5, #0xFC
0x283e6 LDR             R1, [SP,#0x68+var_44]
0x283e8 LDR             R0, [R5,#(dword_1533418 - 0x153339C)]
0x283ea LSLS            R4, R1, #3
0x283ec LDR             R6, =unk_140327C
0x283ee MOVS            R1, R7
0x283f0 ADDS            R0, R4, R0
0x283f2 MOVS            R2, #1
0x283f4 BL              sub_2BCBC
0x283f8 LDR             R0, [R5,#(dword_1533418 - 0x153339C)]
0x283fa ADDS            R0, R4, R0
0x283fc ADDS            R1, R7, #1
0x283fe MOVS            R2, #1
0x28400 ADDS            R0, #1
0x28402 BL              sub_2BCBC
0x28406 LDR             R0, [R5,#(dword_1533418 - 0x153339C)]
0x28408 ADDS            R0, R4, R0
0x2840a ADDS            R1, R7, #2
0x2840c MOVS            R2, #1
0x2840e ADDS            R0, #2
0x28410 BL              sub_2BCBC
0x28414 LDR             R0, [R5,#(dword_1533418 - 0x153339C)]
0x28416 ADDS            R0, R4, R0
0x28418 ADDS            R1, R7, #3
0x2841a MOVS            R2, #1
0x2841c ADDS            R0, #3
0x2841e BL              sub_2BCBC
0x28422 LDR             R0, [R5,#(dword_1533418 - 0x153339C)]
0x28424 ADDS            R0, R4, R0
0x28426 ADDS            R1, R7, #4
0x28428 MOVS            R2, #2
0x2842a ADDS            R0, #4
0x2842c BL              sub_2BCBC
0x28430 LDR             R3, [R5,#(dword_1533418 - 0x153339C)]
0x28432 ADDS            R4, R4, R3
0x28434 ADDS            R4, #6
0x28436 ADDS            R1, R7, #6
0x28438 MOVS            R2, #2
0x2843a MOVS            R0, R4
0x2843c BL              sub_2BCBC
0x28440 LDR             R2, [SP,#0x68+var_44]
0x28442 ADDS            R2, #1
0x28444 STR             R2, [SP,#0x68+var_44]
0x28446 ADDS            R7, #8
0x28448 LDR             R5, =word_15332A0
0x2844a MOVS            R3, #(byte_1533410 - 0x15332A0)
0x2844e LDRB            R3, [R5,R3]; byte_1533410
0x28450 LDR             R1, [SP,#0x68+var_44]
0x28452 CMP             R1, R3
0x28454 BLT             loc_283E4
0x28456 LDR             R5, =byte_153341C
0x28458 MOVS            R1, R7
0x2845a MOVS            R0, R5
0x2845c MOVS            R2, #1
0x2845e LDR             R3, =unk_140327C
0x28460 ADDS            R7, #1
0x28462 BL              sub_2BCB6
0x28466 STR             R7, [SP,#0x68+var_50]
0x28468 LDRB            R4, [R5]
0x2846a CMP             R4, #0
0x2846c BEQ             loc_284DC
0x2846e LSLS            R4, R4, #3
0x28470 LDR             R3, =unk_14032EC
0x28472 ADDS            R0, R4, #2
0x28474 BL              sub_2BCB6
0x28478 MOVS            R2, R4
0x2847a STR             R0, [R5,#(dword_1533420 - 0x153341C)]
0x2847c STR             R0, [R5,#(dword_1533424 - 0x153341C)]
0x2847e MOVS            R1, #0
0x28480 LDR             R3, =unk_140329C
0x28482 BL              sub_2BCB6
0x28486 MOVS            R2, #0
0x28488 B               loc_284CC
0x2848a MOVS            R5, #0xC2
0x2848c LDR             R3, [SP,#0x68+var_40]
0x2848e LSLS            R5, R5, #1
0x28490 LDR             R0, [R7,R5]; dword_1533424
0x28492 LSLS            R4, R3, #3
0x28494 LDR             R6, =unk_140327C
0x28496 ADDS            R0, R4, R0
0x28498 LDR             R1, [SP,#0x68+var_50]
0x2849a MOVS            R2, #2
0x2849c BL              sub_2BCBC
0x284a0 LDR             R0, [R7,R5]; dword_1533424
0x284a2 LDR             R1, [SP,#0x68+var_50]
0x284a4 ADDS            R0, R4, R0
0x284a6 ADDS            R1, #2
0x284a8 MOVS            R2, #2
0x284aa ADDS            R0, #2
0x284ac BL              sub_2BCBC
0x284b0 LDR             R3, [R7,R5]; dword_1533424
0x284b2 LDR             R1, [SP,#0x68+var_50]
0x284b4 ADDS            R4, R4, R3
0x284b6 ADDS            R4, #4
0x284b8 ADDS            R1, #4
0x284ba MOVS            R2, #1
0x284bc MOVS            R0, R4
0x284be BL              sub_2BCBC
0x284c2 LDR             R1, [SP,#0x68+var_50]
0x284c4 LDR             R2, [SP,#0x68+var_40]
0x284c6 ADDS            R1, #5
0x284c8 STR             R1, [SP,#0x68+var_50]
0x284ca ADDS            R2, #1
0x284cc STR             R2, [SP,#0x68+var_40]
0x284ce LDR             R7, =word_15332A0
0x284d0 MOVS            R3, #(byte_153341C - 0x15332A0)
0x284d4 LDRB            R3, [R7,R3]; byte_153341C
0x284d6 LDR             R1, [SP,#0x68+var_40]
0x284d8 CMP             R1, R3
0x284da BLT             loc_2848A
0x284dc LDR             R5, =byte_1533428
0x284de LDR             R1, [SP,#0x68+var_50]
0x284e0 MOVS            R0, R5
0x284e2 MOVS            R2, #1
0x284e4 LDR             R3, =unk_140327C
0x284e6 BL              sub_2BCB6
0x284ea LDR             R7, [SP,#0x68+var_50]
0x284ec LDRB            R4, [R5]
0x284ee ADDS            R7, #1
0x284f0 CMP             R4, #0
0x284f2 BEQ             loc_28584
0x284f4 LSLS            R4, R4, #3
0x284f6 LDR             R3, =unk_14032EC
0x284f8 ADDS            R0, R4, #2
0x284fa BL              sub_2BCB6
0x284fe MOVS            R2, R4
0x28500 STR             R0, [R5,#(dword_153342C - 0x1533428)]
0x28502 STR             R0, [R5,#(dword_1533430 - 0x1533428)]
0x28504 MOVS            R1, #0
0x28506 LDR             R3, =unk_140329C
0x28508 BL              sub_2BCB6
0x2850c MOVS            R2, #0
0x2850e STR             R2, [SP,#0x68+var_3C]
0x28510 B               loc_28574
0x28512 LDR             R1, [SP,#0x68+var_60]
0x28514 MOVS            R5, #(dword_1533430 - 0x15332A0)
0x28518 LDR             R3, [SP,#0x68+var_3C]
0x2851a LDR             R0, [R1,R5]; dword_1533430
0x2851c LSLS            R4, R3, #3
0x2851e LDR             R6, =unk_140327C
0x28520 MOVS            R1, R7
0x28522 ADDS            R0, R4, R0
0x28524 MOVS            R2, #1
0x28526 BL              sub_2BCBC
0x2852a LDR             R2, [SP,#0x68+var_60]
0x2852c LDR             R0, [R2,R5]; dword_1533430
0x2852e ADDS            R0, R4, R0
0x28530 ADDS            R1, R7, #1
0x28532 MOVS            R2, #1
0x28534 ADDS            R0, #1
0x28536 BL              sub_2BCBC
0x2853a LDR             R3, [SP,#0x68+var_60]
0x2853c LDR             R0, [R3,R5]; dword_1533430
0x2853e ADDS            R0, R4, R0
0x28540 ADDS            R1, R7, #2
0x28542 MOVS            R2, #1
0x28544 ADDS            R0, #2
0x28546 BL              sub_2BCBC
0x2854a LDR             R1, [SP,#0x68+var_60]
0x2854c LDR             R0, [R1,R5]; dword_1533430
0x2854e ADDS            R0, R4, R0
0x28550 ADDS            R1, R7, #3
0x28552 MOVS            R2, #2
0x28554 ADDS            R0, #4
0x28556 BL              sub_2BCBC
0x2855a LDR             R2, [SP,#0x68+var_60]
0x2855c LDR             R3, [R2,R5]; dword_1533430
0x2855e ADDS            R4, R4, R3
0x28560 ADDS            R4, #6
0x28562 ADDS            R1, R7, #5
0x28564 MOVS            R0, R4
0x28566 MOVS            R2, #2
0x28568 BL              sub_2BCBC
0x2856c LDR             R3, [SP,#0x68+var_3C]
0x2856e ADDS            R3, #1
0x28570 STR             R3, [SP,#0x68+var_3C]
0x28572 ADDS            R7, #7
0x28574 LDR             R1, =word_15332A0
0x28576 MOVS            R3, #0xC4
0x28578 STR             R1, [SP,#0x68+var_60]
0x2857a LSLS            R3, R3, #1
0x2857c LDRB            R3, [R1,R3]; byte_1533428
0x2857e LDR             R2, [SP,#0x68+var_3C]
0x28580 CMP             R2, R3
0x28582 BLT             loc_28512
0x28584 LDR             R5, =byte_1533434
0x28586 MOVS            R1, R7
0x28588 MOVS            R0, R5
0x2858a MOVS            R2, #1
0x2858c LDR             R3, =unk_140327C
0x2858e BL              sub_2BCB6
0x28592 LDRB            R4, [R5]
0x28594 ADDS            R6, R7, #1
0x28596 CMP             R4, #0
0x28598 BEQ             loc_28654
0x2859a MOVS            R3, #0x2C ; ','
0x2859c MULS            R4, R3
0x2859e LDR             R3, =unk_14032EC
0x285a0 ADDS            R0, R4, #2
0x285a2 BL              sub_2BCB6
0x285a6 LDR             R3, =unk_140329C
0x285a8 STR             R0, [R5,#(dword_1533438 - 0x1533434)]
0x285aa STR             R0, [R5,#(dword_153343C - 0x1533434)]
0x285ac MOVS            R1, #0
0x285ae MOVS            R2, R4
0x285b0 BL              sub_2BCB6
0x285b4 MOVS            R3, #0
0x285b6 STR             R3, [SP,#0x68+var_38]
0x285b8 B               loc_28644
0x285f4 MOVS            R4, #(dword_153343C - 0x15332A0)
0x285f8 LDR             R1, [SP,#0x68+var_64]
0x285fa LDR             R0, [R7,R4]; dword_153343C
0x285fc LDR             R5, =unk_140327C
0x285fe ADDS            R0, R1, R0
0x28600 MOVS            R2, #2
0x28602 MOVS            R1, R6
0x28604 BL              sub_2BCBA
0x28608 LDR             R2, [SP,#0x68+var_64]
0x2860a LDR             R0, [R7,R4]; dword_153343C
0x2860c ADDS            R0, R2, R0
0x2860e ADDS            R1, R6, #2
0x28610 MOVS            R2, #1
0x28612 ADDS            R0, #2
0x28614 BL              sub_2BCBA
0x28618 LDR             R3, [SP,#0x68+var_64]
0x2861a LDR             R0, [R7,R4]; dword_153343C
0x2861c ADDS            R0, R3, R0
0x2861e ADDS            R1, R6, #3
0x28620 MOVS            R2, #2
0x28622 ADDS            R0, #4
0x28624 BL              sub_2BCBA
0x28628 LDR             R1, [SP,#0x68+var_64]
0x2862a LDR             R0, [R7,R4]; dword_153343C
0x2862c ADDS            R0, R1, R0
0x2862e MOVS            R2, #1
0x28630 ADDS            R1, R6, #5
0x28632 ADDS            R0, #6
0x28634 BL              sub_2BCBA
0x28638 LDR             R2, [SP,#0x68+var_38]
0x2863a LDR             R3, [SP,#0x68+var_64]
0x2863c ADDS            R2, #1
0x2863e STR             R2, [SP,#0x68+var_38]
0x28640 ADDS            R6, #6
0x28642 ADDS            R3, #0x2C ; ','
0x28644 STR             R3, [SP,#0x68+var_64]
0x28646 LDR             R7, =word_15332A0
0x28648 MOVS            R3, #(byte_1533434 - 0x15332A0)
0x2864c LDRB            R3, [R7,R3]; byte_1533434
0x2864e LDR             R1, [SP,#0x68+var_38]
0x28650 CMP             R1, R3
0x28652 BLT             loc_285F4
0x28654 LDR             R5, =byte_1533440
0x28656 LDR             R3, =unk_140327C
0x28658 MOVS            R0, R5
0x2865a MOVS            R1, R6
0x2865c MOVS            R2, #1
0x2865e BL              sub_2BCB6
0x28662 LDRB            R3, [R5]
0x28664 ADDS            R7, R6, #1
0x28666 CMP             R3, #0
0x28668 BEQ             loc_28700
0x2866a LSLS            R4, R3, #1
0x2866c ADDS            R4, R4, R3
0x2866e LSLS            R4, R4, #2
0x28670 LDR             R3, =unk_14032EC
0x28672 ADDS            R0, R4, #2
0x28674 BL              sub_2BCB6
0x28678 MOVS            R2, R4
0x2867a STR             R0, [R5,#(dword_1533444 - 0x1533440)]
0x2867c STR             R0, [R5,#(dword_1533448 - 0x1533440)]
0x2867e MOVS            R1, #0
0x28680 LDR             R3, =unk_140329C
0x28682 BL              sub_2BCB6
0x28686 MOVS            R2, #0
0x28688 STR             R2, [SP,#0x68+var_34]
0x2868a STR             R2, [SP,#0x68+var_54]
0x2868c B               loc_286F2
0x2868e MOVS            R4, #(dword_1533448 - 0x15332A0)
0x28692 LDR             R3, [SP,#0x68+var_54]
0x28694 LDR             R0, [R6,R4]; dword_1533448
0x28696 LDR             R5, =unk_140327C
0x28698 ADDS            R0, R3, R0
0x2869a MOVS            R1, R7
0x2869c MOVS            R2, #1
0x2869e BL              sub_2BCBA
0x286a2 LDR             R1, [SP,#0x68+var_54]
0x286a4 LDR             R0, [R6,R4]; dword_1533448
0x286a6 ADDS            R0, R1, R0
0x286a8 MOVS            R2, #1
0x286aa ADDS            R1, R7, #1
0x286ac ADDS            R0, #1
0x286ae BL              sub_2BCBA
0x286b2 LDR             R2, [SP,#0x68+var_54]
0x286b4 LDR             R0, [R6,R4]; dword_1533448
0x286b6 ADDS            R0, R2, R0
0x286b8 ADDS            R1, R7, #2
0x286ba MOVS            R2, #2
0x286bc ADDS            R0, #2
0x286be BL              sub_2BCBA
0x286c2 LDR             R3, [SP,#0x68+var_54]
0x286c4 LDR             R0, [R6,R4]; dword_1533448
0x286c6 ADDS            R0, R3, R0
0x286c8 ADDS            R1, R7, #4
0x286ca MOVS            R2, #2
0x286cc ADDS            R0, #4
0x286ce BL              sub_2BCBA
0x286d2 LDR             R1, [SP,#0x68+var_54]
0x286d4 LDR             R3, [R6,R4]; dword_1533448
0x286d6 MOVS            R2, #1
0x286d8 ADDS            R3, R3, R1
0x286da STRB            R2, [R3,#6]
0x286dc LDR             R2, [R6,R4]; dword_1533448
0x286de MOVS            R3, #1
0x286e0 ADDS            R2, R2, R1
0x286e2 NEGS            R3, R3
0x286e4 STRB            R3, [R2,#7]
0x286e6 LDR             R2, [SP,#0x68+var_34]
0x286e8 ADDS            R1, #0xC
0x286ea ADDS            R2, #1
0x286ec STR             R2, [SP,#0x68+var_34]
0x286ee STR             R1, [SP,#0x68+var_54]
0x286f0 ADDS            R7, #6
0x286f2 LDR             R6, =word_15332A0
0x286f4 MOVS            R3, #(byte_1533440 - 0x15332A0)
0x286f8 LDRB            R3, [R6,R3]; byte_1533440
0x286fa LDR             R1, [SP,#0x68+var_34]
0x286fc CMP             R1, R3
0x286fe BLT             loc_2868E
0x28700 LDR             R5, =byte_153345C
0x28702 MOVS            R1, R7
0x28704 MOVS            R0, R5
0x28706 MOVS            R2, #1
0x28708 LDR             R3, =unk_140327C
0x2870a BL              sub_2BCB6
0x2870e LDRB            R4, [R5]
0x28710 CMP             R4, #0
0x28712 BEQ             loc_287FC
0x28714 LSLS            R4, R4, #4
0x28716 ADDS            R7, #1
0x28718 LDR             R3, =unk_14032EC
0x2871a STR             R7, [SP,#0x68+var_4C]
0x2871c ADDS            R0, R4, #2
0x2871e BL              sub_2BCB6
0x28722 MOVS            R2, R4
0x28724 STR             R0, [R5,#(dword_1533460 - 0x153345C)]
0x28726 STR             R0, [R5,#(dword_1533464 - 0x153345C)]
0x28728 MOVS            R1, #0
0x2872a LDR             R3, =unk_140329C
0x2872c BL              sub_2BCB6
0x28730 MOVS            R2, #0
0x28732 B               loc_287EC
0x28734 MOVS            R4, #0xE2
0x28736 LDR             R3, [SP,#0x68+var_30]
0x28738 LSLS            R4, R4, #1
0x2873a LDR             R0, [R7,R4]; dword_1533464
0x2873c LSLS            R6, R3, #4
0x2873e LDR             R5, =unk_140327C
0x28740 LDR             R1, [SP,#0x68+var_4C]
0x28742 MOVS            R2, #1
0x28744 ADDS            R0, R6, R0
0x28746 BL              sub_2BCBA
0x2874a LDR             R0, [R7,R4]; dword_1533464
0x2874c LDR             R1, [SP,#0x68+var_4C]
0x2874e ADDS            R0, R6, R0
0x28750 ADDS            R1, #1
0x28752 MOVS            R2, #1
0x28754 ADDS            R0, #1
0x28756 BL              sub_2BCBA
0x2875a LDR             R0, [R7,R4]; dword_1533464
0x2875c LDR             R1, [SP,#0x68+var_4C]
0x2875e ADDS            R0, R6, R0
0x28760 ADDS            R1, #2
0x28762 MOVS            R2, #2
0x28764 ADDS            R0, #2
0x28766 BL              sub_2BCBA
0x2876a LDR             R0, [R7,R4]; dword_1533464
0x2876c LDR             R1, [SP,#0x68+var_4C]
0x2876e ADDS            R0, R6, R0
0x28770 ADDS            R1, #4
0x28772 MOVS            R2, #1
0x28774 ADDS            R0, #3
0x28776 BL              sub_2BCBA
0x2877a LDR             R0, [R7,R4]; dword_1533464
0x2877c LDR             R1, [SP,#0x68+var_4C]
0x2877e ADDS            R0, R6, R0
0x28780 ADDS            R1, #5
0x28782 MOVS            R2, #1
0x28784 ADDS            R0, #4
0x28786 BL              sub_2BCBA
0x2878a LDR             R0, [R7,R4]; dword_1533464
0x2878c LDR             R1, [SP,#0x68+var_4C]
0x2878e ADDS            R0, R6, R0
0x28790 ADDS            R1, #6
0x28792 MOVS            R2, #1
0x28794 ADDS            R0, #5
0x28796 BL              sub_2BCBA
0x2879a LDR             R0, [R7,R4]; dword_1533464
0x2879c LDR             R1, [SP,#0x68+var_4C]
0x2879e ADDS            R0, R6, R0
0x287a0 ADDS            R1, #7
0x287a2 MOVS            R2, #2
0x287a4 ADDS            R0, #6
0x287a6 BL              sub_2BCBA
0x287aa LDR             R0, [R7,R4]; dword_1533464
0x287ac LDR             R1, [SP,#0x68+var_4C]
0x287ae ADDS            R0, R6, R0
0x287b0 ADDS            R1, #9
0x287b2 MOVS            R2, #2
0x287b4 ADDS            R0, #8
0x287b6 BL              sub_2BCBA
0x287ba LDR             R0, [R7,R4]; dword_1533464
0x287bc LDR             R1, [SP,#0x68+var_4C]
0x287be ADDS            R0, R6, R0
0x287c0 ADDS            R1, #0xB
0x287c2 MOVS            R2, #2
0x287c4 ADDS            R0, #0xA
0x287c6 BL              sub_2BCBA
0x287ca LDR             R0, [R7,R4]; dword_1533464
0x287cc LDR             R1, [SP,#0x68+var_4C]
0x287ce ADDS            R0, R6, R0
0x287d0 ADDS            R1, #0xD
0x287d2 MOVS            R2, #2
0x287d4 ADDS            R0, #0xC
0x287d6 BL              sub_2BCBA
0x287da LDR             R1, [SP,#0x68+var_4C]
0x287dc LDR             R3, [R7,R4]; dword_1533464
0x287de MOVS            R2, #0
0x287e0 ADDS            R1, #0xF
0x287e2 ADDS            R3, R3, R6
0x287e4 STR             R1, [SP,#0x68+var_4C]
0x287e6 STRB            R2, [R3,#0xE]
0x287e8 LDR             R2, [SP,#0x68+var_30]
0x287ea ADDS            R2, #1
0x287ec STR             R2, [SP,#0x68+var_30]
0x287ee LDR             R7, =word_15332A0
0x287f0 MOVS            R3, #(byte_153345C - 0x15332A0)
0x287f4 LDRB            R3, [R7,R3]; byte_153345C
0x287f6 LDR             R1, [SP,#0x68+var_30]
0x287f8 CMP             R1, R3
0x287fa BLT             loc_28734
0x287fc LDR             R2, [SP,#0x68+var_58]
0x287fe CMP             R2, #0
0x28800 BEQ             loc_2880A
0x28802 MOVS            R0, R2
0x28804 LDR             R3, =unk_14032FC
0x28806 BL              sub_2BCB6
0x2880a LDR             R0, [SP,#0x68+var_5C]
0x2880c LDR             R3, =unk_14032FC
0x2880e BL              sub_2BCB6
0x28812 ADD             SP, SP, #0x68 ; 'h'
0x28814 POP             {R4-R7}
0x28816 POP             {R0}
0x28818 BX              R0