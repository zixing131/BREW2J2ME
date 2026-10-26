int __fastcall sub_21BA8(int a1, int a2)
{
  int v2; // r2
  bool v3; // zf
  int v4; // lr
  int i; // r12
  int v6; // r12
  int v7; // r12
  int v9; // r4
  int v10; // r3
  int v11; // r1
  __int16 v12; // r3

  v2 = *(_DWORD *)(a1 + 28);
  v3 = v2 == 0;
  if ( v2 )
  {
    a2 = *(unsigned __int16 *)(a1 + 32);
    v3 = a2 == 0;
  }
  if ( v3 )
    return 0;
  if ( !*(_WORD *)(a1 + 20) )
  {
    v4 = *(unsigned __int16 *)(a1 + 2);
    if ( *(unsigned __int16 *)(a1 + 4) != v4 )
    {
      *(_WORD *)(a1 + 4) = *(_WORD *)(a1 + 2);
      for ( i = 0; a2 > i && *(unsigned __int16 *)(v2 + 8 * i) != v4; i = (__int16)(i + 1) )
        ;
      if ( a2 <= i )
      {
        *(_WORD *)(a1 + 2) = 0;
        *(_WORD *)(a1 + 4) = 0;
        *(_WORD *)(a1 + 6) = 0;
      }
      else
      {
        *(_WORD *)(a1 + 6) = i;
      }
      v6 = *(__int16 *)(v2 + 8 * *(__int16 *)(a1 + 6) + 2);
      *(_WORD *)(a1 + 34) = v6;
      if ( *(__int16 *)(a1 + 8) >= v6 )
        *(_WORD *)(a1 + 8) = 0;
    }
    v7 = *(__int16 *)(a1 + 6);
    if ( v7 >= 0 && v7 < a2 )
    {
      *(_WORD *)(a1 + 20) = 0;
      *(_WORD *)(a1 + 18) = 0;
      v9 = *(__int16 *)(a1 + 34);
      do
      {
        v10 = *(__int16 *)(a1 + 8);
        if ( v10 >= v9 )
          break;
        v11 = *(_DWORD *)(*(_DWORD *)(v2 + 8 * v7 + 4) + 4 * v10);
        v12 = v10 + 1;
        if ( !*(_BYTE *)v11 )
        {
          *(_WORD *)(a1 + 20) = *(_WORD *)(v11 + 4);
          *(_WORD *)(a1 + 22) = *(_WORD *)(v11 + 6);
          *(_DWORD *)(a1 + 24) = *(_DWORD *)(v11 + 8);
        }
        *(_WORD *)(a1 + 8) = v12;
      }
      while ( *(_BYTE *)v11 );
      return 1;
    }
    return 0;
  }
  --*(_WORD *)(a1 + 20);
  return 1;
}

