unsigned int __fastcall sub_2E4(unsigned int a1)
{
  unsigned int v1; // r1
  unsigned int v2; // r0
  unsigned int result; // r0

  v1 = a1 - 10;
  v2 = a1 - (a1 >> 2) + ((a1 - (a1 >> 2)) >> 4);
  result = (v2 + (v2 >> 8) + ((v2 + (v2 >> 8)) >> 16)) >> 3;
  if ( (int)(v1 - 10 * result) >= 0 )
    ++result;
  return result;
}

