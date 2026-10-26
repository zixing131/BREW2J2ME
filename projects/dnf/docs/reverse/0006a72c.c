int __fastcall sub_6A72C(int a1, const char *a2, const char *a3, int a4, int a5)
{
  _BYTE v8[20]; // [sp+8h] [bp-14h] BYREF
  _DWORD savedregs[4]; // [sp+1Ch] [bp+0h]

  sub_6BB36(v8, a3, a4, &unk_14032CC);
  sub_6BB38(a1, a2, v8, a5, 0, -256);
  return savedregs[3];
}
