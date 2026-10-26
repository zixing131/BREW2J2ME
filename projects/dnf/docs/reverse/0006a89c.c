int __fastcall sub_6A89C(int a1, int a2, int a3, int a4, int a5, int a6)
{
  _DWORD v7[4]; // [sp+0h] [bp-10h] BYREF
  _DWORD savedregs[2]; // [sp+10h] [bp+0h]

  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  sub_6BB38(0, (const char *)v7, a5, a6);
  return savedregs[1];
}
