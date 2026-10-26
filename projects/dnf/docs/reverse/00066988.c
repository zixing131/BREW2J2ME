int __fastcall sub_66988(int a1)
{
  int v2; // r0
  int v3; // r0
  int savedregs_8; // [sp+8h] [bp+8h]

  sub_667C4();
  sub_65E20(a1);
  v2 = sub_62794(a1);
  sub_312D4(v2);
  if ( word_1500018 == 2 )
  {
    ++dword_1500050;
    v3 = ((int (*)(void))sub_66A76)();
    if ( !v3 )
    {
      ++dword_1500054;
      dword_1500050 = 0;
      v3 = ((int (*)(void))sub_66A76)();
    }
    if ( dword_1500054 > 10 )
    {
      sub_66A76(v3);
      dword_1500054 = 0;
      dword_1500050 = 0;
    }
  }
  return savedregs_8;
}
