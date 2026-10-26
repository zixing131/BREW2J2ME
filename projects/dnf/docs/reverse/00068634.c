int __fastcall sub_68634(_DWORD *a1, int a2, __int16 *a3, unsigned __int8 *a4)
{
  int v4; // r7
  __int16 v5; // r6
  int v6; // r5
  int v7; // r0
  int v8; // r5
  int v13; // [sp+10h] [bp-Ch]
  int savedregs_16; // [sp+2Ch] [bp+10h]

  v13 = *(_DWORD *)(*(_DWORD *)(a1[1] + 4) + 4);
  while ( a2 > 0 )
  {
    --a3;
    v4 = *(unsigned __int16 *)(2 * *a4 + v13);
    if ( v4 != *(_DWORD *)(*a1 + 32) )
    {
      v5 = *a3;
      if ( *(_DWORD *)(*a1 + 36) == 0x7FFF )
      {
        v6 = sub_68DCE((v4 & 0x3E0) * (v5 & 0x3E0), 992, v5 & 0x3E0, 573417) & 0x3E0;
        v7 = sub_68DCC((v4 & 0x1F) * (v5 & 0x1F), 31, 573417) & 0x1F | v4 & 0x1F;
      }
      else
      {
        v8 = sub_68DCC((v4 & 0xF800) * (v5 & 0xF800), 63488, 573417) & 0xF800;
        v6 = v8 | sub_68DCE((v4 & 0x7E0) * (v5 & 0x7E0), 2016, v5 & 0x7E0, 573417) & 0x7E0;
        v7 = sub_68DCC((v4 & 0x1F) * (v5 & 0x1F), 31, 573417) & 0x1F;
      }
      *a3 = v7 | v6;
    }
    ++a4;
    --a2;
  }
  return savedregs_16;
}
