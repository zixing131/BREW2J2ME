int __fastcall sub_16B6C(_DWORD *a1, int a2, int a3)
{
  bool v3; // zf
  int v7; // r0
  int v8; // r4
  int v9; // r7
  char *v10; // r8
  int v11; // r0
  int v12; // r0
  int v13; // r0
  int v14; // r0
  int v15; // r1
  void (__fastcall *v16)(int); // r1
  _DWORD v17[19]; // [sp+0h] [bp-50h] BYREF
  int v18; // [sp+4Ch] [bp-4h] BYREF

  v3 = a2 == 0;
  if ( a2 )
    v3 = a3 == 0;
  if ( v3 )
    return 2;
  if ( a1[20] )
    return 6;
  a1[16] = a3;
  if ( (*(int (__fastcall **)(_DWORD, int, int *))(**(_DWORD **)(a3 + 12) + 8))(*(_DWORD *)(a3 + 12), dword_16EC0, &v18) )
    return 5;
  v7 = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)v18 + 8))(v18, a2, 1);
  v8 = v7;
  if ( !v7 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v18 + 4))(v18);
    return 5;
  }
  if ( (*(int (__fastcall **)(int, _DWORD *))(*(_DWORD *)v7 + 24))(v7, v17) )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v8 + 4))(v8);
    (*(void (__fastcall **)(int))(*(_DWORD *)v18 + 4))(v18);
    return 5;
  }
  v9 = v17[2];
  if ( (*(int (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)v8 + 12))(v8, a1 + 17, 4) != 4 )
    goto LABEL_14;
  v10 = (char *)off_16EC4 + 93372;
  v11 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_16EC4 + 0xFFFFFFFC + 93372) + 104))(32 * a1[17]);
  a1[20] = v11;
  if ( !v11
    || ((*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)&v10[-4] + 4))(v11, 0, 32 * a1[17]),
        v12 = (*(int (__fastcall **)(int))(*(_DWORD *)&v10[-4] + 104))(4 * a1[17] + 4),
        (a1[18] = v12) == 0)
    || (v13 = (*(int (__fastcall **)(int))(*(_DWORD *)&v10[-4] + 104))(4 * a1[17]), (a1[19] = v13) == 0) )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v8 + 4))(v8);
    (*(void (__fastcall **)(int))(*(_DWORD *)v18 + 4))(v18);
    return 3;
  }
  v14 = (*(int (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v8 + 12))(v8, a1[18], 4 * a1[17]);
  v15 = a1[17];
  if ( v14 != 4 * v15 )
  {
LABEL_14:
    (*(void (__fastcall **)(int))(*(_DWORD *)v8 + 4))(v8);
    (*(void (__fastcall **)(int))(*(_DWORD *)v18 + 4))(v18);
    return 4;
  }
  *(_DWORD *)(a1[18] + 4 * v15) = v9;
  v3 = (*(int (__fastcall **)(int, _DWORD, int))(*(_DWORD *)v8 + 12))(v8, a1[19], 4 * a1[17]) == 4 * a1[17];
  v16 = *(void (__fastcall **)(int))(*(_DWORD *)v8 + 4);
  if ( !v3 )
  {
    v16(v8);
    (*(void (__fastcall **)(int))(*(_DWORD *)v18 + 4))(v18);
    return 4;
  }
  v16(v8);
  (*(void (__fastcall **)(int))(*(_DWORD *)v18 + 4))(v18);
  (*(void (__fastcall **)(_DWORD *, int, int))(*(_DWORD *)&v10[-4] + 200))(a1, a2, 63);
  return 0;
}

