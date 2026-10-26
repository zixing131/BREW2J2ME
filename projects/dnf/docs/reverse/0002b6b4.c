int sub_2B6B4()
{
  int v0; // r3
  int v1; // r4
  int v2; // r2
  int i; // r5
  int v4; // r0
  int savedregs_16; // [sp+10h] [bp+10h]

  v0 = *(unsigned __int8 *)(dword_1501D90 + 6891);
  v1 = *(_DWORD *)(dword_1501D90 + 16);
  if ( v0 == 200 )
  {
    v2 = dword_150D89C;
    *(_WORD *)(v1 + 58) = *(_WORD *)(dword_150D89C + 16);
    *(_WORD *)(v1 + 60) = *(_WORD *)(v2 + 18);
  }
  else if ( v0 != 201 )
  {
    for ( i = 0; i < (unsigned __int8)byte_153345C; ++i )
    {
      v4 = 16 * i + dword_1533464;
      if ( *(unsigned __int8 *)(v4 + 1) == *(unsigned __int8 *)(dword_1501D90 + 6891) )
      {
        *(_WORD *)(v1 + 58) = *(_WORD *)(v4 + 6)
                            + (((*(__int16 *)(v4 + 10) < *(__int16 *)(v4 + 6))
                              + *(__int16 *)(v4 + 10)
                              - *(__int16 *)(v4 + 6)) >> 1);
        *(_WORD *)(v1 + 60) = *(_WORD *)(v4 + 8)
                            + (((*(__int16 *)(v4 + 12) < *(__int16 *)(v4 + 8))
                              + *(__int16 *)(v4 + 12)
                              - *(__int16 *)(v4 + 8)) >> 1);
      }
    }
  }
  sub_2BCB6(dword_1501D90);
  return savedregs_16;
}
