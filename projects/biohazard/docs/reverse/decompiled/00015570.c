int __fastcall sub_15570(int a1)
{
  int (*v1)(); // r9
  char *v3; // r9
  _DWORD *v4; // r0
  int v5; // r0
  int v6; // r0
  char *v7; // r11
  int v8; // r0
  int v9; // r5
  int v10; // r0
  int v11; // r5
  int v12; // r0
  int v13; // r2
  __int16 v14; // r1
  int v15; // r0
  int v16; // r0
  int result; // r0
  _BYTE v18[20]; // [sp+0h] [bp-1Ch] BYREF
  int v19; // [sp+14h] [bp-8h] BYREF
  int v20; // [sp+18h] [bp-4h] BYREF

  *(_BYTE *)(a1 + 63) = 0;
  v1 = off_159D4;
  *(_BYTE *)(a1 + 88) = 1;
  v3 = (char *)v1 + 87448;
  *(_DWORD *)(a1 + 56) = *(_DWORD *)&v3[-12];
  v4 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 104))(84);
  *(_DWORD *)(a1 + 36) = v4;
  if ( !v4 )
    return 0;
  sub_10158(v4);
  if ( sub_16B6C(*(_DWORD *)(a1 + 36), off_159D8 + 87512, a1, 0) )
    return 0;
  v5 = (*(int (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 104))(104);
  *(_DWORD *)(a1 + 40) = v5;
  if ( !v5 )
    return 0;
  if ( !sub_16EE0(v5, off_159DC + 87568, a1) )
    return 0;
  v6 = (*(int (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 104))(44);
  *(_DWORD *)(a1 + 32) = v6;
  if ( !v6 )
    return 0;
  sub_10174(v6);
  if ( sub_178D0(*(_DWORD *)(a1 + 32), *(_DWORD *)(a1 + 20), 1) )
    return 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 72) = 0;
  *(_DWORD *)(a1 + 76) = 0;
  *(_BYTE *)(a1 + 80) = 0;
  *(_DWORD *)(a1 + 84) = 0;
  if ( (*(int (__fastcall **)(_DWORD, int, int *))(**(_DWORD **)(a1 + 12) + 8))(*(_DWORD *)(a1 + 12), dword_159E0, &v20) )
    return 0;
  v7 = off_159E4 + 87716;
  v8 = (*(int (__fastcall **)(int, char *, int))(*(_DWORD *)v20 + 8))(v20, off_159E4 + 87716, 1);
  v9 = v8;
  if ( v8 )
  {
    (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v8 + 12))(v8, a1 + 89, 8);
    (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v9 + 12))(v9, a1 + 100, 788);
    (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v9 + 12))(v9, a1 + 888, 60);
    (*(void (__fastcall **)(int))(*(_DWORD *)v9 + 4))(v9);
  }
  else
  {
    (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)&v3[-4] + 4))(a1 + 89, 0, 8);
    (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)&v3[-4] + 4))(a1 + 100, 0, 788);
    (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)&v3[-4] + 4))(a1 + 888, 0, 60);
    *(_BYTE *)(a1 + 89) = 0;
    v10 = (*(int (__fastcall **)(int, char *, int))(*(_DWORD *)v20 + 8))(v20, v7, 4);
    v11 = v10;
    if ( v10 )
    {
      (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v10 + 20))(v10, a1 + 89, 8);
      (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v11 + 20))(v11, a1 + 100, 788);
      (*(void (__fastcall **)(int, int, int))(*(_DWORD *)v11 + 20))(v11, a1 + 888, 60);
      (*(void (__fastcall **)(int))(*(_DWORD *)v11 + 4))(v11);
    }
  }
  *(_BYTE *)(a1 + 89) = 0;
  (*(void (__fastcall **)(int))(*(_DWORD *)v20 + 4))(v20);
  *(_BYTE *)(a1 + 1880) = 0;
  if ( sub_147D4(*(_DWORD *)(a1 + 12), (_DWORD *)(a1 + 1844)) )
    return 0;
  v19 = 0;
  (*(void (__fastcall **)(_DWORD, int, int *))(**(_DWORD **)(a1 + 12) + 8))(*(_DWORD *)(a1 + 12), dword_159E8, &v19);
  if ( v19 )
  {
    (*(void (__fastcall **)(int, _BYTE *))(*(_DWORD *)v19 + 12))(v19, v18);
    v12 = 0;
    do
    {
      v13 = a1 + 2 * v12;
      v14 = (unsigned __int8)v18[v12];
      v12 = (__int16)(v12 + 1);
      *(_WORD *)(v13 + 1848) = v14;
    }
    while ( v12 < 16 );
    (*(void (__fastcall **)(int))(*(_DWORD *)v19 + 4))(v19);
  }
  else
  {
    *(_WORD *)(dword_159EC + a1) = 0;
  }
  sub_19618(*(_DWORD *)(a1 + 40), dword_159F0, a1 + 948, 64);
  sub_19618(*(_DWORD *)(a1 + 40), dword_159F4, a1 + 1076, 64);
  sub_19618(*(_DWORD *)(a1 + 40), dword_159F8, a1 + 1204, 64);
  sub_19618(*(_DWORD *)(a1 + 40), dword_159FC, a1 + 1716, 64);
  *(_DWORD *)(a1 + 48) = 100;
  *(_DWORD *)(a1 + 52) = (*(int (**)(void))(*(_DWORD *)&v3[-4] + 176))();
  *(_BYTE *)(a1 + 62) = 0;
  *(_WORD *)(a1 + 60) = 0;
  v15 = (*(int (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 104))(36);
  *(_DWORD *)(a1 + 44) = v15;
  if ( !v15 )
    return 0;
  sub_1650C();
  sub_193E0(*(_DWORD *)(a1 + 44), 0);
  *(_DWORD *)(a1 + 1884) = 1;
  v16 = (*(int (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 104))(384);
  *(_DWORD *)(a1 + 1888) = v16;
  if ( !v16 )
    return 0;
  sub_16B18();
  result = sub_17730(*(_DWORD *)(a1 + 1888), a1, 0);
  if ( result != 1 )
    return 0;
  return result;
}

