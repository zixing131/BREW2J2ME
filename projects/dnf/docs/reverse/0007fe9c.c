int __fastcall sub_7FE9C(int a1)
{
  int v1; // r6
  int v2; // r2
  int v4; // r4
  int v5; // r5
  int v6; // r5
  char *v7; // r12
  int v8; // r2
  int v9; // r4
  int v10; // r5
  int v11; // r4
  int v12; // r5
  unsigned __int8 j; // r5
  int v14; // r2
  int v15; // r4
  int v16; // r7
  int v17; // r4
  int v18; // r7
  int v19; // r3
  int v20; // r1
  unsigned __int8 *v22; // [sp+10h] [bp-40h]
  int v23; // [sp+18h] [bp-38h]
  unsigned __int8 i; // [sp+20h] [bp-30h]
  int v25; // [sp+24h] [bp-2Ch] BYREF
  int v26; // [sp+28h] [bp-28h]
  int v27; // [sp+2Ch] [bp-24h]
  int v28; // [sp+30h] [bp-20h]
  int v29; // [sp+34h] [bp-1Ch]
  int v30; // [sp+38h] [bp-18h]
  int v31; // [sp+3Ch] [bp-14h] BYREF
  int v32; // [sp+40h] [bp-10h]
  int v33; // [sp+44h] [bp-Ch]
  int v34; // [sp+48h] [bp-8h]
  int v35; // [sp+4Ch] [bp-4h]
  _DWORD savedregs[5]; // [sp+50h] [bp+0h]

  v1 = a1 + 68;
  v2 = 68 * *(unsigned __int8 *)(a1 + 75) + *(_DWORD *)(36 * *(unsigned __int8 *)(a1 + 74) + *(_DWORD *)(a1 + 92) + 32);
  if ( *(_BYTE *)(v2 + 36) )
  {
    v4 = *(_DWORD *)(v2 + 44);
    v5 = *(_DWORD *)(v2 + 48);
    v31 = *(_DWORD *)(v2 + 40);
    v32 = v4;
    v33 = v5;
    v6 = *(_DWORD *)(v2 + 56);
    v34 = *(_DWORD *)(v2 + 52);
    v35 = v6;
    if ( *(_BYTE *)(a1 + 64) == 1 )
    {
      HIWORD(v34) = v31;
      LOWORD(v31) = -(__int16)v32;
      LOWORD(v32) = -HIWORD(v34);
    }
    LOWORD(v33) = *(_WORD *)(a1 + 58);
    LOWORD(v34) = *(_WORD *)(a1 + 60);
    v23 = 0;
    for ( i = 0; (unsigned __int8)byte_153AD9C > (unsigned int)i; ++i )
    {
      v7 = (char *)&unk_1538F9C + 640 * i;
      if ( v7[34] )
      {
        v8 = 68 * (unsigned __int8)v7[85]
           + *(_DWORD *)(36 * (unsigned __int8)v7[84] + dword_1538AE4[9 * (unsigned __int8)byte_1537CD9[i] + 6] + 32);
        if ( *(_BYTE *)(v8 + 9) )
        {
          if ( *(_BYTE *)(v8 + 9) != 2 )
          {
            v9 = *(_DWORD *)(v8 + 16);
            v10 = *(_DWORD *)(v8 + 20);
            v25 = *(_DWORD *)(v8 + 12);
            v26 = v9;
            v27 = v10;
            v11 = *(_DWORD *)(v8 + 28);
            v12 = *(_DWORD *)(v8 + 32);
            v28 = *(_DWORD *)(v8 + 24);
            v29 = v11;
            v30 = v12;
            if ( v7[48] == 1 )
            {
              HIWORD(v30) = v25;
              v25 = -v27;
              v27 = -SHIWORD(v30);
            }
            LOWORD(v29) = *((_WORD *)v7 + 8);
            LOWORD(v30) = *((_WORD *)v7 + 9);
            if ( sub_7638C(&v31, (int)&v25) )
              v23 = sub_7ED64(
                      a1,
                      i,
                      *(_BYTE *)(a1 + 6576),
                      0,
                      *(unsigned __int8 *)(68 * *(unsigned __int8 *)(v1 + 7)
                                         + *(_DWORD *)(36 * *(unsigned __int8 *)(v1 + 6) + *(_DWORD *)(v1 + 24) + 32)
                                         + 36),
                      v1);
          }
        }
      }
    }
    for ( j = 0; (unsigned __int8)byte_1533440 > (unsigned int)j; ++j )
    {
      v22 = (unsigned __int8 *)(16 * j + dword_1533450);
      v14 = 68 * v22[5]
          + *(_DWORD *)(36 * v22[4]
                      + *(_DWORD *)(*(_DWORD *)(8 * *(unsigned __int8 *)(dword_1533448 + 12 * j) + dword_1533458 + 4)
                                  + 24)
                      + 32);
      if ( *(_BYTE *)(v14 + 9) && *(_BYTE *)(v14 + 9) != 2 )
      {
        v15 = *(_DWORD *)(v14 + 16);
        v16 = *(_DWORD *)(v14 + 20);
        v25 = *(_DWORD *)(v14 + 12);
        v26 = v15;
        v27 = v16;
        v17 = *(_DWORD *)(v14 + 28);
        v18 = *(_DWORD *)(v14 + 32);
        v28 = *(_DWORD *)(v14 + 24);
        v29 = v17;
        v30 = v18;
        if ( v22[12] == 1 )
        {
          HIWORD(v30) = v25;
          v25 = -v27;
          v27 = -SHIWORD(v30);
        }
        v19 = dword_1533448 + 12 * j;
        LOWORD(v29) = *(_WORD *)(v19 + 2);
        LOWORD(v30) = *(_WORD *)(v19 + 4);
        if ( sub_76480(&v31, (int)&v25) )
          sub_80706(j, v20);
      }
    }
    sub_80706(v23, 22);
  }
  else
  {
    sub_80706(0, 22);
  }
  return savedregs[4];
}
