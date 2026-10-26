int __fastcall sub_6850C(_DWORD *a1, int a2, __int16 *a3, unsigned __int8 *a4)
{
  int v4; // r7
  __int16 v5; // r1
  int v6; // r5
  __int16 v7; // r0
  int v8; // r0
  int v13; // [sp+18h] [bp-1Ch]
  int v15; // [sp+20h] [bp-14h]
  int v16; // [sp+24h] [bp-10h]
  int v17; // [sp+28h] [bp-Ch]
  int v18; // [sp+2Ch] [bp-8h]
  int savedregs_16; // [sp+44h] [bp+10h]

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
        v18 = v5 & 0x1F;
        LOWORD(v6) = (sub_68DCC((v4 & 0x3E0) * (992 - (v5 & 0x3E0)), 992, 573417) + (v5 & 0x3E0)) & 0x3E0;
        v7 = (sub_68DCC((v4 & 0x1F) * (31 - v18), 31, 573417) + v18) & 0x1F | v4 & 0x1F;
      }
      else
      {
        v15 = v5 & 0xF800;
        v17 = v5 & 0x1F;
        v16 = v5 & 0x7E0;
        v8 = sub_68DCC((v4 & 0xF800) * (63488 - v15), 63488, 573417);
        v6 = (v8 + v15) & 0xF800 | (sub_68DCC((v4 & 0x7E0) * (2016 - v16), 2016, 573417) + v16) & 0x7E0;
        v7 = (sub_68DCC((v4 & 0x1F) * (31 - v17), 31, 573417) + v17) & 0x1F;
      }
      *a3 = v7 | v6;
    }
    ++a4;
    --a2;
  }
  return savedregs_16;
}
