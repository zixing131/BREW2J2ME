int __fastcall sub_1ECE8(int a1, int a2, int a3)
{
  int v4; // r4
  int v5; // r0
  bool v7; // zf
  bool v8; // cc
  bool v9; // zf
  bool v10; // zf
  bool v11; // zf
  int v12; // r0
  char *v13; // r7
  int v14; // r5
  int v15; // r0
  int v16; // r0

  if ( a2 != 258 )
    return 1;
  v4 = a1 + 256;
  v5 = *(unsigned __int16 *)(a1 + 330);
  if ( v5 == 1 && *(__int16 *)(a1 + 332) <= 0 )
  {
    *(_WORD *)(a1 + 328) = 0;
    *(_BYTE *)(a1 + 268) = 1;
    return 0;
  }
  v7 = a3 == 57344;
  v8 = a3 <= 57344;
  if ( a3 >= 57344 )
  {
    v7 = a3 == 57395;
    v8 = a3 - 57344 <= 51;
  }
  if ( v7 )
  {
    v10 = v5 == 1;
    if ( v5 != 1 )
      v10 = v5 == 5;
    if ( !v10 )
      return 1;
    goto LABEL_30;
  }
  if ( !v8 )
  {
    if ( a3 != 57396 )
    {
      if ( a3 == 57398 )
      {
        v12 = *(__int16 *)(a1 + 330);
        v13 = (char *)off_1EEA8 + 126416;
        if ( v12 == 1 )
        {
          if ( *(_WORD *)(a1 + 334) != 1 )
          {
            --*(_WORD *)(**(_DWORD **)(a1 + 272) + 44);
            --*(_WORD *)(a1 + 332);
            v16 = (*(int (**)(void))(*(_DWORD *)&v13[-4] + 192))();
            sub_24190(v16, 8);
            *(_BYTE *)(*(_DWORD *)(a1 + 272) + 32) = 1;
            *(_BYTE *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v13[-4] + 192))() + 1888) + 564) = 0;
            *(_WORD *)(a1 + 328) = 0;
            sub_E00(*(_DWORD *)(a1 + 280), 0, dword_1EEAC, 0);
            return 1;
          }
          goto LABEL_35;
        }
        if ( v12 == 5 )
        {
          v14 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v13[-4] + 192))() + 84);
          v15 = (*(int (**)(void))(*(_DWORD *)&v13[-4] + 192))();
          sub_24C64(v15, *(unsigned __int16 *)(v4 + 78) == 0, v14);
LABEL_35:
          *(_WORD *)(v4 + 72) = 0;
          return 1;
        }
      }
      else if ( a3 == 57399 )
      {
        goto LABEL_15;
      }
      return 1;
    }
    v11 = v5 == 1;
    if ( v5 != 1 )
      v11 = v5 == 5;
    if ( !v11 )
      return 1;
LABEL_30:
    *(_WORD *)(a1 + 334) = (*(__int16 *)(a1 + 334) + 1) % 2;
    return 1;
  }
  if ( a3 == 57377 )
  {
LABEL_15:
    v9 = v5 == 6;
    if ( v5 != 6 )
      v9 = v5 == 5;
    if ( !v9 && v5 != 1 && v5 != 4 )
      return 1;
    goto LABEL_35;
  }
  return 1;
}

