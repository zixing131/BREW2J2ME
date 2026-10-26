0x240c PUSH            {R4-R7,LR}
0x240e SUB             SP, SP, #0x34
0x2410 ADD             R0, SP, #0x34+var_8
0x2412 LDR             R3, =0x2CD19
0x2414 BL              sub_6D00
0x2418 LDR             R3, =dword_1501BF8
0x241a MOVS            R1, #0x18
0x241c LDR             R0, [R3]
0x241e LDR             R3, =0x8C1C1
0x2420 BL              sub_6D00
0x2424 CMP             R0, #7
0x2426 BGT             loc_24E8
0x2428 LDR             R4, =dword_1501FF0
0x242a LDR             R2, =dword_1501C14
0x242c LDR             R3, =dword_1501BF0
0x242e LDR             R0, [R2]
0x2430 LDR             R1, [R3]
0x2432 STR             R2, [SP,#0x34+var_C]
0x2434 STR             R3, [SP,#0x34+var_10]
0x2436 MOVS            R2, #0xCD
0x2438 LDR             R3, [R4,#(dword_150200C - 0x1501FF0)]
0x243a LSLS            R2, R2, #2
0x243c LDR             R3, [R3,R2]
0x243e STR             R2, [SP,#0x34+var_14]
0x2440 STR             R3, [SP,#0x34+var_34]
0x2442 MOVS            R2, #1
0x2444 MOVS            R3, #0x10
0x2446 STR             R3, [SP,#0x34+var_30]
0x2448 STR             R2, [SP,#0x34+var_2C]
0x244a ADD             R3, SP, #0x34+var_8
0x244c MOVS            R2, #0
0x244e LDR             R7, =0x6ADB9
0x2450 STR             R3, [SP,#0x34+var_28]
0x2452 STR             R2, [SP,#0x34+var_24]
0x2454 SUBS            R0, #0x23 ; '#'
0x2456 SUBS            R1, #0x1C
0x2458 MOVS            R3, #0
0x245a BL              sub_6D08
0x245e LDR             R3, [SP,#0x34+var_C]
0x2460 LDR             R2, [SP,#0x34+var_10]
0x2462 LDR             R0, [R3]
0x2464 LDR             R1, [R2]
0x2466 LDR             R3, [R4,#(dword_150200C - 0x1501FF0)]
0x2468 LDR             R2, [SP,#0x34+var_14]
0x246a LDR             R3, [R3,R2]
0x246c STR             R3, [SP,#0x34+var_34]
0x246e MOVS            R3, #0x10
0x2470 MOVS            R2, #0
0x2472 STR             R3, [SP,#0x34+var_30]
0x2474 ADD             R3, SP, #0x34+var_8
0x2476 STR             R2, [SP,#0x34+var_2C]
0x2478 STR             R3, [SP,#0x34+var_28]
0x247a STR             R2, [SP,#0x34+var_24]
0x247c ADDS            R0, #0x23 ; '#'
0x247e SUBS            R1, #0x1C
0x2480 MOVS            R3, #0
0x2482 BL              sub_6D08
0x2486 ADD             R2, SP, #0x34+var_8
0x2488 MOVS            R3, #3
0x248a STRB            R3, [R2]
0x248c MOVS            R2, #0x2E ; '.'
0x248e ADD             R2, SP
0x2490 MOVS            R3, #0xD
0x2492 STRB            R3, [R2]
0x2494 LDR             R3, [SP,#0x34+var_C]
0x2496 LDR             R2, [SP,#0x34+var_10]
0x2498 LDR             R0, [R3]
0x249a LDR             R1, [R2]
0x249c LDR             R3, [R4,#(dword_150200C - 0x1501FF0)]
0x249e LDR             R2, [SP,#0x34+var_14]
0x24a0 LDR             R3, [R3,R2]
0x24a2 MOVS            R2, #1
0x24a4 STR             R3, [SP,#0x34+var_34]
0x24a6 MOVS            R3, #0x10
0x24a8 STR             R3, [SP,#0x34+var_30]
0x24aa STR             R2, [SP,#0x34+var_2C]
0x24ac ADD             R3, SP, #0x34+var_8
0x24ae MOVS            R2, #0
0x24b0 STR             R3, [SP,#0x34+var_28]
0x24b2 STR             R2, [SP,#0x34+var_24]
0x24b4 SUBS            R0, #0x2D ; '-'
0x24b6 SUBS            R1, #0x1C
0x24b8 MOVS            R3, #0
0x24ba BL              sub_6D08
0x24be LDR             R3, [SP,#0x34+var_C]
0x24c0 LDR             R0, [R3]
0x24c2 LDR             R3, [R4,#(dword_150200C - 0x1501FF0)]
0x24c4 LDR             R4, [SP,#0x34+var_14]
0x24c6 LDR             R2, [SP,#0x34+var_10]
0x24c8 LDR             R3, [R3,R4]
0x24ca LDR             R1, [R2]
0x24cc ADD             R4, SP, #0x34+var_8
0x24ce STR             R3, [SP,#0x34+var_34]
0x24d0 MOVS            R2, #0x10
0x24d2 MOVS            R3, #0
0x24d4 STR             R2, [SP,#0x34+var_30]
0x24d6 ADDS            R0, #0x2D ; '-'
0x24d8 SUBS            R1, #0x1C
0x24da STR             R3, [SP,#0x34+var_2C]
0x24dc STR             R4, [SP,#0x34+var_28]
0x24de STR             R3, [SP,#0x34+var_24]
0x24e0 MOVS            R2, #0
0x24e2 BL              sub_6D08
0x24e6 B               loc_2640
0x24e8 LDR             R2, =0x6ADB9
0x24ea LDR             R7, =dword_1501C14
0x24ec LDR             R6, =dword_1501BF0
0x24ee LDR             R5, =dword_1501FF0
0x24f0 STR             R2, [SP,#0x34+var_20]
0x24f2 CMP             R0, #0xF
0x24f4 BGT             loc_258E
0x24f6 LDR             R3, [R5,#(dword_150200C - 0x1501FF0)]
0x24f8 MOVS            R4, #0x334
0x24fc LDR             R3, [R3,R4]
0x24fe LDR             R0, [R7]
0x2500 LDR             R1, [R6]
0x2502 MOVS            R2, #0x10
0x2504 STR             R4, [SP,#0x34+var_18]
0x2506 STR             R3, [SP,#0x34+var_34]
0x2508 STR             R2, [SP,#0x34+var_30]
0x250a MOVS            R3, #1
0x250c MOVS            R2, #0
0x250e ADD             R4, SP, #0x34+var_8
0x2510 SUBS            R0, #0x23 ; '#'
0x2512 SUBS            R1, #0x1C
0x2514 STR             R3, [SP,#0x34+var_2C]
0x2516 STR             R4, [SP,#0x34+var_28]
0x2518 STR             R2, [SP,#0x34+var_24]
0x251a MOVS            R3, #0
0x251c LDR             R4, [SP,#0x34+var_20]
0x251e BL              sub_6D02
0x2522 LDR             R3, [R5,#(dword_150200C - 0x1501FF0)]
0x2524 LDR             R2, [SP,#0x34+var_18]
0x2526 LDR             R3, [R3,R2]
0x2528 LDR             R0, [R7]
0x252a LDR             R1, [R6]
0x252c MOVS            R4, #0
0x252e STR             R3, [SP,#0x34+var_34]
0x2530 ADD             R2, SP, #0x34+var_8
0x2532 MOVS            R3, #0x10
0x2534 ADDS            R0, #0x23 ; '#'
0x2536 SUBS            R1, #0x1C
0x2538 STR             R3, [SP,#0x34+var_30]
0x253a STR             R4, [SP,#0x34+var_2C]
0x253c STR             R2, [SP,#0x34+var_28]
0x253e STR             R4, [SP,#0x34+var_24]
0x2540 MOVS            R2, #0
0x2542 MOVS            R3, #0
0x2544 LDR             R4, [SP,#0x34+var_20]
0x2546 BL              sub_6D02
0x254a MOVS            R3, #3
0x254c ADD             R2, SP, #0x34+var_8
0x254e MOVS            R4, #0x2E ; '.'
0x2550 STRB            R3, [R2]
0x2552 ADD             R4, SP
0x2554 MOVS            R3, #0xD
0x2556 STRB            R3, [R4]
0x2558 LDR             R2, [SP,#0x34+var_18]
0x255a LDR             R3, [R5,#(dword_150200C - 0x1501FF0)]
0x255c LDR             R3, [R3,R2]
0x255e LDR             R0, [R7]
0x2560 LDR             R1, [R6]
0x2562 STR             R3, [SP,#0x34+var_34]
0x2564 MOVS            R3, #0x10
0x2566 STR             R3, [SP,#0x34+var_30]
0x2568 MOVS            R4, #1
0x256a MOVS            R3, #0
0x256c ADD             R2, SP, #0x34+var_8
0x256e SUBS            R0, #0x2E ; '.'
0x2570 SUBS            R1, #0x1C
0x2572 STR             R4, [SP,#0x34+var_2C]
0x2574 STR             R2, [SP,#0x34+var_28]
0x2576 STR             R3, [SP,#0x34+var_24]
0x2578 MOVS            R2, #0
0x257a LDR             R4, [SP,#0x34+var_20]
0x257c BL              sub_6D02
0x2580 LDR             R0, [R7]
0x2582 LDR             R1, [R6]
0x2584 LDR             R3, [R5,#(dword_150200C - 0x1501FF0)]
0x2586 LDR             R2, [SP,#0x34+var_18]
0x2588 ADDS            R0, #0x2E ; '.'
0x258a SUBS            R1, #0x1C
0x258c B               loc_2624
0x258e LDR             R3, [R5,#(dword_150200C - 0x1501FF0)]
0x2590 MOVS            R2, #0x334
0x2594 LDR             R3, [R3,R2]
0x2596 LDR             R0, [R7]
0x2598 LDR             R1, [R6]
0x259a STR             R3, [SP,#0x34+var_34]
0x259c MOVS            R3, #0x10
0x259e STR             R2, [SP,#0x34+var_1C]
0x25a0 STR             R3, [SP,#0x34+var_30]
0x25a2 MOVS            R4, #1
0x25a4 MOVS            R3, #0
0x25a6 ADD             R2, SP, #0x34+var_8
0x25a8 SUBS            R0, #0x22 ; '"'
0x25aa SUBS            R1, #0x1C
0x25ac STR             R4, [SP,#0x34+var_2C]
0x25ae STR             R2, [SP,#0x34+var_28]
0x25b0 STR             R3, [SP,#0x34+var_24]
0x25b2 MOVS            R2, #0
0x25b4 LDR             R4, [SP,#0x34+var_20]
0x25b6 BL              sub_6D02
0x25ba LDR             R3, [R5,#(dword_150200C - 0x1501FF0)]
0x25bc LDR             R2, [SP,#0x34+var_1C]
0x25be LDR             R3, [R3,R2]
0x25c0 LDR             R0, [R7]
0x25c2 LDR             R1, [R6]
0x25c4 MOVS            R4, #0
0x25c6 STR             R3, [SP,#0x34+var_34]
0x25c8 ADD             R2, SP, #0x34+var_8
0x25ca MOVS            R3, #0x10
0x25cc ADDS            R0, #0x22 ; '"'
0x25ce SUBS            R1, #0x1C
0x25d0 STR             R3, [SP,#0x34+var_30]
0x25d2 STR             R4, [SP,#0x34+var_2C]
0x25d4 STR             R2, [SP,#0x34+var_28]
0x25d6 STR             R4, [SP,#0x34+var_24]
0x25d8 MOVS            R2, #0
0x25da MOVS            R3, #0
0x25dc LDR             R4, [SP,#0x34+var_20]
0x25de BL              sub_6D02
0x25e2 MOVS            R3, #3
0x25e4 ADD             R2, SP, #0x34+var_8
0x25e6 MOVS            R4, #0x2E ; '.'
0x25e8 STRB            R3, [R2]
0x25ea ADD             R4, SP
0x25ec MOVS            R3, #0xD
0x25ee STRB            R3, [R4]
0x25f0 LDR             R2, [SP,#0x34+var_1C]
0x25f2 LDR             R3, [R5,#(dword_150200C - 0x1501FF0)]
0x25f4 LDR             R3, [R3,R2]
0x25f6 LDR             R0, [R7]
0x25f8 LDR             R1, [R6]
0x25fa STR             R3, [SP,#0x34+var_34]
0x25fc MOVS            R3, #0x10
0x25fe STR             R3, [SP,#0x34+var_30]
0x2600 MOVS            R4, #1
0x2602 MOVS            R3, #0
0x2604 ADD             R2, SP, #0x34+var_8
0x2606 SUBS            R0, #0x2D ; '-'
0x2608 SUBS            R1, #0x1C
0x260a STR             R4, [SP,#0x34+var_2C]
0x260c STR             R2, [SP,#0x34+var_28]
0x260e STR             R3, [SP,#0x34+var_24]
0x2610 MOVS            R2, #0
0x2612 LDR             R4, [SP,#0x34+var_20]
0x2614 BL              sub_6D02
0x2618 LDR             R0, [R7]
0x261a LDR             R1, [R6]
0x261c LDR             R3, [R5,#(dword_150200C - 0x1501FF0)]
0x261e LDR             R2, [SP,#0x34+var_1C]
0x2620 ADDS            R0, #0x2D ; '-'
0x2622 SUBS            R1, #0x1C
0x2624 LDR             R3, [R3,R2]
0x2626 MOVS            R4, #0
0x2628 ADD             R2, SP, #0x34+var_8
0x262a STR             R3, [SP,#0x34+var_34]
0x262c MOVS            R3, #0x10
0x262e STR             R3, [SP,#0x34+var_30]
0x2630 STR             R4, [SP,#0x34+var_2C]
0x2632 STR             R2, [SP,#0x34+var_28]
0x2634 STR             R4, [SP,#0x34+var_24]
0x2636 MOVS            R2, #0
0x2638 MOVS            R3, #0
0x263a LDR             R4, [SP,#0x34+var_20]
0x263c BL              sub_6D02
0x2640 ADD             SP, SP, #0x34 ; '4'
0x2642 POP             {R4-R7}
0x2644 POP             {R0}
0x2646 BX              R0