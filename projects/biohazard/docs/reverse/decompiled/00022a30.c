int __fastcall sub_22A30(int a1)
{
  int result; // r0
  int v3; // r5
  char *v4; // r8
  int i; // r4
  int v6; // r7
  int v7; // r0

  result = *(_DWORD *)(a1 + 28);
  if ( result )
  {
    v3 = 0;
    v4 = (char *)off_22B30 + 141912;
    while ( *(unsigned __int16 *)(a1 + 32) > v3 )
    {
      for ( i = 0; ; i = (__int16)(i + 1) )
      {
        v7 = *(_DWORD *)(a1 + 28) + 8 * v3;
        if ( *(__int16 *)(v7 + 2) <= i )
          break;
        v6 = *(_DWORD *)(*(_DWORD *)(v7 + 4) + 4 * i);
        if ( v6 )
        {
          if ( !*(_BYTE *)v6 )
          {
            if ( *(_DWORD *)(v6 + 8) )
            {
              (*(void (**)(void))(*(_DWORD *)&v4[-4] + 108))();
              *(_DWORD *)(v6 + 8) = 0;
            }
          }
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v4[-4] + 108))(*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 28)
                                                                                            + 8 * v3
                                                                                            + 4)
                                                                                + 4 * i));
        }
      }
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v4[-4] + 108))(*(_DWORD *)(*(_DWORD *)(a1 + 28) + 8 * v3 + 4));
      v3 = (__int16)(v3 + 1);
    }
    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)&v4[-4] + 108))(*(_DWORD *)(a1 + 28));
    *(_DWORD *)(a1 + 28) = 0;
  }
  return result;
}

