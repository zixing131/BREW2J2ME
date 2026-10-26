00000394  PUSH            {R4,LR}
00000398  BLX             sub_3B0
0000039c  CMP             R0, #0
000003a0  POPEQ           {R4,LR}
000003a4  BXEQ            LR
000003a8  POP             {R4,LR}
000003ac  B               sub_3F8
