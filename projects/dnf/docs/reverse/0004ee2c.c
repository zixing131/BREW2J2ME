int __fastcall sub_4EE2C(int a1, __int16 a2)
{
  unsigned int v3; // r4
  int v4; // r4
  int v5; // r4
  char *v6; // r5
  int i; // r7
  int v8; // r4
  int savedregs_16; // [sp+14h] [bp+10h]

  v3 = a1 << 24;
  ((void (*)(void))sub_66A76)();
  v3 >>= 24;
  byte_150C6BD = v3;
  byte_150C6C2 = sub_66A76(v3);
  byte_150C6C1 = sub_66A7E((unsigned __int8)byte_150C6BD);
  byte_150C6C0 = sub_66A76((unsigned __int8)byte_150C6BD);
  if ( a2 > 0 )
  {
    sub_66A76((unsigned __int8)byte_150C6C1);
    word_150C6BE = a2;
LABEL_5:
    byte_150C6C4 = 0;
LABEL_9:
    v6 = (char *)&unk_150C6CC;
    for ( i = 0; i != 3; ++i )
    {
      if ( *(_BYTE *)(8 * i + 252 * word_150C6BE + dword_150C9D8 + 192) == 3 )
      {
        v8 = sub_66A76(*(unsigned __int16 *)(8 * i + 252 * word_150C6BE + dword_150C9D8 + 194));
        sub_66A76(v6);
        sub_66A76(v6);
        if ( v8 )
          sub_66A76(v8);
      }
      v6 += 24;
    }
    goto LABEL_14;
  }
  v4 = dword_1533448;
  if ( *(_BYTE *)(12 * (char)sub_66A7E((unsigned __int8)byte_150C6BD) + v4 + 7) == 2 )
  {
    word_150C6BE = sub_66A76((unsigned __int8)byte_150C6C0);
    goto LABEL_5;
  }
  v5 = dword_1533448;
  if ( *(_BYTE *)(12 * (char)sub_66A7E((unsigned __int8)byte_150C6BD) + v5 + 7) == 3 )
  {
    word_150C6BE = sub_66A76((unsigned __int8)byte_150C6C0);
    byte_150C6C4 = 3;
    byte_150C6CB = -1;
  }
  if ( !byte_150C6C4 )
    goto LABEL_9;
LABEL_14:
  byte_150C6BC = 0;
  sub_66A76((unsigned __int16)word_150C6BE);
  sub_2FFE4(1);
  dword_1501C18 = 1;
  dword_1501DA0 = 0;
  dword_1501DB4 = 0;
  dword_1501C80 = 0;
  dword_1501C58 = 0;
  sub_66A78(1, 22, 0, 0);
  return savedregs_16;
}
