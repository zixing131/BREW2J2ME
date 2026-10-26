int sub_28CBC()
{
  unsigned __int8 i; // r5
  int v1; // r0
  int savedregs_8; // [sp+8h] [bp+8h]

  for ( i = 0; (unsigned __int8)byte_1533434 > (unsigned int)i; ++i )
  {
    v1 = 44 * i + dword_153343C;
    if ( *(unsigned __int8 *)(v1 + 16) != 255 )
      sub_2BCB8(20, *(unsigned __int16 *)(v1 + 34), *(unsigned __int8 *)(v1 + 37), *(unsigned __int8 *)(v1 + 33));
  }
  sub_2BCB8(25, 36108, 0, 0);
  return savedregs_8;
}
