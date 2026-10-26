int sub_2AE60()
{
  unsigned __int8 *v0; // r3
  int v1; // r6
  int v2; // r2
  int j; // r5
  unsigned __int8 *v4; // r3
  int v5; // r5
  int v6; // r2
  int m; // r6
  unsigned __int8 *v8; // r3
  int v9; // r4
  int v10; // r12
  unsigned __int8 *v11; // r3
  int v12; // r4
  int v13; // r12
  unsigned __int8 *v14; // r3
  int v15; // r4
  int v16; // r6
  int i3; // r7
  unsigned __int8 *v18; // r3
  int v19; // r4
  int v20; // r6
  int i6; // r7
  unsigned __int8 *v22; // r3
  int v23; // r4
  int v24; // r6
  int i9; // r7
  int v26; // r7
  unsigned __int8 *v27; // r2
  int v28; // r6
  int i; // [sp+18h] [bp-A0h]
  int n; // [sp+1Ch] [bp-9Ch]
  __int16 v32; // [sp+20h] [bp-98h]
  int v33; // [sp+24h] [bp-94h]
  int v34; // [sp+28h] [bp-90h]
  int v35; // [sp+2Ch] [bp-8Ch]
  int v36; // [sp+30h] [bp-88h]
  int v37; // [sp+34h] [bp-84h]
  int v38; // [sp+38h] [bp-80h]
  int v39; // [sp+3Ch] [bp-7Ch]
  int v40; // [sp+40h] [bp-78h]
  __int16 v41; // [sp+5Ch] [bp-5Ch]
  __int16 v42; // [sp+60h] [bp-58h]
  __int16 v43; // [sp+64h] [bp-54h]
  __int16 v44; // [sp+68h] [bp-50h]
  __int16 v45; // [sp+6Ch] [bp-4Ch]
  __int16 v46; // [sp+70h] [bp-48h]
  __int16 v47; // [sp+74h] [bp-44h]
  __int16 v48; // [sp+78h] [bp-40h]
  __int16 v49; // [sp+7Ch] [bp-3Ch]
  int kk; // [sp+80h] [bp-38h]
  int i1; // [sp+84h] [bp-34h]
  int i4; // [sp+88h] [bp-30h]
  int i7; // [sp+8Ch] [bp-2Ch]
  int jj; // [sp+90h] [bp-28h]
  int nn; // [sp+94h] [bp-24h]
  int k; // [sp+98h] [bp-20h]
  int ii; // [sp+9Ch] [bp-1Ch]
  int mm; // [sp+A0h] [bp-18h]
  int i2; // [sp+A4h] [bp-14h]
  int i5; // [sp+A8h] [bp-10h]
  int i8; // [sp+ACh] [bp-Ch]
  _BYTE v62[4]; // [sp+B0h] [bp-8h] BYREF
  unsigned __int8 v63; // [sp+B4h] [bp-4h]
  _DWORD savedregs[5]; // [sp+B8h] [bp+0h]

  v33 = 16 * (unsigned __int8)byte_15332D5;
  sub_2BCB6(v62);
  sub_2BCB6(0);
  for ( i = 0; i < (unsigned __int8)byte_15332A5; ++i )
  {
    for ( j = 0; j < (unsigned __int8)byte_15332A6; ++j )
    {
      v0 = (unsigned __int8 *)(8 * ((unsigned __int8)byte_15332A6 * i + j) + dword_15332C0);
      v1 = v0[1];
      v2 = *v0;
      v38 = v0[3];
      v63 = *((_BYTE *)&word_15332A0 + v2 + 23);
      sub_2BCB8(
        word_1534730 / 2 + 16 * j,
        16 * i + word_15346FC,
        0,
        0,
        *(_DWORD *)(8 * v2 + dword_15332CC + 4),
        v1,
        0,
        v62,
        v38);
    }
  }
  for ( k = 0; k < (unsigned __int8)byte_15332D1; ++k )
  {
    for ( m = 0; m < (unsigned __int8)byte_15332D2; ++m )
    {
      v4 = (unsigned __int8 *)(8 * ((unsigned __int8)byte_15332D2 * k + m) + dword_15332F0);
      v5 = v4[1];
      v6 = *v4;
      v37 = v4[3];
      v63 = *((_BYTE *)&word_15332A0 + v6 + 69);
      sub_2BCB8(
        16 * m + word_1534730,
        16 * k + v33 + word_15346FC,
        0,
        0,
        *(_DWORD *)(8 * v6 + dword_15332FC + 4),
        v5,
        0,
        v62,
        v37);
    }
  }
  if ( byte_1533300 >= 0 )
  {
    v49 = 16 * ((unsigned __int8)byte_153331E + (unsigned __int8)byte_15332D5 + 1 - (unsigned __int8)byte_1533305);
    for ( n = 0; n < (unsigned __int8)byte_153330F; ++n )
    {
      v44 = 16 * ((unsigned __int8)byte_1533319 + ((unsigned __int8)byte_1533314 + (unsigned __int8)byte_153330A) * n);
      for ( ii = 0; ii < (unsigned __int8)byte_1533305; ++ii )
      {
        for ( jj = 0; jj < (unsigned __int8)byte_153330A; ++jj )
        {
          v8 = (unsigned __int8 *)(8 * ((unsigned __int8)byte_153330A * ii + jj) + dword_1533390);
          v9 = *v8;
          v40 = v8[1];
          v10 = v8[3];
          v63 = *((_BYTE *)&word_15332A0 + v9 + 151);
          sub_2BCB8(
            v44 + word_1534730 + 16 * jj,
            16 * ii + v49 + word_15346FC,
            0,
            0,
            *(_DWORD *)(8 * v9 + dword_15333B8 + 4),
            v40,
            0,
            v62,
            v10);
        }
      }
    }
  }
  if ( byte_1533301 >= 0 )
  {
    v48 = 16 * ((unsigned __int8)byte_153331F + (unsigned __int8)byte_15332D5 + 1 - (unsigned __int8)byte_1533306);
    for ( kk = 0; kk < (unsigned __int8)byte_1533310; ++kk )
    {
      v43 = 16 * ((unsigned __int8)byte_153331A + ((unsigned __int8)byte_1533315 + (unsigned __int8)byte_153330B) * kk);
      for ( mm = 0; mm < (unsigned __int8)byte_1533306; ++mm )
      {
        for ( nn = 0; nn < (unsigned __int8)byte_153330B; ++nn )
        {
          v11 = (unsigned __int8 *)(8 * ((unsigned __int8)byte_153330B * mm + nn) + dword_1533398);
          v12 = *v11;
          v39 = v11[1];
          v13 = v11[3];
          v63 = *((_BYTE *)&word_15332A0 + v12 + 171);
          sub_2BCB8(
            v43 + word_1534730 + 16 * nn,
            16 * mm + v48 + word_15346FC,
            0,
            0,
            *(_DWORD *)(8 * v12 + dword_15333C0 + 4),
            v39,
            0,
            v62,
            v13);
        }
      }
    }
  }
  if ( byte_1533302 >= 0 )
  {
    v47 = 16 * ((unsigned __int8)byte_1533320 + (unsigned __int8)byte_15332D5 + 1 - (unsigned __int8)byte_1533307);
    for ( i1 = 0; i1 < (unsigned __int8)byte_1533311; ++i1 )
    {
      v42 = 16 * ((unsigned __int8)byte_153331B + ((unsigned __int8)byte_1533316 + (unsigned __int8)byte_153330C) * i1);
      for ( i2 = 0; i2 < (unsigned __int8)byte_1533307; ++i2 )
      {
        for ( i3 = 0; i3 < (unsigned __int8)byte_153330C; ++i3 )
        {
          v14 = (unsigned __int8 *)(8 * ((unsigned __int8)byte_153330C * i2 + i3) + dword_15333A0);
          v15 = *v14;
          v16 = v14[1];
          v36 = v14[3];
          v63 = *((_BYTE *)&word_15332A0 + v15 + 191);
          sub_2BCB8(
            v42 + word_1534730 + 16 * i3,
            16 * i2 + v47 + word_15346FC,
            0,
            0,
            *(_DWORD *)(8 * v15 + dword_15333C8 + 4),
            v16,
            0,
            v62,
            v36);
        }
      }
    }
  }
  if ( byte_1533303 >= 0 )
  {
    v46 = 16 * ((unsigned __int8)byte_1533321 + (unsigned __int8)byte_15332D5 + 1 - (unsigned __int8)byte_1533308);
    for ( i4 = 0; i4 < (unsigned __int8)byte_1533312; ++i4 )
    {
      v41 = 16 * ((unsigned __int8)byte_153331C + ((unsigned __int8)byte_1533317 + (unsigned __int8)byte_153330D) * i4);
      for ( i5 = 0; i5 < (unsigned __int8)byte_1533308; ++i5 )
      {
        for ( i6 = 0; i6 < (unsigned __int8)byte_153330D; ++i6 )
        {
          v18 = (unsigned __int8 *)(8 * ((unsigned __int8)byte_153330D * i5 + i6) + dword_15333A8);
          v19 = *v18;
          v20 = v18[1];
          v35 = v18[3];
          v63 = *((_BYTE *)&word_15332A0 + v19 + 211);
          sub_2BCB8(
            v41 + word_1534730 + 16 * i6,
            16 * i5 + v46 + word_15346FC,
            0,
            0,
            *(_DWORD *)(8 * v19 + dword_15333D0 + 4),
            v20,
            0,
            v62,
            v35);
        }
      }
    }
  }
  if ( byte_1533304 >= 0 )
  {
    v45 = 16 * ((unsigned __int8)byte_1533322 + (unsigned __int8)byte_15332D5 + 1 - (unsigned __int8)byte_1533309);
    for ( i7 = 0; i7 < (unsigned __int8)byte_1533313; ++i7 )
    {
      v32 = 16 * ((unsigned __int8)byte_153331D + ((unsigned __int8)byte_1533318 + (unsigned __int8)byte_153330E) * i7);
      for ( i8 = 0; i8 < (unsigned __int8)byte_1533309; ++i8 )
      {
        for ( i9 = 0; i9 < (unsigned __int8)byte_153330E; ++i9 )
        {
          v22 = (unsigned __int8 *)(8 * ((unsigned __int8)byte_153330E * i8 + i9) + dword_15333B0);
          v23 = *v22;
          v24 = v22[1];
          v34 = v22[3];
          v63 = *((_BYTE *)&word_15332A0 + v23 + 231);
          sub_2BCB8(
            v32 + word_1534730 + 16 * i9,
            16 * i8 + v45 + word_15346FC,
            0,
            0,
            *(_DWORD *)(8 * v23 + dword_15333D8 + 4),
            v24,
            0,
            v62,
            v34);
        }
      }
    }
  }
  v26 = 0;
  v63 = 0;
  while ( v26 < (unsigned __int8)byte_1533404 )
  {
    v27 = (unsigned __int8 *)(8 * v26 + dword_153340C);
    v28 = v27[3];
    v63 = v27[2];
    sub_2BCB8(
      *((__int16 *)v27 + 2) + word_1534730,
      *((__int16 *)v27 + 3) + word_15346FC,
      0,
      0,
      *(_DWORD *)(8 * *v27 + dword_1533400 + 4),
      v27[1],
      0,
      v62,
      v28);
    ++v26;
  }
  return savedregs[4];
}
