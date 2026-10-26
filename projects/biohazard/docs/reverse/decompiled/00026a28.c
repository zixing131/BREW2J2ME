int __fastcall sub_26A28(int *a1)
{
  int v2; // r4
  int v3; // r0
  int v4; // r5
  bool v5; // zf
  int v6; // r0
  int result; // r0
  int v8; // r1
  bool v9; // cc
  int v10; // r0
  int v11; // r1
  char *v12; // r7
  int v13; // r0
  int v14; // r6
  int v15; // r0
  int v16; // r0

  v2 = sub_1058((int)a1, a1[56]);
  v3 = (*(int (__fastcall **)(_DWORD, _DWORD, int))(**(_DWORD **)(v2 + 204) + 12))(
         *(_DWORD *)(v2 + 204),
         *(_DWORD *)(v2 + 380),
         2000);
  v4 = v3;
  if ( v3 == -2 )
    return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v2 + 204) + 16))(*(_DWORD *)(v2 + 204), v2 + 176);
  if ( v3 == -1 )
  {
    sub_25F94(a1);
    return sub_21CCC(a1, (int)off_26C7C, 0, 0, 0, 0);
  }
  v5 = v3 == 0;
  v6 = *(_DWORD *)(v2 + 384);
  if ( !v5 )
  {
    v11 = v6 + v4;
    v12 = (char *)off_26C8C + 158704;
    v13 = *(_DWORD *)(v2 + 388);
    if ( v11 > v13 )
    {
      v14 = v13 + 2000;
      v15 = (*(int (__fastcall **)(_DWORD, int))(*(_DWORD *)&v12[-4] + 116))(*(_DWORD *)(v2 + 376), v13 + 2000);
      if ( v15 )
      {
        *(_DWORD *)(v2 + 376) = v15;
        *(_DWORD *)(v2 + 388) = v14;
      }
    }
    v16 = *(_DWORD *)(v2 + 384);
    if ( v16 + v4 <= *(_DWORD *)(v2 + 388) )
    {
      (**(void (__fastcall ***)(int, _DWORD, int))&v12[-4])(*(_DWORD *)(v2 + 376) + v16, *(_DWORD *)(v2 + 380), v4);
      *(_DWORD *)(v2 + 384) += v4;
    }
    return (*(int (__fastcall **)(_DWORD, int))(**(_DWORD **)(v2 + 204) + 16))(*(_DWORD *)(v2 + 204), v2 + 176);
  }
  if ( !v6 )
    return (*(int (__fastcall **)(int, int, char *, int *))(*(_DWORD *)*a1 + 44))(
             *a1,
             2000,
             (char *)off_26C78 + 158384,
             a1);
  v8 = *(_DWORD *)(v2 + 388);
  v9 = v6 < v8;
  if ( v6 < v8 )
  {
    v8 = *(_DWORD *)(v2 + 376);
  }
  else
  {
    *(_BYTE *)(*(_DWORD *)(v2 + 376) + v8 - 1) = 0;
    v6 = *(_DWORD *)(v2 + 388);
  }
  if ( v9 )
    *(_BYTE *)(v8 + v6) = 0;
  else
    *(_DWORD *)(v2 + 384) = v6 - 1;
  sub_26C90(a1);
  v10 = *((unsigned __int8 *)a1 + 213);
  switch ( v10 )
  {
    case 1:
      result = sub_2623C(a1, *(_BYTE **)(v2 + 376));
      if ( result )
        return sub_21CCC(a1, dword_26C80, 0, 0, 0, 0);
      break;
    case 4:
      result = sub_26670((int)a1, *(_BYTE **)(v2 + 376), *(_DWORD *)(v2 + 384));
      if ( result )
        return sub_21CCC(a1, dword_26C84, 0, 0, 0, 0);
      break;
    case 5:
      result = sub_26734(a1, *(_BYTE **)(v2 + 376));
      if ( result )
        return sub_21CCC(a1, 1012, 0, 0, 0, 0);
      break;
    default:
      return sub_21CCC(a1, (int)off_26C88, 0, 0, 0, 0);
  }
  return result;
}

