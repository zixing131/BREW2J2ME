int __fastcall sub_8B35C(int a1, int a2, int a3)
{
  int i; // r4
  _DWORD *v5; // r6
  int v6; // r0
  _DWORD *v7; // r3
  _DWORD *v8; // r4
  int v9; // r0
  int j; // r4
  _DWORD *v11; // r6
  int v12; // r0
  _DWORD *v13; // r3
  _DWORD *v14; // r4
  int v15; // r0
  int v16; // r0
  int savedregs_12; // [sp+Ch] [bp+Ch]

  if ( *(_DWORD *)(a1 + 140) )
  {
    for ( i = 0; i != 32; i += 8 )
    {
      v5 = (_DWORD *)(a1 + 144);
      v6 = *(_DWORD *)(*(_DWORD *)(a1 + 144) + i);
      if ( v6 )
      {
        sub_8BDE8(v6, a2, a3, &unk_14032FC);
        a3 = 0;
        v7 = (_DWORD *)(*v5 + i);
        *v7 = 0;
        v7[1] = 0;
      }
    }
    v8 = (_DWORD *)(a1 + 140);
    v9 = *(_DWORD *)(a1 + 140);
    if ( v9 )
    {
      sub_8BDE8(v9, a2, a3, &unk_14032FC);
      *v8 = 0;
    }
    *v8 = 0;
    *v5 = 0;
  }
  if ( *(_DWORD *)(a1 + 148) )
  {
    for ( j = 0; j != 32; j += 8 )
    {
      v11 = (_DWORD *)(a1 + 152);
      v12 = *(_DWORD *)(*(_DWORD *)(a1 + 152) + j);
      if ( v12 )
      {
        sub_8BDE8(v12, a2, a3, &unk_14032FC);
        a3 = 0;
        v13 = (_DWORD *)(*v11 + j);
        *v13 = 0;
        v13[1] = 0;
      }
    }
    v14 = (_DWORD *)(a1 + 148);
    v15 = *(_DWORD *)(a1 + 148);
    if ( v15 )
    {
      sub_8BDE8(v15, a2, a3, &unk_14032FC);
      *v14 = 0;
    }
    *v14 = 0;
    *v11 = 0;
  }
  v16 = *(_DWORD *)(a1 + 160);
  if ( v16 )
  {
    sub_8BDE8(v16, a2, a3, &unk_14032FC);
    *(_DWORD *)(a1 + 160) = 0;
    *(_DWORD *)(a1 + 164) = 0;
  }
  *(_BYTE *)(a1 + 156) = 0;
  return savedregs_12;
}
