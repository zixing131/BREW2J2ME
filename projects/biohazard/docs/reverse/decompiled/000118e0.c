int __fastcall sub_118E0(int a1, int a2)
{
  int v3; // r0
  int v4; // r2
  int v5; // r3

  v3 = *(_DWORD *)(a1 + 28);
  if ( v3 )
  {
    v4 = 0;
    v5 = *(unsigned __int16 *)(a1 + 32);
    while ( v5 > v4 )
    {
      if ( *(__int16 *)(v3 + 8 * v4) == a2 )
        return 1;
      ++v4;
    }
  }
  return 0;
}

