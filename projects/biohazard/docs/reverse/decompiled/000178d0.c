int __fastcall sub_178D0(int a1, int a2)
{
  int v3; // r0
  bool v4; // zf
  int v7; // r0
  _BYTE *v8; // r0
  char *v9; // r7
  int v10; // r8
  int v11; // r0
  __int16 v12; // r1
  int v13; // r0
  int v14; // r0
  int i; // r0
  __int16 v16; // [sp+0h] [bp-40h] BYREF
  unsigned __int16 v17; // [sp+2h] [bp-3Eh]
  __int16 v18; // [sp+2Ch] [bp-14h]

  v3 = *(_DWORD *)(a1 + 20);
  v4 = v3 == 0;
  if ( !v3 )
    v3 = *(_DWORD *)(a1 + 36);
  if ( v4 )
  {
    v4 = v3 == 0;
    if ( !v3 )
      v4 = *(_DWORD *)(a1 + 40) == 0;
  }
  if ( !v4 )
    return 6;
  if ( !a2 )
    return 2;
  v7 = (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 60))(a2);
  *(_DWORD *)(a1 + 36) = v7;
  if ( !v7 )
    return 4;
  if ( (*(int (__fastcall **)(int, int, int))(*(_DWORD *)v7 + 8))(v7, dword_17AC4, a1 + 40)
    || (v8 = *(_BYTE **)(a1 + 40)) == 0 )
  {
    sub_1432C(*(_DWORD *)(a1 + 36));
    *(_DWORD *)(a1 + 36) = 0;
    *(_DWORD *)(a1 + 40) = 0;
    return 4;
  }
  if ( v8[29] == 16 )
  {
    v18 = 64;
    v9 = (char *)off_17AC8 + 96712;
    v10 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_17AC8 + 0xFFFFFFFC + 96712) + 192))() + 12);
    v11 = (*(int (**)(void))(*(_DWORD *)&v9[-4] + 192))();
    (*(void (__fastcall **)(int, __int16 *))(**(_DWORD **)(v11 + 12) + 16))(v10, &v16);
    v12 = v16;
    *(_WORD *)a1 = v16;
    v13 = v17;
    *(_WORD *)(a1 + 2) = v17;
    *(_WORD *)(a1 + 4) = 0;
    *(_WORD *)(a1 + 8) = v12;
    *(_WORD *)(a1 + 6) = 0;
    *(_WORD *)(a1 + 10) = v13;
    *(_WORD *)(a1 + 12) = 0;
    *(_WORD *)(a1 + 14) = 0;
    v14 = (*(int (__fastcall **)(int))(*(_DWORD *)&v9[-4] + 104))(4 * v13);
    *(_DWORD *)(a1 + 20) = v14;
    if ( v14 )
    {
      for ( i = 0; *(unsigned __int16 *)(a1 + 2) > i; ++i )
        *(_DWORD *)(*(_DWORD *)(a1 + 20) + 4 * i) = *(_DWORD *)(*(_DWORD *)(a1 + 40) + 8)
                                                  + *(__int16 *)(*(_DWORD *)(a1 + 40) + 24) * i;
      *(_DWORD *)(a1 + 32) = a2;
      *(_WORD *)(a1 + 16) = 12;
      *(_WORD *)(a1 + 18) = 12;
      *(_BYTE *)(a1 + 28) = 1;
      return 0;
    }
    else
    {
      (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 40) + 4))(*(_DWORD *)(a1 + 40));
      sub_1432C(*(_DWORD *)(a1 + 36));
      *(_DWORD *)(a1 + 36) = 0;
      *(_DWORD *)(a1 + 40) = 0;
      return 3;
    }
  }
  else
  {
    (*(void (__fastcall **)(_BYTE *))(*(_DWORD *)v8 + 4))(v8);
    sub_1432C(*(_DWORD *)(a1 + 36));
    *(_DWORD *)(a1 + 36) = 0;
    *(_DWORD *)(a1 + 40) = 0;
    return 100;
  }
}

