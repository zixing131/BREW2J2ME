int __fastcall sub_130A4(int a1, int a2, int a3, int (*a4)(), int a5)
{
  bool v6; // zf
  int v8; // r5
  int v9; // r6
  int v11; // r0
  bool v12; // zf
  bool v13; // zf
  bool v14; // zf
  bool v15; // zf
  bool v16; // zf
  unsigned int v17; // r10
  unsigned int v18; // r0
  int v19; // r1
  char v20; // r2
  int v21; // r0
  BOOL v22; // r0
  unsigned __int16 v23; // r0
  int v24; // r0
  bool v25; // zf
  unsigned int i; // r8
  char *v27; // r0
  char *v28; // r8
  int v29; // r0
  int v30; // r0
  int v31; // r0
  int v32; // r0
  int v33; // r0
  int v34; // r0
  int v35; // r0
  int v36; // r0
  bool v37; // zf
  char *v39; // r8
  _DWORD **v40; // r4
  __int16 v41; // r5
  bool v42; // zf
  int v43; // r0
  bool v44; // zf

  v6 = a2 == 0;
  if ( a2 )
    v6 = a3 == 0;
  v8 = a5;
  v9 = a1;
  if ( !v6 )
    a1 = *(_DWORD *)(a1 + 372);
  if ( !v6 )
    v6 = a1 == 0;
  if ( v6 )
    return 0;
  v11 = *(unsigned __int8 *)(a2 + 336);
  if ( *(_BYTE *)(a2 + 336) )
  {
    if ( v11 != 1 )
    {
      switch ( v11 )
      {
        case 2:
          v12 = a4 == (int (*)())algn_102;
          if ( a4 == (int (*)())algn_102 )
            v12 = a5 == 57397;
          if ( v12 || a4 == (int (*)())&aInexactResult[6] )
          {
LABEL_15:
            *(_BYTE *)(a2 + 336) = 0;
            *(_WORD *)(a2 + 334) = 0;
            return 1;
          }
          break;
        case 3:
          v13 = a4 == (int (*)())algn_102;
          if ( a4 == (int (*)())algn_102 )
            v13 = a5 == 57392;
          if ( v13 )
            goto LABEL_15;
          v14 = a4 == (int (*)())algn_102;
          if ( a4 == (int (*)())algn_102 )
            v14 = a5 == 57399;
          if ( v14 )
            goto LABEL_15;
          break;
        case 4:
          v15 = a4 == (int (*)())algn_102;
          if ( a4 != (int (*)())algn_102 )
            v15 = a4 == (int (*)())&aInexactResult[6];
          if ( v15 )
            goto LABEL_15;
          break;
      }
    }
    if ( a4 == (int (*)())algn_102 )
    {
      v16 = a5 == 57392;
      if ( a5 != 57392 )
        v16 = a5 == 57399;
      if ( v16 )
        return 1;
    }
    return 0;
  }
  v17 = a5 - 57377;
  if ( a4 == sub_100 )
  {
    if ( v17 <= 0xB )
    {
      if ( *(_DWORD *)(v9 + 324) == 6 )
      {
        v18 = 0;
        while ( *(_DWORD *)(v9 + 324) - 1 > v18 )
        {
          v19 = a2 + v18 + 256;
          v20 = *(_BYTE *)(a2 + v18 + 329);
          v18 = (v18 + 1) & 0xFFFEFFFF;
          *(_BYTE *)(v19 + 72) = v20;
        }
        --*(_DWORD *)(v9 + 324);
      }
      v21 = *(_DWORD *)(v9 + 324);
      *(_DWORD *)(v9 + 324) = v21 + 1;
      *(_BYTE *)(v21 + a2 + 328) = v17;
      if ( *(_DWORD *)(a2 + 316) == 4 && sub_6100(a2, a2, (int)(off_13744 + 19593)) == 1 )
      {
        v22 = *(unsigned __int8 *)(a3 + 63) == 0;
        *(_BYTE *)(a3 + 63) = v22;
        if ( v22 )
          v23 = dword_1374C;
        else
          v23 = dword_13748;
        *(_DWORD *)(v9 + 360) = v23;
        *(_BYTE *)(v9 + 336) = 1;
        *(_WORD *)(v9 + 338) = 20;
        *(_WORD *)(v9 + 334) = 0;
      }
      v24 = *(unsigned __int8 *)(a3 + 63);
      v25 = v24 == 1;
      if ( v24 == 1 )
        v25 = *(_DWORD *)(a2 + 316) == 5;
      if ( v25 )
        v25 = *(_BYTE *)(a2 + 420) == 0;
      if ( v25 )
      {
        for ( i = 0; i < 3; i = (i + 1) & 0xFFFEFFFF )
        {
          if ( sub_6100(a2, a2, (int)&off_13750[3 * i + 39250]) == 1 )
            break;
        }
        if ( i )
        {
          v27 = (char *)off_13754 + 78556;
          if ( i == 1 )
          {
            v39 = (char *)off_13754 + 78556;
            v40 = *(_DWORD ***)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v27[-4] + 192))() + 1888) + 400);
            *v40[201] = 496;
            *v40[202] = 304;
            *v40[203] = 0;
            v41 = (*(__int16 *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v39[-4] + 192))() + 1888) + 388) + 1) % 16
                + 1;
            sub_5E14((int)v40, v41);
            sub_5DD4((int)v40, v41);
            *(_WORD *)(*(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v39[-4] + 192))() + 1888) + 404) + 72) = 0;
            *(_DWORD *)(*(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v39[-4] + 192))() + 1888) + 404) + 68) = 0;
            *(_WORD *)(*(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v39[-4] + 192))() + 1888) + 404) + 74) = 0;
            *(_WORD *)(*(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v39[-4] + 192))() + 1888) + 404) + 60) = 0;
            *(_BYTE *)(*(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v39[-4] + 192))() + 1888) + 404) + 80) = 0;
            *(_BYTE *)(*(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v39[-4] + 192))() + 1888) + 404) + 81) = 0;
            *(_WORD *)(*(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v39[-4] + 192))() + 1888) + 404) + 62) = 0;
            *(_BYTE *)(*(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v39[-4] + 192))() + 1888) + 404) + 5) = 0;
            *(_WORD *)(*(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v39[-4] + 192))() + 1888) + 404) + 40) = 0;
            return 1;
          }
          if ( i == 2 )
          {
            v28 = (char *)off_13754 + 78556;
            v29 = (*(int (**)(void))(*(_DWORD *)&v27[-4] + 192))();
            sub_D10(*(_DWORD *)(*(_DWORD *)(v29 + 1888) + 400), 1, 1);
            v30 = (*(int (**)(void))(*(_DWORD *)&v28[-4] + 192))();
            sub_D10(*(_DWORD *)(*(_DWORD *)(v30 + 1888) + 400), 2, 1);
            v31 = (*(int (**)(void))(*(_DWORD *)&v28[-4] + 192))();
            sub_D10(*(_DWORD *)(*(_DWORD *)(v31 + 1888) + 400), 3, 1);
            v32 = (*(int (**)(void))(*(_DWORD *)&v28[-4] + 192))();
            sub_D10(*(_DWORD *)(*(_DWORD *)(v32 + 1888) + 400), 4, 1);
            v33 = (*(int (**)(void))(*(_DWORD *)&v28[-4] + 192))();
            sub_D10(*(_DWORD *)(*(_DWORD *)(v33 + 1888) + 400), 5, 1);
            v34 = (*(int (**)(void))(*(_DWORD *)&v28[-4] + 192))();
            sub_D10(*(_DWORD *)(*(_DWORD *)(v34 + 1888) + 400), 6, 1);
            v35 = (*(int (**)(void))(*(_DWORD *)&v28[-4] + 192))();
            sub_D10(*(_DWORD *)(*(_DWORD *)(v35 + 1888) + 400), 7, 1);
            v36 = (*(int (**)(void))(*(_DWORD *)&v28[-4] + 192))();
            sub_D10(*(_DWORD *)(*(_DWORD *)(v36 + 1888) + 400), 8, 1);
          }
        }
        else
        {
          *(_BYTE *)(a3 + 64) = *(_BYTE *)(a3 + 64) == 0;
        }
      }
    }
    else
    {
      *(_DWORD *)(a2 + 324) = 0;
    }
  }
  if ( *(_BYTE *)(a2 + 340) )
  {
    if ( a4 == (int (*)())algn_102 )
    {
      v37 = a5 == 57392;
      if ( a5 != 57392 )
        v37 = a5 == 57399;
      if ( v37 )
        return 1;
    }
    return 0;
  }
  v42 = a4 == sub_100;
  if ( a4 != sub_100 )
    v42 = (char *)a4 == (char *)off_13758;
  if ( v42 || a4 == (int (*)())algn_102 )
  {
    v43 = *(_DWORD *)(a2 + 316);
    v44 = v43 == 5;
    if ( v43 == 5 )
      v44 = *(_BYTE *)(a2 + 420) == 0;
    if ( !v44 )
    {
      switch ( a5 )
      {
        case 57377:
        case 57378:
        case 57380:
        case 57384:
        case 57386:
        case 57387:
        case 57388:
        case 57393:
        case 57394:
        case 57395:
        case 57396:
        case 57398:
        case 57399:
          return (*(int (__fastcall **)(int, int, int (*)(), int))(v9 + 372))(a2, a3, a4, v8);
        case 57379:
          v8 = dword_13760;
          return (*(int (__fastcall **)(int, int, int (*)(), int))(v9 + 372))(a2, a3, a4, v8);
        case 57381:
          v8 = dword_13764;
          return (*(int (__fastcall **)(int, int, int (*)(), int))(v9 + 372))(a2, a3, a4, v8);
        case 57382:
        case 57397:
          v8 = dword_1375C;
          return (*(int (__fastcall **)(int, int, int (*)(), int))(v9 + 372))(a2, a3, a4, v8);
        case 57383:
          v8 = dword_13768;
          return (*(int (__fastcall **)(int, int, int (*)(), int))(v9 + 372))(a2, a3, a4, v8);
        case 57385:
          v8 = dword_1376C;
          return (*(int (__fastcall **)(int, int, int (*)(), int))(v9 + 372))(a2, a3, a4, v8);
        case 57392:
          v8 = dword_13770;
          return (*(int (__fastcall **)(int, int, int (*)(), int))(v9 + 372))(a2, a3, a4, v8);
        default:
          return 1;
      }
    }
    switch ( a5 )
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
      case 57392:
      case 57393:
      case 57394:
      case 57395:
      case 57396:
      case 57397:
      case 57398:
      case 57399:
        return (*(int (__fastcall **)(int, int, int (*)(), int))(v9 + 372))(a2, a3, a4, v8);
      default:
        return 1;
    }
  }
  return (*(int (__fastcall **)(int, int, int (*)(), int))(v9 + 372))(a2, a3, a4, v8);
}

