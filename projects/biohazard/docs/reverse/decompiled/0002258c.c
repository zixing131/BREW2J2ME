unsigned int __fastcall sub_2258C(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  unsigned int v5; // r5
  char *v7; // r10
  unsigned int result; // r0
  _DWORD *v9; // r6
  unsigned int i; // r0
  _DWORD *v11; // r1

  v5 = 0;
  v7 = (char *)off_2267C + 140716;
  while ( 1 )
  {
    result = a1[17];
    if ( result <= v5 )
      break;
    result = *(_DWORD *)(a1[19] + 4 * v5);
    if ( result >= a2 )
    {
      if ( result > a3 )
        return result;
      v9 = (_DWORD *)(a1[20] + 32 * v5);
      if ( v9[2] )
      {
        if ( *(_DWORD *)(a1[18] + 4 * v5) != *(_DWORD *)(a1[18] + 4 * v5 + 4) )
        {
          (*(void (**)(void))(*(_DWORD *)&v7[-4] + 108))();
          for ( i = v5 + 1; a1[17] > i && *(_DWORD *)(a1[18] + 4 * i) == *(_DWORD *)(a1[18] + 4 * i + 4); ++i )
          {
            v11 = (_DWORD *)(a1[20] + 32 * i);
            v11[2] = 0;
            v11[4] = 0;
            v11[3] = 0;
            v11[5] = 0;
            v11[7] = 0;
          }
        }
        v9[2] = 0;
        v9[4] = 0;
        v9[3] = 0;
        v9[5] = 0;
        v9[7] = 0;
      }
    }
    ++v5;
  }
  return result;
}

