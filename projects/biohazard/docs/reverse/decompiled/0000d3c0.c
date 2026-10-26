int __fastcall sub_D3C0(int a1, int a2, __int16 a3, __int16 a4, int a5, int a6, int a7, unsigned int a8)
{
  unsigned __int8 v12; // r0

  v12 = sub_1DC(5u, 32 * (a8 >> 11));
  sub_11430(
    a1,
    (__int16)(a3 - 4),
    (__int16)(a4 - 3),
    (__int16)(a5 + 4),
    (__int16)(a6 + 4),
    1,
    0,
    (v12 >> 3 << 11) | (32 * (a8 << 21 >> 27)) | ((3 * (unsigned int)(unsigned __int8)(4 * (a8 >> 5))) >> 5),
    (v12 >> 3 << 11) | (32 * (a8 << 21 >> 27)) | ((3 * (unsigned int)(unsigned __int8)(4 * (a8 >> 5))) >> 5));
  sub_11430(a1, (__int16)(a3 - 3), (__int16)(a4 - 2), (__int16)(a5 + 2), (__int16)(a6 + 2), 1, 0, a8, a8);
  return sub_11430(a1, (__int16)(a3 - 2), (__int16)(a4 - 1), a5, a6, 1, 0, a7, a7);
}

