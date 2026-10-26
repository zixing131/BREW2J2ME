int __fastcall sub_20298(int a1)
{
  int v2; // r0
  bool v3; // zf
  unsigned int v4; // r0
  int result; // r0

  v2 = *(_DWORD *)(a1 + 12);
  v3 = (v2 & 3) == 0;
  if ( (v2 & 3) == 0 )
    v3 = *(_DWORD *)(a1 + 76) == 0;
  if ( v3 )
    sub_A10(a1);
  if ( *(_BYTE *)(a1 + 6) == 1 )
  {
    v4 = *(unsigned __int16 *)(a1 + 4);
    if ( v4 > 0x10 )
      *(_BYTE *)(a1 + 62) = 0;
    *(_WORD *)(a1 + 4) = v4 + 1;
  }
  result = *(_DWORD *)(a1 + 12) + 1;
  *(_DWORD *)(a1 + 12) = result;
  return result;
}

