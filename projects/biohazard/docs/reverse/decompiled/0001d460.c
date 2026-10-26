int __fastcall sub_1D460(int a1, int a2)
{
  unsigned __int16 *v4; // r4
  int v5; // r8
  _WORD *v6; // r7
  int v7; // r10
  unsigned int v8; // r9
  int *v9; // r11
  int v10; // r0
  signed int v11; // r8
  int v12; // r1
  int v13; // r1
  signed int v15; // [sp+18h] [bp-44h]
  _BYTE v16[64]; // [sp+1Ch] [bp-40h] BYREF

  v4 = *(unsigned __int16 **)(a2 + 32);
  v5 = *(_DWORD *)(a2 + 36);
  v6 = *(_WORD **)((*(int (**)(void))(*(_DWORD *)((char *)off_1D6F4 + 0xFFFFFFFC + 119932) + 192))() + 44);
  sub_10C58((int)v4, 0, 0, (__int16)*v4, (__int16)v4[1], 0, 0, 0);
  v6[7] = *v4 >> 1;
  v6[8] = 235;
  sub_103F4(v6, 7, 8);
  v6[4] = 0;
  sub_21BA8(v6);
  sub_1CE08((int)v6, (int)v4, v5);
  sub_10C58((int)v4, 0, 0, (__int16)*v4, (__int16)v4[1], dword_1D6F8, 0, 0);
  if ( *(_WORD *)(a1 + 380) )
  {
    if ( *(_WORD *)(a1 + 380) == 1 )
    {
      sub_19618(*(int **)(a2 + 40), dword_1D6FC, (int)v16, 0x20u);
      v7 = dword_1D704;
      v8 = dword_1D700;
      sub_1A228(
        *(_DWORD *)(*(_DWORD *)(a2 + 40) + 100),
        (int)v4,
        (int)v16,
        -1,
        (__int16)((*v4 >> 1) - *(_WORD *)(*(_DWORD *)(*(_DWORD *)(a2 + 40) + 100) + 50)),
        (__int16)((v4[1] >> 1) - *(_WORD *)(*(_DWORD *)(*(_DWORD *)(a2 + 40) + 100) + 48)),
        0,
        17,
        dword_1D704,
        dword_1D700);
      v9 = *(int **)(a2 + 40);
      v10 = v9[25];
      v15 = (__int16)((*v4 >> 1) - 2 * *(_WORD *)(v10 + 50));
      v11 = (__int16)(*(_WORD *)(v10 + 48) + (v4[1] >> 1));
      if ( !*(_WORD *)(a1 + 382) )
      {
        sub_1DC(3u, *(_DWORD *)(a1 + 320));
        if ( !v12 )
          goto LABEL_7;
      }
      sub_19618(v9, dword_1D708, (int)v16, 0x20u);
      sub_1A228(*(_DWORD *)(*(_DWORD *)(a2 + 40) + 100), (int)v4, (int)v16, -1, v15, v11, 0, 17, v7, v8);
      if ( *(_WORD *)(a1 + 382) != 1 || (sub_1DC(3u, *(_DWORD *)(a1 + 320)), v13) )
      {
LABEL_7:
        sub_19618(*(int **)(a2 + 40), dword_1D70C, (int)v16, 0x20u);
        sub_1A228(
          *(_DWORD *)(*(_DWORD *)(a2 + 40) + 100),
          (int)v4,
          (int)v16,
          -1,
          (__int16)(*(_WORD *)(*(_DWORD *)(*(_DWORD *)(a2 + 40) + 100) + 50) + (*v4 >> 1)),
          v11,
          0,
          17,
          v7,
          v8);
      }
    }
  }
  else
  {
    sub_F7D0(a1, v4, v5, *(_DWORD *)(a2 + 40));
  }
  return 1;
}

