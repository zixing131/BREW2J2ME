int __fastcall sub_570(int a1, int a2, int a3, void (__fastcall ***a4)(_DWORD), _DWORD *a5, int a6, int a7)
{
  int v9; // r6
  bool v10; // zf
  char *v11; // r11
  int v12; // r0
  _DWORD *v13; // r4
  _DWORD *v15; // r0
  int v16; // r1

  if ( a1 < 0 )
    return 0;
  v9 = a1;
  v10 = a5 == 0;
  if ( a5 )
  {
    *a5 = 0;
    v10 = a3 == 0;
  }
  if ( !v10 )
    v10 = a4 == 0;
  if ( v10 )
    return 0;
  if ( (unsigned int)a1 < 0x20 )
    v9 = a1 + 32;
  v11 = (char *)off_6AC + 1472;
  v12 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_6AC + 0xFFFFFFFC + 1472) + 104))(v9 + 12);
  v13 = (_DWORD *)v12;
  if ( !v12 )
    return 0;
  v15 = (_DWORD *)(v12 + v9);
  *v15 = (char *)off_6B0[0] + 1528;
  v15[1] = (char *)off_6B4 + 1540;
  v15[2] = (char *)off_6B8 + 1552;
  *v13 = (char *)v13 + v9;
  v13[2] = 1;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = 0;
  v16 = dword_6BC;
  v13[1] = a2;
  v13[6] = a6;
  v13[7] = a7;
  (*(void (__fastcall **)(int, int, _DWORD *))(*(_DWORD *)a3 + 8))(a3, v16, v13 + 5);
  if ( !v13[5] )
  {
    (*(void (__fastcall **)(_DWORD *))(*(_DWORD *)&v11[-4] + 108))(v13);
    return 0;
  }
  (**(void (__fastcall ***)(int))a3)(a3);
  (**a4)(a4);
  *a5 = v13;
  return 1;
}

