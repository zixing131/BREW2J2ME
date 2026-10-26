int __fastcall sub_6D0EC(unsigned __int8 a1)
{
  const char *v1; // r1
  const char *v2; // r7
  const char *v3; // r1
  int v4; // r5
  int v5; // r4
  int v6; // r0
  int v7; // r3
  int v8; // r3
  int v9; // r0
  int v10; // r4
  int v11; // r6
  int v12; // r4
  int v13; // r0
  int v14; // r3
  int v15; // r0
  int j; // r2
  const char *v17; // r4
  int v18; // r5
  int v19; // r0
  int v20; // r3
  int v21; // r0
  int v22; // r6
  const char *v23; // r1
  const char *v24; // r6
  int v25; // r7
  int v26; // r3
  int v27; // r4
  int v28; // r0
  int v29; // r7
  const char *v30; // r1
  int v31; // r7
  int v32; // r4
  int v33; // r0
  const char *v34; // r6
  int v36; // [sp+0h] [bp-74h]
  int v37; // [sp+4h] [bp-70h]
  int v38; // [sp+8h] [bp-6Ch]
  const char *v39; // [sp+Ch] [bp-68h]
  int v40; // [sp+10h] [bp-64h]
  int v41; // [sp+14h] [bp-60h]
  int v42; // [sp+18h] [bp-5Ch]
  int v43; // [sp+1Ch] [bp-58h]
  int v44; // [sp+20h] [bp-54h]
  int i; // [sp+24h] [bp-50h]
  int v46; // [sp+28h] [bp-4Ch]
  const char *v47; // [sp+2Ch] [bp-48h]
  int v48; // [sp+30h] [bp-44h]
  int v49; // [sp+34h] [bp-40h]
  int v50; // [sp+38h] [bp-3Ch]
  int k; // [sp+3Ch] [bp-38h]
  int m; // [sp+40h] [bp-34h]
  int n; // [sp+44h] [bp-30h]
  _BYTE v54[30]; // [sp+4Ah] [bp-2Ah] BYREF
  int v55; // [sp+68h] [bp-Ch] BYREF
  int v56; // [sp+6Ch] [bp-8h] BYREF
  _BYTE v57[3]; // [sp+70h] [bp-4h] BYREF
  unsigned __int8 v58; // [sp+73h] [bp-1h] BYREF
  _DWORD savedregs[5]; // [sp+74h] [bp+0h]

  v58 = 0;
  sub_6EACE(v54, "%d.etc", a1);
  v41 = sub_6CBE0(v54);
  if ( v41 )
  {
    sub_6EAD0(v57, v41, 2);
    sub_6EAD0(&v55, v41 + 2, 4);
    sub_6EAD0(&v56, v41 + 6, 4);
    v42 = sub_6EACE(v55, v1);
    v2 = (const char *)v42;
    v36 = 6;
    sub_6EAD0(v41 + 10, v42, v55);
    v43 = 0;
    v37 = 0;
    do
    {
      sub_6EACE(&v58, v2++, 1, &unk_140327C, v36);
      if ( v58 )
      {
        v4 = 40 * v58;
        v5 = dword_1501D90;
        v6 = sub_6EACE(v4 + 2, v3, &v58, &unk_14032EC);
        v7 = dword_1501D90;
        *(_DWORD *)(v37 + v5 + 24) = v6;
        v8 = v37 + v7;
        v9 = *(_DWORD *)(v8 + 24);
        *(_DWORD *)(v8 + 28) = v9;
        sub_6EACE(v9, 0, v4, &unk_140329C);
        *(_BYTE *)(v37 + dword_1501D90 + 20) = v58;
        v44 = 0;
        v46 = 0;
        while ( v44 < *(unsigned __int8 *)(v37 + dword_1501D90 + 20) )
        {
          sub_6EAD0(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + 1, v2, 1);
          sub_6EAD0(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + 2, v2 + 1, 1);
          sub_6EAD0(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + 3, v2 + 2, 1);
          sub_6EAD0(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + 4, v2 + 3, 1);
          sub_6EAD0(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + 5, v2 + 4, 1);
          sub_6EAD0(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + 6, v2 + 5, 2);
          sub_6EAD0(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + 8, v2 + 7, 1);
          sub_6EAD0(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + 9, v2 + 8, 1);
          sub_6EAD0(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + 10, v2 + 9, 1);
          sub_6EAD0(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + 11, v2 + 10, 1);
          sub_6EAD0(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + 12, v2 + 11, 2);
          sub_6EAD0(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + 14, v2 + 13, 2);
          v47 = v2 + 15;
          for ( i = 0; i != 3; ++i )
          {
            v40 = 8 * i + 16;
            sub_6EAD2(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + v40, v47, 1);
            sub_6EAD2(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + v40 + 2, v47 + 1, 2);
            v10 = 8 * i + 20;
            sub_6EAD2(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + v10, v47 + 3, 2);
            sub_6EAD2(v46 + *(_DWORD *)(v37 + dword_1501D90 + 28) + v10 + 2, v47 + 5, 2);
            v47 += 7;
          }
          ++v44;
          v46 += 40;
          v2 += 36;
        }
      }
      ++v43;
      v37 += 12;
    }
    while ( v43 != 11 );
    v58 = 0;
    v49 = 0;
    v38 = 0;
    do
    {
      sub_6EACE(&v58, v2++, 1, &unk_140327C);
      if ( v58 )
      {
        v11 = 8 * v58;
        v12 = dword_1501D90;
        v13 = sub_6EACE(v11 + 2, (const char *)&v58);
        v14 = dword_1501D90;
        *(_DWORD *)(v38 + v12 + 156) = v13;
        v15 = *(_DWORD *)(v38 + v14 + 156);
        *(_DWORD *)(v38 + v14 + 160) = v15;
        sub_6EACE(v15, 0, v11, &unk_140329C);
        *(_BYTE *)(v38 + dword_1501D90 + 152) = v58;
        for ( j = 0; ; j = v50 + 1 )
        {
          v50 = j;
          if ( j >= *(unsigned __int8 *)(v38 + dword_1501D90 + 152) )
            break;
          sub_6EAD2(8 * j + *(_DWORD *)(v38 + dword_1501D90 + 160) + 1, v2, 1);
          sub_6EAD2(8 * v50 + *(_DWORD *)(v38 + dword_1501D90 + 160) + 2, v2 + 1, 1);
          sub_6EAD2(8 * v50 + *(_DWORD *)(v38 + dword_1501D90 + 160) + 3, v2 + 2, 1);
          sub_6EAD2(8 * v50 + *(_DWORD *)(v38 + dword_1501D90 + 160) + 4, v2 + 3, 2);
          sub_6EAD2(8 * v50 + *(_DWORD *)(v38 + dword_1501D90 + 160) + 6, v2 + 5, 1);
          sub_6EAD2(8 * v50 + *(_DWORD *)(v38 + dword_1501D90 + 160) + 7, v2 + 6, 1);
          v2 += 7;
        }
      }
      ++v49;
      v38 += 12;
    }
    while ( v49 != 2 );
    v58 = 0;
    v48 = 0;
    v39 = 0;
    do
    {
      sub_6EACE(&v58, v2++, 1, &unk_140327C);
      if ( v58 )
      {
        v39[dword_1501D90 + 176] = v58;
        v17 = &v39[dword_1501D90];
        v18 = 20 * (unsigned __int8)v39[dword_1501D90 + 176];
        v19 = sub_6EACE(v18 + 2, v39);
        v20 = dword_1501D90;
        *((_DWORD *)v17 + 45) = v19;
        v21 = *(_DWORD *)&v39[v20 + 180];
        *(_DWORD *)&v39[v20 + 184] = v21;
        sub_6EACE(v21, 0, v18, &unk_140329C);
        v22 = 0;
        for ( k = 0; k < (unsigned __int8)v39[dword_1501D90 + 176]; ++k )
        {
          sub_6EAD0(v22 + *(_DWORD *)&v39[dword_1501D90 + 184] + 1, v2, 1);
          sub_6EAD0(v22 + *(_DWORD *)&v39[dword_1501D90 + 184] + 2, v2 + 1, 1);
          sub_6EAD0(v22 + *(_DWORD *)&v39[dword_1501D90 + 184] + 3, v2 + 2, 1);
          sub_6EAD0(v22 + *(_DWORD *)&v39[dword_1501D90 + 184] + 4, v2 + 3, 1);
          sub_6EAD0(v22 + *(_DWORD *)&v39[dword_1501D90 + 184] + 6, v2 + 4, 2);
          sub_6EAD0(v22 + *(_DWORD *)&v39[dword_1501D90 + 184] + 8, v2 + 6, 1);
          sub_6EAD0(v22 + *(_DWORD *)&v39[dword_1501D90 + 184] + 9, v2 + 7, 1);
          sub_6EAD0(v22 + *(_DWORD *)&v39[dword_1501D90 + 184] + 12, v2 + 8, 1);
          sub_6EAD0(v22 + *(_DWORD *)&v39[dword_1501D90 + 184] + 14, v2 + 9, 2);
          sub_6EAD0(v22 + *(_DWORD *)&v39[dword_1501D90 + 184] + 16, v2 + 11, 2);
          sub_6EAD0(v22 + *(_DWORD *)&v39[dword_1501D90 + 184] + 18, v2 + 13, 2);
          v2 += 15;
          v22 += 20;
        }
      }
      ++v48;
      v39 += 12;
    }
    while ( v48 != 5 );
    sub_6EACE(dword_1501D90 + 236, v2, 1, &unk_140327C);
    v24 = v2 + 1;
    v25 = dword_1501D90;
    v26 = *(unsigned __int8 *)(dword_1501D90 + 236);
    if ( *(_BYTE *)(dword_1501D90 + 236) )
    {
      v27 = 12 * v26;
      *(_DWORD *)(v25 + 240) = sub_6EACE(12 * v26 + 2, v23);
      v28 = *(_DWORD *)(dword_1501D90 + 240);
      *(_DWORD *)(dword_1501D90 + 244) = v28;
      sub_6EACE(v28, 0, v27, &unk_140329C);
      v29 = 0;
      for ( m = 0; m < *(unsigned __int8 *)(dword_1501D90 + 236); ++m )
      {
        sub_6EAD0(v29 + *(_DWORD *)(dword_1501D90 + 244) + 1, v24, 1);
        sub_6EAD0(v29 + *(_DWORD *)(dword_1501D90 + 244) + 2, v24 + 1, 1);
        sub_6EAD0(v29 + *(_DWORD *)(dword_1501D90 + 244) + 4, v24 + 2, 2);
        sub_6EAD0(v29 + *(_DWORD *)(dword_1501D90 + 244) + 6, v24 + 4, 1);
        sub_6EAD0(v29 + *(_DWORD *)(dword_1501D90 + 244) + 7, v24 + 5, 1);
        sub_6EAD0(v29 + *(_DWORD *)(dword_1501D90 + 244) + 8, v24 + 6, 1);
        v24 += 7;
        v29 += 12;
      }
    }
    sub_6EACE(dword_1501D90 + 248, v24, 1, &unk_140327C);
    v31 = dword_1501D90;
    if ( *(_BYTE *)(dword_1501D90 + 248) )
    {
      v32 = 8 * *(unsigned __int8 *)(dword_1501D90 + 248);
      *(_DWORD *)(v31 + 252) = sub_6EACE(v32 + 2, v30);
      v33 = *(_DWORD *)(dword_1501D90 + 252);
      *(_DWORD *)(dword_1501D90 + 256) = v33;
      sub_6EACE(v33, 0, v32, &unk_140329C);
      v34 = v24 + 1;
      for ( n = 0; ; ++n )
      {
        v30 = (const char *)n;
        if ( n >= *(unsigned __int8 *)(dword_1501D90 + 248) )
          break;
        sub_6EAD2(8 * n + *(_DWORD *)(dword_1501D90 + 256) + 1, v34, 1);
        sub_6EAD2(8 * n + *(_DWORD *)(dword_1501D90 + 256) + 2, v34 + 1, 1);
        sub_6EAD2(8 * n + *(_DWORD *)(dword_1501D90 + 256) + 4, v34 + 2, 2);
        sub_6EAD2(8 * n + *(_DWORD *)(dword_1501D90 + 256) + 6, v34 + 4, 1);
        sub_6EAD2(8 * n + *(_DWORD *)(dword_1501D90 + 256) + 7, v34 + 5, 1);
        v34 += 6;
      }
    }
    if ( v42 )
      sub_6EACE(v42, v30, v42, &unk_14032FC);
    sub_6EACE(v41, v30);
  }
  return savedregs[4];
}
