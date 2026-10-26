unsigned int __fastcall sub_22508(_DWORD *a1)
{
  unsigned int v2; // r5
  char *v3; // r7
  _DWORD *v4; // r4
  unsigned int result; // r0

  v2 = 0;
  v3 = (char *)off_22588 + 140576;
  while ( 1 )
  {
    result = a1[17];
    if ( result <= v2 )
      break;
    v4 = (_DWORD *)(a1[20] + 32 * v2);
    if ( v4[2] )
    {
      if ( *(_DWORD *)(a1[18] + 4 * v2) != *(_DWORD *)(a1[18] + 4 * v2 + 4) )
        (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
      v4[2] = 0;
      v4[4] = 0;
      v4[3] = 0;
      v4[5] = 0;
      v4[7] = 0;
    }
    ++v2;
  }
  return result;
}

