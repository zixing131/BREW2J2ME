int __fastcall sub_16EE0(int **a1, int a2, int a3, int a4)
{
  int (*v5)(); // r6
  char *v6; // r6
  _DWORD *v8; // r5
  int v9; // r0
  int v10; // r5
  int v11; // r0
  int v12; // r0
  int v13; // r0
  int v14; // r6
  int *v15; // r0
  int *v17; // r0
  int v18; // t1
  int *v19; // r0
  int v20; // r0
  int v21; // [sp+4h] [bp-8h] BYREF
  int v22; // [sp+8h] [bp-4h] BYREF

  v21 = a3;
  v22 = a4;
  a1[7] = 0;
  a1[6] = 0;
  a1[4] = 0;
  a1[5] = 0;
  *a1 = 0;
  a1[1] = 0;
  v5 = off_17120;
  a1[2] = 0;
  a1[3] = 0;
  v6 = (char *)v5 + 93976;
  v8 = a1 + 8;
  (*(void (**)(void))(*(_DWORD *)&v6[-4] + 8))();
  a1[24] = (int *)a3;
  if ( (*(int (__fastcall **)(_DWORD, int, int *))(**(_DWORD **)(a3 + 12) + 8))(*(_DWORD *)(a3 + 12), dword_17124, &v21) )
    return 0;
  v9 = (*(int (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)v21 + 8))(v21, v8, 1);
  v10 = v9;
  if ( v9 )
  {
    (*(void (__fastcall **)(int, int **, int))(*(_DWORD *)v9 + 12))(v9, a1 + 6, 4);
    v11 = (*(int (__fastcall **)(int))(*(_DWORD *)&v6[-4] + 104))(4 * (_DWORD)a1[6]);
    a1[4] = (int *)v11;
    if ( !v11 )
      return 0;
    v12 = (*(int (__fastcall **)(int))(*(_DWORD *)&v6[-4] + 104))(4 * (_DWORD)a1[6]);
    a1[5] = (int *)v12;
    if ( !v12 )
      return 0;
    (*(void (__fastcall **)(int, int *, int))(*(_DWORD *)v10 + 12))(v10, a1[4], 4 * (_DWORD)a1[6]);
    (*(void (__fastcall **)(int, int *, int))(*(_DWORD *)v10 + 12))(v10, a1[5], 4 * (_DWORD)a1[6]);
    v22 = *a1[5] - (*(int (__fastcall **)(int, int, _DWORD))(*(_DWORD *)v10 + 28))(v10, 2, 0);
    if ( v22 )
    {
      v13 = (*(int (**)(void))(*(_DWORD *)&v6[-4] + 104))();
      v14 = v13;
      if ( !v13 )
        return 0;
      (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v10 + 12))(v10, v13, v22);
      v15 = (int *)((int (__fastcall *)(int, int, _DWORD))a1[24][14])(v14, v22, 0);
      *a1 = v15;
      if ( !v15 )
        return 0;
      v18 = *v15;
      v17 = v15 + 1;
      a1[2] = v17;
      a1[7] = (int *)v18;
      v19 = &v17[v18];
      a1[3] = v19;
      a1[1] = &v19[v18];
    }
    (*(void (__fastcall **)(int))(*(_DWORD *)v10 + 4))(v10);
  }
  (*(void (__fastcall **)(int))(*(_DWORD *)v21 + 4))(v21);
  v20 = sub_18818(a1, dword_17128, &v22);
  a1[25] = (int *)sub_1B9AC(v20, v22);
  return 1;
}

