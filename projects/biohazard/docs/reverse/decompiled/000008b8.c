int __fastcall sub_8B8(int a1, void (__fastcall ***a2)(_DWORD), int a3, _DWORD *a4, int a5, int a6)
{
  bool v6; // zf
  int v9; // r5
  int v11; // r0
  _DWORD *v12; // r4
  _DWORD *v13; // r0

  v6 = a4 == 0;
  if ( a4 )
    v6 = a2 == 0;
  v9 = a1;
  if ( v6 )
    return 1;
  if ( a1 < 0 )
    return 14;
  *a4 = 0;
  if ( (unsigned int)a1 < 0x14 )
    v9 = (__int16)(a1 + 20);
  v11 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_98C + 0xFFFFFFFC + 2316) + 104))(v9 + 16);
  v12 = (_DWORD *)v11;
  if ( !v11 )
    return 2;
  v13 = (_DWORD *)(v11 + v9);
  *v13 = (char *)off_990 + 2360;
  v13[1] = (char *)off_994 + 2372;
  v13[2] = (char *)off_998 + 2384;
  v13[3] = (char *)off_99C + 2396;
  *v12 = (char *)v12 + v9;
  v12[1] = 1;
  v12[2] = a2;
  v12[3] = a5;
  v12[4] = a6;
  (**a2)(a2);
  *a4 = v12;
  return 0;
}

