int sub_28BE4()
{
  int i; // r1
  int j; // r2
  char *v2; // r3
  int savedregs_8; // [sp+8h] [bp+8h]

  for ( i = 0; i != 10; ++i )
  {
    v2 = (char *)&dword_150D88C + 10 * i + 24;
    for ( j = 0; j != 10; ++j )
      *v2++ = 0;
  }
  dword_150D908 = (int)&dword_9216C;
  if ( dword_150D8A0 )
  {
    ((void (*)(void))sub_2BCB6)();
    dword_150D8A0 = 0;
    dword_150D89C = 0;
  }
  dword_150D8A0 = sub_2BCB6(222);
  dword_150D89C = dword_150D8A0;
  sub_2BCB6(dword_150D8A0);
  byte_150D90C = 0;
  byte_150D90D = 0;
  byte_150D90E = 0;
  *(_BYTE *)(dword_1501D90 + 6891) = -56;
  return savedregs_8;
}
