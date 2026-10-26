int __fastcall sub_6E284(int a1)
{
  int v1; // r2
  int v3; // r6
  int v4; // r5
  int v5; // r0
  int v6; // r2
  int v7; // r7
  int v8; // r6
  int v9; // r3
  int v10; // r0
  int v11; // r3
  int v12; // r0

  v1 = *(_DWORD *)(a1 + 812);
  if ( v1 )
  {
    v3 = 0;
    v4 = 0;
    *(_DWORD *)(a1 + 820) = v1;
    while ( v3 < *(unsigned __int8 *)(a1 + 1) )
    {
      sub_6EACE(v4 + *(_DWORD *)(a1 + 820));
      ++v3;
      v4 += 24;
    }
    v5 = *(_DWORD *)(a1 + 812);
    if ( v5 )
    {
      sub_6EACE(v5);
      *(_DWORD *)(a1 + 812) = 0;
    }
    *(_DWORD *)(a1 + 812) = 0;
    *(_DWORD *)(a1 + 820) = 0;
  }
  v6 = *(_DWORD *)(a1 + 808);
  if ( v6 )
  {
    v7 = 0;
    v8 = 0;
    *(_DWORD *)(a1 + 816) = v6;
    while ( v7 < *(unsigned __int8 *)(a1 + 806) )
    {
      v9 = v8 + *(_DWORD *)(a1 + 816);
      v10 = *(_DWORD *)(v9 + 4);
      if ( v10 )
      {
        *(_DWORD *)(v9 + 8) = v10;
        sub_6EACE(v10);
        v11 = *(_DWORD *)(a1 + 816) + v8;
        *(_DWORD *)(v11 + 4) = 0;
        *(_DWORD *)(v11 + 8) = 0;
      }
      ++v7;
      v8 += 12;
    }
    v12 = *(_DWORD *)(a1 + 808);
    if ( v12 )
    {
      sub_6EACE(v12);
      *(_DWORD *)(a1 + 808) = 0;
    }
    *(_DWORD *)(a1 + 808) = 0;
    *(_DWORD *)(a1 + 816) = 0;
  }
  return 0;
}
