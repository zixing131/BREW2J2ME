int __fastcall sub_2034C(int a1)
{
  int v2; // r1
  int v3; // r2
  bool v4; // zf

  if ( *(_DWORD *)(a1 + 316) != 1 )
    return 0;
  v2 = *(_DWORD *)(a1 + 320) + 1;
  *(_DWORD *)(a1 + 320) = v2;
  v3 = *(unsigned __int16 *)(a1 + 380);
  if ( *(_WORD *)(a1 + 380) )
  {
    v4 = v3 == 1;
    if ( v3 == 1 )
      v4 = v2 == 68;
    if ( v4 )
      sub_103B4(a1, 5, 4, (int)off_203CC + 132000, 1, -1);
  }
  else if ( v2 == 50 )
  {
    *(_WORD *)(a1 + 380) = 1;
    *(_DWORD *)(a1 + 320) = 0;
  }
  return 1;
}

