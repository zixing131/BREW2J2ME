0001f8c4  MOV             R12, #0x148
0001f8c8  LDRH            R12, [R12,R0]
0001f8cc  CMP             R12, #4; switch 5 cases
0001f8d0  ADDLS           PC, PC, R12,LSL#2; switch jump
0001f8d4  B               def_1F8D0; jumptable 0001F8D0 default case
0001f8d8  B               loc_1F8EC; jumptable 0001F8D0 case 0
0001f8dc  B               loc_1F8F4; jumptable 0001F8D0 case 1
0001f8e0  B               loc_1F8F8; jumptable 0001F8D0 case 2
0001f8e4  B               loc_1F8F0; jumptable 0001F8D0 case 3
0001f8e8  B               loc_1F8FC; jumptable 0001F8D0 case 4
0001f8ec  B               sub_1E780; jumptable 0001F8D0 case 0
0001f8f0  B               sub_1EBBC; jumptable 0001F8D0 case 3
0001f8f4  B               sub_1ECE8; jumptable 0001F8D0 case 1
0001f8f8  B               sub_1E974; jumptable 0001F8D0 case 2
0001f8fc  B               sub_1EEB0; jumptable 0001F8D0 case 4
0001f900  MOV             R0, #1; jumptable 0001F8D0 default case
0001f904  BX              LR
