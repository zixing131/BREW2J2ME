int sub_29A28()
{
  int v0; // r1
  unsigned __int16 *v1; // r5
  char *v2; // r3
  int v3; // r5
  char *v4; // r5
  int v5; // r2
  char *v6; // r1
  int v7; // r0
  int v8; // r1
  char *v9; // r2
  int i; // r1
  char *v11; // r2
  int v12; // r0
  char *v13; // r7
  unsigned __int16 *v14; // r5
  char *v15; // r6
  int v17; // [sp+8h] [bp-68h]
  int v18; // [sp+Ch] [bp-64h]
  int v19; // [sp+Ch] [bp-64h]
  int v20; // [sp+Ch] [bp-64h]
  int v21; // [sp+Ch] [bp-64h]
  int v22; // [sp+10h] [bp-60h]
  int v23; // [sp+10h] [bp-60h]
  int v24; // [sp+10h] [bp-60h]
  int v25; // [sp+10h] [bp-60h]
  unsigned int v26; // [sp+40h] [bp-30h]
  unsigned int v27; // [sp+44h] [bp-2Ch]
  int v28; // [sp+48h] [bp-28h]
  unsigned int v29; // [sp+4Ch] [bp-24h]
  __int16 v30; // [sp+50h] [bp-20h]
  __int16 v31; // [sp+54h] [bp-1Ch]
  __int16 v32; // [sp+58h] [bp-18h]
  int v33; // [sp+5Ch] [bp-14h]
  int v34; // [sp+60h] [bp-10h]
  unsigned __int16 *v35; // [sp+64h] [bp-Ch]
  _BYTE v36[8]; // [sp+68h] [bp-8h] BYREF
  _DWORD savedregs[5]; // [sp+70h] [bp+0h]

  v0 = *(_DWORD *)(dword_1501D90 + 16);
  v29 = (unsigned int)((*(__int16 *)(v0 + 58) + (*(__int16 *)(v0 + 58) < 0 ? 0xF : 0)) << 12) >> 16;
  v30 = (unsigned __int8)byte_15332D1 - (((unsigned __int16)word_15332A2 >> 4) - *(__int16 *)(v0 + 60) / 16);
  v31 = dword_1501C14 - (*(_WORD *)(dword_150D808 + 4) >> 1);
  v32 = dword_1501BFC - *(_WORD *)(dword_150D808 + 6);
  sub_2BCB6(v36);
  sub_2BCBC(v31, v32, 0, 0, &unk_150D7F4, 0, 0, v36, 0);
  sub_2BCBC(v31, (__int16)dword_1501BFC, 0, 0, &unk_150D7F4, 1, 0, v36, 0);
  if ( v30 >= (int)(unsigned __int8)byte_15332D1 )
    v30 = (unsigned __int8)byte_15332D1 - 1;
  if ( (__int16)v29 >= (int)(unsigned __int8)byte_15332D2 )
    LOWORD(v29) = (unsigned __int8)byte_15332D2 - 1;
  v1 = (unsigned __int16 *)&unk_1401AE0;
  do
  {
    if ( *((_BYTE *)v1 + 3) == 1 )
      sub_2BCB8(*(v1 - 1) + dword_1501C14 - 122, dword_1501BFC + *v1 - 145, 0, 0, &unk_1533708, 9, 0, v36, 0);
    v1 += 10;
  }
  while ( v1 != (unsigned __int16 *)&unk_1401D9C );
  sub_2BCB8(dword_1501C14 + 22, dword_1501BFC + 115, 0, 0, &unk_1533708, 11, 0, v36, 0);
  sub_2BCB8(dword_1501C14 + 35, dword_1501BFC + 119, 0, 0, &unk_1533708, 7, 0, v36, 0);
  sub_2BCB8(dword_1501C14 + 100, dword_1501BFC + 119, 0, 0, &unk_1533708, 8, 0, v36, 0);
  v2 = (char *)&unk_1401AD8 + 20 * (unsigned __int8)byte_150004E;
  if ( v2[11] == 1 )
  {
    sub_2BCB8(dword_1501C14 + 75, dword_1501BFC + 118, 50, *((_DWORD *)v2 + 3), 17, 1, -256, v18, v22);
    sub_2BCB8(
      dword_1501C14 + 75,
      dword_1501BFC + 135,
      120,
      *((_DWORD *)&unk_1401AD8 + 5 * (unsigned __int8)byte_150004E + 4),
      17,
      1,
      -256,
      v19,
      v23);
  }
  sub_2BCB8(dword_1501C14 + 54, dword_1501BFC + 102, 50, &dword_90CEC, 17, 0, 1657533184, v18, v22);
  sub_2BCB8(
    *((unsigned __int16 *)&unk_1401AD8 + 10 * (unsigned __int8)byte_150004E + 3) + dword_1501C14 - 122,
    *((unsigned __int16 *)&unk_1401AD8 + 10 * (unsigned __int8)byte_150004E + 4) + dword_1501BFC - 145,
    0,
    0,
    &unk_1533708,
    10,
    0,
    v36,
    0);
  v27 = 0;
  v26 = 0;
  while ( 1 )
  {
    while ( 1 )
    {
      v11 = (char *)&byte_1401A68[16 * v26];
      if ( (unsigned __int8)v11[1] <= v27 )
        break;
      for ( i = 0; i != (unsigned __int8)v11[2]; i = (unsigned __int8)(i + 1) )
      {
        v3 = 16 * v26;
        if ( byte_1401A68[16 * v26] == *(unsigned __int8 *)(dword_1501D90 + 6889) && (__int16)v29 == i && v30 == v27 )
        {
          v33 = (unsigned __int16)(v31 + *(_WORD *)&byte_1401A68[v3 + 4] + i - 3);
          v34 = (unsigned __int16)(v32 + *(_WORD *)&byte_1401A68[v3 + 6] + 2 * v27);
          if ( byte_15336F8 )
            sub_2BCB8(v33, v34, &unk_150D868, &byte_15336F8, (unsigned __int8)byte_1533704, 0, 0, 0, 0);
          sub_2BCB8(v33, v34, 0, 0, &unk_1533708, 0, 0, v36, 0);
          LOBYTE(v28) = 0;
          v4 = (char *)&byte_1401A68[v3 + 8];
          do
          {
            v5 = *v4;
            if ( v5 == -1 )
              break;
            v6 = (char *)&unk_1401AD8 + 20 * v5;
            v7 = *((unsigned __int16 *)v6 + 3);
            if ( (unsigned int)(v33 - v7 + 5) <= 6 )
            {
              v8 = *((unsigned __int16 *)v6 + 4);
              v9 = (char *)&unk_1401AD8 + 20 * v5 + 8;
              if ( (unsigned int)(v34 - v8 - 11) <= 0xD && v9[3] == 1 )
              {
                sub_2BCB8(v7 - 22, v8 - 10, 44, 14, 0, 2, v17, v20, v24);
                sub_2BCB8(
                  *((unsigned __int16 *)&unk_1401AD8 + 10 * *v4 + 3),
                  *((unsigned __int16 *)&unk_1401AD8 + 10 * *v4 + 4) - 9,
                  50,
                  *((_DWORD *)&unk_1401AD8 + 5 * *v4 + 3),
                  17,
                  1,
                  -256,
                  v21,
                  v25);
              }
            }
            v28 = (unsigned __int8)(v28 + 1);
            ++v4;
          }
          while ( v28 != 7 );
          break;
        }
      }
      v27 = (unsigned __int8)(v27 + 1);
    }
    v26 = (unsigned __int8)(v26 + 1);
    if ( v26 > 6 )
      break;
    v27 = 0;
  }
  v12 = sub_2BCB6(&unk_150D868);
  v13 = (char *)&unk_1401AE3;
  v35 = (unsigned __int16 *)&unk_1401ADE;
  v14 = (unsigned __int16 *)&unk_1401AE0;
  do
  {
    if ( *((_BYTE *)v14 + 3) == 1 )
    {
      v15 = v13 - 1;
      if ( *((_BYTE *)v14 + 2) == 2 )
        v12 = sub_2BCB8(*v35 + dword_1501C14 - 124, *v14 + dword_1501BFC - 160, 0, 0, &unk_1533708, 3, 0, v36, 0);
      if ( *v15 == 3 )
        v12 = sub_2BCB8(*v35 + dword_1501C14 - 124, *v14 + dword_1501BFC - 160, 0, 0, &unk_1533708, 2, 0, v36, 0);
      if ( *v15 == 4 )
        v12 = sub_2BCB8(*v35 + dword_1501C14 - 124, *v14 + dword_1501BFC - 160, 0, 0, &unk_1533708, 1, 0, v36, 0);
      if ( *v15 == 5 )
        v12 = sub_2BCB8(*v35 + dword_1501C14 - 124, *v14 + dword_1501BFC - 160, 0, 0, &unk_1533708, 18, 0, v36, 0);
      if ( *v15 == 1 )
      {
        if ( byte_15336F8 )
          sub_2BCB8(
            *v35 + dword_1501C14 - 122,
            *v14 + dword_1501BFC - 160,
            &unk_150D868,
            &byte_15336F8,
            (unsigned __int8)byte_1533704,
            0,
            0,
            0,
            0);
        v12 = sub_2BCB8(*v35 + dword_1501C14 - 124, *v14 + dword_1501BFC - 160, 0, 0, &unk_1533708, 5, 0, v36, 0);
      }
    }
    v35 += 10;
    v13 += 20;
    v14 += 10;
  }
  while ( v13 != (char *)&unk_1401D9F );
  sub_2BCB6(v12);
  return savedregs[4];
}
