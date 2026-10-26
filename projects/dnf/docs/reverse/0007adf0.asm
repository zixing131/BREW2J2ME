0x7adf0 PUSH            {R4-R7,LR}
0x7adf2 LSLS            R1, R1, #0x18
0x7adf4 LSLS            R3, R3, #0x18
0x7adf6 SUB             SP, SP, #0x10
0x7adf8 LSRS            R4, R1, #0x18
0x7adfa LSRS            R3, R3, #0x18
0x7adfc STR             R3, [SP,#0x10+var_10]
0x7adfe LSLS            R3, R4, #3
0x7ae00 ADDS            R3, R3, R4
0x7ae02 LSLS            R3, R3, #2
0x7ae04 MOVS            R1, R0
0x7ae06 ADDS            R1, #0x44 ; 'D'
0x7ae08 STR             R3, [SP,#0x10+var_8]
0x7ae0a STR             R1, [SP,#0x10+var_4]
0x7ae0c LDR             R3, [R1,#0x18]
0x7ae0e LDR             R1, [SP,#0x10+var_8]
0x7ae10 LSLS            R2, R2, #0x18
0x7ae12 STR             R0, [SP,#0x10+var_C]
0x7ae14 LSRS            R6, R2, #0x18
0x7ae16 ADDS            R2, R1, R3
0x7ae18 LDRB            R3, [R2,#4]
0x7ae1a CMP             R3, #0
0x7ae1c BEQ             loc_7AF16
0x7ae1e MOVS            R5, #0
0x7ae20 MOV             R12, R5
0x7ae22 STRB            R6, [R2,#5]
0x7ae24 B               loc_7AE42
0x7ae26 LDR             R3, =aWm; " !Wm"
0x7ae28 LSLS            R2, R1, #2
0x7ae2a ADDS            R2, R2, R1
0x7ae2c ADDS            R2, R2, R3
0x7ae2e LDRB            R3, [R2,R0]
0x7ae30 CMP             R3, R4
0x7ae32 BNE             loc_7AE3C
0x7ae34 LSRS            R5, R7, #0x18
0x7ae36 CMP             R5, #0xFF
0x7ae38 BEQ             loc_7AE5E
0x7ae3a B               loc_7AE56
0x7ae3c ADDS            R3, R5, #1
0x7ae3e LSLS            R3, R3, #0x18
0x7ae40 LSRS            R5, R3, #0x18
0x7ae42 LSLS            R3, R5, #0x18
0x7ae44 MOV             R2, R12
0x7ae46 ASRS            R0, R3, #0x18
0x7ae48 LSLS            R7, R2, #0x18
0x7ae4a LDR             R3, =byte_1402FC2
0x7ae4c ASRS            R1, R7, #0x18
0x7ae4e LDRB            R3, [R3,R1]
0x7ae50 CMP             R0, R3
0x7ae52 BLT             loc_7AE26
0x7ae54 B               loc_7AE5E
0x7ae56 LDR             R3, [SP,#0x10+var_10]
0x7ae58 CMP             R3, #0
0x7ae5a BEQ             loc_7AE74
0x7ae5c B               loc_7AEAA
0x7ae5e MOV             R3, R12
0x7ae60 ADDS            R3, #1
0x7ae62 LSLS            R3, R3, #0x18
0x7ae64 LSRS            R1, R3, #0x18
0x7ae66 ASRS            R3, R3, #0x18
0x7ae68 MOV             R12, R1
0x7ae6a CMP             R3, #9
0x7ae6c BLE             loc_7AE70
0x7ae6e B               loc_7B070
0x7ae70 MOVS            R5, #0
0x7ae72 B               loc_7AE42
0x7ae74 LDR             R2, =aWm; " !Wm"
0x7ae76 LSLS            R0, R6, #3
0x7ae78 LSLS            R3, R5, #2
0x7ae7a LDR             R7, =(sub_6EA60+1)
0x7ae7c CMP             R4, #0x40 ; '@'
0x7ae7e BNE             loc_7AE92
0x7ae80 ADDS            R0, R0, R6
0x7ae82 LDR             R1, [SP,#0x10+var_C]
0x7ae84 LSLS            R0, R0, #2
0x7ae86 ADDS            R0, #0x68 ; 'h'
0x7ae88 ADDS            R3, R3, R5
0x7ae8a ADDS            R0, R1, R0
0x7ae8c LDRB            R1, [R3,R2]
0x7ae8e LDR             R2, =0x80E8
0x7ae90 B               loc_7AEA2
0x7ae92 ADDS            R0, R0, R6
0x7ae94 LDR             R1, [SP,#0x10+var_C]
0x7ae96 LSLS            R0, R0, #2
0x7ae98 ADDS            R0, #0x68 ; 'h'
0x7ae9a ADDS            R3, R3, R5
0x7ae9c ADDS            R0, R1, R0
0x7ae9e LDRB            R1, [R3,R2]
0x7aea0 LDR             R2, =0x7918
0x7aea2 ADDS            R1, R1, R2
0x7aea4 MOVS            R2, #0
0x7aea6 BL              sub_8070E
0x7aeaa LSLS            R3, R5, #2
0x7aeac LDR             R2, =aWm; " !Wm"
0x7aeae ADDS            R3, R3, R5
0x7aeb0 ADDS            R0, R3, R2
0x7aeb2 LDR             R3, =byte_1402FC2
0x7aeb4 MOVS            R7, #0
0x7aeb6 MOV             R12, R3
0x7aeb8 B               loc_7AECC
0x7aeba LDRB            R3, [R0]
0x7aebc LDR             R2, [SP,#0x10+var_4]
0x7aebe LDR             R1, [R2,#0x18]
0x7aec0 LSLS            R2, R3, #3
0x7aec2 ADDS            R2, R2, R3
0x7aec4 LSLS            R2, R2, #2
0x7aec6 ADDS            R2, R2, R1
0x7aec8 STRB            R6, [R2,#5]
0x7aeca ADDS            R0, #1
0x7aecc MOV             R1, R12
0x7aece LDRB            R3, [R1,R5]
0x7aed0 MOVS            R2, R7
0x7aed2 ADDS            R7, #1
0x7aed4 CMP             R2, R3
0x7aed6 BLT             loc_7AEBA
0x7aed8 B               loc_7AF16
0x7aeda CMP             R4, #0x40 ; '@'
0x7aedc BEQ             loc_7AEE2
0x7aede CMP             R4, #0x3D ; '='
0x7aee0 BNE             loc_7AEF4
0x7aee2 LSLS            R0, R6, #3
0x7aee4 ADDS            R0, R0, R6
0x7aee6 LSLS            R0, R0, #2
0x7aee8 LDR             R2, [SP,#0x10+var_C]
0x7aeea LDR             R3, =0x80E8
0x7aeec ADDS            R0, #0x68 ; 'h'
0x7aeee ADDS            R0, R2, R0
0x7aef0 ADDS            R1, R4, R3
0x7aef2 B               loc_7AF04
0x7aef4 LSLS            R0, R6, #3
0x7aef6 ADDS            R0, R0, R6
0x7aef8 LDR             R1, [SP,#0x10+var_C]
0x7aefa LSLS            R0, R0, #2
0x7aefc LDR             R2, =0x7918
0x7aefe ADDS            R0, #0x68 ; 'h'
0x7af00 ADDS            R0, R1, R0
0x7af02 ADDS            R1, R4, R2
0x7af04 MOVS            R2, #0
0x7af06 LDR             R3, =(sub_6EA60+1)
0x7af08 BL              sub_80706
0x7af0c LDR             R1, [SP,#0x10+var_4]
0x7af0e LDR             R2, [SP,#0x10+var_8]
0x7af10 LDR             R3, [R1,#0x18]
0x7af12 ADDS            R3, R3, R2
0x7af14 STRB            R6, [R3,#5]
0x7af16 LDR             R1, [SP,#0x10+var_4]
0x7af18 LDR             R3, [R1,#0x18]
0x7af1a LDR             R1, [SP,#0x10+var_8]
0x7af1c ADDS            R2, R1, R3
0x7af1e LDRB            R3, [R2,#0x10]
0x7af20 CMP             R3, #0
0x7af22 BNE             loc_7AF26
0x7af24 B               loc_7B082
0x7af26 MOVS            R5, #0
0x7af28 MOV             R12, R5
0x7af2a STRB            R6, [R2,#0x11]
0x7af2c B               loc_7AF4A
0x7af2e LDR             R3, =aWm; " !Wm"
0x7af30 LSLS            R2, R1, #2
0x7af32 ADDS            R2, R2, R1
0x7af34 ADDS            R2, R2, R3
0x7af36 LDRB            R3, [R2,R0]
0x7af38 CMP             R3, R4
0x7af3a BNE             loc_7AF44
0x7af3c LSRS            R5, R7, #0x18
0x7af3e CMP             R5, #0xFF
0x7af40 BEQ             loc_7AF66
0x7af42 B               loc_7AF5E
0x7af44 ADDS            R3, R5, #1
0x7af46 LSLS            R3, R3, #0x18
0x7af48 LSRS            R5, R3, #0x18
0x7af4a LSLS            R3, R5, #0x18
0x7af4c MOV             R2, R12
0x7af4e ASRS            R0, R3, #0x18
0x7af50 LSLS            R7, R2, #0x18
0x7af52 LDR             R3, =byte_1402FC2
0x7af54 ASRS            R1, R7, #0x18
0x7af56 LDRB            R3, [R3,R1]
0x7af58 CMP             R0, R3
0x7af5a BLT             loc_7AF2E
0x7af5c B               loc_7AF66
0x7af5e LDR             R3, [SP,#0x10+var_10]
0x7af60 CMP             R3, #0
0x7af62 BEQ             loc_7AF7C
0x7af64 B               loc_7AFE2
0x7af66 MOV             R3, R12
0x7af68 ADDS            R3, #1
0x7af6a LSLS            R3, R3, #0x18
0x7af6c LSRS            R1, R3, #0x18
0x7af6e ASRS            R3, R3, #0x18
0x7af70 MOV             R12, R1
0x7af72 CMP             R3, #9
0x7af74 BLE             loc_7AF78
0x7af76 B               loc_7B07A
0x7af78 MOVS            R5, #0
0x7af7a B               loc_7AF4A
0x7af7c CMP             R4, #0x26 ; '&'
0x7af7e BEQ             loc_7AFA0
0x7af80 CMP             R4, #0x3F ; '?'
0x7af82 BEQ             loc_7AFA0
0x7af84 CMP             R4, #0x40 ; '@'
0x7af86 BEQ             loc_7AFA0
0x7af88 CMP             R4, #0x65 ; 'e'
0x7af8a BEQ             loc_7AFA0
0x7af8c CMP             R4, #0x3E ; '>'
0x7af8e BEQ             loc_7AFA0
0x7af90 CMP             R4, #0x3B ; ';'
0x7af92 BEQ             loc_7AFA0
0x7af94 CMP             R4, #0x3D ; '='
0x7af96 BEQ             loc_7AFA0
0x7af98 CMP             R4, #0x27 ; '''
0x7af9a BEQ             loc_7AFA0
0x7af9c CMP             R4, #0x53 ; 'S'
0x7af9e BNE             loc_7AFBE
0x7afa0 LSLS            R0, R6, #3
0x7afa2 ADDS            R0, R0, R6
0x7afa4 MOVS            R2, #0x23C
0x7afa8 LDR             R3, [SP,#0x10+var_C]
0x7afaa LSLS            R0, R0, #2
0x7afac ADDS            R0, R0, R2
0x7afae ADDS            R0, R3, R0
0x7afb0 LDR             R2, =aWm; " !Wm"
0x7afb2 LSLS            R3, R5, #2
0x7afb4 ADDS            R3, R3, R5
0x7afb6 LDRB            R1, [R3,R2]
0x7afb8 MOVS            R2, #0x7D00
0x7afbc B               loc_7AFD8
0x7afbe LSLS            R0, R6, #3
0x7afc0 ADDS            R0, R0, R6
0x7afc2 MOVS            R3, #0x23C
0x7afc6 LSLS            R0, R0, #2
0x7afc8 ADDS            R0, R0, R3
0x7afca LDR             R1, [SP,#0x10+var_C]
0x7afcc LDR             R2, =aWm; " !Wm"
0x7afce LSLS            R3, R5, #2
0x7afd0 ADDS            R3, R3, R5
0x7afd2 ADDS            R0, R1, R0
0x7afd4 LDRB            R1, [R3,R2]
0x7afd6 LDR             R2, =0x7530
0x7afd8 ADDS            R1, R1, R2
0x7afda LDR             R3, =(sub_6EA60+1)
0x7afdc MOVS            R2, #0
0x7afde BL              sub_80706
0x7afe2 LSLS            R3, R5, #2
0x7afe4 LDR             R2, =aWm; " !Wm"
0x7afe6 ADDS            R3, R3, R5
0x7afe8 LDR             R7, =byte_1402FC2
0x7afea ADDS            R0, R3, R2
0x7afec MOVS            R4, #0
0x7afee B               loc_7B002
0x7aff0 LDRB            R3, [R0]
0x7aff2 LDR             R2, [SP,#0x10+var_4]
0x7aff4 LDR             R1, [R2,#0x18]
0x7aff6 LSLS            R2, R3, #3
0x7aff8 ADDS            R2, R2, R3
0x7affa LSLS            R2, R2, #2
0x7affc ADDS            R2, R2, R1
0x7affe STRB            R6, [R2,#0x11]
0x7b000 ADDS            R0, #1
0x7b002 LDRB            R3, [R7,R5]
0x7b004 MOVS            R2, R4
0x7b006 ADDS            R4, #1
0x7b008 CMP             R2, R3
0x7b00a BLT             loc_7AFF0
0x7b00c B               loc_7B082
0x7b00e CMP             R4, #0x26 ; '&'
0x7b010 BEQ             loc_7B032
0x7b012 CMP             R4, #0x3F ; '?'
0x7b014 BEQ             loc_7B032
0x7b016 CMP             R4, #0x40 ; '@'
0x7b018 BEQ             loc_7B032
0x7b01a CMP             R4, #0x65 ; 'e'
0x7b01c BEQ             loc_7B032
0x7b01e CMP             R4, #0x3E ; '>'
0x7b020 BEQ             loc_7B032
0x7b022 CMP             R4, #0x3B ; ';'
0x7b024 BEQ             loc_7B032
0x7b026 CMP             R4, #0x3D ; '='
0x7b028 BEQ             loc_7B032
0x7b02a CMP             R4, #0x27 ; '''
0x7b02c BEQ             loc_7B032
0x7b02e CMP             R4, #0x53 ; 'S'
0x7b030 BNE             loc_7B048
0x7b032 LSLS            R0, R6, #3
0x7b034 ADDS            R0, R0, R6
0x7b036 MOVS            R3, #0x8F
0x7b038 LSLS            R0, R0, #2
0x7b03a LSLS            R3, R3, #2
0x7b03c LDR             R1, [SP,#0x10+var_C]
0x7b03e ADDS            R0, R0, R3
0x7b040 MOVS            R2, #0xFA
0x7b042 ADDS            R0, R1, R0
0x7b044 LSLS            R2, R2, #7
0x7b046 B               loc_7B05A
0x7b048 LSLS            R0, R6, #3
0x7b04a ADDS            R0, R0, R6
0x7b04c MOVS            R3, #0x8F
0x7b04e LSLS            R0, R0, #2
0x7b050 LSLS            R3, R3, #2
0x7b052 LDR             R1, [SP,#0x10+var_C]
0x7b054 ADDS            R0, R0, R3
0x7b056 LDR             R2, =0x7530
0x7b058 ADDS            R0, R1, R0
0x7b05a ADDS            R1, R4, R2
0x7b05c LDR             R3, =(sub_6EA60+1)
0x7b05e MOVS            R2, #0
0x7b060 BL              sub_80706
0x7b064 LDR             R1, [SP,#0x10+var_4]
0x7b066 LDR             R2, [SP,#0x10+var_8]
0x7b068 LDR             R3, [R1,#0x18]
0x7b06a ADDS            R3, R3, R2
0x7b06c STRB            R6, [R3,#0x11]
0x7b06e B               loc_7B082
0x7b070 LDR             R3, [SP,#0x10+var_10]
0x7b072 CMP             R3, #0
0x7b074 BNE             loc_7B078
0x7b076 B               loc_7AEDA
0x7b078 B               loc_7AF0C
0x7b07a LDR             R1, [SP,#0x10+var_10]
0x7b07c CMP             R1, #0
0x7b07e BEQ             loc_7B00E
0x7b080 B               loc_7B064
0x7b082 ADD             SP, SP, #0x10
0x7b084 POP             {R4-R7}
0x7b086 POP             {R0}
0x7b088 BX              R0