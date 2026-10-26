int __fastcall sub_8B31C(int a1, int a2, __int16 *a3, __int16 a4, int a5, int a6)
{
  __int16 *v6; // r4
  __int16 v7; // r1
  int i; // r2

  v6 = a3;
  a3[a6 - 1] = a4;
  sub_8BDE8(a2, a1, a5, &unk_140327C);
  v7 = *v6;
  for ( i = 0; i < a6; ++i )
    *v6++ -= v7;
  return a5;
}
