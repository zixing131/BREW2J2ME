int __fastcall sub_25418(int a1, int a2, int a3, int a4)
{
  int *v8; // r0
  int v9; // r12
  int *v10; // r5
  _DWORD *v11; // r0
  bool v12; // zf
  int v13; // r0
  bool v14; // zf
  int v15; // r2
  int v16; // r3

  v8 = (int *)sub_1058(a1, *(_DWORD *)(a1 + 224));
  if ( a2 == 256 )
    v9 = a3 - 57344;
  v10 = v8;
  v11 = (_DWORD *)*v8;
  if ( a2 == 256 && v9 == 55 )
    a3 = dword_255B8;
  if ( v11 && sub_14DEC(v11, a2, a3, a4) )
    return 1;
  switch ( a2 )
  {
    case 2:
      sub_152CC(*v10, 0);
      sub_1837C(a1, (_DWORD *)(a1 + 216));
      sub_24F9C((_DWORD *)a1, (int)(v10 + 19));
      return 1;
    case 3:
      sub_182E8(a1, *(_DWORD *)(a1 + 216));
      sub_24EB4((_DWORD *)a1, (int)(v10 + 19), v15, v16);
      sub_152CC(*v10, 1);
      sub_14FF8(*v10);
      sub_145AC(v10[3]);
      return 1;
    case 256:
      v12 = a3 == 57398;
      if ( a3 != 57398 )
        v12 = a3 == 57397;
      if ( v12 )
      {
        v13 = sub_14DE4(*v10);
        if ( (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_255BC + 0xFFFFFFFC + 152748) + 48))(v13) > 0
          && !sub_14DD4(*v10) )
        {
          sub_24F9C((_DWORD *)a1, (int)(v10 + 19));
          sub_152CC(*v10, 0);
          *(_BYTE *)(a1 + 213) = 4;
          sub_162C(a1);
          sub_243A0(a1);
        }
      }
      else
      {
        v14 = a3 == 57399;
        if ( a3 != 57399 )
          v14 = a3 == 57392;
        if ( !v14 )
          return 0;
        sub_24F9C((_DWORD *)a1, (int)(v10 + 19));
        sub_152CC(*v10, 0);
        sub_21CCC((_DWORD *)a1, (int)off_255C0, 0, 0, 0, 0);
      }
      return 1;
  }
  return 0;
}

