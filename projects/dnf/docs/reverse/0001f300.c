int sub_1F300()
{
  int v0; // r1
  int result; // r0

  v0 = dword_150D168;
  for ( result = 0; result < (unsigned __int8)byte_150D160; ++result )
  {
    if ( *(unsigned __int8 *)(v0 + 3) == *(unsigned __int8 *)(dword_1501D90 + 6889)
      && *(unsigned __int8 *)(v0 + 4) == *(char *)(dword_1501D90 + 6890) )
    {
      return result;
    }
    v0 += 16;
  }
  return -1;
}
