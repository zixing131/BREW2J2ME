0x1700 PUSH            {R4-R7,LR}
0x1702 SUB             SP, SP, #0xAC
0x1704 LDR             R4, =0x8C9DC
0x1706 LDR             R1, =0x8CD3D
0x1708 MOVS            R2, #4
0x170a ADD             R0, SP, #0xAC+var_4
0x170c BL              sub_1B42
0x1710 LDR             R1, =0x8CD39
0x1712 MOVS            R2, #4
0x1714 ADD             R0, SP, #0xAC+var_8
0x1716 BL              sub_1B42
0x171a MOV             R0, SP
0x171c MOVS            R2, #0xB
0x171e LDR             R1, =0x8CD2E
0x1720 ADDS            R0, #0x99
0x1722 BL              sub_1B42
0x1726 MOVS            R0, #0
0x1728 LDR             R3, =0x721F1
0x172a BL              sub_1B40
0x172e LDR             R1, =0x62B01
0x1730 STR             R1, [SP,#0xAC+var_94]
0x1732 BL              sub_1B3C
0x1736 LDR             R3, =0x1FEAD
0x1738 BL              sub_1B40
0x173c LDR             R3, =0x1FDDD
0x173e BL              sub_1B40
0x1742 LDR             R3, =0x1FD89
0x1744 BL              sub_1B40
0x1748 LDR             R3, =0x1FD3D
0x174a BL              sub_1B40
0x174e LDR             R3, =0x20165
0x1750 BL              sub_1B40
0x1754 LDR             R3, =byte_150D760
0x1756 LDRB            R2, [R3]
0x1758 LSLS            R3, R2, #1
0x175a LDR             R1, =unk_1501C8C
0x175c ADDS            R3, R3, R2
0x175e LSLS            R3, R3, #2
0x1760 ADDS            R3, R3, R1
0x1762 LDR             R1, =0x234D5
0x1764 LDRB            R3, [R3,#1]
0x1766 LSLS            R3, R3, #0x18
0x1768 ASRS            R3, R3, #0x18
0x176a STR             R1, [SP,#0xAC+var_98]
0x176c LDR             R1, =0x79FB1
0x176e STR             R1, [SP,#0xAC+var_9C]
0x1770 LDR             R1, =0x7ADDD
0x1772 STR             R1, [SP,#0xAC+var_A0]
0x1774 LDR             R1, =0x76145
0x1776 LDR             R2, =0x6D0ED
0x1778 LDR             R5, =0x6CF2D
0x177a LDR             R6, =unk_1533768
0x177c LDR             R7, =0x6E441
0x177e LDR             R4, =dword_1501D90
0x1780 STR             R1, [SP,#0xAC+var_A4]
0x1782 ADDS            R3, #1
0x1784 BEQ             loc_1788
0x1786 B               loc_18EA
0x1788 MOVS            R0, #0
0x178a BL              sub_1B3E
0x178e MOVS            R0, #1
0x1790 BL              sub_1B44
0x1794 MOVS            R1, R6
0x1796 LDR             R0, =0xB06F
0x1798 BL              sub_1B46
0x179c LDR             R2, [SP,#0xAC+var_98]
0x179e BL              sub_1B3E
0x17a2 LDR             R3, =0x24021
0x17a4 BL              sub_1B40
0x17a8 LDR             R3, =0x24F8D
0x17aa BL              sub_1B40
0x17ae LDR             R1, [R4]
0x17b0 MOVS            R3, #0xFA
0x17b2 MOVS            R2, #0x28 ; '('
0x17b4 LSLS            R3, R3, #1
0x17b6 STRB            R2, [R1,R3]
0x17b8 LDR             R3, [R4]
0x17ba LDR             R0, [R3,#0x10]
0x17bc MOVS            R3, #5
0x17be STR             R3, [R0,#0x1C]
0x17c0 LDR             R3, =0x806B1
0x17c2 BL              sub_1B40
0x17c6 LDR             R3, [R4]
0x17c8 LDR             R0, [R3,#0x10]
0x17ca LDR             R3, [SP,#0xAC+var_9C]
0x17cc BL              sub_1B40
0x17d0 LDR             R1, [SP,#0xAC+var_A0]
0x17d2 BL              sub_1B3C
0x17d6 LDR             R2, [SP,#0xAC+var_94]
0x17d8 BL              sub_1B3E
0x17dc LDR             R3, [R4]
0x17de LDR             R0, [R3,#0x10]
0x17e0 MOVS            R1, #0
0x17e2 ADDS            R0, #0x44 ; 'D'
0x17e4 MOVS            R2, #1
0x17e6 LDR             R3, [SP,#0xAC+var_A4]
0x17e8 BL              sub_1B40
0x17ec MOVS            R5, #0
0x17ee MOVS            R6, #0
0x17f0 LDR             R3, =dword_1501D90
0x17f2 LDR             R3, [R3]
0x17f4 LDR             R0, [R3,#0x10]
0x17f6 LDR             R1, =0x146C
0x17f8 ADDS            R3, R6, R0
0x17fa ADDS            R3, R3, R1
0x17fc LDRB            R1, [R3,#2]
0x17fe CMP             R1, #0xFF
0x1800 BEQ             loc_180C
0x1802 MOVS            R2, R5
0x1804 MOVS            R3, #0
0x1806 LDR             R4, =0x7ADF1
0x1808 BL              sub_1B42
0x180c ADDS            R5, #1
0x180e ADDS            R6, #0x68 ; 'h'
0x1810 CMP             R5, #0xD
0x1812 BNE             loc_17F0
0x1814 LDR             R4, =0x62B01
0x1816 BL              sub_1B42
0x181a LDR             R3, =0x1FDDD
0x181c BL              sub_1B40
0x1820 LDR             R3, =0x20EBD
0x1822 BL              sub_1B40
0x1826 LDR             R3, =0x2112D
0x1828 BL              sub_1B40
0x182c LDR             R3, =0x209F9
0x182e BL              sub_1B40
0x1832 LDR             R3, =0x20885
0x1834 BL              sub_1B40
0x1838 LDR             R3, =0x20719
0x183a BL              sub_1B40
0x183e BL              sub_1B42
0x1842 MOVS            R0, #0
0x1844 BL              sub_14AC
0x1848 BL              sub_1584
0x184c MOVS            R2, #0
0x184e STR             R2, [SP,#0xAC+var_90]
0x1850 STR             R2, [SP,#0xAC+var_A8]
0x1852 ADD             R7, SP, #0xAC+var_50
0x1854 MOVS            R1, #0
0x1856 MOVS            R2, #0x3C ; '<'
0x1858 LDR             R3, =unk_140329C
0x185a MOVS            R0, R7
0x185c BL              sub_1B40
0x1860 LDR             R1, [SP,#0xAC+var_90]
0x1862 ADD             R3, SP, #0xAC+var_4
0x1864 LDRB            R5, [R1,R3]
0x1866 ADD             R3, SP, #0xAC+var_8
0x1868 LDRB            R3, [R1,R3]
0x186a ADD             R6, SP, #0xAC+var_8C
0x186c STR             R3, [SP,#0xAC+var_AC]
0x186e MOVS            R0, R6
0x1870 MOVS            R1, R5
0x1872 MOVS            R2, R5
0x1874 LDR             R4, =0x8175D
0x1876 BL              sub_1B42
0x187a MOVS            R1, R6
0x187c MOVS            R2, #0x3C ; '<'
0x187e LDR             R3, =0x8C9DC
0x1880 MOVS            R0, R7
0x1882 BL              sub_1B40
0x1886 MOVS            R0, R7
0x1888 LDR             R3, =0x81329
0x188a BL              sub_1B40
0x188e MOV             R3, SP
0x1890 ADDS            R3, #0x99
0x1892 LDR             R4, =dword_1501D90
0x1894 LDR             R2, [SP,#0xAC+var_A8]
0x1896 LDRB            R0, [R3,R5]
0x1898 MOVS            R3, #0x1F8
0x189c ADDS            R1, R2, R3
0x189e LDR             R3, [R4]
0x18a0 ADDS            R1, R1, R3
0x18a2 LDR             R3, =0x81105
0x18a4 BL              sub_1B40
0x18a8 LDR             R1, [SP,#0xAC+var_A8]
0x18aa LDR             R3, [R4]
0x18ac MOVS            R2, #0x80
0x18ae ADDS            R3, R1, R3
0x18b0 LSLS            R2, R2, #2
0x18b2 ADDS            R3, R3, R2
0x18b4 MOVS            R2, #1
0x18b6 STRB            R2, [R3,#2]
0x18b8 LDR             R3, [SP,#0xAC+var_90]
0x18ba ADDS            R1, #0x3C ; '<'
0x18bc ADDS            R3, #1
0x18be STR             R3, [SP,#0xAC+var_90]
0x18c0 STR             R1, [SP,#0xAC+var_A8]
0x18c2 CMP             R3, #4
0x18c4 BNE             loc_1852
0x18c6 LDR             R3, [R4]
0x18c8 MOVS            R1, #0x3E8
0x18cc LDR             R0, [R3,#0x10]
0x18ce LDR             R3, =0x7CF21
0x18d0 BL              sub_1B40
0x18d4 MOVS            R0, #0x64 ; 'd'
0x18d6 LDR             R3, =0x3592D
0x18d8 BL              sub_1B40
0x18dc LDR             R3, =0x62B01
0x18de BL              sub_1B40
0x18e2 LDR             R3, =0xADF5
0x18e4 BL              sub_1B40
0x18e8 B               loc_19B4
0x18ea MOVS            R0, #0
0x18ec BL              sub_1B3E
0x18f0 MOVS            R0, #1
0x18f2 BL              sub_1B44
0x18f6 MOVS            R1, R6
0x18f8 LDR             R0, =0xB06F
0x18fa BL              sub_1B46
0x18fe BL              sub_1584
0x1902 MOVS            R0, #4
0x1904 LDR             R3, =0x6CCE9
0x1906 BL              sub_1B40
0x190a LDR             R1, [SP,#0xAC+var_98]
0x190c BL              sub_1B3C
0x1910 LDR             R3, [R4]
0x1912 LDR             R2, [SP,#0xAC+var_9C]
0x1914 LDR             R0, [R3,#0x10]
0x1916 BL              sub_1B3E
0x191a LDR             R3, [SP,#0xAC+var_A0]
0x191c BL              sub_1B40
0x1920 LDR             R3, [R4]
0x1922 LDR             R0, [R3,#0x10]
0x1924 MOVS            R1, #0
0x1926 ADDS            R0, #0x44 ; 'D'
0x1928 MOVS            R2, #1
0x192a LDR             R3, [SP,#0xAC+var_A4]
0x192c BL              sub_1B40
0x1930 MOVS            R5, #0
0x1932 MOVS            R6, #0
0x1934 LDR             R3, =dword_1501D90
0x1936 LDR             R3, [R3]
0x1938 LDR             R0, [R3,#0x10]
0x193a LDR             R1, =0x146C
0x193c ADDS            R3, R6, R0
0x193e ADDS            R3, R3, R1
0x1940 LDRB            R1, [R3,#2]
0x1942 CMP             R1, #0xFF
0x1944 BEQ             loc_1950
0x1946 MOVS            R2, R5
0x1948 MOVS            R3, #0
0x194a LDR             R4, =0x7ADF1
0x194c BL              sub_1B42
0x1950 ADDS            R5, #1
0x1952 ADDS            R6, #0x68 ; 'h'
0x1954 CMP             R5, #0xD
0x1956 BNE             loc_1934
0x1958 LDR             R3, =0x20EBD
0x195a BL              sub_1B40
0x195e LDR             R3, =0x2112D
0x1960 BL              sub_1B40
0x1964 LDR             R3, =0x209F9
0x1966 BL              sub_1B40
0x196a LDR             R3, =0x20885
0x196c BL              sub_1B40
0x1970 LDR             R3, =0x20719
0x1972 BL              sub_1B40
0x1976 LDR             R3, =0x2317D
0x1978 BL              sub_1B40
0x197c LDR             R4, =0x62B01
0x197e BL              sub_1B42
0x1982 MOVS            R0, #0
0x1984 BL              sub_14AC
0x1988 BL              sub_1B42
0x198c LDR             R3, =0xADF5
0x198e BL              sub_1B40
0x1992 LDR             R3, =0x39579
0x1994 BL              sub_1B40
0x1998 LDR             R3, =0x2E9ED
0x199a BL              sub_1B40
0x199e BL              sub_1B42
0x19a2 LDR             R3, =0x2BCC1
0x19a4 BL              sub_1B40
0x19a8 MOVS            R0, #1
0x19aa MOVS            R1, #0
0x19ac MOVS            R2, #0
0x19ae MOVS            R3, #0
0x19b0 BL              sub_1404
0x19b4 LDR             R3, =dword_1501D90
0x19b6 LDR             R3, [R3]
0x19b8 LDR             R3, [R3,#0x10]
0x19ba MOVS            R2, #0
0x19bc ADDS            R3, #0x38 ; '8'
0x19be STRB            R2, [R3]
0x19c0 LDR             R3, =0x2CB75
0x19c2 BL              sub_1B40
0x19c6 LDR             R3, =0x62B01
0x19c8 BL              sub_1B40
0x19cc LDR             R3, =0x2E4B5
0x19ce BL              sub_1B40
0x19d2 LDR             R3, =0x2E505
0x19d4 BL              sub_1B40
0x19d8 ADD             SP, SP, #0xAC
0x19da POP             {R4-R7}
0x19dc POP             {R0}
0x19de BX              R0