0x6adb8 PUSH            {R4-R7,LR}
0x6adba SUB             SP, SP, #0x60
0x6adbc STR             R3, [SP,#0x60+var_50]
0x6adbe LDR             R3, [SP,#0x60+arg_8]
0x6adc0 LSLS            R3, R3, #0x18
0x6adc2 LSRS            R3, R3, #0x18
0x6adc4 STR             R0, [SP,#0x60+var_44]
0x6adc6 STR             R2, [SP,#0x60+var_4C]
0x6adc8 STR             R1, [SP,#0x60+var_48]
0x6adca LDR             R6, [SP,#0x60+arg_C]
0x6adcc STR             R3, [SP,#0x60+var_54]
0x6adce LDR             R0, [SP,#0x60+arg_0]
0x6add0 LDRB            R1, [R6,#3]
0x6add2 LDR             R2, [SP,#0x60+arg_10]
0x6add4 STR             R1, [SP,#0x60+var_40]
0x6add6 LDR             R1, [R0,#4]
0x6add8 LSLS            R2, R2, #0x18
0x6adda LSRS            R4, R2, #0x18
0x6addc CMP             R1, #0
0x6adde BNE             loc_6ADE2
0x6ade0 B               loc_6B07C
0x6ade2 LDR             R3, [SP,#0x60+arg_4]
0x6ade4 LSLS            R3, R3, #4
0x6ade6 ADDS            R5, R1, R3
0x6ade8 STR             R1, [R0,#0x14]
0x6adea LDR             R1, [R5,#8]
0x6adec CMP             R1, #0
0x6adee BNE             loc_6ADF2
0x6adf0 B               loc_6B07C
0x6adf2 LDR             R2, [R0]
0x6adf4 CMP             R2, #0
0x6adf6 BNE             loc_6ADFA
0x6adf8 B               loc_6B07C
0x6adfa STR             R2, [R0,#0x10]
0x6adfc LDRB            R3, [R6,#4]
0x6adfe LSLS            R3, R3, #3
0x6ae00 ADDS            R7, R2, R3
0x6ae02 LDR             R3, [R7]
0x6ae04 CMP             R3, #0
0x6ae06 BNE             loc_6AE0A
0x6ae08 B               loc_6B07C
0x6ae0a STR             R1, [R5,#0xC]
0x6ae0c STR             R3, [R7,#4]
0x6ae0e SUBS            R3, R4, #4
0x6ae10 LSLS            R3, R3, #0x18
0x6ae12 LSRS            R3, R3, #0x18
0x6ae14 STR             R3, [SP,#0x60+var_3C]
0x6ae16 CMP             R3, #2
0x6ae18 BLS             loc_6AE1E
0x6ae1a STR             R5, [SP,#0x60+var_30]
0x6ae1c B               loc_6AE3E
0x6ae1e LDR             R3, =unk_14032EC
0x6ae20 MOVS            R0, #0x12
0x6ae22 BL              sub_6BB36
0x6ae26 MOVS            R1, #0
0x6ae28 MOVS            R2, #0x10
0x6ae2a STR             R0, [SP,#0x60+var_34]
0x6ae2c STR             R0, [SP,#0x60+var_30]
0x6ae2e LDR             R3, =unk_140329C
0x6ae30 BL              sub_6BB36
0x6ae34 LDR             R0, [SP,#0x60+var_34]
0x6ae36 MOVS            R1, R5
0x6ae38 MOVS            R2, R4
0x6ae3a BL              sub_69E04
0x6ae3e LDR             R3, =unk_140329C
0x6ae40 ADD             R0, SP, #0x60+var_2C
0x6ae42 STR             R3, [SP,#0x60+var_58]
0x6ae44 MOVS            R1, #0
0x6ae46 MOVS            R2, #0x1C
0x6ae48 LDR             R5, [SP,#0x60+var_40]
0x6ae4a BL              sub_6BB36
0x6ae4e MOVS            R3, #2
0x6ae50 ADD             R0, SP, #0x60+var_24
0x6ae52 STRB            R3, [R0]
0x6ae54 LDRB            R3, [R6,#3]
0x6ae56 ADDS            R5, #1
0x6ae58 CMP             R3, #0
0x6ae5a BEQ             loc_6AE80
0x6ae5c LDR             R3, =unk_14032EC
0x6ae5e MOVS            R0, #0x12
0x6ae60 BL              sub_6BB36
0x6ae64 MOVS            R1, #0
0x6ae66 STR             R0, [SP,#0x60+var_38]
0x6ae68 STR             R0, [SP,#0x60+var_2C]
0x6ae6a MOVS            R2, #0x10
0x6ae6c LDR             R3, [SP,#0x60+var_58]
0x6ae6e BL              sub_6BB36
0x6ae72 ADD             R0, SP, #0x60+var_2C
0x6ae74 LDR             R1, [SP,#0x60+var_30]
0x6ae76 MOVS            R2, R5
0x6ae78 STR             R7, [SP,#0x60+var_28]
0x6ae7a BL              sub_69D34
0x6ae7e B               loc_6AE86
0x6ae80 LDR             R0, [SP,#0x60+var_30]
0x6ae82 STR             R7, [SP,#0x60+var_28]
0x6ae84 STR             R0, [SP,#0x60+var_2C]
0x6ae86 LDR             R1, [SP,#0x60+var_54]
0x6ae88 CMP             R1, #0
0x6ae8a BNE             loc_6AE9E
0x6ae8c LDR             R2, [SP,#0x60+var_44]
0x6ae8e LDR             R3, [SP,#0x60+var_4C]
0x6ae90 LDR             R1, [SP,#0x60+var_48]
0x6ae92 ADDS            R0, R2, R3
0x6ae94 LDR             R2, [SP,#0x60+var_50]
0x6ae96 ADDS            R7, R1, R2
0x6ae98 CMP             R4, #0
0x6ae9a BNE             loc_6AEB8
0x6ae9c B               loc_6AEA8
0x6ae9e LDR             R3, [SP,#0x60+var_54]
0x6aea0 CMP             R3, #1
0x6aea2 BEQ             loc_6AEA6
0x6aea4 B               loc_6B028
0x6aea6 B               loc_6AEFA
0x6aea8 LDR             R2, [SP,#0x60+var_2C]
0x6aeaa MOVS            R4, #0
0x6aeac LDRSH           R3, [R2,R4]
0x6aeae SUBS            R3, R0, R3
0x6aeb0 STR             R3, [SP,#0x60+var_10]
0x6aeb2 MOVS            R0, #2
0x6aeb4 LDRSH           R3, [R2,R0]
0x6aeb6 B               loc_6AF50
0x6aeb8 CMP             R4, #1
0x6aeba BEQ             loc_6AF0A
0x6aebc CMP             R4, #2
0x6aebe BEQ             loc_6AFAC
0x6aec0 CMP             R4, #3
0x6aec2 BEQ             loc_6AF74
0x6aec4 LDR             R1, [SP,#0x60+var_3C]
0x6aec6 CMP             R1, #2
0x6aec8 BLS             loc_6AECC
0x6aeca B               loc_6B052
0x6aecc LDR             R2, [SP,#0x60+var_2C]
0x6aece MOVS            R4, #0
0x6aed0 LDRSH           R3, [R2,R4]
0x6aed2 SUBS            R3, R0, R3
0x6aed4 STR             R3, [SP,#0x60+var_10]
0x6aed6 MOVS            R0, #2
0x6aed8 LDRSH           R3, [R2,R0]
0x6aeda SUBS            R3, R7, R3
0x6aedc STR             R3, [SP,#0x60+var_C]
0x6aede LDRH            R3, [R2,#4]
0x6aee0 STR             R3, [SP,#0x60+var_8]
0x6aee2 LDRH            R3, [R2,#6]
0x6aee4 STR             R3, [SP,#0x60+var_4]
0x6aee6 LDRB            R2, [R6,#1]
0x6aee8 LDRB            R3, [R6]
0x6aeea STR             R2, [SP,#0x60+var_60]
0x6aeec LDRB            R2, [R6,#2]
0x6aeee LDR             R4, =0x67AD9
0x6aef0 STR             R2, [SP,#0x60+var_5C]
0x6aef2 MOVS            R0, #0
0x6aef4 ADD             R1, SP, #0x60+var_10
0x6aef6 ADD             R2, SP, #0x60+var_2C
0x6aef8 B               loc_6B022
0x6aefa LDR             R1, [SP,#0x60+var_44]
0x6aefc LDR             R2, [SP,#0x60+var_4C]
0x6aefe LDR             R3, [SP,#0x60+var_48]
0x6af00 SUBS            R0, R1, R2
0x6af02 LDR             R1, [SP,#0x60+var_50]
0x6af04 ADDS            R7, R3, R1
0x6af06 CMP             R4, #0
0x6af08 BNE             loc_6AF3E
0x6af0a LDR             R1, [SP,#0x60+var_2C]
0x6af0c LDRH            R3, [R1,#4]
0x6af0e MOVS            R4, #0
0x6af10 LDRSH           R2, [R1,R4]
0x6af12 SUBS            R3, R3, R5
0x6af14 SUBS            R3, R3, R2
0x6af16 SUBS            R3, R0, R3
0x6af18 STR             R3, [SP,#0x60+var_10]
0x6af1a MOVS            R0, #2
0x6af1c LDRSH           R3, [R1,R0]
0x6af1e SUBS            R3, R7, R3
0x6af20 STR             R3, [SP,#0x60+var_C]
0x6af22 LDRH            R3, [R1,#4]
0x6af24 STR             R3, [SP,#0x60+var_8]
0x6af26 LDRH            R3, [R1,#6]
0x6af28 STR             R3, [SP,#0x60+var_4]
0x6af2a LDRB            R2, [R6,#1]
0x6af2c LDRB            R3, [R6]
0x6af2e STR             R2, [SP,#0x60+var_60]
0x6af30 LDRB            R2, [R6,#2]
0x6af32 LDR             R4, =0x67A85
0x6af34 STR             R2, [SP,#0x60+var_5C]
0x6af36 MOVS            R0, #0
0x6af38 ADD             R1, SP, #0x60+var_10
0x6af3a ADD             R2, SP, #0x60+var_2C
0x6af3c B               loc_6AFE4
0x6af3e CMP             R4, #1
0x6af40 BNE             loc_6AF70
0x6af42 LDR             R2, [SP,#0x60+var_2C]
0x6af44 MOVS            R1, #0
0x6af46 LDRSH           R3, [R2,R1]
0x6af48 SUBS            R3, R0, R3
0x6af4a STR             R3, [SP,#0x60+var_10]
0x6af4c MOVS            R4, #2
0x6af4e LDRSH           R3, [R2,R4]
0x6af50 SUBS            R3, R7, R3
0x6af52 STR             R3, [SP,#0x60+var_C]
0x6af54 LDRH            R3, [R2,#4]
0x6af56 STR             R3, [SP,#0x60+var_8]
0x6af58 LDRH            R3, [R2,#6]
0x6af5a STR             R3, [SP,#0x60+var_4]
0x6af5c LDRB            R2, [R6,#1]
0x6af5e LDRB            R3, [R6]
0x6af60 STR             R2, [SP,#0x60+var_60]
0x6af62 LDRB            R2, [R6,#2]
0x6af64 LDR             R4, =0x67AD9
0x6af66 STR             R2, [SP,#0x60+var_5C]
0x6af68 MOVS            R0, #0
0x6af6a ADD             R1, SP, #0x60+var_10
0x6af6c ADD             R2, SP, #0x60+var_2C
0x6af6e B               loc_6AFE4
0x6af70 CMP             R4, #2
0x6af72 BNE             loc_6AFA8
0x6af74 LDR             R1, [SP,#0x60+var_2C]
0x6af76 MOVS            R2, #0
0x6af78 LDRSH           R3, [R1,R2]
0x6af7a SUBS            R3, R0, R3
0x6af7c STR             R3, [SP,#0x60+var_10]
0x6af7e LDRH            R3, [R1,#6]
0x6af80 MOVS            R4, #2
0x6af82 LDRSH           R2, [R1,R4]
0x6af84 SUBS            R3, R3, R5
0x6af86 SUBS            R3, R3, R2
0x6af88 SUBS            R3, R7, R3
0x6af8a STR             R3, [SP,#0x60+var_C]
0x6af8c LDRH            R3, [R1,#4]
0x6af8e STR             R3, [SP,#0x60+var_8]
0x6af90 LDRH            R3, [R1,#6]
0x6af92 STR             R3, [SP,#0x60+var_4]
0x6af94 LDRB            R2, [R6,#1]
0x6af96 LDRB            R3, [R6]
0x6af98 STR             R2, [SP,#0x60+var_60]
0x6af9a LDRB            R2, [R6,#2]
0x6af9c LDR             R4, =0x67A31
0x6af9e STR             R2, [SP,#0x60+var_5C]
0x6afa0 MOVS            R0, #0
0x6afa2 ADD             R1, SP, #0x60+var_10
0x6afa4 ADD             R2, SP, #0x60+var_2C
0x6afa6 B               loc_6AFE4
0x6afa8 CMP             R4, #3
0x6afaa BNE             loc_6AFEA
0x6afac LDR             R1, [SP,#0x60+var_2C]
0x6afae LDRH            R3, [R1,#4]
0x6afb0 MOVS            R4, #0
0x6afb2 LDRSH           R2, [R1,R4]
0x6afb4 SUBS            R3, R3, R5
0x6afb6 SUBS            R3, R3, R2
0x6afb8 SUBS            R3, R0, R3
0x6afba STR             R3, [SP,#0x60+var_10]
0x6afbc LDRH            R3, [R1,#6]
0x6afbe MOVS            R0, #2
0x6afc0 LDRSH           R2, [R1,R0]
0x6afc2 SUBS            R3, R3, R5
0x6afc4 SUBS            R3, R3, R2
0x6afc6 SUBS            R3, R7, R3
0x6afc8 STR             R3, [SP,#0x60+var_C]
0x6afca LDRH            R3, [R1,#4]
0x6afcc STR             R3, [SP,#0x60+var_8]
0x6afce LDRH            R3, [R1,#6]
0x6afd0 STR             R3, [SP,#0x60+var_4]
0x6afd2 LDRB            R2, [R6,#1]
0x6afd4 LDRB            R3, [R6]
0x6afd6 STR             R2, [SP,#0x60+var_60]
0x6afd8 LDRB            R2, [R6,#2]
0x6afda LDR             R4, =0x679DD
0x6afdc STR             R2, [SP,#0x60+var_5C]
0x6afde MOVS            R0, #0
0x6afe0 ADD             R1, SP, #0x60+var_10
0x6afe2 ADD             R2, SP, #0x60+var_2C
0x6afe4 BL              sub_6BB38
0x6afe8 B               loc_6B028
0x6afea LDR             R1, [SP,#0x60+var_3C]
0x6afec CMP             R1, #2
0x6afee BHI             loc_6B052
0x6aff0 LDR             R1, [SP,#0x60+var_2C]
0x6aff2 LDRH            R3, [R1,#4]
0x6aff4 MOVS            R4, #0
0x6aff6 LDRSH           R2, [R1,R4]
0x6aff8 SUBS            R3, R3, R5
0x6affa SUBS            R3, R3, R2
0x6affc SUBS            R3, R0, R3
0x6affe STR             R3, [SP,#0x60+var_10]
0x6b000 MOVS            R0, #2
0x6b002 LDRSH           R3, [R1,R0]
0x6b004 SUBS            R3, R7, R3
0x6b006 STR             R3, [SP,#0x60+var_C]
0x6b008 LDRH            R3, [R1,#4]
0x6b00a STR             R3, [SP,#0x60+var_8]
0x6b00c LDRH            R3, [R1,#6]
0x6b00e STR             R3, [SP,#0x60+var_4]
0x6b010 LDRB            R2, [R6,#1]
0x6b012 LDRB            R3, [R6]
0x6b014 STR             R2, [SP,#0x60+var_60]
0x6b016 LDRB            R2, [R6,#2]
0x6b018 LDR             R4, =0x67A85
0x6b01a STR             R2, [SP,#0x60+var_5C]
0x6b01c MOVS            R0, #0
0x6b01e ADD             R1, SP, #0x60+var_10
0x6b020 ADD             R2, SP, #0x60+var_2C
0x6b022 BL              sub_6BB38
0x6b026 B               loc_6B02E
0x6b028 LDR             R1, [SP,#0x60+var_3C]
0x6b02a CMP             R1, #2
0x6b02c BHI             loc_6B052
0x6b02e LDR             R2, [SP,#0x60+var_34]
0x6b030 CMP             R2, #0
0x6b032 BEQ             loc_6B052
0x6b034 LDR             R3, [SP,#0x60+var_30]
0x6b036 LDR             R0, [R3,#8]
0x6b038 CMP             R0, #0
0x6b03a BEQ             loc_6B04A
0x6b03c LDR             R3, =unk_14032FC
0x6b03e BL              sub_6BB36
0x6b042 LDR             R4, [SP,#0x60+var_30]
0x6b044 MOVS            R3, #0
0x6b046 STR             R3, [R4,#8]
0x6b048 STR             R3, [R4,#0xC]
0x6b04a LDR             R0, [SP,#0x60+var_34]
0x6b04c LDR             R3, =unk_14032FC
0x6b04e BL              sub_6BB36
0x6b052 LDRB            R3, [R6,#3]
0x6b054 CMP             R3, #0
0x6b056 BEQ             loc_6B07C
0x6b058 LDR             R0, [SP,#0x60+var_38]
0x6b05a CMP             R0, #0
0x6b05c BEQ             loc_6B07C
0x6b05e LDR             R3, [SP,#0x60+var_2C]
0x6b060 LDR             R0, [R3,#8]
0x6b062 CMP             R0, #0
0x6b064 BEQ             loc_6B074
0x6b066 LDR             R3, =unk_14032FC
0x6b068 BL              sub_6BB36
0x6b06c LDR             R2, [SP,#0x60+var_2C]
0x6b06e MOVS            R3, #0
0x6b070 STR             R3, [R2,#8]
0x6b072 STR             R3, [R2,#0xC]
0x6b074 LDR             R0, [SP,#0x60+var_38]
0x6b076 LDR             R3, =unk_14032FC
0x6b078 BL              sub_6BB36
0x6b07c ADD             SP, SP, #0x60 ; '`'
0x6b07e POP             {R4-R7}
0x6b080 POP             {R0}
0x6b082 BX              R0