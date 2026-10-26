int __fastcall sub_11C58(int a1, int a2, unsigned __int16 *a3, int a4)
{
  unsigned __int16 *v4; // r0
  unsigned __int16 *v5; // r2
  unsigned __int16 v6; // t1
  unsigned __int16 *v7; // r12
  int v8; // r1
  unsigned __int16 v9; // r2
  unsigned __int16 v10; // t1
  int v11; // r3
  int v12; // r12
  unsigned int k; // r1
  int v14; // r2
  int v15; // r2
  unsigned int j; // r1
  int v17; // r3
  int v19; // r3
  unsigned int v20; // r1
  int v21; // r12
  int v22; // r2
  unsigned int i; // r1
  int v24; // r3

  v4 = (unsigned __int16 *)(*(_DWORD *)(a1 + 80) + 32 * a2);
  v6 = *a3;
  v5 = a3 + 1;
  v7 = v5 + 1;
  *v4 = v6;
  v8 = *v5;
  v4[1] = v8;
  v9 = v5[1];
  v4[2] = v9;
  v10 = v7[1];
  ++v7;
  v4[3] = v10;
  v4[12] = v7[1];
  v4[13] = v7[2];
  if ( (v9 & 3) != 0 )
  {
    if ( (v9 & 3) != 1 )
      return 1;
    *((_DWORD *)v4 + 7) = 0;
    *((_DWORD *)v4 + 2) = a4;
    *((_DWORD *)v4 + 5) = 0;
    if ( (v9 & 0x10) == 0 )
    {
      *((_DWORD *)v4 + 4) = 0;
      *((_DWORD *)v4 + 3) = 0;
    }
    v19 = a4 + 4 * v8;
    if ( (v9 & 0x10) != 0 )
    {
      *((_DWORD *)v4 + 3) = v19;
      *((_DWORD *)v4 + 4) = v8 + v19;
      v22 = v8 + v8 + v19;
      for ( i = 0; v4[1] > i; ++i )
      {
        *(_DWORD *)(*((_DWORD *)v4 + 2) + 4 * i) = v22;
        v24 = *(unsigned __int8 *)(*((_DWORD *)v4 + 4) + i);
        v22 += v24;
      }
    }
    else
    {
      v20 = 0;
      v21 = *v4;
      while ( v4[1] > v20 )
      {
        *(_DWORD *)(*((_DWORD *)v4 + 2) + 4 * v20) = v19;
        v19 += v21;
        ++v20;
      }
    }
  }
  else
  {
    *((_DWORD *)v4 + 2) = a4;
    *((_DWORD *)v4 + 7) = 0;
    if ( (v9 & 0x10) == 0 )
    {
      *((_DWORD *)v4 + 5) = 0;
      *((_DWORD *)v4 + 4) = 0;
      *((_DWORD *)v4 + 3) = 0;
    }
    v11 = a4 + 4 * v8;
    if ( (v9 & 0x10) != 0 )
    {
      *((_DWORD *)v4 + 3) = v11;
      *((_DWORD *)v4 + 4) = v8 + v11;
      v14 = v8 + v8 + v11;
      *((_DWORD *)v4 + 5) = v14;
      v15 = v8 + v14;
      if ( (v8 & 1) != 0 )
        ++v15;
      for ( j = 0; v4[1] > j; ++j )
      {
        *(_DWORD *)(*((_DWORD *)v4 + 2) + 4 * j) = v15;
        v17 = *(unsigned __int8 *)(*((_DWORD *)v4 + 4) + j);
        v15 += 2 * v17;
      }
    }
    else
    {
      v12 = 2 * *v4;
      for ( k = 0; v4[1] > k; ++k )
      {
        *(_DWORD *)(*((_DWORD *)v4 + 2) + 4 * k) = v11;
        v11 += v12;
      }
    }
  }
  return 0;
}

