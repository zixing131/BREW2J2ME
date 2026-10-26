int __fastcall sub_8B79C(int a1, int a2, int a3)
{
  int v3; // r3
  int v5; // r0
  int v6; // r0
  int i; // r5
  int v8; // r0
  _DWORD *v9; // r3
  int v10; // r0
  int j; // r5
  int v12; // r0
  _DWORD *v13; // r3
  int v14; // r0
  int k; // r5
  int v16; // r0
  _DWORD *v17; // r3
  int v18; // r0
  int m; // r5
  int v20; // r0
  _DWORD *v21; // r3
  int v22; // r0
  int n; // r5
  int v24; // r0
  _DWORD *v25; // r3
  int v26; // r0
  int ii; // r5
  int v28; // r0
  _DWORD *v29; // r3
  int v30; // r0
  int v31; // r0
  int v32; // r0
  int v33; // r1
  int v34; // r2
  int savedregs_8; // [sp+8h] [bp+8h]

  v3 = *(unsigned __int8 *)(a1 + 2);
  if ( v3 == 1 )
  {
    if ( *(_DWORD *)(a1 + 60) )
    {
      for ( i = 0; i != 64; i += 8 )
      {
        v8 = *(_DWORD *)(*(_DWORD *)(a1 + 64) + i);
        if ( v8 )
        {
          sub_8BDE8(v8, a2, a3, &unk_14032FC);
          a3 = 0;
          v9 = (_DWORD *)(*(_DWORD *)(a1 + 64) + i);
          *v9 = 0;
          v9[1] = 0;
        }
      }
      v10 = *(_DWORD *)(a1 + 60);
      if ( v10 )
      {
        sub_8BDE8(v10, a2, a3, &unk_14032FC);
        *(_DWORD *)(a1 + 60) = 0;
      }
      *(_DWORD *)(a1 + 60) = 0;
      *(_DWORD *)(a1 + 64) = 0;
    }
    if ( *(_DWORD *)(a1 + 68) )
    {
      for ( j = 0; j != 32; j += 8 )
      {
        v12 = *(_DWORD *)(*(_DWORD *)(a1 + 72) + j);
        if ( v12 )
        {
          sub_8BDE8(v12, a2, a3, &unk_14032FC);
          a3 = 0;
          v13 = (_DWORD *)(*(_DWORD *)(a1 + 72) + j);
          *v13 = 0;
          v13[1] = 0;
        }
      }
      v14 = *(_DWORD *)(a1 + 68);
      if ( v14 )
      {
        sub_8BDE8(v14, a2, a3, &unk_14032FC);
        *(_DWORD *)(a1 + 68) = 0;
      }
      *(_DWORD *)(a1 + 68) = 0;
      *(_DWORD *)(a1 + 72) = 0;
    }
    if ( *(_DWORD *)(a1 + 76) )
    {
      for ( k = 0; k != 32; k += 8 )
      {
        v16 = *(_DWORD *)(*(_DWORD *)(a1 + 80) + k);
        if ( v16 )
        {
          sub_8BDE8(v16, a2, a3, &unk_14032FC);
          a3 = 0;
          v17 = (_DWORD *)(*(_DWORD *)(a1 + 80) + k);
          *v17 = 0;
          v17[1] = 0;
        }
      }
      v18 = *(_DWORD *)(a1 + 76);
      if ( v18 )
      {
        sub_8BDE8(v18, a2, a3, &unk_14032FC);
        *(_DWORD *)(a1 + 76) = 0;
      }
      *(_DWORD *)(a1 + 76) = 0;
      *(_DWORD *)(a1 + 80) = 0;
    }
    if ( *(_DWORD *)(a1 + 36) )
    {
      for ( m = 0; m != 64; m += 8 )
      {
        v20 = *(_DWORD *)(*(_DWORD *)(a1 + 40) + m);
        if ( v20 )
        {
          sub_8BDE8(v20, a2, a3, &unk_14032FC);
          a3 = 0;
          v21 = (_DWORD *)(*(_DWORD *)(a1 + 40) + m);
          *v21 = 0;
          v21[1] = 0;
        }
      }
      v22 = *(_DWORD *)(a1 + 36);
      if ( v22 )
      {
        sub_8BDE8(v22, a2, a3, &unk_14032FC);
        *(_DWORD *)(a1 + 36) = 0;
      }
      *(_DWORD *)(a1 + 36) = 0;
      *(_DWORD *)(a1 + 40) = 0;
    }
    if ( *(_DWORD *)(a1 + 44) )
    {
      for ( n = 0; n != 32; n += 8 )
      {
        v24 = *(_DWORD *)(*(_DWORD *)(a1 + 48) + n);
        if ( v24 )
        {
          sub_8BDE8(v24, a2, a3, &unk_14032FC);
          a3 = 0;
          v25 = (_DWORD *)(*(_DWORD *)(a1 + 48) + n);
          *v25 = 0;
          v25[1] = 0;
        }
      }
      v26 = *(_DWORD *)(a1 + 44);
      if ( v26 )
      {
        sub_8BDE8(v26, a2, a3, &unk_14032FC);
        *(_DWORD *)(a1 + 44) = 0;
      }
      *(_DWORD *)(a1 + 44) = 0;
      *(_DWORD *)(a1 + 48) = 0;
    }
    if ( *(_DWORD *)(a1 + 52) )
    {
      for ( ii = 0; ii != 32; ii += 8 )
      {
        v28 = *(_DWORD *)(*(_DWORD *)(a1 + 56) + ii);
        if ( v28 )
        {
          sub_8BDE8(v28, a2, a3, &unk_14032FC);
          a3 = 0;
          v29 = (_DWORD *)(*(_DWORD *)(a1 + 56) + ii);
          *v29 = 0;
          v29[1] = 0;
        }
      }
      v30 = *(_DWORD *)(a1 + 52);
      if ( v30 )
      {
        sub_8BDE8(v30, a2, a3, &unk_14032FC);
        *(_DWORD *)(a1 + 52) = 0;
      }
      *(_DWORD *)(a1 + 52) = 0;
      *(_DWORD *)(a1 + 56) = 0;
    }
  }
  else if ( *(_BYTE *)(a1 + 2) )
  {
    if ( v3 == 2 )
    {
      v31 = *(_DWORD *)(a1 + 108);
      if ( v31 )
      {
        sub_8BDE8(v31, a2, a3, &unk_14032FC);
        *(_DWORD *)(a1 + 108) = 0;
        *(_DWORD *)(a1 + 112) = 0;
      }
      v32 = *(_DWORD *)(a1 + 100);
      if ( v32 )
      {
        sub_8BDE8(v32, a2, a3, &unk_14032FC);
        *(_DWORD *)(a1 + 100) = 0;
        *(_DWORD *)(a1 + 104) = 0;
      }
    }
  }
  else
  {
    v5 = *(_DWORD *)(a1 + 92);
    if ( v5 )
    {
      sub_8BDE8(v5, a2, a3, &unk_14032FC);
      *(_DWORD *)(a1 + 92) = 0;
      *(_DWORD *)(a1 + 96) = 0;
    }
    v6 = *(_DWORD *)(a1 + 84);
    if ( v6 )
    {
      sub_8BDE8(v6, a2, a3, &unk_14032FC);
      *(_DWORD *)(a1 + 84) = 0;
      *(_DWORD *)(a1 + 88) = 0;
    }
  }
  sub_8B35C(a1);
  sub_8BDE8(a1 + 8, v33, v34, 572973);
  return savedregs_8;
}
