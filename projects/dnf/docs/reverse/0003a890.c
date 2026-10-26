int __fastcall sub_3A890(int a1)
{
  unsigned int v1; // r5
  int v2; // r0
  int v3; // r1
  int v4; // r0
  int v5; // r1
  int savedregs_8; // [sp+8h] [bp+8h]

  v1 = a1 << 16;
  if ( (__int16)a1 == 463 )
  {
    byte_15340F4 = 0;
    v2 = sub_34410();
    byte_153407D = -1;
    byte_153407E = 0;
    byte_15340F5 = 0;
    sub_30ADC(v2);
  }
  sub_3587C(HIWORD(v1));
  sub_3A264(HIWORD(v1));
  v4 = sub_66A76(HIWORD(v1), v3);
  sub_66A76(v4, v5);
  return savedregs_8;
}
