int __fastcall sub_1403C(int a1, int (*a2)(), int a3, int a4)
{
  bool v5; // zf
  bool v6; // cc
  char *v7; // r7
  int v8; // r0
  int v9; // r1
  bool v10; // zf
  int v11; // r0
  bool v12; // zf
  bool v13; // zf
  bool v14; // cc
  bool v15; // zf
  bool v16; // zf
  int v18; // r0
  bool v19; // zf
  int v20; // r1

  if ( *(_BYTE *)(a1 + 1880) == 1 )
  {
    sub_1473C(*(_DWORD *)(a1 + 1844), a2);
    return 1;
  }
  v5 = a2 == (int (*)())&loc_400;
  v6 = (int)a2 <= 1024;
  if ( (int)a2 >= 1024 )
  {
    v5 = a2 == (int (*)())((char *)&loc_400 + 1);
    v6 = (int)a2 - 1024 <= 1;
  }
  if ( v5 )
  {
    if ( a4 )
    {
      v18 = *(_DWORD *)(a4 + 8);
      v19 = v18 == 2;
      if ( v18 == 2 )
      {
        v20 = dword_142F8;
        *(_BYTE *)(a1 + 1892) = 1;
        *(_WORD *)(v20 + a1) = 25;
        v19 = *(_BYTE *)(a1 + 89) == 1;
      }
      if ( v19 && *(_DWORD *)(a1 + 68) )
        sub_145C8();
    }
    return 1;
  }
  if ( v6 )
  {
    v7 = (char *)off_142EC + 82052;
    if ( a2 == (int (*)())((char *)&dword_0 + 3) )
    {
      *(_BYTE *)(a1 + 62) = 0;
      *(_BYTE *)(a1 + 80) = 0;
      if ( *(_BYTE *)(a1 + 89) == 1 )
        sub_24C64(a1, 1, *(_DWORD *)(a1 + 84));
      (*(void (__fastcall **)(_DWORD, _DWORD, char *, int))(**(_DWORD **)(a1 + 12) + 44))(
        *(_DWORD *)(a1 + 12),
        *(_DWORD *)(a1 + 48),
        v7,
        a1);
      sub_1E458(a1);
      return 1;
    }
    if ( (int)a2 > 3 )
    {
      v12 = a2 == sub_100;
      if ( a2 != sub_100 )
        v12 = (char *)a2 == (char *)off_142F4;
      if ( (v12 || a2 == (int (*)())algn_102) && *(_BYTE *)(a1 + 62) != 1 )
      {
        if ( *(_BYTE *)(a1 + 88) == 1 )
        {
          if ( a2 == (int (*)())algn_102 )
          {
            *(_BYTE *)(a1 + 88) = 0;
            return 1;
          }
          *(_BYTE *)(a1 + 88) = 0;
        }
        sub_130A4(*(_DWORD *)(a1 + 1888), *(_DWORD *)(a1 + 1888), a1, a2, a3);
        return 1;
      }
    }
    else
    {
      if ( !a2 )
      {
        (*(void (__fastcall **)(_DWORD, _DWORD, char *, int))(**(_DWORD **)(a1 + 12) + 44))(
          *(_DWORD *)(a1 + 12),
          *(_DWORD *)(a1 + 48),
          (char *)off_142EC + 82052,
          a1);
        return 1;
      }
      if ( a2 == (int (*)())((char *)&dword_0 + 1) )
      {
        (*(void (__fastcall **)(_DWORD, _DWORD, int))(**(_DWORD **)(a1 + 12) + 48))(*(_DWORD *)(a1 + 12), 0, a1);
        return 1;
      }
      if ( a2 == (int (*)())((char *)&dword_0 + 2) )
      {
        *(_BYTE *)(a1 + 62) = 1;
        *(_BYTE *)(a1 + 80) = 0;
        (*(void (__fastcall **)(_DWORD, _DWORD, int))(**(_DWORD **)(a1 + 12) + 48))(*(_DWORD *)(a1 + 12), 0, a1);
        if ( *(_DWORD *)(a1 + 68) )
        {
          sub_145C8();
          sub_145BC(*(_DWORD *)(a1 + 68));
          *(_DWORD *)(a1 + 68) = 0;
        }
        if ( *(_DWORD *)(a1 + 72) )
        {
          (*(void (**)(void))(*(_DWORD *)((char *)off_142F0 + 0xFFFFFFFC + 82176) + 108))();
          *(_DWORD *)(a1 + 72) = 0;
        }
        *(_BYTE *)(a1 + 88) = 1;
        v8 = *(_DWORD *)(a1 + 1888);
        v9 = *(_DWORD *)(v8 + 316);
        v10 = v9 == 5;
        if ( v9 == 5 )
          v10 = *(_BYTE *)(v8 + 420) == 0;
        if ( v10 )
          **(_DWORD **)(*(_DWORD *)(v8 + 400) + 816) = 0;
        v11 = *(_DWORD *)(a1 + 36);
        if ( v11 )
          sub_22508(v11);
        return 1;
      }
    }
  }
  else
  {
    v13 = a2 == (int (*)())&loc_400;
    v14 = (int)a2 <= 1024;
    if ( (int)a2 >= 1024 )
    {
      v13 = a2 == (int (*)())&aInexactResult[4];
      v14 = (int)a2 - 1024 <= 260;
    }
    if ( v13 )
      goto LABEL_48;
    if ( !v14 )
    {
      v16 = a2 == (int (*)())&aInexactResult[5];
      if ( a2 != (int (*)())&aInexactResult[5] )
        v16 = a2 == (int (*)())&aInexactResult[6];
      if ( !v16 )
        return 0;
LABEL_48:
      if ( *(_BYTE *)(a1 + 62) != 1 )
        return sub_130A4(*(_DWORD *)(a1 + 1888), *(_DWORD *)(a1 + 1888), a1, a2, a3);
      return 0;
    }
    if ( a2 != (int (*)())&locret_404 )
    {
      v15 = a2 == (int (*)())((char *)&locret_404 + 1);
      if ( a2 != (int (*)())((char *)&locret_404 + 1) )
        v15 = a2 == (int (*)())aInexactResult;
      if ( v15 )
        return 1;
    }
  }
  return 0;
}

