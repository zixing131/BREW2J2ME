BOOL __fastcall sub_7E3EC(unsigned __int8 a1, int a2)
{
  int v2; // r6
  __int64 v4; // r0
  __int64 v5; // r0
  __int64 v6; // r0
  int v7; // r1
  int v8; // r3
  char v9; // r7
  __int16 v10; // r5
  int v11; // r1
  int v12; // r4
  int v13; // r1
  int v14; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r3
  int v18; // r3
  int v19; // r2
  int v20; // r3
  int v21; // r3
  int v22; // r2

  v2 = a1;
  if ( (*(_DWORD *)(dword_1501D90 + 6888) & 0xFFFFFF) == 0x4290B )
    return a1 <= 8u;
  v4 = sub_80706(101, a2);
  if ( (char)v4 == 1 )
  {
    v4 = sub_80706(101, HIDWORD(v4));
    if ( !(_DWORD)v4 && *(_BYTE *)(dword_1501D90 + 6888) == 21 && *(char *)(dword_1501D90 + 6892) > 2 )
      return 1;
  }
  v5 = sub_80706(120, HIDWORD(v4));
  if ( (char)v5 == 1 )
  {
    v5 = sub_80706(120, HIDWORD(v5));
    if ( !(_DWORD)v5 && *(_BYTE *)(dword_1501D90 + 6888) == 22 && *(char *)(dword_1501D90 + 6892) > 2 )
      return 1;
  }
  v6 = sub_80706(164, HIDWORD(v5));
  if ( (char)v6 == 1
    && !(unsigned int)sub_80706(164, HIDWORD(v6))
    && *(_BYTE *)(dword_1501D90 + 6888) == 26
    && *(char *)(dword_1501D90 + 6892) > 2 )
  {
    return 1;
  }
  v7 = *(_DWORD *)(dword_1501D90 + 16);
  v8 = 104 * v2 + v7;
  v9 = *(_BYTE *)(v8 + 5224);
  v10 = *(_WORD *)(v8 + 5228);
  if ( (unsigned __int8)(v2 - 5) <= 1u )
    return 1;
  if ( (unsigned __int8)(v9 - 37) <= 2u && !*((_BYTE *)&dword_19E4 + v7) )
  {
    v11 = 10;
LABEL_23:
    sub_80706(3, v11);
    return 0;
  }
  if ( (unsigned __int8)(v9 - 20) <= 1u || v9 == 24 )
  {
    if ( !*(_BYTE *)(v7 + 6627) )
    {
      v11 = 14;
      goto LABEL_23;
    }
  }
  else if ( v9 == 26 && *(_BYTE *)(dword_1501D90 + 5904) != 3 )
  {
    v11 = 11;
    goto LABEL_23;
  }
  v12 = v7 + 104 * v2 + 5280;
  sub_7E0B4(v2, v7);
  if ( *(_BYTE *)(v12 + 9) && *(unsigned __int8 *)(v12 + 9) > (unsigned int)(unsigned __int16)sub_80706(11, 45) )
  {
    v11 = 2;
    goto LABEL_23;
  }
  if ( *(_WORD *)(v12 + 4) && v10 < (int)*(unsigned __int16 *)(v12 + 4) )
  {
    v11 = 5;
    goto LABEL_23;
  }
  v13 = *(_DWORD *)(dword_1501D90 + 16);
  if ( *(_BYTE *)(104 * v2 + v13 + 5224) != 14 )
  {
    v19 = *(_DWORD *)(v13 + 8);
    v20 = *(unsigned __int16 *)(v12 + 2);
    if ( v19 >= v20 )
    {
      v21 = v19 - v20;
      *(_DWORD *)(v13 + 8) = v21;
      if ( v21 < 0 )
        *(_DWORD *)(v13 + 8) = 0;
      goto LABEL_46;
    }
LABEL_43:
    v11 = 3;
    goto LABEL_23;
  }
  v14 = sub_80706(68, v13);
  v15 = *(unsigned __int16 *)(v12 + 2);
  if ( v14 )
  {
    if ( *(_DWORD *)(*(_DWORD *)(dword_1501D90 + 16) + 6580) < v15 )
    {
      v11 = 4;
      goto LABEL_23;
    }
    if ( (unsigned int)sub_80706(v14, v15) )
      sub_76940(*(_DWORD *)(dword_1501D90 + 16), *(unsigned __int16 *)(v12 + 2));
    goto LABEL_46;
  }
  v16 = *(_DWORD *)(dword_1501D90 + 16);
  v17 = *(_DWORD *)(v16 + 8);
  if ( v17 < v15 )
    goto LABEL_43;
  v18 = v17 - v15;
  *(_DWORD *)(v16 + 8) = v18;
  if ( v18 < 0 )
    *(_DWORD *)(v16 + 8) = 0;
LABEL_46:
  if ( *(_BYTE *)(v12 + 9) )
    sub_80706(11, 45);
  if ( *(_WORD *)(v12 + 4) )
    *(_WORD *)(104 * v2 + *(_DWORD *)(dword_1501D90 + 16) + 5228) = 0;
  if ( v9 == 14 || v9 == 33 || v9 == 35 )
  {
    v22 = *(_DWORD *)(dword_1501D90 + 16);
    if ( *((_BYTE *)&dword_19E4 + v22) == 1 )
    {
      if ( *(unsigned __int8 *)(v12 + 24) == 145 )
        *(_WORD *)(104 * v2 + v22 + 5228) = *(_WORD *)(v12 + 30);
      if ( *(unsigned __int8 *)(v12 + 32) == 145 )
        *(_WORD *)(104 * v2 + *(_DWORD *)(dword_1501D90 + 16) + 5228) = *(_WORD *)(v12 + 38);
      if ( *(unsigned __int8 *)(v12 + 40) == 145 )
        *(_WORD *)(104 * v2 + *(_DWORD *)(dword_1501D90 + 16) + 5228) = *(_WORD *)(v12 + 46);
    }
  }
  return 1;
}
