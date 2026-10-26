int __fastcall sub_22FD8(int a1)
{
  int result; // r0
  int i; // r0
  int v4; // r3
  int j; // r0
  int v6; // r12
  unsigned __int16 *v7; // r0
  int v8; // lr
  _BYTE *v9; // r0
  int k; // r1
  unsigned int v11; // r2
  int v12; // r0
  int v13; // r12
  int v14; // r1
  int v15; // r12
  int v16; // r1
  int v17; // kr04_4
  int v18; // r12
  int v19; // r12
  int v20; // r12
  int v21; // r0
  int v22; // r1

  result = *(_DWORD *)(a1 + 2200);
  if ( result )
  {
    for ( i = 0; i < 40; ++i )
    {
      v4 = 3 * i;
      *(_BYTE *)(*(_DWORD *)(a1 + 2200) + 16 * v4 + 108) = 0;
    }
    for ( j = 0; j < 100; ++j )
    {
      v6 = 7 * j;
      *(_BYTE *)(*(_DWORD *)(a1 + 2200) + 8 * v6 + 2016) = 0;
    }
    v7 = *(unsigned __int16 **)(a1 + 2200);
    v8 = 2 * v7[1] * 2 * *v7;
    v9 = (_BYTE *)**((_DWORD **)v7 + 10);
    for ( k = 0; k < v8; ++k )
      *v9++ &= 0xF3u;
    v11 = 0;
    while ( 1 )
    {
      v22 = *(_DWORD *)(a1 + 2200);
      if ( *(_DWORD *)(v22 + 52) <= v11 )
        break;
      v12 = *(_DWORD *)(v22 + 56) + 76 * v11;
      v13 = *(unsigned __int16 *)(v12 + 20);
      v14 = *(_DWORD *)(a1 + 2188);
      *(_DWORD *)(v12 + 4) = 0;
      ++v11;
      *(_WORD *)(v12 + 56) = *(_DWORD *)(v14 + 84 * v13 + 76);
      *(_WORD *)(v12 + 58) = *(_WORD *)(v12 + 22);
      v15 = *(__int16 *)(v12 + 24);
      *(_WORD *)(v12 + 60) = v15;
      v16 = *(__int16 *)(v12 + 26);
      *(_WORD *)(v12 + 62) = v16;
      *(_BYTE *)(v12 + 64) = 0;
      *(_WORD *)(v12 + 68) = 0;
      *(_BYTE *)(v12 + 72) = 0;
      *(_BYTE *)(v12 + 73) = 0;
      v17 = v15 - 8;
      v18 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 2200) + 40) + 4 * ((v16 - 8) / 16));
      *(_BYTE *)(v18 + v17 / 16) |= 4u;
      v19 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 2200) + 40) + 4 * ((v16 - 8) / 16) + 4);
      *(_BYTE *)(v19 + v17 / 16) |= 4u;
      v20 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 2200) + 40) + 4 * ((v16 - 8) / 16)) + v17 / 16;
      *(_BYTE *)(v20 + 1) |= 4u;
      v21 = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 2200) + 40) + 4 * ((v16 - 8) / 16) + 4) + v17 / 16;
      *(_BYTE *)(v21 + 1) |= 4u;
    }
    sub_2350C(a1 + 2088);
    return sub_21FB4(a1, 0);
  }
  return result;
}

