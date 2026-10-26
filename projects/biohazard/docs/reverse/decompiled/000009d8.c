int __fastcall sub_9D8(unsigned __int8 *a1, int a2)
{
  int v2; // r2
  unsigned __int8 *v3; // r12
  int v4; // r3
  int v5; // r1

  v2 = 0;
  v3 = &a1[a2];
  while ( a1 < v3 )
  {
    v4 = *a1++;
    v5 = v4 - 48;
    if ( (unsigned int)(v4 - 48) >= 0xA )
      v5 = (v4 | 0x20) - 87;
    v2 = v5 + 16 * v2;
  }
  return v2;
}

