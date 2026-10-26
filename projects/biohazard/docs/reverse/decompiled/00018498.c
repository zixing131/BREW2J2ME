int __fastcall sub_18498(_DWORD *a1, unsigned int a2)
{
  int i; // r9
  int v3; // r11
  int v5; // r1
  _DWORD *v6; // r5
  bool v7; // zf
  int v9; // r0
  int v10; // r4
  int v11; // r0
  int v12; // r2
  int v13; // r1
  int v14; // r3
  int v15; // r7
  int v16; // r8
  int v17; // r6
  int v18; // r0
  int v19; // r0
  void (__fastcall *v20)(int); // r1
  int v21; // r8
  int v22; // r7
  unsigned int v23; // r4
  unsigned int v24; // r10
  int v25; // r2
  int v26; // r0
  unsigned int v27; // [sp+8h] [bp-Ch]
  int v28; // [sp+Ch] [bp-8h] BYREF
  int v29; // [sp+10h] [bp-4h] BYREF

  v5 = a1[20];
  v6 = a1;
  v7 = v5 == 0;
  if ( v5 )
  {
    a1 = (_DWORD *)a1[18];
    v7 = a1 == 0;
    if ( a1 )
    {
      a1 = (_DWORD *)v6[16];
      v7 = a1 == 0;
    }
  }
  if ( v7 )
    return 7;
  if ( v6[17] <= a2 )
    return 2;
  v9 = a1[3];
  if ( *(_DWORD *)(v5 + 32 * a2 + 8) )
    return 0;
  if ( (*(int (__fastcall **)(int, int, int *))(*(_DWORD *)v9 + 8))(v9, dword_18808, &v29) )
    return 5;
  v10 = (*(int (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)v29 + 8))(v29, v6, 1);
  if ( !v10 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v29 + 4))(v29);
    return 5;
  }
  v11 = v6[18];
  v12 = *(_DWORD *)(v11 + 4 * a2);
  v13 = v11 + 4 * a2;
  v14 = *(_DWORD *)(v13 + 4);
  v15 = v14 - v12;
  if ( v14 == v12 || v6[17] - 1 > a2 && *(_DWORD *)(v13 + 8) == v14 )
  {
    for ( i = a2; i >= 0 && *(_DWORD *)(v11 + 4 * i + 4) == *(_DWORD *)(v11 + 4 * i); --i )
      ;
    v16 = 1;
    v15 = *(_DWORD *)(v11 + 4 * i + 4) - *(_DWORD *)(v11 + 4 * i);
  }
  else
  {
    v16 = 0;
  }
  if ( (*(int (__fastcall **)(int, _DWORD))(*(_DWORD *)v10 + 28))(v10, 0) )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v10 + 4))(v10);
    (*(void (__fastcall **)(int))(*(_DWORD *)v29 + 4))(v29);
    return 4;
  }
  v17 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_1880C + 0xFFFFFFFC + 99884) + 104))(v15);
  v18 = *(_DWORD *)v10;
  if ( !v17 )
  {
    (*(void (__fastcall **)(int))(v18 + 4))(v10);
    (*(void (__fastcall **)(int))(*(_DWORD *)v29 + 4))(v29);
    return 3;
  }
  v19 = (*(int (__fastcall **)(int, int, int))(v18 + 12))(v10, v17, v15);
  v20 = *(void (__fastcall **)(int))(*(_DWORD *)v10 + 4);
  if ( v19 != v15 )
  {
    v20(v10);
    (*(void (__fastcall **)(int))(*(_DWORD *)v29 + 4))(v29);
    (*(void (__fastcall **)(int))(*(_DWORD *)((char *)off_18810 + 0xFFFFFFFC + 100040) + 108))(v17);
    return 4;
  }
  v20(v10);
  (*(void (__fastcall **)(int))(*(_DWORD *)v29 + 4))(v29);
  if ( v16 )
  {
    v21 = v17 + 4;
    v27 = *(_DWORD *)v17;
    v22 = (*(int (__fastcall **)(int, _DWORD, int *))(v6[16] + 56))(
            v17 + 4 * *(_DWORD *)v17 + 8,
            *(_DWORD *)(v17 + 4 * *(_DWORD *)v17 + 4),
            &v28);
    v23 = 0;
    v24 = v27 - 1;
    while ( v23 < v27 )
    {
      if ( v23 < v24 )
        v25 = *(_DWORD *)(v21 + 4 * v23 + 4);
      else
        v25 = v22 + v28;
      if ( v23 < v24 )
        v25 += v22;
      v3 = sub_11C58((int)v6, i + v23, (unsigned __int16 *)(v25 - 12), *(_DWORD *)(v21 + 4 * v23) + v22);
      ++v23;
    }
  }
  else
  {
    v26 = (*(int (__fastcall **)(int, _DWORD, int *))(v6[16] + 56))(v17 + 16, *(_DWORD *)(v17 + 12), &v28);
    v3 = sub_11C58((int)v6, a2, (unsigned __int16 *)v17, v26);
  }
  (*(void (__fastcall **)(int))(*(_DWORD *)((char *)off_18814 + 0xFFFFFFFC + 100336) + 108))(v17);
  return v3;
}

