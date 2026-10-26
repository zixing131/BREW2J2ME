int __fastcall sub_2319C(_DWORD *a1, int a2, unsigned int a3, int a4, int a5)
{
  unsigned int v5; // lr
  int v7; // r1
  int v8; // r12
  int v9; // r5
  _DWORD *v10; // r0
  int v11; // r4
  int v12; // r0
  int i; // r0
  int (*v14)(); // r4
  unsigned int j; // r11
  unsigned __int16 *v16; // r4
  unsigned int v17; // r0
  int v18; // r7
  int v19; // r0
  int v20; // r0
  int v21; // r1
  int ii; // r0
  int jj; // r8
  int v24; // r5
  int *v25; // r6
  int v26; // r0
  int v27; // r2
  int v28; // lr
  int v29; // t1
  _WORD *v30; // r1
  int kk; // r0
  int v32; // r3
  unsigned __int16 *v33; // r0
  int v34; // r1
  unsigned __int16 *v35; // r5
  int v36; // r0
  int v37; // r0
  int (*v38)(); // r1
  int v39; // r0
  int v40; // r1
  int k; // r0
  _WORD *v42; // r0
  int v43; // lr
  int v44; // r12
  int m; // r2
  int n; // r1
  int v47; // r3
  _DWORD v49[201]; // [sp+4h] [bp-330h]
  int v50; // [sp+328h] [bp-Ch]
  unsigned int v51; // [sp+32Ch] [bp-8h]
  int v52; // [sp+330h] [bp-4h]

  v49[200] = a1;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v5 = 0;
  v7 = 0;
  while ( v5 < a3 )
  {
    v8 = a4 + 72 * v5;
    if ( *(_BYTE *)(v8 + 36) )
    {
      v10 = (_DWORD *)(*(_DWORD *)(*a1 + 2180) + 32 * *(unsigned __int16 *)(a5 + 28 * *(unsigned __int16 *)(v8 + 38)));
      v11 = *(unsigned __int8 *)(v8 + 37);
      if ( *(_BYTE *)(v8 + 37) )
      {
        if ( v11 == 1 )
        {
          v12 = v10[3];
        }
        else if ( v11 == 2 )
        {
          v12 = v10[2];
        }
        else
        {
          v12 = v10[4];
        }
      }
      else
      {
        v12 = v10[1];
      }
      v9 = v12 + 0x1000000;
    }
    else
    {
      v9 = *(unsigned __int16 *)(v8 + 20);
    }
    for ( i = 0; i < v7 && v49[i] != v9; ++i )
      ;
    if ( i >= v7 )
      v49[v7] = v9;
    *(_WORD *)(v8 + 20) = i;
    if ( i >= v7 )
      ++v7;
    ++v5;
  }
  v14 = off_23500;
  a1[4] = v7;
  v14 = (int (*)())((char *)v14 + 143988);
  a1[5] = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)v14 + 0xFFFFFFFC) + 104))(32 * v7);
  (*(void (**)(void))(*(_DWORD *)((char *)v14 + 0xFFFFFFFC) + 4))();
  for ( j = 0; a1[4] > j; ++j )
  {
    v16 = (unsigned __int16 *)(a1[5] + 32 * j);
    v17 = v49[j];
    if ( v17 >= 0x1000000 )
    {
      v33 = (unsigned __int16 *)sub_11DD8(v50);
      v34 = v33[1];
      v35 = v33;
      *v16 = v34;
      v36 = *v33;
      v16[1] = v36;
      v16[2] = v35[2];
      v37 = 2 * v36 * v34 + 4 * v36;
      v38 = off_23508;
      v16[3] = v35[3];
      v39 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)v38 + 0xFFFFFFFC + 144452) + 104))(v37);
      *((_DWORD *)v16 + 2) = v39;
      v40 = v39 + 4 * v16[1];
      for ( k = 0; v16[1] > k; ++k )
      {
        *(_DWORD *)(*((_DWORD *)v16 + 2) + 4 * k) = v40;
        v40 += 2 * *v16;
      }
      v42 = (_WORD *)**((_DWORD **)v16 + 2);
      v43 = v16[1] - 1;
      v44 = *((_DWORD *)v35 + 2) + 4 * (*v16 - 1);
      for ( m = 0; v16[1] > m; ++m )
      {
        for ( n = 0; *v16 > n; ++n )
        {
          v47 = *(_DWORD *)(v44 - 4 * n);
          *v42++ = *(_WORD *)(v47 + 2 * v43 - 2 * m);
        }
      }
    }
    else
    {
      v18 = a1[3] + 16 * v17;
      *v16 = 32 * *(unsigned __int8 *)(v18 + 1);
      v19 = 32 * *(unsigned __int8 *)(v18 + 2);
      *(_DWORD *)(v16 + 1) = (unsigned __int16)v19;
      v16[3] = -2017;
      v20 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_23504 + 0xFFFFFFFC + 144140) + 104))(2 * v19 * *v16 + 4 * v19);
      *((_DWORD *)v16 + 2) = v20;
      v21 = v20 + 4 * v16[1];
      for ( ii = 0; v16[1] > ii; ++ii )
      {
        *(_DWORD *)(*((_DWORD *)v16 + 2) + 4 * ii) = v21;
        v21 += 2 * *v16;
      }
      for ( jj = 0; *(unsigned __int8 *)(v18 + 1) > jj; ++jj )
      {
        v24 = 0;
        v25 = (int *)*((_DWORD *)v16 + 2);
        while ( *(unsigned __int8 *)(v18 + 2) > v24 )
        {
          v26 = sub_11DD8(v50);
          v27 = 0;
          if ( (*(_WORD *)(v26 + 4) & 0x20) != 0 )
            v16[2] |= 0x20u;
          v28 = *(_DWORD *)(v26 + 8) + 124;
          do
          {
            v29 = *v25++;
            v30 = (_WORD *)(v29 + (jj << 6));
            for ( kk = 0; kk < 32; ++kk )
            {
              v32 = *(_DWORD *)(v28 - 4 * kk);
              *v30++ = *(_WORD *)(v32 + 62 - 2 * v27);
            }
            ++v27;
          }
          while ( v27 < 32 );
          ++v24;
        }
      }
    }
  }
  return 0;
}

