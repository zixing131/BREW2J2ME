int __fastcall sub_6E0D8(int a1, _BYTE *a2, unsigned __int8 a3)
{
  const char *v5; // r6
  int savedregs_12; // [sp+Ch] [bp+Ch]

  v5 = (const char *)a3;
  if ( *a2 && !a2[2] )
  {
    sub_6EACE(
      a3,
      (const char *)*(unsigned __int8 *)(68 * (unsigned __int8)a2[5]
                                       + *(_DWORD *)(36 * (unsigned __int8)a2[4] + *(_DWORD *)(a1 + 24) + 32)
                                       + 6),
      (unsigned __int8)a2[12],
      sub_2D8AC);
    sub_6EACE(
      v5,
      (const char *)*(unsigned __int8 *)(68 * (unsigned __int8)a2[5]
                                       + *(_DWORD *)(36 * (unsigned __int8)a2[4] + *(_DWORD *)(a1 + 24) + 32)
                                       + 8),
      (unsigned __int8)a2[5],
      sub_2D830);
    sub_6EACE(
      2,
      v5,
      *(unsigned __int8 *)(68 * (unsigned __int8)a2[5]
                         + *(_DWORD *)(36 * (unsigned __int8)a2[4] + *(_DWORD *)(a1 + 24) + 32)
                         + 7),
      sub_2D77C);
  }
  return savedregs_12;
}
