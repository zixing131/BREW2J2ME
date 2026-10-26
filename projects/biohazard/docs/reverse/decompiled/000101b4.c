int __fastcall sub_101B4(int a1, int a2, int a3)
{
  bool v3; // zf
  int v4; // r12
  unsigned int v6; // r0
  unsigned int v7; // r1
  int v8; // r5

  v4 = a2 - 258;
  v3 = a2 == 258;
  if ( a2 == 258 )
    v4 = a3 - 57344;
  if ( a2 == 258 )
    v3 = v4 == 54;
  if ( v3 )
  {
    v6 = *(unsigned __int16 *)(a1 + 82);
    v7 = *(unsigned __int16 *)(a1 + 64);
    if ( v6 < v7 && *(_DWORD *)(a1 + 4 * v6 + 16) || *(_BYTE *)(a1 + 6) )
    {
      if ( v6 < v7 && *(_DWORD *)(a1 + 4 * v6 + 16) )
      {
        LOWORD(v8) = 0;
        do
        {
          sub_A10(a1);
          v8 = (__int16)(v8 + 1);
        }
        while ( v8 < 10 );
      }
    }
    else
    {
      *(_WORD *)(a1 + 4) = 0;
      *(_BYTE *)(a1 + 6) = 1;
    }
  }
  return 1;
}

