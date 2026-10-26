int __fastcall sub_70314(unsigned __int16 a1, int a2, int a3)
{
  int v3; // r4
  int v4; // r7
  unsigned int v5; // r5
  int v6; // r6

  v3 = a1;
  v4 = dword_1535F34;
  v5 = a2 << 16;
  v6 = sub_71334(a1 + 3, a2, a3, &unk_14032EC);
  sub_71334(v6, 0, v3 + 1, &unk_140329C);
  sub_71334(v6, v4 + HIWORD(v5), v3, &unk_140327C);
  return v6;
}
