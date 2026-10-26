int __fastcall sub_59C4(int a1, int a2, int a3)
{
  char *v6; // r6
  int v7; // r0
  int result; // r0
  __int16 v9; // r6

  v6 = (char *)off_5BFC + 23008;
  v7 = (*(int (**)(void))(*(_DWORD *)((char *)off_5BFC + 0xFFFFFFFC + 23008) + 192))();
  sub_22508(*(_DWORD *)(v7 + 36));
  if ( a2 == 3 )
    *(_BYTE *)(a1 + 422) = *(_BYTE *)(a1 + 421);
  *(_BYTE *)(a1 + 421) = *(_BYTE *)(a1 + 420);
  *(_BYTE *)(a1 + 420) = a2;
  result = 0;
  **(_DWORD **)(*(_DWORD *)(a1 + 400) + 816) = 0;
  switch ( a2 )
  {
    case 0:
      result = *(unsigned __int8 *)(a1 + 421);
      if ( result == 6 )
        result = sub_23C38(*(_DWORD *)(a1 + 396));
      break;
    case 1:
    case 8:
      result = sub_59C4(a1, 0, 0);
      break;
    case 2:
      result = *(_DWORD *)(a1 + 408);
      if ( *(_BYTE *)(a1 + 421) == 3 )
      {
        if ( result )
        {
          *(_BYTE *)(result + 268) = -1;
          result = *(_DWORD *)(a1 + 408);
          if ( *(_WORD *)(result + 328) == 3 )
          {
            v9 = *(_WORD *)(result + 2);
            if ( *(_WORD *)(result + 288) )
            {
              if ( *(_WORD *)(result + 288) == 1 )
                sub_16360();
            }
            else
            {
              sub_1627C();
            }
            *(_WORD *)(*(_DWORD *)(a1 + 408) + 2) = v9;
            result = sub_252A0(*(_DWORD *)(a1 + 408));
          }
        }
      }
      else
      {
        if ( !result )
          *(_DWORD *)(a1 + 408) = (*(int (__fastcall **)(int))(*(_DWORD *)&v6[-4] + 104))(336);
        sub_17B60(*(_DWORD *)(a1 + 408));
        *(_DWORD *)(*(_DWORD *)(a1 + 408) + 272) = *(_DWORD *)(a1 + 400);
        *(_DWORD *)(*(_DWORD *)(a1 + 408) + 280) = a1 + 544;
        *(_DWORD *)(*(_DWORD *)(a1 + 408) + 276) = *(_DWORD *)(a1 + 392);
        *(_WORD *)(*(_DWORD *)(a1 + 408) + 316) = *(_WORD *)(a1 + 444);
        result = *(_DWORD *)(a1 + 408);
        *(_DWORD *)(result + 284) = a1;
      }
      break;
    case 3:
      if ( !*(_DWORD *)(a1 + 416) )
        *(_DWORD *)(a1 + 416) = (*(int (__fastcall **)(int))(*(_DWORD *)&v6[-4] + 104))(348);
      result = sub_1660C(*(_DWORD *)(a1 + 416), *(_DWORD *)(a1 + 400), a3);
      break;
    case 4:
      *(_WORD *)(a1 + 436) = 0;
      *(_WORD *)(a1 + 412) = 0;
      break;
    case 6:
      result = *(unsigned __int8 *)(a1 + 421);
      if ( !*(_BYTE *)(a1 + 421) )
      {
        sub_24E48(*(_DWORD *)(a1 + 396));
        result = sub_1F908(*(_DWORD *)(a1 + 404));
      }
      break;
    case 7:
      *(_WORD *)(a1 + 424) = *(_WORD *)(a1 + 442) >> 1;
      *(_WORD *)(a1 + 426) = (*(unsigned __int16 *)(a1 + 444) - 85) / 2 + 60;
      result = sub_1228C(*(_DWORD *)(a1 + 396), a1 + 428, a1 + 432);
      break;
    default:
      return result;
  }
  return result;
}

