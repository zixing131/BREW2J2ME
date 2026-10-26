int sub_1FD3C()
{
  char *v0; // r4
  int savedregs_4; // [sp+4h] [bp+4h]

  byte_150C6BC = -1;
  byte_150C6BD = 0;
  word_150C6BE = -1;
  byte_150C6C0 = -1;
  byte_150C6C1 = -1;
  byte_150C6C2 = -1;
  byte_150C6C3 = -1;
  byte_150C6C4 = -1;
  word_150C6C6 = -1;
  word_150C6C8 = -1;
  byte_150C6CA = -1;
  byte_150C6CB = -1;
  v0 = (char *)&unk_150C6CC;
  do
  {
    sub_22468(v0, 0, 24, &unk_140329C);
    v0 += 24;
  }
  while ( v0 != &byte_150C714 );
  return savedregs_4;
}
