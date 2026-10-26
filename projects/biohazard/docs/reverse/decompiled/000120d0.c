int __fastcall sub_120D0(int a1)
{
  int v1; // r0
  int v2; // r1
  bool v3; // cc

  v1 = *(_DWORD *)(a1 + 2200);
  v2 = 0;
  do
  {
    v3 = 0;
    if ( *(_BYTE *)(v1 + 56 * v2 + 2016) )
      v3 = ++v2 < 99;
  }
  while ( v3 );
  return v1 + 56 * v2 + 1996;
}

