int __fastcall sub_27E44(unsigned __int8 a1)
{
  const char *v1; // r1
  int v2; // r4
  int v3; // r7
  const char *v4; // r1
  int v5; // r5
  int j; // r6
  int v7; // r6
  int v8; // r5
  int v9; // r4
  int v10; // r0
  int v12; // [sp+0h] [bp-50h]
  int v13; // [sp+0h] [bp-50h]
  int v14; // [sp+0h] [bp-50h]
  int v15; // [sp+4h] [bp-4Ch]
  int v16; // [sp+8h] [bp-48h]
  int v17; // [sp+Ch] [bp-44h]
  int i; // [sp+10h] [bp-40h]
  int v19; // [sp+14h] [bp-3Ch]
  int k; // [sp+18h] [bp-38h]
  _BYTE v21[30]; // [sp+1Eh] [bp-32h] BYREF
  const char *v22; // [sp+3Ch] [bp-14h] BYREF
  const char *v23; // [sp+40h] [bp-10h] BYREF
  int v24; // [sp+44h] [bp-Ch] BYREF
  int v25; // [sp+48h] [bp-8h] BYREF
  __int16 v26; // [sp+4Eh] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+50h] [bp+0h]

  v23 = 0;
  v22 = 0;
  sub_2BCB6(v21, "%d.for", a1);
  v15 = sub_2BCB6(v21, v1);
  if ( v15 )
  {
    sub_2BCBA(&v26, v15, 2);
    sub_2BCBA(&v24, v15 + 2, 4);
    sub_2BCBA(&v25, v15 + 6, 4);
    v16 = sub_2BCBC(v24 + 2);
    sub_2BCB8(v15 + 10, v16, v24, v25, 6);
    sub_2BCBA(&v23, v16, 1);
    sub_2BCBA(&v22, v16 + 1, 1);
    v17 = v16 + 2;
    v2 = 8 * (_DWORD)v22 * (_DWORD)v23;
    v3 = sub_2BCBC(v2 + 2);
    sub_2BCB6(v3, 0, v2, &unk_140329C);
    for ( i = 0; i < (int)v23; ++i )
    {
      for ( j = 0; j < (int)v22; ++j )
      {
        sub_2BCB8(v3 + 8 * ((_DWORD)v22 * i + j), v17, 1, i, v12);
        v5 = v17;
        sub_2BCB8(v3 + 8 * ((_DWORD)v22 * i + j) + 1, v17 + 1, 1, v22, v13);
        v17 += 3;
        sub_2BCB8(v3 + 8 * ((_DWORD)v22 * i + j) + 3, v5 + 2, 1, v22, v14);
      }
    }
    for ( k = 0; k < (unsigned __int8)byte_15332A5; ++k )
    {
      v7 = 0;
      v19 = sub_2BCB6(k, v23);
      while ( v7 < (unsigned __int8)byte_15332A6 )
      {
        v8 = 8 * ((unsigned __int8)byte_15332A6 * k + v7) + dword_15332C0;
        v9 = (_DWORD)v22 * v19;
        v10 = sub_2BCB6(v7, v22);
        sub_2BCB6(v8, (const char *)(v3 + 8 * (v9 + v10)), 8, &unk_140327C);
        ++v7;
      }
    }
    if ( v3 > 0 )
      sub_2BCB6(v3, v4);
    if ( v16 )
      sub_2BCB6(v16, v4);
    sub_2BCB6(v15, v4);
  }
  return savedregs[4];
}
