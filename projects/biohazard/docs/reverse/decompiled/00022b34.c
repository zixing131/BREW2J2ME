int __fastcall sub_22B34(_DWORD *a1)
{
  char *v2; // r6
  unsigned int i; // r5
  int v4; // r0
  bool v5; // zf

  v2 = (char *)off_22BFC + 142156;
  if ( a1[20] )
  {
    for ( i = 0; a1[17] > i; ++i )
    {
      v4 = *(_DWORD *)(a1[20] + 32 * i + 8);
      v5 = v4 == 0;
      if ( v4 )
        v5 = *(_DWORD *)(a1[18] + 4 * i) == *(_DWORD *)(a1[18] + 4 * i + 4);
      if ( !v5 )
        (*(void (**)(void))(*(_DWORD *)&v2[-4] + 108))();
    }
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v2[-4] + 108))(a1[20]);
  }
  if ( a1[18] )
    (*(void (**)(void))(*(_DWORD *)&v2[-4] + 108))();
  if ( a1[19] )
    (*(void (**)(void))(*(_DWORD *)&v2[-4] + 108))();
  a1[20] = 0;
  a1[17] = 0;
  a1[18] = 0;
  a1[19] = 0;
  return 0;
}

