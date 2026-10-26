0001e6a8  PUSH            {R0-R6,LR}
0001e6ac  MOV             R5, R0
0001e6b0  ADD             R0, R0, #0x100
0001e6b4  LDRH            R0, [R0,#0x48]
0001e6b8  MOV             R6, R2
0001e6bc  MOV             R4, R1
0001e6c0  CMP             R0, #4; switch 5 cases
0001e6c4  ADDLS           PC, PC, R0,LSL#2; switch jump
0001e6c8  B               def_1E6C4; jumptable 0001E6C4 default case
0001e6cc  B               loc_1E6E0; jumptable 0001E6C4 case 0
0001e6d0  B               loc_1E70C; jumptable 0001E6C4 case 1
0001e6d4  B               loc_1E754; jumptable 0001E6C4 case 2
0001e6d8  B               loc_1E6F8; jumptable 0001E6C4 case 3
0001e6dc  B               loc_1E768; jumptable 0001E6C4 case 4
0001e6e0  MOV             R2, R6; jumptable 0001E6C4 case 0
0001e6e4  MOV             R1, R4
0001e6e8  MOV             R0, R5
0001e6ec  BL              sub_9298
0001e6f0  POP             {R0-R6,LR}; jumptable 0001E6C4 default case
0001e6f4  BX              LR
0001e6f8  MOV             R2, R6; jumptable 0001E6C4 case 3
0001e6fc  MOV             R1, R4
0001e700  MOV             R0, R5
0001e704  BL              sub_C144
0001e708  B               def_1E6C4; jumptable 0001E6C4 default case
0001e70c  MOV             R2, R6; jumptable 0001E6C4 case 1
0001e710  MOV             R1, R4
0001e714  MOV             R0, R5
0001e718  BL              sub_9298
0001e71c  LDRSH           R0, [R4,#2]
0001e720  MOV             R3, #0
0001e724  MOV             R2, #0
0001e728  LDR             R1, =0x1002
0001e72c  STMEA           SP, {R0-R3}
0001e730  LDRSH           R3, [R4]
0001e734  MOV             R1, #0
0001e738  MOV             R0, R4
0001e73c  BL              sub_10C58
0001e740  MOV             R2, R6
0001e744  MOV             R1, R4
0001e748  MOV             R0, R5
0001e74c  BL              sub_C3E0
0001e750  B               def_1E6C4; jumptable 0001E6C4 default case
0001e754  MOV             R2, R6; jumptable 0001E6C4 case 2
0001e758  MOV             R1, R4
0001e75c  MOV             R0, R5
0001e760  BL              sub_B96C
0001e764  B               def_1E6C4; jumptable 0001E6C4 default case
0001e768  MOV             R2, R6; jumptable 0001E6C4 case 4
0001e76c  MOV             R1, R4
0001e770  MOV             R0, R5
0001e774  BL              sub_E1D8
0001e778  B               def_1E6C4; jumptable 0001E6C4 default case
