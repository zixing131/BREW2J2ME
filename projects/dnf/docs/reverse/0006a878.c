int __fastcall sub_6A878(int a1, int a2, int a3, int a4, int a5)
{
  _DWORD v6[4]; // [sp+0h] [bp-10h] BYREF
  int savedregs; // [sp+10h] [bp+0h]

  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;
  sub_6BB36(0, (const char *)v6, a5, sub_67934);
  return savedregs;
}
