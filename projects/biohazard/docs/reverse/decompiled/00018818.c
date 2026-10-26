int __fastcall sub_18818(_DWORD *a1, unsigned int a2, int a3, int a4)
{
  int v4; // r4
  int v6; // r0
  int v8; // r3
  bool v9; // zf
  int v10; // r2
  int v11; // r8
  unsigned int v12; // r12
  int v14; // r5
  int v15; // r8
  char *v16; // r9
  int v17; // r7
  int v18; // [sp+4h] [bp-4h] BYREF

  v18 = a4;
  v6 = a1[6];
  if ( v6 <= 0 )
    return 0;
  v8 = a1[4];
  v9 = v8 == 0;
  if ( v8 )
    v9 = a1[5] == 0;
  if ( v9 )
    return 0;
  v10 = 1;
  v11 = 0;
  while ( v10 <= v6 )
  {
    v4 = (v10 + v6) / 2;
    v12 = *(_DWORD *)(v8 + 4 * v4);
    if ( v12 == a2 )
      break;
    if ( v12 > a2 )
      v6 = v4 - 1;
    else
      v10 = v4 + 1;
  }
  if ( v10 > v6
    || (*(int (__fastcall **)(_DWORD, int, int *))(**(_DWORD **)(a1[24] + 12) + 8))(
         *(_DWORD *)(a1[24] + 12),
         dword_189E0,
         &v18) )
  {
    return 0;
  }
  v14 = (*(int (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)v18 + 8))(v18, a1 + 8, 1);
  if ( v14 )
  {
    v15 = *(_DWORD *)(a1[5] + 4 * v4) - *(_DWORD *)(a1[5] + 4 * v4 - 4);
    v16 = (char *)off_189E4 + 100600;
    v17 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_189E4 + 0xFFFFFFFC + 100600) + 104))(v15);
    if ( !v17 )
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)v14 + 4))(v14);
      (*(void (__fastcall **)(int))(*(_DWORD *)v18 + 4))(v18);
      return 0;
    }
    (*(void (__fastcall **)(int, int, _DWORD))(*(_DWORD *)v14 + 28))(v14, 2, *(_DWORD *)(a1[5] + 4 * v4 - 4));
    (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v14 + 12))(v14, v17, v15);
    (*(void (__fastcall **)(int))(*(_DWORD *)v14 + 4))(v14);
    v11 = (*(int (__fastcall **)(int, int, int))(a1[24] + 56))(v17, v15, a3);
    (*(void (__fastcall **)(int))(*(_DWORD *)&v16[-4] + 108))(v17);
  }
  (*(void (__fastcall **)(int))(*(_DWORD *)v18 + 4))(v18);
  return v11;
}

