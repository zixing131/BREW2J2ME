int sub_2EE98()
{
  int v0; // r4
  unsigned int v1; // r0
  int v2; // r4
  unsigned int v3; // r2
  int savedregs_4; // [sp+4h] [bp+4h]

  v0 = 0;
  while ( 1 )
  {
    v1 = (unsigned __int8)v0++;
    if ( (unsigned __int8)byte_150D864 <= v1 )
      break;
    sub_66A76((char *)&unk_15355BC + 16 * v1, 0, 16, &unk_140329C);
  }
  v2 = 0;
  while ( 1 )
  {
    v3 = (unsigned __int8)v2++;
    if ( (unsigned __int8)byte_1533720 <= v3 )
      break;
    sub_66A76((char *)&unk_1534168 + 28 * v3, 0, 28, &unk_140329C);
  }
  return savedregs_4;
}
