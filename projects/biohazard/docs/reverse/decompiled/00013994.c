int __fastcall sub_13994(int a1, int a2, int a3, int a4)
{
  int v4; // r12
  bool v5; // zf

  v4 = *(_DWORD *)(a1 + 316);
  v5 = v4 == 1;
  if ( v4 == 1 )
    v5 = a3 == 258;
  if ( !v5 )
    return 0;
  switch ( a4 )
  {
    case 57377:
    case 57378:
    case 57379:
    case 57380:
    case 57381:
    case 57382:
    case 57383:
    case 57384:
    case 57385:
    case 57386:
    case 57387:
    case 57388:
    case 57393:
    case 57394:
    case 57395:
    case 57396:
    case 57397:
    case 57398:
      if ( *(_WORD *)(a1 + 380) )
      {
        sub_103B4(a1, 5, 4, (int)off_13A88 + 80472, 1, -1);
      }
      else
      {
        *(_WORD *)(a1 + 380) = 1;
        *(_DWORD *)(a1 + 320) = 0;
      }
      break;
    case 57399:
      (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a2 + 12) + 24))(*(_DWORD *)(a2 + 12), 0);
      break;
    default:
      return 1;
  }
  return 1;
}

