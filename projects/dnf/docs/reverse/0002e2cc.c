int sub_2E2CC()
{
  int v0; // r0
  int v1; // r1
  int v2; // r2
  int v3; // r3
  int v4; // r0
  int i; // r2
  int savedregs_8; // [sp+8h] [bp+8h]

  v0 = 0;
  v1 = 0;
  do
  {
    v2 = v1 + *(_DWORD *)(dword_1501D90 + 16);
    v3 = *(unsigned __int8 *)(v2 + 587);
    if ( v3 != 40 && v3 != 51 && v3 != 59 && v3 != 60 && v3 != 62 && v3 != 65 && v3 != 81 && v3 != 82 )
    {
      *(_BYTE *)(v2 + 116) = 0;
      *(_BYTE *)(v1 + *(_DWORD *)(dword_1501D90 + 16) + 584) = 0;
    }
    ++v0;
    v1 += 36;
  }
  while ( v0 != 13 );
  v4 = (unsigned __int8)byte_153AD9C;
  for ( i = 0; i != v4; i = (unsigned __int8)(i + 1) )
    byte_1537CD9[i] = 0;
  return savedregs_8;
}
