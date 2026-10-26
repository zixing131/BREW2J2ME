int __fastcall sub_2FB10(unsigned __int8 a1, unsigned __int16 a2)
{
  int v2; // r7
  unsigned __int8 v3; // r6
  int v6; // r4
  int v7; // [sp+0h] [bp-4h]

  v2 = a2;
  v3 = 0;
  v7 = a1;
  while ( 1 )
  {
    v6 = v3;
    if ( (unsigned __int16)word_150C790 <= (unsigned int)v3 )
      break;
    if ( sub_2F9BC(v7, v3++, v2) )
      return *(char *)(28 * v6 + dword_150C798);
  }
  return -1;
}
