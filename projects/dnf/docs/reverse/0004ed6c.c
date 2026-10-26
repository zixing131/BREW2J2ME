int __fastcall sub_4ED6C(int a1)
{
  unsigned int v1; // r4
  char v2; // r0
  int v3; // r0
  char *v4; // r4
  int i; // r1
  char v6; // r3
  char v7; // r1
  int savedregs_12; // [sp+Ch] [bp+Ch]

  v1 = a1 << 24;
  sub_66A76(a1);
  v1 >>= 24;
  byte_1500065 = 0;
  byte_150C6BC = 1;
  byte_150C6BD = v1;
  byte_150C6C0 = sub_66A76(v1);
  byte_150C6C1 = sub_66A76(v1);
  v2 = sub_66A76(v1);
  byte_1500063 = 0;
  byte_150005E[0] = -1;
  byte_150005F = -1;
  byte_1500060 = -1;
  byte_1500061 = -1;
  byte_1500062 = -1;
  byte_150C6C2 = v2;
  v3 = byte_1402886[v1];
  v4 = (char *)&unk_14028AF + 4 * v1;
  for ( i = 0; i < v3; ++i )
  {
    v6 = *v4++;
    byte_150005E[i] = v6;
  }
  byte_1500063 = i;
  sub_66A76(v3);
  if ( byte_150D16C )
  {
    v7 = byte_1500063 + 1;
    byte_150005E[byte_1500063] = 16;
    byte_1500063 = v7;
  }
  return savedregs_12;
}
