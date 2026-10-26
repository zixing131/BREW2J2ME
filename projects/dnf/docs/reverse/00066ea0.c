int sub_66EA0()
{
  int result; // r0
  int v1; // r5
  int v2; // r0

  result = dword_1535C38;
  if ( dword_1535C38 )
  {
    dword_1535C38 = 0;
    if ( result <= 0 )
      v1 = result + 1;
    else
      v1 = result - 1;
    if ( v1 )
    {
      if ( v1 <= 0 )
        v2 = v1 + sub_66D8C(1);
      else
        v2 = v1 - sub_66D8C(1);
      dword_1535C3C = v2;
      if ( v2 * v1 < 0 )
        dword_1535C3C = 0;
      return 1;
    }
    else
    {
      dword_1535C3C = 0;
      return 0;
    }
  }
  return result;
}
