int __fastcall sub_704E8(int a1, int a2, int a3)
{
  int *v3; // r7
  int v4; // r5
  int i; // r6
  int v6; // r4
  int savedregs_16; // [sp+10h] [bp+10h]

  v3 = (int *)&unk_1536348;
  v4 = a1 + 12;
  for ( i = 0; i < (unsigned __int8)byte_15364FD; ++i )
  {
    v6 = sub_71334(626, a2, a3, &unk_14032EC);
    sub_71334(v6, 0, 624, &unk_140329C);
    sub_71334(v6, v4, 36, &unk_140327C);
    *v3++ = v6;
    v4 += 36;
  }
  return savedregs_16;
}
