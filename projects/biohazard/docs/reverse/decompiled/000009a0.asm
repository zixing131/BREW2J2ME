000009a0  MOV             R2, #0
000009a4  ADD             R12, R0, R1
000009a8  B               loc_9C8
000009ac  LDRB            R3, [R0]
000009b0  ADD             R0, R0, #1
000009b4  SUB             R1, R3, #0x30 ; '0'
000009b8  CMP             R1, #0xA
000009bc  ORRCS           R1, R3, #0x20 ; ' '
000009c0  SUBCS           R1, R1, #0x57 ; 'W'
000009c4  ADD             R2, R1, R2,LSL#4
000009c8  CMP             R0, R12
000009cc  BCC             loc_9AC
000009d0  MOV             R0, R2
000009d4  BX              LR
