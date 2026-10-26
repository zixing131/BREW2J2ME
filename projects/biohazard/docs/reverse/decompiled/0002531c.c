int __fastcall sub_2531C(int a1, int a2, int a3, int a4)
{
  int *v8; // r0
  int v9; // r12
  int *v10; // r5
  _DWORD *v11; // r0
  int v13; // r2
  int v14; // r3

  v8 = (int *)sub_1058(a1, *(_DWORD *)(a1 + 224));
  if ( a2 == 256 )
    v9 = a3 - 57344;
  v10 = v8;
  v11 = (_DWORD *)*v8;
  if ( a2 == 256 && v9 == 55 )
    a3 = dword_25414;
  if ( !v11 || !sub_14DEC(v11, a2, a3, a4) )
  {
    switch ( a2 )
    {
      case 2:
        sub_152CC(*v10, 0);
        sub_1837C(a1, (_DWORD *)(a1 + 216));
        sub_24F9C((_DWORD *)a1, (int)(v10 + 19));
        break;
      case 3:
        sub_182E8(a1, *(_DWORD *)(a1 + 216));
        sub_152CC(*v10, 1);
        sub_14FF8(*v10);
        sub_24EB4((_DWORD *)a1, (int)(v10 + 19), v13, v14);
        sub_145AC(v10[3]);
        break;
      case 28772:
        sub_24F9C((_DWORD *)a1, (int)(v10 + 19));
        *(_BYTE *)(a1 + 213) = 3;
        sub_25608(a1);
        break;
      default:
        return 0;
    }
  }
  return 1;
}

