int __fastcall sub_1F4F8(unsigned __int8 a1, unsigned __int8 a2)
{
  int v2; // r4
  int v3; // r3
  int v4; // r2
  int v5; // r1
  unsigned __int8 *v6; // r0

  v2 = a2;
  v3 = 252 * *(__int16 *)&byte_150C9DC[96 * a1 + 6] + dword_150C9D8;
  v4 = v3 + 192;
  v5 = 0;
  v6 = (unsigned __int8 *)(v3 + 198);
  do
  {
    if ( *(_BYTE *)v4 == 1 && *(_WORD *)(v4 + 2) == 19 && *(unsigned __int16 *)(v4 + 4) == v2 )
      return *v6;
    ++v5;
    v6 += 8;
    v4 += 8;
  }
  while ( v5 != 3 );
  return 0;
}
