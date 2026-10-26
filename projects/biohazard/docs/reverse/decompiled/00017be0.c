int __fastcall sub_17BE0(int a1, _BYTE *a2, int a3, void (__fastcall *a4)(int, int, int, int), int a5)
{
  bool v5; // zf
  _BYTE *v9; // r4
  char *v10; // r11
  int v11; // r0
  bool v12; // zf
  unsigned int v13; // r8
  unsigned int v14; // r0
  unsigned int v15; // r6
  bool v16; // cc
  int v17; // r3
  int v18; // r2
  int v19; // r1
  int v20; // r0
  unsigned int v21; // r3
  int v22; // r0

  v5 = a1 == 0;
  if ( a1 )
    v5 = a4 == 0;
  if ( !v5 )
    v5 = a2 == 0;
  if ( v5 )
    return -1;
  v9 = a2;
  v10 = (char *)off_17DB0 + 97296;
  while ( *v9 )
  {
    while ( 1 )
    {
      v11 = (unsigned __int8)*v9;
      v12 = v11 == 10;
      if ( v11 != 10 )
        v12 = v11 == 13;
      if ( !v12 )
        break;
      ++v9;
    }
    if ( !*v9 )
      break;
    v13 = (*(int (__fastcall **)(_BYTE *, int))(*(_DWORD *)&v10[-4] + 24))(v9, 58);
    v14 = (*(int (__fastcall **)(_BYTE *, int))(*(_DWORD *)&v10[-4] + 24))(v9, 10);
    v15 = v14;
    if ( !v13 )
    {
      if ( !v14 )
        break;
LABEL_18:
      v17 = 0;
      v18 = 0;
      v19 = 1;
      goto LABEL_25;
    }
    v16 = v14 != 0;
    if ( v14 )
      v16 = v13 > v14;
    if ( v16 )
      goto LABEL_18;
    sub_270A4(a1, 128, v9, v13 - (_DWORD)v9);
    v20 = (*(int (__fastcall **)(unsigned int, int))(*(_DWORD *)&v10[-4] + 24))(v13 + 1, 10);
    v15 = v20;
    if ( !v20 )
    {
      v22 = (*(int (__fastcall **)(unsigned int))(*(_DWORD *)&v10[-4] + 20))(v13 + 1);
      if ( v22 )
      {
        sub_270A4(a1 + 128, 512, v13 + 1, v22);
        a4(a5, 0, a1, a1 + 128);
      }
      break;
    }
    v21 = v20 - (v13 + 1);
    if ( *(_BYTE *)(v20 - 1) == 13 )
      --v21;
    sub_270A4(a1 + 128, 512, v13 + 1, v21);
    v17 = a1 + 128;
    v18 = a1;
    v19 = 0;
LABEL_25:
    a4(a5, v19, v18, v17);
    v9 = (_BYTE *)(v15 + 1);
  }
  a4(a5, 2, 0, 0);
  return 0;
}

