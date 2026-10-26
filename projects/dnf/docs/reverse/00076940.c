int __fastcall sub_76940(int a1, int a2)
{
  int v2; // r2
  int v4; // r1
  int v5; // r3
  int v6; // r3
  int savedregs_4; // [sp+4h] [bp+4h]

  v2 = *(_DWORD *)(dword_1501D90 + 6888) & 0xFFFFFF;
  if ( v2 != 207115 && v2 != 272651 && byte_150D770 != 1 )
  {
    v4 = *(unsigned __int8 *)(a1 + 51);
    if ( *(_BYTE *)(a1 + 51) )
    {
      v6 = *(_DWORD *)(a1 + 6588) - a2;
      *(_DWORD *)(a1 + 6588) = v6;
      if ( v6 <= 0 )
        *(_DWORD *)(a1 + 6588) = 0;
    }
    else
    {
      v5 = *(_DWORD *)(a1 + 6580) - a2;
      *(_DWORD *)(a1 + 6580) = v5;
      if ( v5 <= 0 )
        *(_DWORD *)(a1 + 6580) = v4;
    }
  }
  return savedregs_4;
}
