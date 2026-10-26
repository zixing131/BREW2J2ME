int sub_1F94()
{
  _BYTE v1[10]; // [sp+Ah] [bp-Ah] BYREF
  _DWORD savedregs[5]; // [sp+14h] [bp+0h]

  if ( byte_1501E14 )
  {
    sub_6D00(v1, 0, 10, 576028);
    sub_6D02(dword_1501C14 - 80, dword_1501BFC - 70, 160, 140, -256);
    sub_6D02(dword_1501C14 - 79, dword_1501BFC - 69, 158, 138, 0);
    qmemcpy(v1, "LVNAS", 5);
    sub_6D06(dword_1501C14, dword_1501BFC - 60, dword_8CD44, 1, 0);
    sub_6D02(dword_1501C14, dword_1501BFC - 45, v1, 5, 1);
    sub_6D06(dword_1501C14, dword_1501BFC - 25, "LGT_WIPIC", 1, 0);
    sub_6D06(dword_1501C14, dword_1501BFC - 10, "QVGA(240)", 1, 0);
    sub_6D06(dword_1501C14, dword_1501BFC + 5, dword_8CD6C, 1, 0);
    sub_6D06(dword_1501C14, dword_1501BFC + 20, dword_8CD74, 1, 0);
    sub_6D06(dword_1501C14, dword_1501BFC + 50, "2010_0416_1338", 1, 0);
    sub_6D06(dword_1501C14, dword_1501BFC + 35, dword_8CD90, 1, 0);
  }
  return savedregs[4];
}
