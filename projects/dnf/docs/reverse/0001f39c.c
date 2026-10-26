int __fastcall sub_1F39C(unsigned __int8 a1)
{
  int v1; // r6
  char v2; // r0
  unsigned __int8 *v3; // r2
  int v4; // r4
  int i; // r1
  int v6; // r3
  int result; // r0

  v1 = a1;
  v2 = sub_1F300();
  if ( v2 != -1 )
  {
    v3 = (unsigned __int8 *)(16 * v2 + dword_150D168);
    v4 = 0;
    for ( i = 0; ; i += 24 )
    {
      result = v4;
      if ( v4 >= *v3 )
        break;
      v6 = *(unsigned __int8 *)(*((_DWORD *)v3 + 3) + i);
      ++v4;
      if ( v6 == v1 )
        return result;
    }
  }
  return -1;
}
