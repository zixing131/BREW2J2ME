int __fastcall sub_66DE8(int a1)
{
  int v1; // r2

  if ( !a1 )
    return 0;
  v1 = dword_1535C3C;
  if ( dword_1535C3C < 0 )
    v1 = -dword_1535C3C;
  if ( v1 >= dword_1535AF4 - 1 )
    return 0;
  dword_1535C38 = 0;
  dword_1535C3C = sub_66D8C(a1);
  return 1;
}
