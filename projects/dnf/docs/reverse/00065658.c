int __fastcall sub_65658(int a1, int a2, int a3)
{
  int v3; // r1
  int v4; // r0
  int v5; // r2
  int savedregs_4; // [sp+4h] [bp+4h]

  if ( !dword_1534738 && !dword_153473C )
    sub_66A76(42114, &dword_1534738, a3, 451649);
  sub_66A78(&unk_15340F8, 41004, 0);
  sub_66A78(&unk_15358F4, 41005, 0);
  if ( byte_150B1B8 == 1 )
    v3 = 46000;
  else
    v3 = 42051;
  v4 = sub_66A78(&unk_1533D18, v3, 0);
  sub_62B00(v4);
  sub_66A78(&unk_1535A30, 41006, 0);
  sub_66A78(&unk_15340D0, 42050, 0);
  sub_66A76(11, &unk_150D858, v5, sub_27758);
  return savedregs_4;
}
