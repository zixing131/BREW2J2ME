int __fastcall sub_1E780(int a1, int a2, int a3)
{
  bool v4; // zf
  bool v5; // cc
  __int16 v6; // r0
  char *v8; // r1
  int v9; // r0
  int v10; // r2
  int v11; // r0

  if ( a2 != 258 )
    return 1;
  v4 = a3 == 57344;
  v5 = a3 <= 57344;
  if ( a3 >= 57344 )
  {
    v4 = a3 == 57394;
    v5 = a3 - 57344 <= 50;
  }
  if ( v4 )
  {
    v6 = *(_WORD *)(a1 + 330) + 1;
LABEL_11:
    *(_WORD *)(a1 + 330) = (v6 + 8) % 8;
    return 1;
  }
  if ( !v5 )
  {
    if ( a3 == 57398 )
    {
      if ( *(_WORD *)(a1 + 330) )
      {
        *(_DWORD *)(a1 + 320) = 0;
        *(_WORD *)(a1 + 334) = 0;
        *(_WORD *)(a1 + 328) = 1;
        v8 = (char *)off_1E968 + 125004;
        switch ( *(_WORD *)(a1 + 330) )
        {
          case 1:
            if ( *(_BYTE *)(*(_DWORD *)(a1 + 272) + 32) == 1
              && !*(_BYTE *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v8[-4] + 192))() + 1888) + 564) )
            {
              *(_BYTE *)(*(_DWORD *)(a1 + 272) + 32) = 0;
              *(_WORD *)(a1 + 328) = 0;
              v9 = *(_DWORD *)(a1 + 280);
              v10 = dword_1E96C;
              goto LABEL_27;
            }
            *(_DWORD *)(a1 + 332) = *(unsigned __int16 *)(**(_DWORD **)(a1 + 272) + 44);
            break;
          case 2:
            if ( *(__int16 *)(*(_DWORD *)(a1 + 272) + 540) <= 0 )
            {
              *(_WORD *)(*(_DWORD *)(a1 + 272) + 540) = 0;
              *(_WORD *)(a1 + 328) = 0;
              v9 = *(_DWORD *)(a1 + 280);
              v10 = dword_1E970;
LABEL_27:
              sub_E00(v9, 0, v10, 0);
            }
            else
            {
              *(_WORD *)(a1 + 328) = 4;
              *(_WORD *)(a1 + 292) = 0;
              sub_16444((__int16 *)a1, *(__int16 *)(a1 + 316));
            }
            break;
          case 3:
            *(_WORD *)(a1 + 328) = 2;
            *(_WORD *)(a1 + 290) = 0;
            sub_161B0((__int16 *)a1, *(__int16 *)(a1 + 316));
            return 1;
          case 6:
            v11 = (*(int (**)(void))(*(_DWORD *)&v8[-4] + 192))();
            sub_15AE0(*(_DWORD *)(v11 + 1888));
            return 1;
          case 7:
            *(_BYTE *)(a1 + 269) = 1;
            return 0;
          default:
            return 1;
        }
        return 1;
      }
    }
    else if ( a3 != 57399 )
    {
      return 1;
    }
    return 0;
  }
  if ( a3 == 57377 )
    return 0;
  if ( a3 == 57393 )
  {
    v6 = *(_WORD *)(a1 + 330) - 1;
    goto LABEL_11;
  }
  return 1;
}

