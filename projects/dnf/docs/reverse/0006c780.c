int __fastcall sub_6C780(unsigned __int16 a1, int a2)
{
  int v2; // r6
  int v3; // r0
  int v5; // r7
  int v6; // r1
  int v7; // r5

  v2 = a1;
  v3 = *(unsigned __int16 *)(a2 + 4);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  while ( v6 != v3 && !v7 )
  {
    if ( *(_DWORD *)(16 * v6 + *(_DWORD *)(a2 + 8)) == v2 )
    {
      v5 = 16 * v6 + *(_DWORD *)(a2 + 8);
      v7 = 1;
    }
    v6 = (unsigned __int16)(v6 + 1);
  }
  return v5;
}
