int __fastcall sub_14BC8(int result, char a2)
{
  bool v2; // zf

  v2 = result == 0;
  if ( result )
    *(_BYTE *)(result + 212) = a2;
  else
    result = 1;
  if ( !v2 )
    return 0;
  return result;
}

