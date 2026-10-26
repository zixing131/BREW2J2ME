int __fastcall sub_6254(__int16 *a1, int a2)
{
  __int16 *v2; // r8
  int result; // r0
  int i; // r4
  int v6; // r0
  int (*v7)(); // r9
  int v8; // r5
  char *v9; // r9

  v2 = a1 + 256;
  result = a1[270];
  for ( i = 0; result > i; i = (__int16)(i + 1) )
  {
    if ( LOBYTE(a1[4 * i + 271]) == a2 )
    {
      v6 = a1[400];
      v7 = off_6334;
      v8 = (__int16)(i + 1);
      if ( v6 > i )
        a1[400] = v6 - 1;
      v9 = (char *)v7 + 25256;
      while ( v2[14] > v8 )
      {
        (**(void (__fastcall ***)(int, int, int))&v9[-4])((int)&a1[4 * v8 + 267], (int)&a1[4 * v8 + 271], 8);
        v8 = (__int16)(v8 + 1);
      }
      --v2[14];
      if ( a1[399] == i )
        a1[399] = 0;
      result = a1[399];
      if ( result > i )
        a1[399] = --result;
      return result;
    }
  }
  return result;
}

