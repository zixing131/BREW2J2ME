int __fastcall sub_24190(int a1, char a2, int a3, int a4)
{
  int v6; // r0
  int v7; // r4
  int v9; // [sp+4h] [bp-4h] BYREF

  v9 = a4;
  if ( (*(int (__fastcall **)(_DWORD, int, int *))(**(_DWORD **)(a1 + 12) + 8))(*(_DWORD *)(a1 + 12), dword_24394, &v9) )
    return 0;
  v6 = (*(int (__fastcall **)(int, char *, int))(*(_DWORD *)v9 + 8))(v9, off_24398 + 147932, 2);
  v7 = v6;
  if ( !v6 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v9 + 4))(v9);
    return 0;
  }
  if ( (a2 & 1) != 0
    && ((*(void (__fastcall **)(int, _DWORD, _DWORD))(*(_DWORD *)v6 + 28))(v6, 0, 0),
        (*(int (__fastcall **)(int, int, int))(*(_DWORD *)v7 + 20))(v7, a1 + 89, 8) != 8)
    || (a2 & 2) != 0
    && ((*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v7 + 28))(v7, 0, 8),
        (*(int (__fastcall **)(int, int, int))(*(_DWORD *)v7 + 20))(v7, a1 + 100, 788) != 788)
    || (a2 & 8) != 0
    && ((*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v7 + 28))(v7, 0, 796),
        (*(int (__fastcall **)(int, int, int))(*(_DWORD *)v7 + 20))(v7, a1 + 888, 60) != 60) )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v7 + 4))(v7);
    (*(void (__fastcall **)(int))(*(_DWORD *)v9 + 4))(v9);
    return 0;
  }
  (*(void (__fastcall **)(int))(*(_DWORD *)v7 + 4))(v7);
  (*(void (__fastcall **)(int))(*(_DWORD *)v9 + 4))(v9);
  return 1;
}

