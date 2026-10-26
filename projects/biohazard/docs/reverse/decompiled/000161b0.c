int __fastcall sub_161B0(__int16 *a1, int a2)
{
  int v2; // r12
  __int16 *v3; // lr
  __int16 *v4; // r4
  int result; // r0

  *a1 = 6;
  a1[1] = 0;
  v2 = 0;
  do
  {
    v3 = &a1[4 * v2];
    v3[2] = v2 + 9250;
    v3[4] = 0;
    v3[5] = 0;
    v2 = (__int16)(v2 + 1);
  }
  while ( *a1 > v2 );
  a1[3] = 120;
  a1[7] = 200;
  a1[11] = 500;
  a1[15] = 100;
  a1[19] = 150;
  a1[23] = 650;
  a1[4] = 1;
  a1[8] = 2;
  a1[12] = 6;
  a1[16] = 50;
  a1[20] = 100;
  a1[24] = 500;
  v4 = a1 + 128;
  a1[130] = 0;
  a1[133] = 36;
  result = sub_104(0x24u, a2 - 100);
  if ( result >= 6 )
    result = 6;
  v4[3] = result;
  v4[4] = 1;
  return result;
}

