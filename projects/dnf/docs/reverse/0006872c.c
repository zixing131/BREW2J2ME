int __fastcall sub_6872C(_DWORD *a1, int a2, _WORD *a3, unsigned __int8 *a4, int a5, int a6)
{
  int v8; // r5
  int v9; // r6
  unsigned int v10; // r1
  int v11; // r0
  int v15; // [sp+8h] [bp-4h]
  int savedregs_16; // [sp+1Ch] [bp+10h]

  v15 = *(_DWORD *)(*(_DWORD *)(a1[1] + 4) + 4);
  while ( a2 > 0 )
  {
    v8 = *(unsigned __int16 *)(2 * *a4 + v15);
    --a3;
    if ( v8 != *(_DWORD *)(*a1 + 32) )
    {
      v9 = (unsigned __int16)*a3;
      if ( *(_DWORD *)(*a1 + 36) == 0x7FFF )
      {
        v10 = (((32 - a6) * (v8 & 0x7C1F) + (v9 & 0x7C1Fu) * a6) >> 5) & 0x7C1F;
        v11 = 992;
      }
      else
      {
        v10 = (((32 - a6) * (v8 & 0xF81F) + (v9 & 0xF81Fu) * a6) >> 5) & 0xF81F;
        v11 = 2016;
      }
      *a3 = v10 | (((v8 & v11) * (32 - a6) + (v9 & (unsigned int)v11) * a6) >> 5) & v11;
    }
    --a2;
    ++a4;
  }
  return savedregs_16;
}
