unsigned int __fastcall sub_122FC(_DWORD *a1, unsigned int a2)
{
  int v2; // lr
  int v3; // r2
  int v4; // r12
  bool v5; // zf
  unsigned int v6; // r2
  unsigned int v7; // r3
  unsigned int result; // r0
  unsigned int v9; // r4

  v3 = a1[20];
  v4 = a1[17];
  v5 = v3 == 0;
  if ( v3 )
    v5 = a1[18] == 0;
  if ( !v5 )
  {
    v2 = a1[19];
    v5 = v2 == 0;
    if ( v2 )
      v5 = v4 == 0;
  }
  if ( v5 )
    return v4;
  v6 = 0;
  v7 = v4 - 1;
  while ( v6 + 1 < v7 )
  {
    result = (v6 + v7) >> 1;
    v9 = *(_DWORD *)(v2 + 4 * result);
    if ( v9 == a2 )
      return result;
    if ( v9 < a2 )
      v6 = (v6 + v7) >> 1;
    else
      v7 = (v6 + v7) >> 1;
  }
  if ( *(_DWORD *)(v2 + 4 * v6) == a2 )
    return v6;
  if ( *(_DWORD *)(v2 + 4 * v7) != a2 )
    return v4;
  else
    return v7;
}

