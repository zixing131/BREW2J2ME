int __fastcall sub_12E0C(int a1, int a2)
{
  int i; // r2

  for ( i = 0; *(unsigned __int16 *)(a1 + 12) > i; i = (__int16)(i + 1) )
  {
    if ( *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 72 * i + 48) == a2 )
      return i;
  }
  return -1;
}

