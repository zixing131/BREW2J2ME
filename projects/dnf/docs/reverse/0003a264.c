int __fastcall sub_3A264(unsigned __int16 a1, int a2, int a3)
{
  int v3; // r6
  int v4; // r0
  int v5; // r1
  int v6; // r1
  char *v7; // r4
  int i; // r5
  int v9; // r2
  int v10; // r1
  int v11; // r2
  int savedregs_12; // [sp+Ch] [bp+Ch]

  v3 = 252 * a1;
  v4 = sub_66A76(*(_DWORD *)(dword_1501D90 + 16), *(_DWORD *)(dword_150C9D8 + v3 + 216), a3, 511777);
  v5 = *(_DWORD *)(v3 + dword_150C9D8 + 220);
  if ( v5 )
  {
    *(_DWORD *)(*(_DWORD *)(dword_1501D90 + 16) + 24) += v5;
    sub_2E7A0(v4);
  }
  else
  {
    v6 = *(_DWORD *)(dword_1501D90 + 16);
    *(_DWORD *)(v6 + 32) += *(unsigned __int8 *)(v3 + dword_150C9D8 + 224);
  }
  v7 = (char *)&unk_1534754;
  for ( i = 0; i != 2; ++i )
  {
    if ( *(char *)(4 * i + dword_150C9D8 + v3 + 228) != -1 && sub_66A76(v7, v6, dword_150C9D8, 526097) )
      sub_66A76(v7, v6, v9, 529193);
    v7 += 60;
  }
  if ( byte_15340F4
    && byte_150C6CB != -1
    && sub_66A76((char *)&unk_1535928 + 60 * byte_150C6CB, v6, byte_150C6CB + 1, 526097) )
  {
    sub_66A76((char *)&unk_1535928 + 60 * byte_150C6CB, v10, v11, 529193);
  }
  return savedregs_12;
}
