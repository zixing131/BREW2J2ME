int __fastcall sub_6A7E4(int a1, const char *a2, int a3, int a4, int a5)
{
  _BYTE v9[20]; // [sp+4h] [bp-14h] BYREF
  _DWORD savedregs[5]; // [sp+18h] [bp+0h]

  sub_6BB36(v9, "%d", a3);
  sub_6BB38(a1, a2, v9, a4, a5);
  return savedregs[4];
}
