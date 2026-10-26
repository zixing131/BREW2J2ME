int __fastcall sub_11430(
        int a1,
        int a2,
        __int16 a3,
        __int16 a4,
        __int16 a5,
        __int16 a6,
        unsigned int a7,
        int a8,
        unsigned int a9)
{
  int v11; // r5
  int v12; // r6
  int i; // r4
  __int16 v14; // [sp+1Ch] [bp-20h]
  __int16 v15; // [sp+20h] [bp-1Ch]
  __int16 v16; // [sp+24h] [bp-18h]
  __int16 v17; // [sp+28h] [bp-14h]

  if ( !*(_DWORD *)(a1 + 20) )
    return 7;
  v17 = a3 + a6;
  sub_10C58(a1, a2, a3 + a6 + 1, a4, (__int16)(a5 - 2 * a6 - 1), a7, a9, 0);
  v16 = a3 + a5 - a6;
  v11 = a6;
  v15 = a2 + a6;
  v12 = (__int16)(3 - 2 * a6);
  v14 = a4 - 2 * a6;
  for ( i = 0; i <= v11; i = (__int16)(i + 1) )
  {
    sub_109D0(a1, (__int16)(v15 - v11), v17 - i, (__int16)(v14 + 2 * v11), a7, a9);
    sub_109D0(a1, (__int16)(v15 - v11), v16 + i, (__int16)(v14 + 2 * v11), a7, a9);
    if ( v12 >= 0 )
    {
      v12 = (__int16)(v12 + 4 * (i - v11) + 10);
      if ( i < v11 )
      {
        sub_109D0(a1, (__int16)(v15 - i), v17 - v11, (__int16)(v14 + 2 * i), a7, a9);
        sub_109D0(a1, (__int16)(v15 - i), v16 + v11, (__int16)(v14 + 2 * i), a7, a9);
      }
      v11 = (__int16)(v11 - 1);
    }
    else
    {
      v12 = (__int16)(v12 + 4 * i + 6);
    }
  }
  if ( (a7 & 1) != 0 )
    sub_B6F0(a1, a2, a3, a4, a5, a6, a8);
  return 0;
}

