int __fastcall sub_20408(int a1)
{
  unsigned int v2; // r1
  int result; // r0
  int v4; // r1

  v2 = *(_DWORD *)(a1 + 296) + 1;
  *(_DWORD *)(a1 + 296) = v2;
  result = *(unsigned __int8 *)(a1 + 16);
  if ( !result )
  {
    result = sub_104(5u, v2);
    if ( !v4 )
    {
      if ( *(_BYTE *)(a1 + 290) )
        result = 0;
      else
        result = *(_DWORD *)(a1 + 292);
      if ( !*(_BYTE *)(a1 + 290) )
        ++result;
      *(_DWORD *)(a1 + 292) = result;
    }
  }
  return result;
}

