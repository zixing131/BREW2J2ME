int __fastcall sub_1209C(int a1)
{
  int v1; // r0
  int v2; // r1
  bool v3; // cc

  v1 = *(_DWORD *)(a1 + 2200);
  v2 = 0;
  do
  {
    v3 = 0;
    if ( *(_BYTE *)(v1 + 48 * v2 + 108) )
      v3 = ++v2 < 39;
  }
  while ( v3 );
  return v1 + 48 * v2 + 76;
}

