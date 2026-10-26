int __fastcall sub_844D0(unsigned __int16 a1)
{
  const char *v1; // r1
  const char *v2; // r1
  _DWORD *v3; // r7
  const char *v4; // r6
  int v5; // r4
  const char *v6; // r5
  int v7; // r4
  int v8; // r4
  int v9; // r3
  const char *v10; // r6
  int v11; // r5
  int v12; // r3
  const char *v13; // r1
  int v15; // [sp+0h] [bp-7Ch]
  int v16; // [sp+18h] [bp-64h]
  int v17; // [sp+24h] [bp-58h]
  const char *v18; // [sp+28h] [bp-54h]
  int i; // [sp+2Ch] [bp-50h]
  int v20; // [sp+30h] [bp-4Ch]
  const char *v21; // [sp+40h] [bp-3Ch]
  int v22; // [sp+44h] [bp-38h]
  int j; // [sp+48h] [bp-34h]
  _BYTE v24[30]; // [sp+4Eh] [bp-2Eh] BYREF
  int v25; // [sp+6Ch] [bp-10h] BYREF
  int v26; // [sp+70h] [bp-Ch] BYREF
  __int16 v27; // [sp+76h] [bp-6h] BYREF
  _BYTE v28[2]; // [sp+78h] [bp-4h] BYREF
  __int16 v29; // [sp+7Ah] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+7Ch] [bp+0h]

  sub_8A950(v24, "%d.bd", a1);
  v17 = sub_8A950(v24, v1);
  if ( v17 )
  {
    sub_8A956(&v29);
    sub_8A956(&v25);
    sub_8A956(&v26);
    v18 = (const char *)sub_8A950(v25 + 2, v2);
    v15 = 6;
    sub_8A952(v17 + 10, v18, v25, v26);
    sub_8A956(v28);
    sub_8A956(&v27);
    v3 = dword_1538860;
    for ( i = 0; i < (unsigned __int8)byte_153341C; ++i )
    {
      v4 = &v18[(*(unsigned __int16 *)(8 * i + dword_1533424) - 1) * v27 + 4];
      sub_8A950(*v3, v4, 1);
      sub_8A950(*v3 + 1, v4 + 1, 1, &unk_140327C, v15);
      sub_8A950(*v3 + 2, v4 + 2, 1, &unk_140327C);
      sub_8A950(*v3 + 60, v4 + 3, 24, &unk_140327C);
      sub_8A950(*v3 + 3, v4 + 27, 1, &unk_140327C);
      sub_8A950(*v3 + 4, v4 + 28, 1, &unk_140327C);
      sub_8A950(*v3 + 6, v4 + 29, 1, &unk_140327C);
      sub_8A950(*v3 + 7, v4 + 30, 1, &unk_140327C);
      sub_8A950(*v3 + 8, v4 + 31, 1, &unk_140327C);
      sub_8A950(*v3 + 9, v4 + 32, 1, &unk_140327C);
      sub_8A950(*v3 + 10, v4 + 33, 1, &unk_140327C);
      sub_8A950(*v3 + 11, v4 + 34, 1, &unk_140327C);
      sub_8A950(*v3 + 12, v4 + 35, 1, &unk_140327C);
      sub_8A950(*v3 + 13, v4 + 36, 1, &unk_140327C);
      sub_8A950(*v3 + 14, v4 + 37, 1, &unk_140327C);
      sub_8A950(*v3 + 15, v4 + 38, 1, &unk_140327C);
      sub_8A950(*v3 + 16, v4 + 39, 1, &unk_140327C);
      sub_8A950(*v3 + 17, v4 + 40, 1, &unk_140327C);
      sub_8A950(*v3 + 18, v4 + 41, 1, &unk_140327C);
      sub_8A950(*v3 + 19, v4 + 42, 1, &unk_140327C);
      sub_8A950(*v3 + 20, v4 + 43, 1, &unk_140327C);
      sub_8A950(*v3 + 21, v4 + 44, 1, &unk_140327C);
      sub_8A950(*v3 + 22, v4 + 45, 1, &unk_140327C);
      sub_8A950(*v3 + 23, v4 + 46, 1, &unk_140327C);
      sub_8A950(*v3 + 24, v4 + 47, 1, &unk_140327C);
      sub_8A950(*v3 + 25, v4 + 48, 1, &unk_140327C);
      sub_8A950(*v3 + 26, v4 + 49, 1, &unk_140327C);
      sub_8A950(*v3 + 28, v4 + 50, 4, &unk_140327C);
      sub_8A950(*v3 + 32, v4 + 54, 2, &unk_140327C);
      sub_8A950(*v3 + 34, v4 + 56, 2, &unk_140327C);
      sub_8A950(*v3 + 36, v4 + 58, 2, &unk_140327C);
      sub_8A950(*v3 + 38, v4 + 60, 1, &unk_140327C);
      sub_8A950(*v3 + 40, v4 + 61, 2, &unk_140327C);
      sub_8A950(*v3 + 42, v4 + 63, 1, &unk_140327C);
      sub_8A950(*v3 + 44, v4 + 64, 1, &unk_140327C);
      sub_8A950(*v3 + 45, v4 + 65, 1, &unk_140327C);
      sub_8A950(*v3 + 50, v4 + 66, 2, &unk_140327C);
      sub_8A950(*v3 + 46, v4 + 68, 1, &unk_140327C);
      sub_8A950(*v3 + 47, v4 + 69, 1, &unk_140327C);
      sub_8A950(*v3 + 52, v4 + 70, 1, &unk_140327C);
      sub_8A950(*v3 + 54, v4 + 71, 2, &unk_140327C);
      sub_8A950(*v3 + 56, v4 + 73, 1, &unk_140327C);
      sub_8A950(*v3 + 57, v4 + 74, 1, &unk_140327C);
      sub_8A950(*v3 + 58, v4 + 75, 1, &unk_140327C);
      sub_8A950(*v3 + 27, v4 + 76, 1, &unk_140327C);
      sub_8A950(*v3 + 59, v4 + 77, 1, &unk_140327C);
      v21 = v4 + 78;
      for ( j = 0; j != 3; ++j )
      {
        v5 = 16 * j + 84;
        sub_8A956(v5 + *v3);
        sub_8A956(v5 + *v3 + 1);
        sub_8A956(16 * j + 96 + *v3);
        sub_8A956(v5 + *v3 + 2);
        sub_8A956(v5 + *v3 + 3);
        sub_8A956(16 * j + 88 + *v3);
        sub_8A956(16 * j + 88 + *v3 + 2);
        sub_8A956(16 * j + 88 + *v3 + 1);
        v16 = 16 * j + 92;
        sub_8A956(v16 + *v3);
        sub_8A956(v16 + *v3 + 1);
        sub_8A956(v16 + *v3 + 2);
        v21 += 15;
      }
      v22 = 0;
      v6 = v4 + 123;
      do
      {
        v7 = 8 * v22 + 132;
        sub_8A956(v7 + *v3);
        sub_8A956(v7 + *v3 + 2);
        v8 = 8 * v22 + 136;
        sub_8A956(v8 + *v3);
        sub_8A956(v8 + *v3 + 1);
        v9 = v22 + 1;
        v6 += 5;
        v22 = v9;
      }
      while ( v9 != 2 );
      v20 = 0;
      v10 = v4 + 133;
      v11 = 148;
      do
      {
        sub_8A952(v11 + *v3, v10, 2, v9);
        sub_8A952(v11 + *v3 + 2, v10 + 2, 2, v12);
        v10 += 4;
        ++v20;
        v11 += 4;
      }
      while ( v20 != 3 );
      v3 += 40;
    }
    v13 = v18;
    if ( v18 )
      sub_8A950(v18, v18, &word_15332A0, &unk_14032FC, v15);
    sub_8A950(v17, v13);
  }
  return savedregs[4];
}
