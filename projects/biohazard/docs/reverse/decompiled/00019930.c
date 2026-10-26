int __fastcall sub_19930(unsigned int a1)
{
  int result; // r0
  unsigned int v3; // r1
  int i; // r2
  unsigned int v5; // r12

  result = 0;
  v3 = 0;
  for ( i = 0; i < 16; ++i )
  {
    v3 = 4 * v3 + (a1 >> 30);
    result *= 2;
    v5 = 2 * result + 1;
    if ( v5 <= v3 )
    {
      v3 -= v5;
      ++result;
    }
    a1 *= 4;
  }
  return result;
}

