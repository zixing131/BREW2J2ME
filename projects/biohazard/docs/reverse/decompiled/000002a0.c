unsigned int __fastcall sub_2A0(int a1)
{
  int v1; // r3
  int v2; // r1
  unsigned int v3; // r0
  unsigned int result; // r0

  v1 = a1;
  if ( a1 < 0 )
    a1 = -a1;
  v2 = a1 - 10;
  v3 = a1 - ((unsigned int)a1 >> 2) + ((a1 - ((unsigned int)a1 >> 2)) >> 4);
  result = (v3 + (v3 >> 8) + ((v3 + (v3 >> 8)) >> 16)) >> 3;
  if ( (int)(v2 - 10 * result) >= 0 )
    ++result;
  if ( v1 < 0 )
    return -result;
  return result;
}

