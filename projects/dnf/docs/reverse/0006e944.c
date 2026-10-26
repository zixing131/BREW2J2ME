int __fastcall sub_6E944(int a1, int a2, unsigned __int8 a3)
{
  int v4; // r6
  int v5; // r0
  int v6; // r0
  __int16 *v7; // r4
  int v8; // r7
  int i; // r6
  _UNKNOWN **v10; // r2
  __int16 v11; // r3
  int savedregs_16; // [sp+10h] [bp+10h]

  a2 = (unsigned __int16)a2;
  v4 = a3;
  switch ( (unsigned __int16)a2 )
  {
    case 0x7556u:
      a2 = 30168;
      break;
    case 0x756Fu:
      a2 = 30169;
      break;
    case 0x7583u:
      a2 = 30176;
      break;
    case 0x7557u:
      a2 = 30179;
      break;
    case 0x756Eu:
      a2 = 30173;
      break;
  }
  if ( !*(_DWORD *)(a1 + 808) )
    sub_6DE68(a1, a2);
  if ( !*(_DWORD *)(a1 + 812) )
  {
    v5 = 24 * *(unsigned __int8 *)(a1 + 1);
    *(_BYTE *)(a1 + 2) = v4;
    v6 = sub_6EACE(v5 + 2);
    *(_DWORD *)(a1 + 812) = v6;
    *(_DWORD *)(a1 + 820) = v6;
    sub_6EACE(v6);
    v7 = (__int16 *)(a1 + 20 * v4 + 4);
    v8 = 0;
    for ( i = 0; ; i += 24 )
    {
      if ( v8 >= *(unsigned __int8 *)(a1 + 1) )
        return savedregs_16;
      v10 = (_UNKNOWN **)(unsigned __int16)*v7;
      if ( v10 == (_UNKNOWN **)&loc_7556 )
      {
        v11 = 30172;
      }
      else if ( v10 == (_UNKNOWN **)((char *)&loc_756E + 1) )
      {
        v11 = 30173;
      }
      else if ( v10 == (_UNKNOWN **)((char *)&loc_7556 + 1) )
      {
        v11 = 30179;
      }
      else if ( v10 == (_UNKNOWN **)&loc_756E )
      {
        v11 = 30181;
      }
      else
      {
        if ( v10 != (_UNKNOWN **)((char *)&off_88F0 + 1) )
          goto LABEL_26;
        v11 = 30182;
      }
      *v7 = v11;
LABEL_26:
      sub_6E440((unsigned __int16)*v7, i + *(_DWORD *)(a1 + 820));
      ++v8;
      ++v7;
    }
  }
  return savedregs_16;
}
