int __fastcall sub_66D8C(int a1)
{
  int v1; // r0
  int result; // r0

  if ( dword_1535AF4 > 15 )
  {
    if ( dword_1535AF4 > 30 )
      v1 = 8 * a1;
    else
      v1 = 6 * a1;
  }
  else
  {
    v1 = 3 * a1;
  }
  result = v1 / 2;
  if ( result <= 0 )
  {
    if ( dword_1535C38 + result < 1 - dword_1535AF4 )
      return -dword_1535AF4 - dword_1535C38 + 1;
  }
  else if ( dword_1535C38 + result > dword_1535AF4 - 1 )
  {
    return dword_1535AF4 - dword_1535C38 - 1;
  }
  return result;
}
