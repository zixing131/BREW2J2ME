int __fastcall sub_27A64(unsigned __int8 a1, int a2)
{
  const char *v3; // r1
  const char *v4; // r1
  int v5; // r3
  int v6; // r5
  int v7; // r6
  int nn; // r7
  int i; // r3
  int v10; // r6
  int j; // r7
  int k; // r3
  int v13; // r6
  int m; // r7
  int n; // r3
  int v16; // r6
  int ii; // r7
  int jj; // r3
  int v19; // r6
  int kk; // r7
  int v22; // [sp+4h] [bp-54h]
  int v23; // [sp+8h] [bp-50h]
  int v24; // [sp+Ch] [bp-4Ch]
  int mm; // [sp+10h] [bp-48h]
  int v26; // [sp+14h] [bp-44h]
  int v27; // [sp+18h] [bp-40h]
  int v28; // [sp+1Ch] [bp-3Ch]
  int v29; // [sp+20h] [bp-38h]
  _BYTE v30[30]; // [sp+26h] [bp-32h] BYREF
  int v31; // [sp+44h] [bp-14h] BYREF
  int v32; // [sp+48h] [bp-10h] BYREF
  int v33; // [sp+4Ch] [bp-Ch] BYREF
  int v34; // [sp+50h] [bp-8h] BYREF
  __int16 v35; // [sp+56h] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+58h] [bp+0h]

  v32 = 0;
  v31 = 0;
  sub_2BCB6(v30, "%d.fob", a1);
  v22 = sub_2BCB6(v30, v3);
  if ( v22 )
  {
    sub_2BCBA(&v35, v22, 2);
    sub_2BCBA(&v33, v22 + 2, 4);
    sub_2BCBA(&v34, v22 + 6, 4);
    v23 = sub_2BCBC(v33 + 2);
    sub_2BCB8(v22 + 10, v23, v33, v34, 6);
    sub_2BCBA(&v32, v23, 1);
    sub_2BCBA(&v31, v23 + 1, 1);
    v24 = v23 + 2;
    v4 = (char *)&word_15332A0 + a2 + 100;
    *((_BYTE *)&word_15332A0 + a2 + 101) = v32;
    v5 = (unsigned __int8)v31;
    *((_BYTE *)&word_15332A0 + a2 + 106) = v31;
    v6 = 8 * v5 * *((unsigned __int8 *)&word_15332A0 + a2 + 101);
    if ( a2 )
    {
      switch ( a2 )
      {
        case 1:
          dword_1533394 = sub_2BCBC(v6 + 2);
          dword_1533398 = dword_1533394;
          sub_2BCB6(dword_1533394, 0, v6, &unk_140329C);
          for ( i = 0; ; i = v26 + 1 )
          {
            v26 = i;
            if ( i >= v32 )
              break;
            for ( j = 0; j < v31; ++j )
            {
              sub_2BCBA(8 * (v31 * v26 + j) + dword_1533398, v24, 1);
              v10 = v24;
              sub_2BCBA(8 * (v31 * v26 + j) + dword_1533398 + 1, v24 + 1, 1);
              v24 += 3;
              sub_2BCBA(8 * (v31 * v26 + j) + dword_1533398 + 3, v10 + 2, 1);
            }
          }
          break;
        case 2:
          dword_153339C = sub_2BCBC(v6 + 2);
          dword_15333A0 = dword_153339C;
          sub_2BCB6(dword_153339C, 0, v6, &unk_140329C);
          for ( k = 0; ; k = v27 + 1 )
          {
            v27 = k;
            if ( k >= v32 )
              break;
            for ( m = 0; m < v31; ++m )
            {
              sub_2BCBA(8 * (v31 * v27 + m) + dword_15333A0, v24, 1);
              v13 = v24;
              sub_2BCBA(8 * (v31 * v27 + m) + dword_15333A0 + 1, v24 + 1, 1);
              v24 += 3;
              sub_2BCBA(8 * (v31 * v27 + m) + dword_15333A0 + 3, v13 + 2, 1);
            }
          }
          break;
        case 3:
          dword_15333A4 = sub_2BCBC(v6 + 2);
          dword_15333A8 = dword_15333A4;
          sub_2BCB6(dword_15333A4, 0, v6, &unk_140329C);
          for ( n = 0; ; n = v28 + 1 )
          {
            v28 = n;
            if ( n >= v32 )
              break;
            for ( ii = 0; ii < v31; ++ii )
            {
              sub_2BCBA(8 * (v31 * v28 + ii) + dword_15333A8, v24, 1);
              v16 = v24;
              sub_2BCBA(8 * (v31 * v28 + ii) + dword_15333A8 + 1, v24 + 1, 1);
              v24 += 3;
              sub_2BCBA(8 * (v31 * v28 + ii) + dword_15333A8 + 3, v16 + 2, 1);
            }
          }
          break;
        case 4:
          dword_15333AC = sub_2BCBC(v6 + 2);
          dword_15333B0 = dword_15333AC;
          sub_2BCB6(dword_15333AC, 0, v6, &unk_140329C);
          for ( jj = 0; ; jj = v29 + 1 )
          {
            v29 = jj;
            if ( jj >= v32 )
              break;
            for ( kk = 0; kk < v31; ++kk )
            {
              sub_2BCBA(8 * (v31 * v29 + kk) + dword_15333B0, v24, 1);
              v19 = v24;
              sub_2BCBA(8 * (v31 * v29 + kk) + dword_15333B0 + 1, v24 + 1, 1);
              v24 += 3;
              sub_2BCBA(8 * (v31 * v29 + kk) + dword_15333B0 + 3, v19 + 2, 1);
            }
          }
          break;
      }
    }
    else
    {
      dword_153338C = sub_2BCBC(v6 + 2);
      dword_1533390 = dword_153338C;
      sub_2BCB6(dword_153338C, 0, v6, &unk_140329C);
      for ( mm = 0; mm < v32; ++mm )
      {
        for ( nn = 0; nn < v31; ++nn )
        {
          sub_2BCBA(8 * (v31 * mm + nn) + dword_1533390, v24, 1);
          v7 = v24;
          sub_2BCBA(8 * (v31 * mm + nn) + dword_1533390 + 1, v24 + 1, 1);
          v24 += 3;
          sub_2BCBA(8 * (v31 * mm + nn) + dword_1533390 + 3, v7 + 2, 1);
        }
      }
    }
    if ( v23 )
      sub_2BCB6(v23, v4);
    sub_2BCB6(v22, v4);
  }
  return savedregs[4];
}
