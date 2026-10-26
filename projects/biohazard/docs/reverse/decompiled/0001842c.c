int __fastcall sub_1842C(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  unsigned int v6; // r0
  unsigned int v7; // r1
  int result; // r0
  unsigned int i; // r4

  v6 = sub_122FC(a1, a2);
  v7 = a1[17];
  if ( v7 <= v6 )
    return 2;
  if ( v6 + a3 > v7 )
    a3 = v7 - a2;
  for ( i = 0; i < a3; ++i )
  {
    result = sub_18498(a1, (unsigned __int16)(a3 + i));
    if ( result )
      return result;
  }
  return 0;
}

