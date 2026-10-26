int __fastcall sub_64E0(int a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5)
{
  int v6; // r12
  int v7; // r4
  __int16 v8; // r7
  int v9; // r2
  __int16 v10; // r6
  int i; // r1
  __int16 v12; // r3
  signed __int16 v13; // r3
  __int16 v14; // r3
  __int16 v15; // lr
  signed __int16 v16; // lr
  __int16 v17; // lr
  __int16 v18; // r1

  if ( !*(_DWORD *)(a1 + 20) )
    return 7;
  v6 = a4;
  v7 = (__int16)(3 - 2 * a4);
  v8 = *(_WORD *)(a1 + 14) + a3;
  v9 = 0;
  v10 = *(_WORD *)(a1 + 12) + a2;
  while ( v9 <= v6 )
  {
    for ( i = 0; i < 8; i = (__int16)(i + 1) )
    {
      if ( (i & 1) != 0 )
      {
        if ( i < 4 )
          v12 = v9;
        else
          v12 = v6;
        v13 = v10 - v12;
      }
      else
      {
        if ( i < 4 )
          v14 = v9;
        else
          v14 = v6;
        v13 = v14 + v10;
      }
      if ( (i & 2) != 0 )
      {
        if ( i < 4 )
          v15 = v6;
        else
          v15 = v9;
        v16 = v8 - v15;
      }
      else
      {
        if ( i < 4 )
          v17 = v6;
        else
          v17 = v9;
        v16 = v17 + v8;
      }
      if ( *(unsigned __int16 *)(a1 + 4) <= v13
        && *(unsigned __int16 *)(a1 + 8) > v13
        && *(unsigned __int16 *)(a1 + 6) <= v16
        && *(unsigned __int16 *)(a1 + 10) > v16 )
      {
        *(_WORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 4 * v16) + 2 * v13) = a5;
      }
    }
    if ( v7 < 0 )
      v18 = v7 + 4 * v9 + 6;
    else
      v18 = v7 + 4 * (v9 - v6);
    if ( v7 >= 0 )
    {
      v18 += 10;
      v6 = (v6 - 1) << 16;
    }
    v9 = (__int16)(v9 + 1);
    if ( v7 >= 0 )
      v6 >>= 16;
    v7 = v18;
  }
  return 0;
}

