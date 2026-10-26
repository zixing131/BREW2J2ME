int __fastcall sub_6E98(int a1, int a2, int a3)
{
  int v4; // r0
  unsigned int i; // r11
  unsigned __int8 *v7; // r5
  int v8; // r0
  unsigned __int16 *v9; // r0
  unsigned int v10; // r8
  unsigned __int16 *v11; // r10
  int v12; // r6
  unsigned int v13; // r0
  int v14; // r1
  int v15; // r6
  unsigned __int16 *v16; // r6
  int v17; // r8
  int v18; // r10
  unsigned int v19; // r0
  int v20; // r1
  int v21; // r10
  int v22; // r0
  int v23; // r5
  unsigned __int16 *v24; // r3
  unsigned int v25; // r1
  int v26; // r0
  int result; // r0
  unsigned int v28; // [sp+1Ch] [bp-28h]
  int v29; // [sp+20h] [bp-24h]
  int v30; // [sp+20h] [bp-24h]
  unsigned int v31; // [sp+24h] [bp-20h]
  int v32; // [sp+28h] [bp-1Ch]
  int v33; // [sp+2Ch] [bp-18h]

  v4 = *(_DWORD *)(a1 + 2200);
  if ( !*(_DWORD *)(v4 + 24) )
    sub_10C58(
      a2,
      *(__int16 *)(a1 + 2208),
      (__int16)(*(_WORD *)(a1 + 2210) + *(_DWORD *)(a1 + 2232)),
      *(__int16 *)(a1 + 2204),
      (__int16)(*(_WORD *)(a1 + 2206) - *(_DWORD *)(a1 + 2232) - *(_DWORD *)(a1 + 2228)),
      0,
      *(unsigned __int16 *)(v4 + 16),
      0);
  for ( i = 0; ; ++i )
  {
    result = *(_DWORD *)(a1 + 2200);
    if ( *(_DWORD *)(result + 24) <= i )
      break;
    v7 = (unsigned __int8 *)(*(_DWORD *)(result + 28) + 16 * i);
    v8 = *v7;
    switch ( v8 )
    {
      case 1:
        sub_10C58(
          a2,
          *(__int16 *)(a1 + 2208),
          (__int16)(*(_WORD *)(a1 + 2210)
                  + *(_WORD *)(a1 + 2206)
                  - *(_WORD *)(a1 + 2228)
                  - *((_WORD *)v7 + 4)
                  - *((_WORD *)v7 + 5)),
          *(__int16 *)(a1 + 2204),
          *((__int16 *)v7 + 5),
          4,
          HIWORD(*((_DWORD *)v7 + 1)),
          (unsigned __int16)*((_DWORD *)v7 + 1));
        break;
      case 2:
        v9 = (unsigned __int16 *)sub_11DD8(a3, *((_DWORD *)v7 + 1));
        v10 = *v9;
        v11 = v9;
        v32 = v9[1];
        v29 = *(unsigned __int16 *)(a1 + 2206) - *(_DWORD *)(a1 + 2228) - *((__int16 *)v7 + 4) - v32;
        v12 = sub_104(0xE10u, *((__int16 *)v7 + 6) * v10 * (*((__int16 *)v7 + 5) - *(_DWORD *)(a1 + 2100)));
        v13 = sub_2E4(*((__int16 *)v7 + 7) * *(_DWORD *)(a1 + 2212));
        sub_104(v10, v12 - v13);
        v28 = 1;
        v15 = v14;
        if ( v14 > 0 )
          v15 = v14 - v10;
        if ( v7[1] )
          v28 = 3;
        while ( *(unsigned __int16 *)(a1 + 2204) > v15 )
        {
          sub_3324(
            a2,
            *(_WORD *)(a1 + 2208) + v15,
            *(_WORD *)(a1 + 2210) + v29,
            (__int16)v10,
            (__int16)v32,
            v11,
            0,
            0,
            v28,
            0,
            (unsigned __int16 *)*((unsigned __int16 *)v7 + 1));
          v15 += v10;
        }
        break;
      case 3:
        v16 = (unsigned __int16 *)sub_11DD8(a3, *((_DWORD *)v7 + 1));
        v33 = *v16;
        v17 = v16[1];
        v30 = *(unsigned __int16 *)(a1 + 2206) - *(_DWORD *)(a1 + 2228) - *((__int16 *)v7 + 4) - v17;
        v18 = *((__int16 *)v7 + 5) - *(_DWORD *)(a1 + 2100);
        v19 = sub_2E4(*((__int16 *)v7 + 7) * *(_DWORD *)(a1 + 2212));
        sub_104(0x168u, v18 - v19);
        if ( v20 > 180 )
          v20 -= 360;
        if ( v20 <= -180 )
          v20 += 360;
        v21 = 1;
        v31 = sub_2A0(v20 * *((__int16 *)v7 + 6)) - (*(unsigned __int16 *)(a1 + 2204) - v33) / 2;
        v22 = v7[1];
        v23 = *(_DWORD *)(a1 + 2200);
        if ( v22 )
          v21 = 3;
        if ( *(_BYTE *)(v23 + 22) )
        {
          v26 = sub_1DC(0x64u, 32 * *(unsigned __int8 *)(v23 + 22));
          if ( v26 > 32 )
            v26 = 32;
          v24 = (unsigned __int16 *)(*(unsigned __int16 *)(v23 + 20) | (v26 << 16));
          v25 = v21 | 0x10;
        }
        else
        {
          v24 = 0;
          v25 = v21;
        }
        sub_3324(
          a2,
          *(_WORD *)(a1 + 2208) + v31,
          *(_WORD *)(a1 + 2210) + v30,
          (__int16)v33,
          (__int16)v17,
          v16,
          0,
          0,
          v25,
          0,
          v24);
        break;
    }
  }
  return result;
}

