int __fastcall sub_6A97C(int a1, int a2, int a3, int a4, int a5)
{
  _DWORD v6[2]; // [sp+0h] [bp-10h] BYREF
  _DWORD v7[2]; // [sp+8h] [bp-8h] BYREF
  _DWORD savedregs[2]; // [sp+10h] [bp+0h]

  v7[0] = a1;
  v7[1] = a3;
  v6[0] = a2;
  v6[1] = a4;
  sub_6BB38(0, (const char *)v7, v6, a5);
  return savedregs[1];
}
