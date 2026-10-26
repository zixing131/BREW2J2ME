0x8b79c PUSH            {R4,R5,LR}
0x8b79e LDRB            R3, [R0,#2]
0x8b7a0 MOVS            R4, R0
0x8b7a2 CMP             R3, #1
0x8b7a4 BEQ             loc_8B7DA
0x8b7a6 CMP             R3, #1
0x8b7a8 BCC             loc_8B7B2
0x8b7aa CMP             R3, #2
0x8b7ac BEQ             loc_8B7B0
0x8b7ae B               loc_8B968
0x8b7b0 B               loc_8B944
0x8b7b2 LDR             R0, [R0,#0x5C]
0x8b7b4 CMP             R0, #0
0x8b7b6 BEQ             loc_8B7C4
0x8b7b8 LDR             R3, =unk_14032FC
0x8b7ba BL              sub_8BDE8
0x8b7be MOVS            R3, #0
0x8b7c0 STR             R3, [R4,#0x5C]
0x8b7c2 STR             R3, [R4,#0x60]
0x8b7c4 LDR             R0, [R4,#0x54]
0x8b7c6 CMP             R0, #0
0x8b7c8 BNE             loc_8B7CC
0x8b7ca B               loc_8B968
0x8b7cc LDR             R3, =unk_14032FC
0x8b7ce BL              sub_8BDE8
0x8b7d2 MOVS            R3, #0
0x8b7d4 STR             R3, [R4,#0x54]
0x8b7d6 STR             R3, [R4,#0x58]
0x8b7d8 B               loc_8B968
0x8b7da LDR             R3, [R0,#0x3C]
0x8b7dc CMP             R3, #0
0x8b7de BEQ             loc_8B816
0x8b7e0 MOVS            R5, #0
0x8b7e2 LDR             R3, [R4,#0x40]
0x8b7e4 LDR             R0, [R3,R5]
0x8b7e6 CMP             R0, #0
0x8b7e8 BEQ             loc_8B7FA
0x8b7ea LDR             R3, =unk_14032FC
0x8b7ec BL              sub_8BDE8
0x8b7f0 LDR             R3, [R4,#0x40]
0x8b7f2 MOVS            R2, #0
0x8b7f4 ADDS            R3, R3, R5
0x8b7f6 STR             R2, [R3]
0x8b7f8 STR             R2, [R3,#4]
0x8b7fa ADDS            R5, #8
0x8b7fc CMP             R5, #0x40 ; '@'
0x8b7fe BNE             loc_8B7E2
0x8b800 LDR             R0, [R4,#0x3C]
0x8b802 CMP             R0, #0
0x8b804 BEQ             loc_8B810
0x8b806 LDR             R3, =unk_14032FC
0x8b808 BL              sub_8BDE8
0x8b80c MOVS            R3, #0
0x8b80e STR             R3, [R4,#0x3C]
0x8b810 MOVS            R3, #0
0x8b812 STR             R3, [R4,#0x3C]
0x8b814 STR             R3, [R4,#0x40]
0x8b816 LDR             R3, [R4,#0x44]
0x8b818 CMP             R3, #0
0x8b81a BEQ             loc_8B852
0x8b81c MOVS            R5, #0
0x8b81e LDR             R3, [R4,#0x48]
0x8b820 LDR             R0, [R3,R5]
0x8b822 CMP             R0, #0
0x8b824 BEQ             loc_8B836
0x8b826 LDR             R3, =unk_14032FC
0x8b828 BL              sub_8BDE8
0x8b82c LDR             R3, [R4,#0x48]
0x8b82e MOVS            R2, #0
0x8b830 ADDS            R3, R3, R5
0x8b832 STR             R2, [R3]
0x8b834 STR             R2, [R3,#4]
0x8b836 ADDS            R5, #8
0x8b838 CMP             R5, #0x20 ; ' '
0x8b83a BNE             loc_8B81E
0x8b83c LDR             R0, [R4,#0x44]
0x8b83e CMP             R0, #0
0x8b840 BEQ             loc_8B84C
0x8b842 LDR             R3, =unk_14032FC
0x8b844 BL              sub_8BDE8
0x8b848 MOVS            R3, #0
0x8b84a STR             R3, [R4,#0x44]
0x8b84c MOVS            R3, #0
0x8b84e STR             R3, [R4,#0x44]
0x8b850 STR             R3, [R4,#0x48]
0x8b852 LDR             R3, [R4,#0x4C]
0x8b854 CMP             R3, #0
0x8b856 BEQ             loc_8B88E
0x8b858 MOVS            R5, #0
0x8b85a LDR             R3, [R4,#0x50]
0x8b85c LDR             R0, [R3,R5]
0x8b85e CMP             R0, #0
0x8b860 BEQ             loc_8B872
0x8b862 LDR             R3, =unk_14032FC
0x8b864 BL              sub_8BDE8
0x8b868 LDR             R3, [R4,#0x50]
0x8b86a MOVS            R2, #0
0x8b86c ADDS            R3, R3, R5
0x8b86e STR             R2, [R3]
0x8b870 STR             R2, [R3,#4]
0x8b872 ADDS            R5, #8
0x8b874 CMP             R5, #0x20 ; ' '
0x8b876 BNE             loc_8B85A
0x8b878 LDR             R0, [R4,#0x4C]
0x8b87a CMP             R0, #0
0x8b87c BEQ             loc_8B888
0x8b87e LDR             R3, =unk_14032FC
0x8b880 BL              sub_8BDE8
0x8b884 MOVS            R3, #0
0x8b886 STR             R3, [R4,#0x4C]
0x8b888 MOVS            R3, #0
0x8b88a STR             R3, [R4,#0x4C]
0x8b88c STR             R3, [R4,#0x50]
0x8b88e LDR             R3, [R4,#0x24]
0x8b890 CMP             R3, #0
0x8b892 BEQ             loc_8B8CA
0x8b894 MOVS            R5, #0
0x8b896 LDR             R3, [R4,#0x28]
0x8b898 LDR             R0, [R3,R5]
0x8b89a CMP             R0, #0
0x8b89c BEQ             loc_8B8AE
0x8b89e LDR             R3, =unk_14032FC
0x8b8a0 BL              sub_8BDE8
0x8b8a4 LDR             R3, [R4,#0x28]
0x8b8a6 MOVS            R2, #0
0x8b8a8 ADDS            R3, R3, R5
0x8b8aa STR             R2, [R3]
0x8b8ac STR             R2, [R3,#4]
0x8b8ae ADDS            R5, #8
0x8b8b0 CMP             R5, #0x40 ; '@'
0x8b8b2 BNE             loc_8B896
0x8b8b4 LDR             R0, [R4,#0x24]
0x8b8b6 CMP             R0, #0
0x8b8b8 BEQ             loc_8B8C4
0x8b8ba LDR             R3, =unk_14032FC
0x8b8bc BL              sub_8BDE8
0x8b8c0 MOVS            R3, #0
0x8b8c2 STR             R3, [R4,#0x24]
0x8b8c4 MOVS            R3, #0
0x8b8c6 STR             R3, [R4,#0x24]
0x8b8c8 STR             R3, [R4,#0x28]
0x8b8ca LDR             R3, [R4,#0x2C]
0x8b8cc CMP             R3, #0
0x8b8ce BEQ             loc_8B906
0x8b8d0 MOVS            R5, #0
0x8b8d2 LDR             R3, [R4,#0x30]
0x8b8d4 LDR             R0, [R3,R5]
0x8b8d6 CMP             R0, #0
0x8b8d8 BEQ             loc_8B8EA
0x8b8da LDR             R3, =unk_14032FC
0x8b8dc BL              sub_8BDE8
0x8b8e0 LDR             R3, [R4,#0x30]
0x8b8e2 MOVS            R2, #0
0x8b8e4 ADDS            R3, R3, R5
0x8b8e6 STR             R2, [R3]
0x8b8e8 STR             R2, [R3,#4]
0x8b8ea ADDS            R5, #8
0x8b8ec CMP             R5, #0x20 ; ' '
0x8b8ee BNE             loc_8B8D2
0x8b8f0 LDR             R0, [R4,#0x2C]
0x8b8f2 CMP             R0, #0
0x8b8f4 BEQ             loc_8B900
0x8b8f6 LDR             R3, =unk_14032FC
0x8b8f8 BL              sub_8BDE8
0x8b8fc MOVS            R3, #0
0x8b8fe STR             R3, [R4,#0x2C]
0x8b900 MOVS            R3, #0
0x8b902 STR             R3, [R4,#0x2C]
0x8b904 STR             R3, [R4,#0x30]
0x8b906 LDR             R3, [R4,#0x34]
0x8b908 CMP             R3, #0
0x8b90a BEQ             loc_8B968
0x8b90c MOVS            R5, #0
0x8b90e LDR             R3, [R4,#0x38]
0x8b910 LDR             R0, [R3,R5]
0x8b912 CMP             R0, #0
0x8b914 BEQ             loc_8B926
0x8b916 LDR             R3, =unk_14032FC
0x8b918 BL              sub_8BDE8
0x8b91c LDR             R3, [R4,#0x38]
0x8b91e MOVS            R2, #0
0x8b920 ADDS            R3, R3, R5
0x8b922 STR             R2, [R3]
0x8b924 STR             R2, [R3,#4]
0x8b926 ADDS            R5, #8
0x8b928 CMP             R5, #0x20 ; ' '
0x8b92a BNE             loc_8B90E
0x8b92c LDR             R0, [R4,#0x34]
0x8b92e CMP             R0, #0
0x8b930 BEQ             loc_8B93C
0x8b932 LDR             R3, =unk_14032FC
0x8b934 BL              sub_8BDE8
0x8b938 MOVS            R3, #0
0x8b93a STR             R3, [R4,#0x34]
0x8b93c MOVS            R3, #0
0x8b93e STR             R3, [R4,#0x34]
0x8b940 STR             R3, [R4,#0x38]
0x8b942 B               loc_8B968
0x8b944 LDR             R0, [R0,#0x6C]
0x8b946 CMP             R0, #0
0x8b948 BEQ             loc_8B956
0x8b94a LDR             R3, =unk_14032FC
0x8b94c BL              sub_8BDE8
0x8b950 MOVS            R3, #0
0x8b952 STR             R3, [R4,#0x6C]
0x8b954 STR             R3, [R4,#0x70]
0x8b956 LDR             R0, [R4,#0x64]
0x8b958 CMP             R0, #0
0x8b95a BEQ             loc_8B968
0x8b95c LDR             R3, =unk_14032FC
0x8b95e BL              sub_8BDE8
0x8b962 MOVS            R3, #0
0x8b964 STR             R3, [R4,#0x64]
0x8b966 STR             R3, [R4,#0x68]
0x8b968 MOVS            R0, R4
0x8b96a BL              sub_8B35C
0x8b96e MOVS            R0, R4
0x8b970 ADDS            R0, #8
0x8b972 LDR             R3, =0x8BE2D
0x8b974 BL              sub_8BDE8
0x8b978 POP             {R4,R5}
0x8b97a POP             {R0}
0x8b97c BX              R0