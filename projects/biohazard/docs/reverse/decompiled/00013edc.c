BOOL __fastcall sub_13EDC(int a1, int a2, int a3)
{
  char v4; // r0
  int v5; // r1
  unsigned int v6; // r2
  unsigned int v7; // r1
  bool v8; // zf
  int v9; // r0
  int v10; // r0

  if ( a2 == 258 )
  {
    switch ( *(_BYTE *)(a1 + 16) )
    {
      case 0:
        v4 = 3;
        if ( a3 == 57398 )
        {
          v5 = *(_DWORD *)(a1 + 4) + 20 * *(_DWORD *)(a1 + 12);
          v6 = *(unsigned __int8 *)(*(_DWORD *)(a1 + 8) + *(unsigned __int8 *)(v5 + 7));
          v7 = *(unsigned __int8 *)(v5 + 6);
          if ( v6 < v7 || !v7 )
          {
            sub_24D7C(a1);
            v4 = 1;
          }
          goto LABEL_14;
        }
        v8 = a3 == 57377;
        if ( a3 != 57377 )
          v8 = a3 == 57399;
        if ( v8 )
        {
          *(_DWORD *)(a1 + 344) = off_14034;
LABEL_14:
          *(_BYTE *)(a1 + 16) = v4;
          return 1;
        }
        break;
      case 1:
        if ( a3 != 57398 )
          return 1;
        v4 = 2;
        goto LABEL_14;
      case 2:
        if ( a3 != 57398 )
          return 1;
        sub_1293C(*(_DWORD *)a1, (__int16)*(_DWORD *)(a1 + 12));
        v9 = **(_DWORD **)a1 + *(_DWORD *)(a1 + 12);
        ++*(_BYTE *)(v9 + 4);
        *(_BYTE *)(**(_DWORD **)a1 + *(_DWORD *)(a1 + 12) + 24) = 0;
        v10 = (*(int (**)(void))(*(_DWORD *)((char *)off_14038 + 0xFFFFFFFC + 81916) + 192))();
        sub_24190(v10, 8);
        return 0;
      case 3:
      case 4:
        return a3 != 57398;
      default:
        return 1;
    }
  }
  return 1;
}

