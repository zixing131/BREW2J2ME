int __fastcall sub_684D8(_DWORD *a1, int a2, _WORD *a3, unsigned __int8 *a4)
{
  int v6; // r6
  int v9; // r2
  int savedregs_12; // [sp+Ch] [bp+Ch]

  v6 = *(_DWORD *)(*(_DWORD *)(a1[1] + 4) + 4);
  while ( a2 > 0 )
  {
    v9 = *(unsigned __int16 *)(2 * *a4 + v6);
    --a3;
    if ( v9 != *(_DWORD *)(*a1 + 32) )
      *a3 = v9;
    ++a4;
    --a2;
  }
  return savedregs_12;
}
