int __fastcall sub_6A508(int a1, int a2, int a3, int a4, int a5, int a6)
{
  _BYTE v10[20]; // [sp+8h] [bp-14h] BYREF
  _DWORD savedregs[5]; // [sp+1Ch] [bp+0h]

  sub_6BB36(v10, "%d%%", a3);
  sub_6BB38(a1, a2, v10, a4, a5, a6);
  return savedregs[4];
}
