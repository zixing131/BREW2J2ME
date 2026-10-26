0x8aecc PUSH            {LR}
0x8aece CMP             R0, #0x11; switch 18 cases
0x8aed0 BHI             def_8AEDC; jumptable 0008AEDC default case
0x8aed2 LDR             R2, =jpt_8AEDC
0x8aed4 LSLS            R3, R0, #2
0x8aed6 LDR             R3, [R3,R2]
0x8aed8 LDR             R0, =unk_153AD9D
0x8aeda LDR             R2, =unk_140323C
0x8aedc MOV             PC, R3; switch jump
0x8aede LDR             R1, =dword_9D1A4; jumptable 0008AEDC case 1
0x8aee0 B               loc_8AEE4
0x8aee2 LDR             R1, =dword_9D1A8; jumptable 0008AEDC case 2
0x8aee4 BL              sub_8B15C
0x8aee8 B               loc_8AF34
0x8aeea LDR             R1, =dword_9D1AC; jumptable 0008AEDC case 3
0x8aeec B               loc_8AEE4
0x8aeee LDR             R1, =dword_9D1B0; jumptable 0008AEDC case 4
0x8aef0 B               loc_8AEE4
0x8aef2 LDR             R1, =dword_9D1B4; jumptable 0008AEDC case 5
0x8aef4 B               loc_8AEE4
0x8aef6 LDR             R1, =dword_9D1B8; jumptable 0008AEDC case 6
0x8aef8 B               loc_8AEE4
0x8aefa LDR             R1, =dword_9D1BC; jumptable 0008AEDC case 7
0x8aefc B               loc_8AEE4
0x8aefe LDR             R1, =dword_9D1C0; jumptable 0008AEDC case 8
0x8af00 B               loc_8AEE4
0x8af02 LDR             R1, =dword_9D1C4; jumptable 0008AEDC case 9
0x8af04 B               loc_8AEE4
0x8af06 LDR             R1, =dword_8FD04; jumptable 0008AEDC case 10
0x8af08 B               loc_8AEE4
0x8af0a LDR             R1, =dword_9D120; jumptable 0008AEDC case 0
0x8af0c B               loc_8AEE4
0x8af0e LDR             R1, =dword_90C08; jumptable 0008AEDC case 11
0x8af10 B               loc_8AEE4
0x8af12 LDR             R1, =aLeft; jumptable 0008AEDC case 12
0x8af14 B               loc_8AEE4
0x8af16 LDR             R1, =aRight; jumptable 0008AEDC case 13
0x8af18 B               loc_8AEE4
0x8af1a LDR             R1, =aSpace; jumptable 0008AEDC case 14
0x8af1c B               loc_8AEE4
0x8af1e LDR             R1, =aChange; jumptable 0008AEDC case 16
0x8af20 B               loc_8AEE4
0x8af22 LDR             R1, =aClear; jumptable 0008AEDC case 15
0x8af24 B               loc_8AEE4
0x8af26 LDR             R1, =unk_8CE7C; jumptable 0008AEDC case 17
0x8af28 B               loc_8AEE4
0x8af2a LDR             R0, =unk_153AD9D; jumptable 0008AEDC default case
0x8af2c LDR             R1, =0x9216C
0x8af2e LDR             R3, =unk_140323C
0x8af30 BL              sub_8B15E
0x8af34 LDR             R0, =unk_153AD9D
0x8af36 POP             {R1}
0x8af38 BX              R1