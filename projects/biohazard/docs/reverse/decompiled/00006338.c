int __fastcall sub_6338(int a1, int a2, int a3, __int16 a4, __int16 a5, int a6, int a7, int a8)
{
  int v11; // r8
  int i; // r4
  int v13; // r4
  __int16 j; // r0
  __int16 v15; // r8
  int result; // r0
  int v17; // r4
  int k; // r0
  int v19; // r8
  int v20; // r8

  v11 = sub_11DD8(a3, dword_64D4);
  if ( v11 )
  {
    for ( i = 1; i <= a6; i = (__int16)(i + 1) )
      sub_3324(a2, a4 + 10 * i - 10, a5, 8, *(__int16 *)(v11 + 2), (unsigned __int16 *)v11, 0, 0, 0, 0, 0);
  }
  v13 = sub_11DD8(a3, dword_64D8);
  if ( v13 )
  {
    for ( j = a6 + 1; ; j = v15 + 1 )
    {
      v15 = j;
      if ( j > a7 )
        break;
      sub_3324(a2, a4 + 10 * j - 10, a5, 8, *(__int16 *)(v13 + 2), (unsigned __int16 *)v13, 0, 0, 0, 0, 0);
    }
  }
  result = sub_11DD8(a3, dword_64DC);
  v17 = result;
  if ( result )
  {
    for ( k = a7 + 1; ; k = v20 + 1 )
    {
      v19 = k << 16;
      result = a8;
      v20 = v19 >> 16;
      if ( v20 > a8 )
        break;
      sub_3324(a2, a4 + 10 * v20 - 10, a5, 8, *(__int16 *)(v17 + 2), (unsigned __int16 *)v17, 0, 0, 0, 0, 0);
    }
  }
  return result;
}

