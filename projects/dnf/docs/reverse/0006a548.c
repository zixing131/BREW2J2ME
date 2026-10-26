int __fastcall sub_6A548(int a1, const char *a2, int a3, int a4, int a5, int a6)
{
  int v8; // r5
  int v9; // r0
  _BYTE v13[20]; // [sp+10h] [bp-14h] BYREF
  _DWORD savedregs[5]; // [sp+24h] [bp+0h]

  v8 = sub_6BB36(a3, (const char *)0xA);
  v9 = sub_6BB36(a3, (const char *)0xA);
  sub_6BB38(v13, "%d.%d%%", v8, v9);
  sub_6BB38(a1, a2, v13, a4, a5, a6);
  return savedregs[4];
}
