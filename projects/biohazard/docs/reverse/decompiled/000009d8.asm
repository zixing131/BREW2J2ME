000009d8  MOV             R2, #0
000009dc  ADD             R12, R0, R1
000009e0  B               loc_A00
000009e4  LDRB            R3, [R0]
000009e8  ADD             R0, R0, #1
000009ec  SUB             R1, R3, #0x30 ; '0'
000009f0  CMP             R1, #0xA
000009f4  ORRCS           R1, R3, #0x20 ; ' '
000009f8  SUBCS           R1, R1, #0x57 ; 'W'
000009fc  ADD             R2, R1, R2,LSL#4
00000a00  CMP             R0, R12
00000a04  BCC             loc_9E4
00000a08  MOV             R0, R2
00000a0c  BX              LR
