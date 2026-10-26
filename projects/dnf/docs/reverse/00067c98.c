int __fastcall sub_67C98(_DWORD *a1, int a2, int a3, __int16 a4)
{
  int savedregs_8; // [sp+8h] [bp+8h]

  *(_WORD *)(2 * (a2 + a1[6]) + *a1 + a1[5] * (a3 + a1[7])) = a4;
  return savedregs_8;
}
