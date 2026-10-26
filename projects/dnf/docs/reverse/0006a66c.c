int __fastcall sub_6A66C(int a1, const char *a2, const char *a3, int a4, int a5, int a6, int a7)
{
  _BYTE v10[40]; // [sp+8h] [bp-28h] BYREF
  _DWORD savedregs[5]; // [sp+30h] [bp+0h]

  sub_6BB38(v10, "%s %d", a3, a4);
  sub_6BB38(a1, a2, v10, a5, a6, a7);
  return savedregs[4];
}
