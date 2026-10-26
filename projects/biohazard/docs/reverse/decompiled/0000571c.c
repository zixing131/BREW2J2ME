int __fastcall sub_571C(int a1, int a2, int a3, int a4)
{
  int v5; // r6
  int v6; // r5
  int v7; // r4

  v5 = a3 + 100;
  v6 = 0;
  v7 = 0;
  while ( v7 < a4 )
  {
    a2 = sub_104(0x64u, v5 * a2);
    v7 = (__int16)(v7 + 1);
    v6 += a2;
  }
  return v6;
}

