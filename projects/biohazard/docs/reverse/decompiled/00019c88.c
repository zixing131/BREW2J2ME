int __fastcall sub_19C88(int a1, int a2, int a3, int a4)
{
  char *v8; // r9
  bool v9; // zf
  int v10; // r2
  int v11; // r1
  bool v12; // zf
  int v13; // r8
  int v14; // r0
  int *v15; // r2
  int v16; // r1
  int v17; // r0
  bool v18; // zf
  int v19; // r0
  int v20; // r4
  int v21; // r0
  bool v22; // zf

  v8 = (char *)off_1A0F4 + 105644;
  switch ( *(_BYTE *)(a1 + 420) )
  {
    case 0:
      if ( a2 != 258 )
        goto LABEL_35;
      v12 = a3 == 57387;
      if ( a3 != 57387 )
        v12 = a3 == dword_1A0F8;
      if ( v12 || a3 == 57399 )
      {
        sub_59C4(a1, 2, 0);
        if ( a3 == 57388 )
        {
          sub_1BA98(*(_DWORD *)(a1 + 408), 2, 0);
          sub_1627C(*(__int16 **)(a1 + 408), *(__int16 *)(a1 + 444));
        }
      }
      else
      {
        if ( a3 == 57386 )
        {
          if ( *(_BYTE *)(**(_DWORD **)(a1 + 400) + 46) )
          {
            v10 = 0;
            v11 = 7;
            goto LABEL_55;
          }
          v10 = 3;
          goto LABEL_54;
        }
        if ( a3 == 57377 )
        {
          v13 = *(_DWORD *)(a1 + 400);
          if ( *(__int16 *)&(*off_1A0FC)[v13] <= 0 )
          {
            sub_E00(a1 + 544, 0, 8000, 0);
          }
          else
          {
            v14 = sub_104(0x64u, 40 * **(_DWORD **)(v13 + 20));
            v15 = *(int **)(v13 + 24);
            v16 = v14 + *v15;
            *v15 = v16;
            v17 = **(_DWORD **)(*(_DWORD *)(a1 + 400) + 20);
            if ( v16 < v17 )
              v17 = v16;
            **(_DWORD **)(*(_DWORD *)(a1 + 400) + 24) = v17;
            sub_E00(a1 + 544, 0, dword_1A100, 0);
            --*(_WORD *)(*(_DWORD *)(a1 + 400) + 802);
          }
        }
        else
        {
          v18 = a3 == 57398;
          if ( a3 != 57398 )
            v18 = a3 == dword_1A104;
          if ( v18 || a3 == 57397 )
          {
            sub_24FDC(
              *(_DWORD *)(a1 + 404),
              1,
              (unsigned __int16)**(_DWORD **)(*(_DWORD *)(a1 + 400) + 804),
              (unsigned __int16)**(_DWORD **)(*(_DWORD *)(a1 + 400) + 808));
            if ( *(_WORD *)(*(_DWORD *)(a1 + 404) + 60) )
              sub_59C4(a1, 6, 0);
          }
        }
LABEL_35:
        sub_1F5A8(*(_DWORD *)(a1 + 396), a2, a3, a4);
      }
      return 1;
    case 2:
      if ( *(_BYTE *)(a1 + 300) == 1 )
      {
        if ( !sub_10250((_WORD *)a1, a2, a3) )
        {
          sub_602C(a1);
          sub_1F8C4(*(_DWORD *)(a1 + 408), a2, a3, a4);
        }
      }
      else if ( !sub_1F8C4(*(_DWORD *)(a1 + 408), a2, a3, a4) )
      {
        v19 = *(_DWORD *)(a1 + 408);
        if ( *(_BYTE *)(v19 + 269) == 1 )
        {
          nullsub_1();
          (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v8[-4] + 108))(*(_DWORD *)(a1 + 408));
          *(_DWORD *)(a1 + 408) = 0;
          v20 = (*(int (**)(void))(*(_DWORD *)&v8[-4] + 192))();
          v21 = (*(int (**)(void))(*(_DWORD *)&v8[-4] + 192))();
          goto LABEL_59;
        }
        if ( *(unsigned __int8 *)(v19 + 268) != 255 )
        {
          v10 = *(char *)(v19 + 268) & 0xFFFF;
          goto LABEL_54;
        }
        nullsub_1();
        (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v8[-4] + 108))(*(_DWORD *)(a1 + 408));
        *(_DWORD *)(a1 + 408) = 0;
        goto LABEL_7;
      }
      return 1;
    case 3:
      if ( !sub_13EDC(*(_DWORD *)(a1 + 416), a2, a3) )
      {
        v11 = *(unsigned __int8 *)(a1 + 421);
        v10 = 0;
        goto LABEL_55;
      }
      return 1;
    case 4:
      if ( a2 == 258 && *(unsigned __int16 *)(a1 + 436) >= 5u )
      {
        v22 = a3 == 57395;
        if ( a3 != 57395 )
          v22 = a3 == 57396;
        if ( v22 )
        {
          *(_WORD *)(a1 + 412) = (*(__int16 *)(a1 + 412) + 1) % 2;
        }
        else if ( a3 == 57398 )
        {
          if ( *(_WORD *)(a1 + 412) )
          {
            *(_BYTE *)(a1 + 390) = 1;
            v20 = (*(int (**)(void))(*(_DWORD *)&v8[-4] + 192))();
            v21 = (*(int (**)(void))(*(_DWORD *)&v8[-4] + 192))();
            goto LABEL_59;
          }
          v10 = 5;
LABEL_54:
          v11 = 3;
          goto LABEL_55;
        }
      }
      return 1;
    case 5:
      if ( a2 == 258 )
      {
        v20 = (*(int (**)(void))(*(_DWORD *)&v8[-4] + 192))();
        v21 = (*(int (**)(void))(*(_DWORD *)&v8[-4] + 192))();
LABEL_59:
        sub_18170(*(_DWORD *)(v21 + 1888), v20);
      }
      return 1;
    case 6:
      sub_1F35C(*(_DWORD *)(a1 + 404), a2, a3, a4);
      return 1;
    case 7:
      if ( a2 == 258 )
      {
        v9 = a3 == 57377;
        if ( a3 != 57377 )
          v9 = a3 == 57399;
        if ( v9 )
        {
LABEL_7:
          v10 = 0;
          v11 = 0;
LABEL_55:
          sub_59C4(a1, v11, v10);
        }
      }
      return 1;
    default:
      return 1;
  }
}

