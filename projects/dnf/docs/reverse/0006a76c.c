int __fastcall sub_6A76C(int a1, const char *a2, const char *a3, int a4, int a5, int a6)
{
  _BYTE v9[40]; // [sp+4h] [bp-28h] BYREF
  _DWORD savedregs[5]; // [sp+2Ch] [bp+0h]

  sub_6BB38(v9, "%s%d", a3, a4);
  sub_6BB38(a1, a2, v9, a5, a6);
  return savedregs[4];
}
