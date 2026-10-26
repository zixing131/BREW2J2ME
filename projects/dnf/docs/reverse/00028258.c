int __fastcall sub_28258(unsigned __int16 a1)
{
  const char *v1; // r1
  const char *v2; // r1
  const char *v3; // r6
  int i; // r4
  const char *v5; // r1
  const char *v6; // r7
  int v7; // r4
  const char *v8; // r1
  const char *v9; // r7
  int v10; // r4
  const char *v11; // r1
  int v12; // r4
  int m; // r2
  const char *v14; // r1
  const char *v15; // r7
  int v16; // r4
  const char *v17; // r1
  const char *v18; // r6
  int v19; // r4
  int v20; // r3
  const char *v21; // r1
  const char *v22; // r7
  int v23; // r4
  const char *v24; // r1
  int v25; // r4
  int jj; // r2
  int v28; // [sp+4h] [bp-64h]
  int v29; // [sp+Ch] [bp-5Ch]
  int v30; // [sp+10h] [bp-58h]
  int v31; // [sp+14h] [bp-54h]
  const char *v32; // [sp+18h] [bp-50h]
  const char *v33; // [sp+1Ch] [bp-4Ch]
  int j; // [sp+20h] [bp-48h]
  int k; // [sp+24h] [bp-44h]
  int v36; // [sp+28h] [bp-40h]
  int n; // [sp+2Ch] [bp-3Ch]
  int ii; // [sp+30h] [bp-38h]
  int v39; // [sp+34h] [bp-34h]
  int v40; // [sp+38h] [bp-30h]
  _BYTE v41[30]; // [sp+3Eh] [bp-2Ah] BYREF
  int v42; // [sp+5Ch] [bp-Ch] BYREF
  int v43; // [sp+60h] [bp-8h] BYREF
  __int16 v44; // [sp+66h] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+68h] [bp+0h]

  sub_2BCB6(v41, "%d.ds", a1);
  v29 = sub_2BCB6(v41, v1);
  if ( v29 )
  {
    sub_2BCBA(&v44, v29, 2);
    sub_2BCBA(&v42, v29 + 2, 4);
    sub_2BCBA(&v43, v29 + 6, 4);
    v30 = sub_2BCB6(v42 + 2, v2);
    sub_2BCB8(v29 + 10, v30, v42, v43, 6);
    sub_2BCBA(&byte_15333E4, v30, 1);
    v3 = (const char *)(v30 + 1);
    if ( byte_15333E4 )
    {
      for ( i = 0; i < (unsigned __int8)byte_15333E4; ++i )
      {
        sub_2BCB6((char *)&unk_15333E6 + 2 * i, v3, 2, &unk_140327C);
        v3 += 2;
      }
    }
    sub_2BCB6(&byte_1533404, v3, 1, &unk_140327C);
    v6 = v3 + 1;
    if ( byte_1533404 )
    {
      v7 = 8 * (unsigned __int8)byte_1533404;
      dword_1533408 = sub_2BCB6(v7 + 2, v5);
      dword_153340C = dword_1533408;
      sub_2BCB6(dword_1533408, 0, v7, &unk_140329C);
      for ( j = 0; j < (unsigned __int8)byte_1533404; ++j )
      {
        sub_2BCBC(8 * j + dword_153340C, v6, 1);
        sub_2BCBC(8 * j + dword_153340C + 1, v6 + 1, 1);
        sub_2BCBC(8 * j + dword_153340C + 2, v6 + 2, 1);
        sub_2BCBC(8 * j + dword_153340C + 3, v6 + 3, 1);
        sub_2BCBC(8 * j + dword_153340C + 4, v6 + 4, 2);
        sub_2BCBC(8 * j + dword_153340C + 6, v6 + 6, 2);
        v6 += 8;
      }
    }
    sub_2BCB6(&byte_1533410, v6, 1, &unk_140327C);
    v9 = v6 + 1;
    if ( byte_1533410 )
    {
      v10 = 8 * (unsigned __int8)byte_1533410;
      dword_1533414 = sub_2BCB6(v10 + 2, v8);
      dword_1533418 = dword_1533414;
      sub_2BCB6(dword_1533414, 0, v10, &unk_140329C);
      for ( k = 0; k < (unsigned __int8)byte_1533410; ++k )
      {
        sub_2BCBC(8 * k + dword_1533418, v9, 1);
        sub_2BCBC(8 * k + dword_1533418 + 1, v9 + 1, 1);
        sub_2BCBC(8 * k + dword_1533418 + 2, v9 + 2, 1);
        sub_2BCBC(8 * k + dword_1533418 + 3, v9 + 3, 1);
        sub_2BCBC(8 * k + dword_1533418 + 4, v9 + 4, 2);
        sub_2BCBC(8 * k + dword_1533418 + 6, v9 + 6, 2);
        v9 += 8;
      }
    }
    sub_2BCB6(&byte_153341C, v9, 1, &unk_140327C);
    v32 = v9 + 1;
    if ( byte_153341C )
    {
      v12 = 8 * (unsigned __int8)byte_153341C;
      dword_1533420 = sub_2BCB6(v12 + 2, v11);
      dword_1533424 = dword_1533420;
      sub_2BCB6(dword_1533420, 0, v12, &unk_140329C);
      for ( m = 0; ; m = v36 + 1 )
      {
        v36 = m;
        if ( m >= (unsigned __int8)byte_153341C )
          break;
        sub_2BCBC(8 * m + dword_1533424, v32, 2);
        sub_2BCBC(8 * v36 + dword_1533424 + 2, v32 + 2, 2);
        sub_2BCBC(8 * v36 + dword_1533424 + 4, v32 + 4, 1);
        v32 += 5;
      }
    }
    sub_2BCB6(&byte_1533428, v32, 1, &unk_140327C);
    v15 = v32 + 1;
    if ( byte_1533428 )
    {
      v16 = 8 * (unsigned __int8)byte_1533428;
      dword_153342C = sub_2BCB6(v16 + 2, v14);
      dword_1533430 = dword_153342C;
      sub_2BCB6(dword_153342C, 0, v16, &unk_140329C);
      for ( n = 0; n < (unsigned __int8)byte_1533428; ++n )
      {
        sub_2BCBC(8 * n + dword_1533430, v15, 1);
        sub_2BCBC(8 * n + dword_1533430 + 1, v15 + 1, 1);
        sub_2BCBC(8 * n + dword_1533430 + 2, v15 + 2, 1);
        sub_2BCBC(8 * n + dword_1533430 + 4, v15 + 3, 2);
        sub_2BCBC(8 * n + dword_1533430 + 6, v15 + 5, 2);
        v15 += 7;
      }
    }
    sub_2BCB6(&byte_1533434, v15, 1, &unk_140327C);
    v18 = v15 + 1;
    if ( byte_1533434 )
    {
      v19 = 44 * (unsigned __int8)byte_1533434;
      dword_1533438 = sub_2BCB6(v19 + 2, v17);
      dword_153343C = dword_1533438;
      sub_2BCB6(dword_1533438, 0, v19, &unk_140329C);
      v20 = 0;
      for ( ii = 0; ; ++ii )
      {
        v28 = v20;
        if ( ii >= (unsigned __int8)byte_1533434 )
          break;
        sub_2BCBA(v20 + dword_153343C, v18, 2);
        sub_2BCBA(v28 + dword_153343C + 2, v18 + 2, 1);
        sub_2BCBA(v28 + dword_153343C + 4, v18 + 3, 2);
        sub_2BCBA(v28 + dword_153343C + 6, v18 + 5, 1);
        v18 += 6;
        v20 = v28 + 44;
      }
    }
    sub_2BCB6(&byte_1533440, v18, 1, &unk_140327C);
    v22 = v18 + 1;
    if ( byte_1533440 )
    {
      v23 = 12 * (unsigned __int8)byte_1533440;
      dword_1533444 = sub_2BCB6(v23 + 2, v21);
      dword_1533448 = dword_1533444;
      sub_2BCB6(dword_1533444, 0, v23, &unk_140329C);
      v39 = 0;
      v31 = 0;
      while ( v39 < (unsigned __int8)byte_1533440 )
      {
        sub_2BCBA(v31 + dword_1533448, v22, 1);
        sub_2BCBA(v31 + dword_1533448 + 1, v22 + 1, 1);
        sub_2BCBA(v31 + dword_1533448 + 2, v22 + 2, 2);
        sub_2BCBA(v31 + dword_1533448 + 4, v22 + 4, 2);
        *(_BYTE *)(dword_1533448 + v31 + 6) = 1;
        *(_BYTE *)(dword_1533448 + v31 + 7) = -1;
        ++v39;
        v31 += 12;
        v22 += 6;
      }
    }
    sub_2BCB6(&byte_153345C, v22, 1, &unk_140327C);
    if ( byte_153345C )
    {
      v25 = 16 * (unsigned __int8)byte_153345C;
      v33 = v22 + 1;
      dword_1533460 = sub_2BCB6(v25 + 2, v24);
      dword_1533464 = dword_1533460;
      sub_2BCB6(dword_1533460, 0, v25, &unk_140329C);
      for ( jj = 0; ; jj = v40 + 1 )
      {
        v40 = jj;
        v24 = (const char *)jj;
        if ( jj >= (unsigned __int8)byte_153345C )
          break;
        sub_2BCBA(16 * jj + dword_1533464, v33, 1);
        sub_2BCBA(16 * v40 + dword_1533464 + 1, v33 + 1, 1);
        sub_2BCBA(16 * v40 + dword_1533464 + 2, v33 + 2, 2);
        sub_2BCBA(16 * v40 + dword_1533464 + 3, v33 + 4, 1);
        sub_2BCBA(16 * v40 + dword_1533464 + 4, v33 + 5, 1);
        sub_2BCBA(16 * v40 + dword_1533464 + 5, v33 + 6, 1);
        sub_2BCBA(16 * v40 + dword_1533464 + 6, v33 + 7, 2);
        sub_2BCBA(16 * v40 + dword_1533464 + 8, v33 + 9, 2);
        sub_2BCBA(16 * v40 + dword_1533464 + 10, v33 + 11, 2);
        sub_2BCBA(16 * v40 + dword_1533464 + 12, v33 + 13, 2);
        v33 += 15;
        *(_BYTE *)(dword_1533464 + 16 * v40 + 14) = 0;
      }
    }
    if ( v30 )
      sub_2BCB6(v30, v24, v30, &unk_14032FC);
    sub_2BCB6(v29, v24);
  }
  return savedregs[4];
}
