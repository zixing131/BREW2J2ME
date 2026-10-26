BOOL __fastcall sub_21508(int a1, signed int a2, int a3, int *a4, int *a5)
{
  bool v6; // nf
  bool v7; // cc
  unsigned int v8; // r1
  int v10; // r0
  int v11; // r0

  v6 = a2 < 0;
  v7 = a2 <= 0;
  v8 = a3 << 16;
  if ( v6 )
  {
    v10 = sub_104(a2, v8);
    if ( *a5 >= v10 )
    {
      if ( *a4 < v10 )
        *a4 = v10;
      return 1;
    }
    return 0;
  }
  if ( !v7 )
  {
    v11 = sub_104(a2, v8);
    if ( *a4 <= v11 )
    {
      if ( *a5 > v11 )
        *a5 = v11;
      return 1;
    }
    return 0;
  }
  return a3 >= 0;
}

