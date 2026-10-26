int __fastcall sub_15334(int result, unsigned int a2)
{
  if ( a2 > 0x30 )
    LOWORD(a2) = 48;
  *(_WORD *)(result + 114) = a2;
  return result;
}

