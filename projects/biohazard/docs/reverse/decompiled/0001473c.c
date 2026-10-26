BOOL __fastcall sub_1473C(int a1)
{
  int v2; // r1
  int v3; // r0

  if ( !a1 || !sub_14A90(a1) )
    return 0;
  v3 = *(unsigned __int8 *)(a1 + 213);
  switch ( v3 )
  {
    case 1:
      return sub_2171C(a1) != 0;
    case 2:
      return sub_2531C(a1) != 0;
    case 3:
      return sub_25418(a1) != 0;
  }
  return v3 == 5 && sub_15F8(a1, v2);
}

