int __fastcall sub_122B8(int a1, int a2)
{
  unsigned int v2; // r2
  unsigned int v3; // r3

  v2 = 0;
  v3 = *(_DWORD *)(a1 + 32);
  while ( v3 > v2 && *(unsigned __int16 *)(*(_DWORD *)(a1 + 40) + 2 * v2) != a2 )
    ++v2;
  if ( v3 == v2 )
    return dword_122F8;
  else
    return (unsigned __int16)v2;
}

