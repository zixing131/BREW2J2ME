int __fastcall sub_6A62C(int a1, const char *a2, const char *a3, const char *a4, int a5, int a6, int a7)
{
  _BYTE v10[100]; // [sp+8h] [bp-64h] BYREF
  _DWORD savedregs[5]; // [sp+6Ch] [bp+0h]

  sub_6BB38(v10, "%s %s", a3, a4);
  sub_6BB38(a1, a2, v10, a5, a6, a7);
  return savedregs[4];
}
