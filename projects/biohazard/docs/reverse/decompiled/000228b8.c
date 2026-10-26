int __fastcall sub_228B8(int a1)
{
  int result; // r0
  char *v3; // r7
  int i; // r5
  int v5; // r0
  int v6; // r1
  bool v7; // zf
  int v8; // r0

  result = *(_DWORD *)(a1 + 56);
  if ( result )
  {
    v3 = (char *)off_229B8 + 141532;
    if ( !*(_WORD *)(result + 8) )
      goto LABEL_15;
    if ( *(_DWORD *)(result + 4) )
    {
      (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
      *(_DWORD *)(*(_DWORD *)(a1 + 56) + 4) = 0;
    }
    for ( i = 0; ; ++i )
    {
      v8 = *(_DWORD *)(a1 + 56);
      if ( *(unsigned __int16 *)(v8 + 8) <= i )
        break;
      v5 = *(_DWORD *)v8 + 24 * i;
      v6 = *(_DWORD *)(v5 + 12);
      v7 = v6 == 0;
      if ( v6 )
        v7 = *(_DWORD *)(v5 + 16) == 0;
      if ( !v7 )
      {
        (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
        *(_DWORD *)(**(_DWORD **)(a1 + 56) + 24 * i + 16) = 0;
      }
    }
    if ( **(_DWORD **)(a1 + 56) )
    {
      (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
      **(_DWORD **)(a1 + 56) = 0;
    }
    result = *(_DWORD *)(a1 + 56);
    if ( result )
    {
LABEL_15:
      result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)&v3[-4] + 108))(*(_DWORD *)(a1 + 56));
      *(_DWORD *)(a1 + 56) = 0;
    }
  }
  return result;
}

