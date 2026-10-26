int __fastcall sub_1FA10(unsigned __int16 a1, int a2, unsigned int a3)
{
  int v3; // r7
  int v4; // r6
  int v5; // r3

  v3 = 252 * a1;
  v4 = 0;
  while ( 1 )
  {
    v5 = *(unsigned __int8 *)(8 * v4 + v3 + dword_150C9D8 + 168);
    if ( v5 == 1 )
    {
      a3 = byte_150C7A8[*(unsigned __int16 *)(8 * v4 + v3 + dword_150C9D8 + 170)];
      if ( a3 != *(unsigned __int8 *)(8 * v4 + v3 + dword_150C9D8 + 169) )
        return 0;
      goto LABEL_10;
    }
    if ( v5 != 2 )
      break;
    a3 = *(unsigned __int8 *)(*(_DWORD *)(dword_1501D90 + 16) + 6597);
    if ( a3 < *(unsigned __int8 *)(8 * v4 + v3 + dword_150C9D8 + 169) )
      return 0;
LABEL_10:
    if ( ++v4 == 3 )
      return 1;
  }
  if ( v5 != 3
    || (__int16)sub_22468(
                  *(unsigned __int8 *)(8 * v4 + v3 + dword_150C9D8 + 169),
                  *(unsigned __int8 *)(8 * v4 + v3 + dword_150C9D8 + 170),
                  a3,
                  526321) >= (int)*(unsigned __int8 *)(8 * v4 + dword_150C9D8 + v3 + 172) )
  {
    goto LABEL_10;
  }
  return 0;
}
