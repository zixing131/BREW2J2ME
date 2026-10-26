int __fastcall sub_6100(int a1, int a2, int a3)
{
  unsigned int v3; // r0
  unsigned int i; // r3
  int result; // r0

  v3 = *(_DWORD *)(a1 + 324);
  for ( i = 0; v3 > i && *(char *)(v3 - 1 - i + a2 + 328) == *(char *)(a3 + i); i = (i + 1) & 0xFFFEFFFF )
    ;
  result = 0;
  if ( *(unsigned __int8 *)(a3 + i) == 255 )
  {
    *(_DWORD *)(a2 + 324) = 0;
    return 1;
  }
  return result;
}

