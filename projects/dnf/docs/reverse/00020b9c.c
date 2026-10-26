int sub_20B9C()
{
  int v0; // r6
  int v1; // r4
  int v2; // r0
  int v3; // r3
  int i; // r2
  int v5; // r4
  int v6; // r0
  int v7; // r3
  int v8; // r7
  int v9; // r3
  int v10; // r4
  int v11; // r0
  int v12; // r3
  int v13; // r7
  int v14; // r3
  int v16; // [sp+0h] [bp-3Ch]
  int v17; // [sp+0h] [bp-3Ch]
  int v18; // [sp+0h] [bp-3Ch]
  int v19; // [sp+0h] [bp-3Ch]
  int v20; // [sp+0h] [bp-3Ch]
  int v21; // [sp+0h] [bp-3Ch]
  int v22; // [sp+0h] [bp-3Ch]
  int v23; // [sp+0h] [bp-3Ch]
  int v24; // [sp+0h] [bp-3Ch]
  int v25; // [sp+0h] [bp-3Ch]
  int v26; // [sp+0h] [bp-3Ch]
  int v27; // [sp+4h] [bp-38h]
  int v28; // [sp+8h] [bp-34h]
  int v29; // [sp+Ch] [bp-30h]
  int v30; // [sp+10h] [bp-2Ch]
  int v31; // [sp+14h] [bp-28h]
  int j; // [sp+18h] [bp-24h]
  int k; // [sp+1Ch] [bp-20h]
  _BYTE v34[20]; // [sp+20h] [bp-1Ch] BYREF
  int v35; // [sp+34h] [bp-8h] BYREF
  int v36; // [sp+38h] [bp-4h] BYREF
  _DWORD savedregs[5]; // [sp+3Ch] [bp+0h]

  sub_22468(v34);
  v27 = sub_22468(v34);
  if ( v27 )
  {
    sub_20494();
    sub_2246C(&byte_150C79C, v27, 2);
    dword_150C7A0 = sub_2246E(28 * (unsigned __int8)byte_150C79C + 2);
    dword_150C7A4 = dword_150C7A0;
    sub_2246C(&v35, v27 + 2, 4);
    sub_2246C(&v36, v27 + 6, 4);
    v28 = sub_2246E(v35 + 2);
    v0 = v28;
    sub_2246A(v27 + 10, v28, v35, v36, 6);
    v29 = 0;
    v31 = 0;
    while ( v29 < (unsigned __int8)byte_150C79C )
    {
      sub_2246C(v31 + dword_150C7A4, v0, 1);
      sub_2246C(v31 + dword_150C7A4 + 1, v0 + 1, 1);
      sub_2246C(v31 + dword_150C7A4 + 2, v0 + 2, 2);
      v1 = v31 + dword_150C7A4;
      v0 += 4;
      if ( *(_BYTE *)(v31 + dword_150C7A4) )
      {
        v2 = sub_22468(8 * *(unsigned __int8 *)(v31 + dword_150C7A4) + 2);
        v3 = dword_150C7A4;
        *(_DWORD *)(v1 + 4) = v2;
        *(_DWORD *)(v31 + v3 + 8) = *(_DWORD *)(v31 + v3 + 4);
        for ( i = 0; ; i = v30 + 1 )
        {
          v30 = i;
          if ( i >= *(unsigned __int8 *)(v31 + dword_150C7A4) )
            break;
          sub_2246C(8 * i + *(_DWORD *)(v31 + dword_150C7A4 + 8), v0, 1);
          sub_2246C(8 * v30 + *(_DWORD *)(dword_150C7A4 + v31 + 8) + 1, v0 + 1, 1);
          sub_2246C(8 * v30 + *(_DWORD *)(dword_150C7A4 + v31 + 8) + 2, v0 + 2, 2);
          sub_2246C(8 * v30 + *(_DWORD *)(dword_150C7A4 + v31 + 8) + 4, v0 + 4, 1);
          v0 += 5;
        }
      }
      v5 = v31 + dword_150C7A4;
      if ( *(_BYTE *)(v31 + dword_150C7A4 + 1) )
      {
        v6 = sub_22468(160 * *(unsigned __int8 *)(v31 + dword_150C7A4 + 1) + 2);
        v7 = dword_150C7A4;
        *(_DWORD *)(v5 + 12) = v6;
        v8 = 0;
        *(_DWORD *)(v31 + v7 + 16) = *(_DWORD *)(v31 + v7 + 12);
        for ( j = 0; ; ++j )
        {
          v9 = *(unsigned __int8 *)(v31 + dword_150C7A4 + 1);
          if ( j >= v9 )
            break;
          sub_2246A(v8 + *(_DWORD *)(v31 + dword_150C7A4 + 16), v0, 1, v9, v16);
          sub_2246A(v8 + *(_DWORD *)(dword_150C7A4 + v31 + 16) + 1, v0 + 1, 1, dword_150C7A4 + v31, v17);
          sub_2246A(v8 + *(_DWORD *)(dword_150C7A4 + v31 + 16) + 2, v0 + 2, 2, dword_150C7A4 + v31, v18);
          sub_2246A(v8 + *(_DWORD *)(dword_150C7A4 + v31 + 16) + 4, v0 + 4, 1, dword_150C7A4 + v31, v19);
          sub_2246A(v8 + *(_DWORD *)(dword_150C7A4 + v31 + 16) + 6, v0 + 5, 2, dword_150C7A4 + v31, v20);
          sub_2246A(v8 + *(_DWORD *)(dword_150C7A4 + v31 + 16) + 8, v0 + 7, 150, dword_150C7A4 + v31, v21);
          v0 += 157;
          v8 += 160;
        }
      }
      v10 = v31 + dword_150C7A4;
      if ( *(_WORD *)(v31 + dword_150C7A4 + 2) )
      {
        v11 = sub_22468(160 * *(unsigned __int16 *)(v31 + dword_150C7A4 + 2) + 2);
        v12 = dword_150C7A4;
        *(_DWORD *)(v10 + 20) = v11;
        v13 = 0;
        *(_DWORD *)(v31 + v12 + 24) = *(_DWORD *)(v31 + v12 + 20);
        for ( k = 0; ; ++k )
        {
          v14 = *(unsigned __int16 *)(v31 + dword_150C7A4 + 2);
          if ( k >= v14 )
            break;
          sub_2246A(v13 + *(_DWORD *)(v31 + dword_150C7A4 + 24), v0, 1, v14, v16);
          sub_2246A(v13 + *(_DWORD *)(dword_150C7A4 + v31 + 24) + 1, v0 + 1, 1, dword_150C7A4 + v31, v22);
          sub_2246A(v13 + *(_DWORD *)(dword_150C7A4 + v31 + 24) + 2, v0 + 2, 2, dword_150C7A4 + v31, v23);
          sub_2246A(v13 + *(_DWORD *)(dword_150C7A4 + v31 + 24) + 4, v0 + 4, 1, dword_150C7A4 + v31, v24);
          sub_2246A(v13 + *(_DWORD *)(dword_150C7A4 + v31 + 24) + 6, v0 + 5, 2, dword_150C7A4 + v31, v25);
          sub_2246A(v13 + *(_DWORD *)(dword_150C7A4 + v31 + 24) + 8, v0 + 7, 150, dword_150C7A4 + v31, v26);
          v0 += 157;
          v13 += 160;
        }
      }
      ++v29;
      v31 += 28;
    }
    if ( v28 )
      sub_22468(v28);
    sub_22468(v27);
  }
  return savedregs[4];
}
