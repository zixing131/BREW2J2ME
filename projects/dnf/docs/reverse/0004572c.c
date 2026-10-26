int __fastcall sub_4572C(int a1, int a2)
{
  int v2; // r4
  int v3; // r6
  char *v4; // r5
  int v5; // r4
  int v6; // r1
  int savedregs_12; // [sp+Ch] [bp+Ch]

  v2 = a1 << 16;
  sub_66A76(a1, a2);
  byte_1533C0B = 0;
  byte_150C6C4 = 0;
  byte_15337C0 = 0;
  byte_150C6BC = 0;
  word_150C6BE = HIWORD(v2);
  dword_1501C18 = 2;
  sub_342D0(HIWORD(v2));
  sub_66A78(1, 23, 0);
  v3 = 0;
  v4 = (char *)&unk_150C6CC;
  do
  {
    if ( *(_BYTE *)(8 * v3 + 252 * word_150C6BE + dword_150C9D8 + 192) == 3 )
    {
      v5 = sub_66A76(*(unsigned __int16 *)(8 * v3 + 252 * word_150C6BE + dword_150C9D8 + 194), &word_150C9D0);
      sub_66A76(v4, 0);
      sub_66A76(v4, v5);
      if ( v5 )
        sub_66A76(v5, v6);
    }
    ++v3;
    v4 += 24;
  }
  while ( v3 != 3 );
  return savedregs_12;
}
