int __fastcall sub_7035C(int a1, unsigned __int16 a2)
{
  int v2; // r6
  int v3; // r5
  int savedregs_16; // [sp+10h] [bp+10h]

  v2 = dword_1536348[a1];
  v3 = dword_1535F54 + a2;
  sub_71334(v2 + 40, 0, 528, &unk_140329C);
  sub_71336(v2 + 40, v3, 8);
  sub_71336(v2 + 48, v3 + 8, 52 * *(unsigned __int16 *)(v2 + 42));
  return savedregs_16;
}
