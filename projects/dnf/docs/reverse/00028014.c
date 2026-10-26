int sub_28014()
{
  int v0; // r1
  int v1; // r2
  int v2; // r3
  int v3; // r0
  int v4; // r7
  int i; // r2
  int j; // r6
  int k; // r7
  int v8; // r6
  int v9; // r5
  int v11; // [sp+0h] [bp-44h]
  int v12; // [sp+0h] [bp-44h]
  int v13; // [sp+0h] [bp-44h]
  int v14; // [sp+0h] [bp-44h]
  int v15; // [sp+0h] [bp-44h]
  int v16; // [sp+4h] [bp-40h]
  int v17; // [sp+4h] [bp-40h]
  int v18; // [sp+4h] [bp-40h]
  int v19; // [sp+4h] [bp-40h]
  int v20; // [sp+4h] [bp-40h]
  int v21; // [sp+4h] [bp-40h]
  int v22; // [sp+8h] [bp-3Ch]
  int v23; // [sp+8h] [bp-3Ch]
  int v24; // [sp+8h] [bp-3Ch]
  int v25; // [sp+8h] [bp-3Ch]
  int v26; // [sp+8h] [bp-3Ch]
  int v27; // [sp+Ch] [bp-38h]
  int v28; // [sp+14h] [bp-30h]
  _BYTE v29[30]; // [sp+1Ah] [bp-2Ah] BYREF
  int v30; // [sp+38h] [bp-Ch] BYREF
  int v31; // [sp+3Ch] [bp-8h] BYREF
  _BYTE v32[2]; // [sp+40h] [bp-4h] BYREF
  char v33; // [sp+42h] [bp-2h] BYREF
  char v34; // [sp+43h] [bp-1h] BYREF
  _DWORD savedregs[5]; // [sp+44h] [bp+0h]

  v34 = 0;
  v33 = 0;
  sub_2BCB6(v29);
  v16 = sub_2BCB6(v29);
  if ( v16 )
  {
    sub_2BCBA(v32, v16, 2);
    sub_2BCBA(&v30, v16 + 2, 4);
    sub_2BCBA(&v31, v16 + 6, 4);
    v3 = sub_2BCBC(v30 + 2, v0, v1, v2);
    sub_2BCB8(v16 + 10, v3, v30, v31, 6, v16, v3);
    sub_2BCBA(&v34, v22, 1);
    sub_2BCBA(&v33, v22 + 1, 1);
    v4 = v22 + 2;
    v28 = sub_2BCBC(8 * v33 * v34 + 2, &v33, v34, v33);
    sub_2BCB6(v28);
    for ( i = 0; ; i = v27 + 1 )
    {
      v27 = i;
      if ( i >= v34 )
        break;
      for ( j = 0; j < v33; ++j )
      {
        sub_2BCB8(v28 + 8 * (v33 * v27 + j), v4, 1, v27, v11, v17, v22);
        sub_2BCB8(v28 + 8 * (v33 * v27 + j) + 1, v4 + 1, 1, v33, v12, v18, v23);
        sub_2BCB8(v28 + 8 * (v33 * v27 + j) + 3, v4 + 2, 1, v28, v13, v19, v24);
        sub_2BCB8(v28 + 8 * (v33 * v27 + j) + 4, v4 + 3, 1, v28, v14, v20, v25);
        sub_2BCB8(v28 + 8 * (v33 * v27 + j) + 5, v4 + 4, 1, v28, v15, v21, v26);
        v4 += 5;
      }
    }
    for ( k = 0; k < (unsigned __int8)byte_15332D1; ++k )
    {
      v8 = 0;
      sub_2BCB6(k);
      while ( v8 < (unsigned __int8)byte_15332D2 )
      {
        v9 = 8 * ((unsigned __int8)byte_15332D2 * k + v8) + dword_15332F0;
        sub_2BCB6(v8);
        sub_2BCB6(v9);
        ++v8;
      }
    }
    if ( v28 > 0 )
      sub_2BCB6(v28);
    if ( v22 )
      sub_2BCB6(v22);
    sub_2BCB6(v17);
  }
  return savedregs[4];
}
