int __fastcall sub_840D8(unsigned __int16 a1)
{
  const char *v1; // r1
  const char *v2; // r1
  _DWORD *v3; // r2
  int v4; // r6
  int v5; // r5
  int v6; // r6
  char *v7; // r0
  char *v8; // r4
  char *v9; // r4
  char *v10; // r4
  char *v11; // r0
  char *v12; // r5
  int v13; // r6
  int v14; // r5
  int v15; // r6
  char *v16; // r0
  char *v17; // r4
  char *v18; // r4
  char *v19; // r4
  char *v20; // r0
  char *v21; // r5
  const char *v22; // r1
  int v24; // [sp+Ch] [bp-4Ch]
  int v25; // [sp+10h] [bp-48h]
  const char *i; // [sp+14h] [bp-44h]
  int k; // [sp+18h] [bp-40h]
  _DWORD *v28; // [sp+1Ch] [bp-3Ch]
  int v29; // [sp+20h] [bp-38h]
  int j; // [sp+24h] [bp-34h]
  _BYTE v31[30]; // [sp+2Ah] [bp-2Eh] BYREF
  int v32; // [sp+48h] [bp-10h] BYREF
  int v33; // [sp+4Ch] [bp-Ch] BYREF
  __int16 v34; // [sp+52h] [bp-6h] BYREF
  char v35[2]; // [sp+54h] [bp-4h] BYREF
  __int16 v36; // [sp+56h] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+58h] [bp+0h]

  sub_8A950(v31, "%d.bd", a1);
  v24 = sub_8A950(v31, v1);
  if ( v24 )
  {
    sub_8A954(&v36, v24, 2);
    sub_8A954(&v32, v24 + 2, 4);
    sub_8A954(&v33, v24 + 6, 4);
    v25 = sub_8A950(v32 + 2, v2);
    sub_8A952(v24 + 10, v25, v32, v33, 6);
    sub_8A954(v35, v25, 2);
    sub_8A954(&v34, v25 + 2, 2);
    v3 = &unk_1538860;
    v29 = v25 + 4;
    for ( i = 0; ; ++i )
    {
      v28 = v3;
      v22 = i;
      if ( (int)i >= (unsigned __int8)byte_153341C )
        break;
      for ( j = 0; j != 3; ++j )
      {
        v4 = *(unsigned __int8 *)(16 * j + *v28 + 94);
        if ( v4 != 255 )
        {
          v5 = 16 * (10 * (_DWORD)i + j);
          v6 = v29 + (__int16)(v4 * v34);
          v7 = (char *)&unk_1538860 + v5 + 20;
          v8 = v7 + 2;
          sub_8A958(v7, v6, 1);
          sub_8A958(v8, v6 + 1, 2);
          v9 = (char *)&unk_1538860 + v5 + 24;
          sub_8A958(v9, v6 + 3, 2);
          sub_8A958(v9 + 2, v6 + 5, 1);
          sub_8A958(v9 + 3, v6 + 6, 1);
          v10 = (char *)&unk_1538860 + v5 + 28;
          sub_8A958(v10, v6 + 7, 1);
          sub_8A958(v10 + 1, v6 + 8, 1);
          sub_8A958(v10 + 2, v6 + 9, 2);
          v11 = (char *)&unk_1538860 + v5 + 32;
          v12 = v11 + 2;
          sub_8A958(v11, v6 + 11, 2);
          sub_8A958(v12, v6 + 13, 1);
        }
      }
      for ( k = 0; k != 2; ++k )
      {
        v13 = *(unsigned __int8 *)(8 * k + *v28 + 137);
        if ( v13 != 255 )
        {
          v14 = 16 * (10 * (_DWORD)i + k);
          v15 = v29 + (__int16)(v13 * v34);
          v16 = (char *)&unk_1538860 + v14 + 68;
          v17 = v16 + 2;
          sub_8A958(v16, v15, 1);
          sub_8A958(v17, v15 + 1, 2);
          v18 = (char *)&unk_1538860 + v14 + 72;
          sub_8A958(v18, v15 + 3, 2);
          sub_8A958(v18 + 2, v15 + 5, 1);
          sub_8A958(v18 + 3, v15 + 6, 1);
          v19 = (char *)&unk_1538860 + v14 + 76;
          sub_8A958(v19, v15 + 7, 1);
          sub_8A958(v19 + 1, v15 + 8, 1);
          sub_8A958(v19 + 2, v15 + 9, 2);
          v20 = (char *)&unk_1538860 + v14 + 80;
          v21 = v20 + 2;
          sub_8A958(v20, v15 + 11, 2);
          sub_8A958(v21, v15 + 13, 1);
        }
      }
      v3 = v28 + 40;
    }
    if ( v25 )
      sub_8A950(v25, i, v25, &unk_14032FC);
    sub_8A950(v24, v22);
  }
  return savedregs[4];
}
