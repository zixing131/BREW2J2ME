int __fastcall sub_85BC0(unsigned __int8 a1)
{
  int v1; // r6
  unsigned __int8 v2; // r5
  int *v3; // r4
  int v4; // r0
  int v5; // r0
  int v6; // r0
  int v7; // r0
  int v8; // r0
  unsigned __int8 *v9; // r5
  unsigned __int8 *v10; // r5
  _BYTE *v11; // r7
  int v12; // r4
  unsigned int v13; // r1
  char *v14; // r4
  int v15; // r5
  unsigned int v16; // r4
  int v18; // [sp+8h] [bp-14h]
  int v19; // [sp+Ch] [bp-10h]
  _BYTE *v20; // [sp+10h] [bp-Ch]
  int v21; // [sp+14h] [bp-8h]
  unsigned __int8 i; // [sp+18h] [bp-4h]
  int savedregs_16; // [sp+2Ch] [bp+10h]

  v1 = a1;
  v2 = 0;
  byte_1538F34 = 0;
  while ( (unsigned __int8)byte_153341C > (unsigned int)v2 )
  {
    v3 = &dword_1538860[40 * v2];
    if ( !v3[1] )
    {
      v4 = sub_8A950(162);
      v3[1] = v4;
      *v3 = v4;
      sub_8A950(v4);
    }
    ++v2;
  }
  v5 = sub_844D0(6);
  v6 = sub_84D38(v5);
  if ( v1 == 1 )
    sub_8201C(v6);
  sub_84374(5);
  v7 = sub_840D8(7);
  sub_8A950(v7);
  sub_83B0C(9);
  v8 = sub_83D44(2);
  for ( i = 0; (unsigned __int8)byte_153341C > (unsigned int)i; ++i )
  {
    v21 = (unsigned __int8)(3 * i);
    v20 = &dword_1538860[40 * i + 5];
    v9 = (unsigned __int8 *)&dword_1538860[40 * i + 25];
    v19 = 0;
    do
    {
      if ( *(int *)(16 * v19 + dword_1538860[40 * i] + 96) > 0 )
        v8 = sub_8A952(7, (unsigned __int16)*(_DWORD *)(16 * v19 + dword_1538860[40 * i] + 96), 0, v21);
      if ( *(unsigned __int8 *)(16 * v19 + dword_1538860[40 * i] + 94) != 255 )
      {
        if ( (unsigned __int8)(*v20 - 3) > 3u )
          v8 = sub_8A952(*v9, *((unsigned __int16 *)v9 + 1), v9[5], v9[1]);
        if ( *v20 == 1 )
          byte_1538F34 = 1;
      }
      ++v19;
      v20 += 16;
      v9 += 12;
      v21 = (unsigned __int8)(v21 + 1);
    }
    while ( v19 != 3 );
    v10 = (unsigned __int8 *)&dword_1538860[40 * i + 34];
    v18 = 0;
    v11 = &dword_1538860[40 * i + 17];
    do
    {
      if ( *(unsigned __int8 *)(8 * v18 + dword_1538860[40 * i] + 137) != 255 )
      {
        if ( (unsigned __int8)(*v11 - 3) > 3u )
          v8 = sub_8A952(*v10, *((unsigned __int16 *)v10 + 1), v10[5], v10[1]);
        if ( *v11 == 1 )
          byte_1538F34 = 1;
      }
      ++v18;
      v11 += 16;
      v10 += 12;
    }
    while ( v18 != 2 );
  }
  sub_8A950(v8);
  v12 = 0;
  while ( 1 )
  {
    v13 = (unsigned __int8)v12++;
    if ( (unsigned __int8)byte_153341C <= v13 )
      break;
    sub_8A950((char *)&unk_1538AE4 + 36 * v13);
  }
  v14 = (char *)&unk_1538F38;
  do
  {
    sub_8A950(v14);
    sub_8A950(v14);
    v14 += 24;
  }
  while ( v14 != &byte_1538F98 );
  v15 = 0;
  while ( 1 )
  {
    v16 = (unsigned __int8)v15++;
    if ( (unsigned __int8)byte_153341C <= v16 )
      break;
    sub_8A950(word_14030C6[*(unsigned __int8 *)(dword_1538860[40 * v16] + 2)]);
  }
  return savedregs_16;
}
