int __fastcall sub_270A4(int result, int a2, int a3, int a4)
{
  int i; // r12
  bool v5; // cc

  if ( !a3 )
    return 0;
  for ( i = 0; i < a4; ++i )
  {
    v5 = 0;
    if ( *(_BYTE *)(a3 + i) )
      v5 = i < a2 - 1;
    if ( !v5 )
      break;
    if ( result )
      *(_BYTE *)(result + i) = *(_BYTE *)(a3 + i);
  }
  *(_BYTE *)(result + i) = 0;
  return result;
}

