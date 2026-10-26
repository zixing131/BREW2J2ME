int __fastcall sub_6A9C8(int a1, int a2, int a3, int a4)
{
  _DWORD v5[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD v6[2]; // [sp+8h] [bp-8h] BYREF
  _DWORD savedregs[2]; // [sp+10h] [bp+0h]

  v6[0] = a1;
  v6[1] = a3;
  v5[0] = a2;
  v5[1] = a3;
  sub_6BB38(0, (const char *)v6, v5, a4);
  return savedregs[1];
}
