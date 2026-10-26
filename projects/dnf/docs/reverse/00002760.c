int __fastcall sub_2760(int a1, const char *a2, int a3)
{
  int v3; // r0
  _BYTE v5[8]; // [sp+20h] [bp-8h] BYREF
  _DWORD savedregs[5]; // [sp+28h] [bp+0h]

  sub_6D00(v5, a2, a3, 183577);
  sub_6D02(dword_1501C14, dword_1501BFC, &unk_1537760, 5, 0);
  sub_6D02(dword_1501C14, dword_1501BFC - 24, 100, dword_8CDA4, 15);
  sub_6D08(dword_1501C14 - 30, dword_1501BFC + 30);
  sub_6D08(dword_1501C14 + 30, dword_1501BFC + 30);
  if ( dword_1501C58 )
    v3 = dword_1501C14 + 30;
  else
    v3 = dword_1501C14 - 30;
  sub_6D08(v3, dword_1501BFC + 30);
  sub_6D02(dword_1501C14 - 30, dword_1501BFC + 32, &dword_8CDE0, 1, 0);
  sub_6D02(dword_1501C14 + 30, dword_1501BFC + 32, dword_8CDE4, 1, 0);
  return savedregs[4];
}
