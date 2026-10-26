int __fastcall sub_10434(int a1, __int16 a2, __int16 a3, __int16 a4, char a5, __int16 a6)
{
  int v9; // r5
  int v10; // r6
  int i; // r4

  if ( !*(_DWORD *)(a1 + 20) )
    return 7;
  v9 = a4;
  v10 = (__int16)(3 - 2 * a4);
  for ( i = 0; i <= v9; i = (__int16)(i + 1) )
  {
    sub_109D0(a1);
    if ( i > 0 )
      sub_109D0(a1);
    if ( v10 >= 0 )
    {
      v10 = (__int16)(v10 + 4 * (i - v9) + 10);
      if ( i < v9 )
      {
        sub_109D0(a1);
        sub_109D0(a1);
      }
      v9 = (__int16)(v9 - 1);
    }
    else
    {
      v10 = (__int16)(v10 + 4 * i + 6);
    }
  }
  if ( (a5 & 1) != 0 )
    sub_64E0(a1, a2, a3, a4, a6);
  return 0;
}

