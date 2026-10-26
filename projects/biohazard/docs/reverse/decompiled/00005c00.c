int __fastcall sub_5C00(int a1, int a2)
{
  char *v4; // r10
  int v5; // r0
  int result; // r0
  int v7; // r9
  int v8; // r0
  int v9; // r0
  int v10; // r7
  int v11; // r5
  int v12; // r8
  int v13; // r7
  int v14; // r0

  sub_228B8();
  v4 = (char *)off_5DD0 + 23580;
  v5 = (*(int (**)(void))(*(_DWORD *)((char *)off_5DD0 + 0xFFFFFFFC + 23580) + 192))();
  result = sub_18818(*(_DWORD *)(v5 + 40), a2 + 11000, 0);
  v7 = result;
  if ( result )
  {
    v8 = (*(int (__fastcall **)(int))(*(_DWORD *)&v4[-4] + 104))(12);
    *(_DWORD *)(a1 + 56) = v8;
    (**(void (__fastcall ***)(int, int, int))&v4[-4])(v8 + 8, v7, 2);
    if ( *(_WORD *)(*(_DWORD *)(a1 + 56) + 8) )
    {
      *(_DWORD *)(*(_DWORD *)(a1 + 56) + 4) = (*(int (__fastcall **)(int))(*(_DWORD *)&v4[-4] + 104))(8 * *(unsigned __int16 *)(*(_DWORD *)(a1 + 56) + 8));
      (**(void (***)(void))&v4[-4])();
      v9 = *(unsigned __int16 *)(*(_DWORD *)(a1 + 56) + 8);
      v10 = v7 + 2 + 8 * v9;
      v11 = 0;
      **(_DWORD **)(a1 + 56) = (*(int (__fastcall **)(int))(*(_DWORD *)&v4[-4] + 104))(24 * v9);
      while ( 1 )
      {
        v14 = *(_DWORD *)(a1 + 56);
        if ( *(unsigned __int16 *)(v14 + 8) <= v11 )
          break;
        *(_BYTE *)(*(_DWORD *)v14 + 24 * v11 + 20) = 0;
        (**(void (__fastcall ***)(int, int, int))&v4[-4])(**(_DWORD **)(a1 + 56) + 24 * v11, v10, 16);
        v12 = v10 + 16;
        v13 = 32 * *(_DWORD *)(**(_DWORD **)(a1 + 56) + 24 * v11 + 12);
        result = (*(int (__fastcall **)(int))(*(_DWORD *)&v4[-4] + 104))(v13);
        *(_DWORD *)(**(_DWORD **)(a1 + 56) + 24 * v11 + 16) = result;
        if ( !result )
          return result;
        (**(void (__fastcall ***)(int, int, int))&v4[-4])(result, v12, v13);
        v11 = (__int16)(v11 + 1);
        v10 = v12 + v13;
      }
    }
    return (*(int (__fastcall **)(int))(*(_DWORD *)&v4[-4] + 108))(v7);
  }
  return result;
}

