int sub_4F018()
{
  int v0; // r0
  int v1; // r1
  int v2; // r1
  char v3; // r3
  int v4; // r5
  unsigned __int8 v5; // r0
  int v6; // r4
  int v7; // r4
  int v9; // [sp+4h] [bp-8h]
  int i; // [sp+8h] [bp-4h]
  int savedregs_16; // [sp+1Ch] [bp+10h]

  v9 = *(_DWORD *)(dword_1501D90 + 16);
  for ( i = 0; i < (unsigned __int8)byte_153345C; ++i )
  {
    v0 = 16 * i + dword_1533464;
    if ( *(_BYTE *)v0 == 2 )
    {
      v1 = *(__int16 *)(v9 + 58);
      if ( *(__int16 *)(v0 + 6) <= v1 && *(__int16 *)(v0 + 10) >= v1 )
      {
        v2 = *(__int16 *)(v9 + 60);
        if ( *(__int16 *)(v0 + 8) <= v2 && *(__int16 *)(v0 + 12) >= v2 )
        {
          v3 = *(_BYTE *)(dword_1501D90 + 6888);
          if ( !v3 || v3 == 20 || v3 == 11 )
          {
            v4 = (unsigned __int8)(*(_BYTE *)(v0 + 4) - 100);
            v5 = sub_66A7E(v4);
            if ( sub_66A76(v5) )
            {
              v6 = dword_1533448;
              if ( *(_BYTE *)(12 * (char)sub_66A7E(v4) + v6 + 7) == 2
                || (v7 = dword_1533448, *(_BYTE *)(12 * (char)sub_66A7E(v4) + v7 + 7) == 3) )
              {
                sub_4EE2C((char)v4, 0);
              }
              else if ( v4 != 30 && v4 != 32 && v4 != 33 )
              {
                sub_4ED6C(v4);
                byte_1500064 = 0;
                sub_66A78(1, 25);
              }
            }
          }
        }
      }
    }
  }
  return savedregs_16;
}
