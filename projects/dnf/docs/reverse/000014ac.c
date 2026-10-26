int __fastcall sub_14AC(int a1)
{
  unsigned int v1; // r4
  int v2; // r0
  int savedregs_4; // [sp+4h] [bp+4h]

  v1 = a1 << 24;
  v2 = ((int (*)(void))sub_1B40)();
  sub_1B40(v2);
  sub_1B40(HIBYTE(v1));
  return savedregs_4;
}
