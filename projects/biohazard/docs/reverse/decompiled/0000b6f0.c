int __fastcall sub_B6F0(int a1, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, int a7)
{
  int result; // r0
  bool v10; // zf
  __int16 v13; // r7
  __int16 v14; // lr
  int v15; // r1
  int v16; // r2
  __int16 v17; // r12
  __int16 v18; // lr
  int v19; // r0
  __int16 v20; // r3
  __int16 v21; // r10
  int i; // r6
  __int16 v23; // r7
  signed __int16 v24; // r7
  __int16 v25; // r7
  __int16 v26; // r8
  signed __int16 v27; // r8
  __int16 v28; // r8
  bool v29; // nf
  int v30; // [sp+18h] [bp-4h]

  result = *(_DWORD *)(a1 + 20);
  v10 = result == 0;
  if ( !result )
    result = 7;
  if ( !v10 )
  {
    v30 = (__int16)(a4 - 2 * a6);
    sub_10C58(a1, (__int16)(a2 + a6), a3, v30, 1, 0, a7, 0);
    sub_10C58(a1, (__int16)(a2 + a6), a3 + a5, v30, 1, 0, a7, 0);
    sub_10C58(a1, a2, a3 + a6, 1, (__int16)(a5 - 2 * a6), 0, a7, 0);
    sub_10C58(a1, (__int16)(a2 + a4), a3 + a6, 1, (__int16)(a5 - 2 * a6), 0, a7, 0);
    v13 = *(_WORD *)(a1 + 12) + a2;
    v14 = *(_WORD *)(a1 + 14) + a3;
    v15 = a6;
    v16 = (__int16)(3 - 2 * a6);
    v17 = v14 + a5 - a6;
    v18 = v14 + a6;
    v19 = 0;
    v20 = v13 + a4 - a6;
    v21 = v13 + a6;
    while ( v19 <= v15 )
    {
      for ( i = 0; i < 8; i = (__int16)(i + 1) )
      {
        if ( (i & 1) != 0 )
        {
          if ( i < 4 )
            v23 = v19;
          else
            v23 = v15;
          v24 = v21 - v23;
        }
        else
        {
          if ( i < 4 )
            v25 = v19;
          else
            v25 = v15;
          v24 = v20 + v25;
        }
        if ( (i & 2) != 0 )
        {
          if ( i < 4 )
            v26 = v15;
          else
            v26 = v19;
          v27 = v18 - v26;
        }
        else
        {
          if ( i < 4 )
            v28 = v15;
          else
            v28 = v19;
          v27 = v17 + v28;
        }
        if ( *(unsigned __int16 *)(a1 + 4) <= v24
          && *(unsigned __int16 *)(a1 + 8) > v24
          && *(unsigned __int16 *)(a1 + 6) <= v27
          && *(unsigned __int16 *)(a1 + 10) > v27 )
        {
          *(_WORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 4 * v27) + 2 * v24) = a7;
        }
      }
      v29 = v16 < 0;
      if ( v16 < 0 )
        LOWORD(v16) = v16 + 4 * v19 + 6;
      else
        LOWORD(v16) = v16 + 4 * (v19 - v15) + 10;
      LOWORD(v19) = v19 + 1;
      if ( !v29 )
        v15 = (v15 - 1) << 16;
      v16 = (__int16)v16;
      v19 = (__int16)v19;
      if ( !v29 )
        v15 >>= 16;
    }
    return 0;
  }
  return result;
}

