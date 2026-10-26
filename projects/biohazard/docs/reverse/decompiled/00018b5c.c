int __fastcall sub_18B5C(_DWORD *a1, int a2, int a3)
{
  char *v5; // r7
  int *v6; // r4
  int v7; // r0
  int v8; // r6
  _DWORD *v9; // r4
  int v10; // t1
  _DWORD *v11; // r4
  int v12; // r0
  int v13; // r2
  int i; // r1
  unsigned __int16 *v15; // r0
  char *v16; // r10
  int v17; // r6
  unsigned __int16 *v18; // r0
  _DWORD *v19; // r4
  int v20; // r0
  int v21; // r2
  int j; // r1
  unsigned __int16 *v23; // r0
  int v24; // r6
  int v25; // r0
  int v26; // r1
  int k; // r0
  int v28; // r2
  int m; // r3
  int v30; // r0
  int v31; // r1
  _BYTE *v32; // r2
  _BYTE *v33; // r12
  char v34; // t1
  _BYTE *v35; // r2
  _BYTE *v36; // r12
  int v37; // r0
  unsigned __int16 *v38; // r7
  unsigned int v39; // r9
  int (*v40)(); // r10
  int v41; // r8
  _BYTE *v42; // r0
  int v43; // r0
  int v44; // r0
  char *v45; // r10
  unsigned int n; // r8
  _BYTE *v47; // r0
  int v48; // r0
  int v49; // r0
  char *v50; // r10
  unsigned int ii; // r10
  int v52; // r4
  int v53; // r1
  int v54; // r0
  unsigned __int16 v55; // r11
  int v56; // r6
  int v57; // r9
  int v58; // r8
  int v59; // r0
  int v60; // r12
  int v61; // r3
  int jj; // r0
  int v63; // r2
  int v64; // r1
  int v65; // r0
  int v66; // r0
  char *v67; // r6
  unsigned int kk; // r4
  _BYTE *v69; // r0
  int v70; // r0
  int v72; // [sp+4h] [bp-18h]
  int v73; // [sp+8h] [bp-14h]
  unsigned __int16 v74; // [sp+Ch] [bp-10h]

  sub_22744();
  v5 = (char *)off_193C8 + 101244;
  a1[550] = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_193C8 + 0xFFFFFFFC + 101244) + 104))(dword_193CC);
  (*(void (**)(void))(*(_DWORD *)&v5[-4] + 4))();
  (**(void (__fastcall ***)(_DWORD, int, int))&v5[-4])(a1[550], a2, 28);
  v6 = (int *)(a2 + 28);
  v7 = *(_DWORD *)(a1[550] + 24);
  if ( v7 )
  {
    v8 = 16 * v7;
    *(_DWORD *)(a1[550] + 28) = (*(int (__fastcall **)(int))(*(_DWORD *)&v5[-4] + 104))(16 * v7);
    (**(void (***)(void))&v5[-4])();
    v6 = (int *)((char *)v6 + v8);
  }
  v10 = *v6;
  v9 = v6 + 1;
  sub_24C38(a1, v10, v9);
  v11 = &v9[v10];
  v12 = (*(int (__fastcall **)(int))(*(_DWORD *)&v5[-4] + 104))(*(unsigned __int16 *)a1[550]
                                                              * *(unsigned __int16 *)(a1[550] + 2) + 4 * *(unsigned __int16 *)(a1[550] + 2));
  *(_DWORD *)(a1[550] + 32) = v12;
  v13 = v12 + 4 * *(unsigned __int16 *)(a1[550] + 2);
  for ( i = 0; ; ++i )
  {
    v15 = (unsigned __int16 *)a1[550];
    if ( v15[1] <= i )
      break;
    *(_DWORD *)(*((_DWORD *)v15 + 8) + 4 * i) = v13;
    v13 += *(unsigned __int16 *)a1[550];
  }
  v16 = v5;
  v17 = *v15 * *(unsigned __int16 *)(a1[550] + 2);
  (**(void (__fastcall ***)(_DWORD, _DWORD *, int))&v5[-4])(**((_DWORD **)v15 + 8), v11, v17);
  v18 = (unsigned __int16 *)a1[550];
  v19 = (_DWORD *)((char *)v11 + v17);
  if ( *((_BYTE *)v18 + 9) )
  {
    v20 = (*(int (__fastcall **)(int))(*(_DWORD *)&v5[-4] + 104))(*v18 * v18[1] + 4 * v18[1]);
    *(_DWORD *)(a1[550] + 36) = v20;
    v21 = v20 + 4 * *(unsigned __int16 *)(a1[550] + 2);
    for ( j = 0; ; ++j )
    {
      v23 = (unsigned __int16 *)a1[550];
      if ( v23[1] <= j )
        break;
      *(_DWORD *)(*((_DWORD *)v23 + 9) + 4 * j) = v21;
      v21 += *(unsigned __int16 *)a1[550];
    }
    v24 = *v23 * *(unsigned __int16 *)(a1[550] + 2);
    (**(void (__fastcall ***)(_DWORD, _DWORD *, int))&v5[-4])(**((_DWORD **)v23 + 9), v19, v24);
    v19 = (_DWORD *)((char *)v19 + v24);
  }
  v25 = (*(int (__fastcall **)(int))(*(_DWORD *)&v5[-4] + 104))(
          2 * *(unsigned __int16 *)(a1[550] + 2) * 2 * *(unsigned __int16 *)a1[550]
        + 8 * *(unsigned __int16 *)(a1[550] + 2));
  *(_DWORD *)(a1[550] + 40) = v25;
  v26 = v25 + 8 * *(unsigned __int16 *)(a1[550] + 2);
  for ( k = 0; ; ++k )
  {
    v28 = a1[550];
    if ( k >= 2 * *(unsigned __int16 *)(v28 + 2) )
      break;
    *(_DWORD *)(*(_DWORD *)(v28 + 40) + 4 * k) = v26;
    v26 += 2 * *(unsigned __int16 *)a1[550];
  }
  for ( m = 0; ; ++m )
  {
    v37 = a1[550];
    if ( *(unsigned __int16 *)(v37 + 2) <= m )
      break;
    v30 = *(_DWORD *)(v37 + 40);
    v31 = 0;
    v32 = *(_BYTE **)(v30 + 8 * m);
    v33 = *(_BYTE **)(v30 + 8 * m + 4);
    while ( *(unsigned __int16 *)a1[550] > v31 )
    {
      v34 = *(_BYTE *)v19;
      v19 = (_DWORD *)((char *)v19 + 1);
      ++v31;
      *v32 = v34;
      v35 = v32 + 1;
      *v35 = v34;
      v32 = v35 + 1;
      *v33 = v34;
      v36 = v33 + 1;
      *v36 = v34;
      v33 = v36 + 1;
    }
  }
  v38 = (unsigned __int16 *)(v19 + 4);
  *(_DWORD *)(a1[550] + 60) = *v19;
  *(_DWORD *)(a1[550] + 44) = v19[1];
  *(_DWORD *)(a1[550] + 68) = v19[2];
  *(_DWORD *)(a1[550] + 52) = v19[3];
  *(_DWORD *)(a1[550] + 64) = (*(int (__fastcall **)(int))(*(_DWORD *)&v16[-4] + 104))(72 * (*(_DWORD *)(a1[550] + 60)
                                                                                           + 4
                                                                                           * *(_DWORD *)(a1[550] + 68)));
  (*(void (**)(void))(*(_DWORD *)&v16[-4] + 4))();
  v39 = 0;
  while ( 1 )
  {
    v43 = a1[550];
    if ( *(_DWORD *)(v43 + 60) <= v39 )
      break;
    v40 = off_193D0;
    v41 = *(_DWORD *)(v43 + 64) + 72 * v39;
    *(_BYTE *)v41 = 1;
    (**(void (__fastcall ***)(int, unsigned __int16 *, int))((char *)v40 + 0xFFFFFFFC + 102112))(v41 + 20, v38, 12);
    v38 += 6;
    v42 = (_BYTE *)(a1[519] + 16 * *(unsigned __int16 *)(v41 + 20));
    ++v39;
    if ( (*v42 & 1) != 0 )
      *(_WORD *)(v41 + 22) |= 8u;
    *(_BYTE *)(v41 + 32) = 32 * v42[1];
    *(_BYTE *)(v41 + 33) = 32 * v42[2];
    *(_BYTE *)(v41 + 34) = 32 * v42[3];
    *(_BYTE *)(v41 + 36) = 0;
  }
  v44 = *(_DWORD *)(a1[550] + 44);
  if ( v44 )
  {
    v45 = (char *)off_193D4 + 102268;
    *(_DWORD *)(a1[550] + 48) = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_193D4 + 0xFFFFFFFC + 102268) + 104))(40 * v44);
    (*(void (**)(void))(*(_DWORD *)&v45[-4] + 4))();
    for ( n = 0; ; ++n )
    {
      v48 = a1[550];
      if ( *(_DWORD *)(v48 + 44) <= n )
        break;
      v47 = (_BYTE *)(*(_DWORD *)(v48 + 48) + 40 * n);
      *v47 = 2;
      (**(void (__fastcall ***)(int, unsigned __int16 *, int))&v45[-4])((int)(v47 + 20), v38, 8);
      v38 += 4;
    }
  }
  v49 = *(_DWORD *)(a1[550] + 68);
  if ( v49 )
  {
    v50 = (char *)off_193D8 + 102432;
    *(_DWORD *)(a1[550] + 72) = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_193D8 + 0xFFFFFFFC + 102432) + 104))(28 * v49);
    (*(void (**)(void))(*(_DWORD *)&v50[-4] + 4))();
    for ( ii = 0; ; ++ii )
    {
      v65 = a1[550];
      if ( *(_DWORD *)(v65 + 68) <= ii )
        break;
      v52 = *(_DWORD *)(v65 + 72) + 28 * ii;
      v53 = *v38;
      v73 = v38[1];
      v74 = v38[2];
      v54 = a1[545];
      v55 = v38[3];
      *(_WORD *)v52 = v53;
      v56 = v54 + 32 * v53;
      v38 += 6;
      *(_WORD *)(v52 + 2) = *(_WORD *)(v56 + 28);
      *(_WORD *)(v52 + 4) = 0;
      *(_WORD *)(v52 + 6) = v73;
      *(_DWORD *)(v52 + 8) = *(_DWORD *)v56;
      v57 = *(unsigned __int16 *)(v56 + 24) >> 1;
      v72 = *(unsigned __int16 *)(v56 + 26) >> 1;
      v58 = sub_197A8(v73);
      v59 = sub_196D8(v73);
      v60 = v58 * -v72;
      *(_WORD *)(v52 + 12) = v74 + ((unsigned int)(v60 + v59 * -v57) >> 16);
      v61 = v59 * -v72;
      *(_WORD *)(v52 + 14) = v55 + ((unsigned int)(v59 * v72 + v58 * -v57) >> 16);
      *(_WORD *)(v52 + 16) = v74 + ((unsigned int)(v60 + v59 * v57) >> 16);
      *(_WORD *)(v52 + 18) = v55 + ((unsigned int)(v59 * v72 + v58 * v57) >> 16);
      *(_WORD *)(v52 + 20) = v74 + ((unsigned int)(v58 * v72 + v59 * v57) >> 16);
      *(_WORD *)(v52 + 22) = v55 + ((unsigned int)(v61 + v58 * v57) >> 16);
      *(_WORD *)(v52 + 24) = v74 + ((unsigned int)(v58 * v72 + v59 * -v57) >> 16);
      *(_WORD *)(v52 + 26) = v55 + ((unsigned int)(v61 + v58 * -v57) >> 16);
      for ( jj = 0; jj < 4; ++jj )
      {
        v63 = a1[550];
        v64 = *(_DWORD *)(v63 + 64) + 72 * (*(_DWORD *)(v63 + 60))++;
        *(_BYTE *)v64 = 1;
        *(_WORD *)(v64 + 22) = 0;
        *(_BYTE *)(v64 + 32) = *(_WORD *)(v56 + 28);
        *(_BYTE *)(v64 + 34) = 0;
        *(_BYTE *)(v64 + 36) = 1;
        *(_WORD *)(v64 + 38) = ii;
        *(_BYTE *)(v64 + 37) = jj;
        if ( jj )
        {
          if ( jj == 1 )
          {
            *(_WORD *)(v64 + 24) = *(_WORD *)(v52 + 24);
            *(_WORD *)(v64 + 26) = *(_WORD *)(v52 + 26);
            *(_WORD *)(v64 + 28) = *(_WORD *)(v52 + 20);
            *(_WORD *)(v64 + 30) = *(_WORD *)(v52 + 22);
            *(_BYTE *)(v64 + 33) = *(_WORD *)(v56 + 24);
            if ( !*(_BYTE *)(v56 + 22) )
              continue;
          }
          else if ( jj == 2 )
          {
            *(_WORD *)(v64 + 24) = *(_WORD *)(v52 + 20);
            *(_WORD *)(v64 + 26) = *(_WORD *)(v52 + 22);
            *(_WORD *)(v64 + 28) = *(_WORD *)(v52 + 16);
            *(_WORD *)(v64 + 30) = *(_WORD *)(v52 + 18);
            *(_BYTE *)(v64 + 33) = *(_WORD *)(v56 + 26);
            if ( *(_BYTE *)(v56 + 21) )
              continue;
          }
          else
          {
            *(_WORD *)(v64 + 24) = *(_WORD *)(v52 + 16);
            *(_WORD *)(v64 + 26) = *(_WORD *)(v52 + 18);
            *(_WORD *)(v64 + 28) = *(_WORD *)(v52 + 12);
            *(_WORD *)(v64 + 30) = *(_WORD *)(v52 + 14);
            *(_BYTE *)(v64 + 33) = *(_WORD *)(v56 + 24);
            if ( *(_BYTE *)(v56 + 23) )
              continue;
          }
        }
        else
        {
          *(_WORD *)(v64 + 24) = *(_WORD *)(v52 + 12);
          *(_WORD *)(v64 + 26) = *(_WORD *)(v52 + 14);
          *(_WORD *)(v64 + 28) = *(_WORD *)(v52 + 24);
          *(_WORD *)(v64 + 30) = *(_WORD *)(v52 + 26);
          *(_BYTE *)(v64 + 33) = *(_WORD *)(v56 + 26);
          if ( !*(_BYTE *)(v56 + 20) )
            continue;
        }
        *(_WORD *)(v64 + 22) = 1;
      }
    }
  }
  v66 = *(_DWORD *)(a1[550] + 52);
  if ( v66 )
  {
    v67 = (char *)off_193DC + 103164;
    *(_DWORD *)(a1[550] + 56) = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_193DC + 0xFFFFFFFC + 103164) + 104))(76 * v66);
    (*(void (**)(void))(*(_DWORD *)&v67[-4] + 4))();
    for ( kk = 0; ; ++kk )
    {
      v70 = a1[550];
      if ( *(_DWORD *)(v70 + 52) <= kk )
        break;
      v69 = (_BYTE *)(*(_DWORD *)(v70 + 56) + 76 * kk);
      *v69 = 4;
      (**(void (__fastcall ***)(int, unsigned __int16 *))&v67[-4])((int)(v69 + 20), v38);
      v38 += 10;
    }
  }
  sub_235F4(a1, a3);
  sub_2319C(a1 + 516, a3, *(_DWORD *)(a1[550] + 60), *(_DWORD *)(a1[550] + 64), *(_DWORD *)(a1[550] + 72));
  sub_22FD8(a1);
  return 1;
}

