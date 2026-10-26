int __fastcall sub_235F4(int a1, int a2)
{
  unsigned int v4; // r1
  char *v6; // r11
  int *v7; // r0
  int *v8; // r4
  _DWORD *v9; // r2
  int i; // r1
  int v11; // r8
  _BYTE *v12; // r9
  int *v13; // r9
  int v14; // r8
  _BYTE *v15; // r10
  int v16; // t1
  _DWORD *v17; // lr
  int j; // r3
  _BYTE *v19; // r2
  _BYTE *v20; // t1
  char *v21; // r1
  int k; // r0
  char v23; // t1
  _DWORD *v24; // r8
  int *v25; // r9
  int m; // lr
  int v27; // r1
  int v28; // t1
  _BYTE *v29; // r3
  _BYTE *v30; // t1
  char *v31; // r2
  int n; // r1
  char v33; // t1
  int *v34; // r9
  int *v35; // r10
  int ii; // r8
  int v37; // r1
  int v38; // t1
  int v39; // t1
  _DWORD *v40; // r11
  int jj; // r10
  int v42; // r9
  _BYTE *v43; // r8
  _BYTE *v44; // t1
  int v45; // r0
  int *v46; // r9
  int *v47; // r10
  int v48; // r8
  char *v49; // r11
  int v50; // r1
  int v51; // t1
  int v52; // t1
  int v53; // lr
  int *v54; // r8
  _DWORD *v55; // r0
  int v56; // r1
  int v57; // t1
  _BYTE *v58; // r3
  _BYTE *v59; // t1
  char *v60; // r2
  int kk; // r1
  char v62; // t1
  int *v63; // r9
  int *v64; // r10
  int mm; // r8
  int v66; // r1
  int v67; // t1
  int v68; // t1
  _BYTE *v69; // r0
  char *v70; // r2
  _BYTE *v71; // r1
  char v72; // t1
  int v73; // r0
  _WORD *v74; // r8
  unsigned int nn; // r7
  unsigned int v76; // r1
  unsigned int v77; // r9
  int v78; // r0
  unsigned int v79; // r5
  int v80; // r10
  char v81; // r2
  int v82; // r1
  bool v83; // zf
  _WORD *v84; // r0
  __int16 *v85; // r1
  unsigned __int8 *v86; // r3
  __int16 v87; // t1
  int v88; // lr
  int v89; // t1
  unsigned int v90; // r2
  _WORD *v91; // r0
  unsigned int v92; // r1
  __int16 v93; // r3
  unsigned __int8 *v94; // r3
  unsigned int v95; // t1
  unsigned int v96; // r2
  unsigned int v97; // r1
  unsigned int v98; // r10
  unsigned int v99; // r9
  __int16 *v100; // r2
  signed int v101; // r5
  __int16 v102; // t1
  __int16 v103; // r9
  __int16 v104; // [sp+4h] [bp-18h]
  int v105; // [sp+Ch] [bp-10h]

  v4 = *(_DWORD *)(a1 + 8);
  if ( !v4 )
    return 0;
  if ( v4 > 0x100 )
    return 0;
  if ( !a2 )
    return 0;
  v105 = sub_11DD8(a2);
  if ( !v105 )
    return 0;
  v6 = (char *)off_23C20 + 144980;
  if ( *(_DWORD *)(a1 + 2060) )
  {
    (*(void (**)(void))(*(_DWORD *)&v6[-4] + 108))();
    *(_DWORD *)(a1 + 2060) = 0;
  }
  v7 = (int *)(*(int (__fastcall **)(int))(*(_DWORD *)&v6[-4] + 104))(13824);
  v8 = v7;
  v9 = v7 + 384;
  for ( i = 0; i < 384; ++i )
  {
    *v7++ = (int)v9;
    v9 += 8;
  }
  v11 = 0;
  v12 = (_BYTE *)*v8;
  while ( v11 < 32 )
    *v12++ = 32 - sub_104(0x20u, 32 * v11++ + 32);
  v13 = v8 + 1;
  v14 = 1;
  v15 = (_BYTE *)*v8;
  while ( v14 < 32 )
  {
    v16 = *v13++;
    (**(void (__fastcall ***)(int, _BYTE *, int))&v6[-4])(v16, v15, 32);
    ++v14;
  }
  v17 = v8 + 32;
  for ( j = 0; j < 32; ++j )
  {
    v20 = (_BYTE *)*v17++;
    v19 = v20;
    v21 = (char *)(*v8 + j);
    for ( k = 0; k < 32; ++k )
    {
      v23 = *v21;
      v21 += 32;
      *v19++ = v23;
    }
  }
  v24 = v8 + 64;
  v25 = v8;
  for ( m = 0; m < 32; ++m )
  {
    v28 = *v25++;
    v27 = v28;
    v30 = (_BYTE *)*v24++;
    v29 = v30;
    v31 = (char *)(v27 + 31);
    for ( n = 0; n < 32; ++n )
    {
      v33 = *v31--;
      *v29++ = v33;
    }
  }
  v34 = v8 + 96;
  v35 = v8 + 63;
  for ( ii = 0; ii < 32; ++ii )
  {
    v38 = *v35--;
    v37 = v38;
    v39 = *v34++;
    (**(void (__fastcall ***)(int, int, int))((char *)off_23C24 + 0xFFFFFFFC + 145344))(v39, v37, 32);
  }
  v40 = v8 + 128;
  for ( jj = 0; jj < 32; ++jj )
  {
    v42 = 0;
    v44 = (_BYTE *)*v40++;
    v43 = v44;
    while ( v42 < 32 )
    {
      v45 = (unsigned __int16)sub_1973C(jj, v42);
      if ( v45 < 32 )
        *v43 = 32 - sub_104(0x20u, 32 * v45);
      else
        *v43 = 0;
      ++v43;
      ++v42;
    }
  }
  v46 = v8 + 160;
  v47 = v8 + 159;
  v48 = 0;
  v49 = (char *)off_23C28 + 145512;
  while ( v48 < 32 )
  {
    v51 = *v47--;
    v50 = v51;
    v52 = *v46++;
    (**(void (__fastcall ***)(int, int, int))&v49[-4])(v52, v50, 32);
    ++v48;
  }
  v53 = 0;
  v54 = v8 + 128;
  v55 = v8 + 192;
  while ( v53 < 32 )
  {
    v57 = *v54++;
    v56 = v57;
    v59 = (_BYTE *)*v55++;
    v58 = v59;
    v60 = (char *)(v56 + 31);
    for ( kk = 0; kk < 32; ++kk )
    {
      v62 = *v60--;
      *v58++ = v62;
    }
    ++v53;
  }
  v63 = v8 + 224;
  v64 = v8 + 223;
  for ( mm = 0; mm < 32; ++mm )
  {
    v67 = *v64--;
    v66 = v67;
    v68 = *v63++;
    (**(void (__fastcall ***)(int, int, int))&v49[-4])(v68, v66, 32);
  }
  v69 = (_BYTE *)v8[256];
  v70 = (char *)v8[128];
  v71 = v69 + 4096;
  while ( v69 < v71 )
  {
    v72 = *v70++;
    *v69++ = 32 - v72;
  }
  v73 = (*(int (__fastcall **)(int))(*(_DWORD *)&v49[-4] + 104))((unsigned __int16)(32 * *(_DWORD *)(a1 + 8)) << 6);
  *(_DWORD *)(a1 + 2060) = v73;
  v74 = (_WORD *)v73;
  for ( nn = 0; *(_DWORD *)(a1 + 8) > nn; ++nn )
  {
    v76 = *(_DWORD *)(a1 + 4 * nn + 12);
    v77 = v76 << 8 >> 24;
    v78 = (unsigned __int8)v76;
    v79 = HIBYTE(v76);
    v80 = BYTE1(v76);
    if ( (unsigned int)(unsigned __int8)v76 - 7 <= 3 )
    {
      v81 = 1;
      v82 = a1 + nn;
      v83 = v78 == 7;
      if ( v78 != 7 )
        v83 = v78 == 9;
      *(_BYTE *)(v82 + 1548) = 1;
      if ( !v83 )
        v81 = 0;
      *(_BYTE *)(v82 + 1804) = v81;
    }
    else
    {
      *(_BYTE *)(a1 + nn + 1548) = 0;
    }
    (**(void (__fastcall ***)(_WORD *, _DWORD, int))((char *)off_23C2C + 0xFFFFFFFC + 145912))(
      v74,
      *(_DWORD *)(*(_DWORD *)(v105 + 8) + (v78 << 7)),
      2048);
    if ( v77 )
    {
      v84 = v74;
      v85 = *(__int16 **)(*(_DWORD *)(v105 + 8) + (v80 << 7));
      v86 = (unsigned __int8 *)v8[32 * v77 - 32];
      while ( v84 < v74 + 1024 )
      {
        v87 = *v85++;
        v88 = ((v87 & 0xF800) << 11) | (32 * (v87 & 0x7E0)) | v87 & 0x1F;
        v89 = *v86++;
        v90 = (v89 * (((*v84 & 0xF800) << 11) | (32 * (*v84 & 0x7E0)) | *v84 & 0x1Fu) + (32 - v89) * v88) >> 5;
        *v84++ = ((v90 & 0x7C00000) >> 11) | ((unsigned __int16)(v90 & 0xFC00) >> 5) | v90 & 0x1F;
      }
    }
    if ( v79 )
    {
      v91 = v74;
      v92 = (unsigned int)(v74 + 1024);
      if ( v79 < 0xD )
      {
        v94 = (unsigned __int8 *)v8[32 * v79 - 32];
        while ( (unsigned int)v91 < v92 )
        {
          v95 = *v94++;
          v96 = ((((*v91 & 0xF800) << 11) | (32 * (*v91 & 0x7E0)) | *v91 & 0x1F) * (32 - (v95 >> 1))) >> 5;
          *v91++ = ((v96 & 0x7C00000) >> 11) | ((unsigned __int16)(v96 & 0xFC00) >> 5) | v96 & 0x1F;
        }
      }
      else
      {
        v93 = dword_23C30;
        while ( (unsigned int)v91 < v92 )
        {
          *v91 = v93 & (*v91 >> 1);
          ++v91;
        }
      }
    }
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = v74;
    v101 = 0;
    while ( v101 < 1024 )
    {
      v102 = *v100++;
      ++v101;
      v97 += (unsigned __int16)(v102 & 0xF800) >> 8;
      v98 += 8 * (v102 & 0x1F);
      v99 += (unsigned __int16)(v102 & 0x7E0) >> 3;
    }
    v104 = sub_1DC(v101, v97);
    v103 = sub_1DC(v101, v99);
    *(_WORD *)(a1 + 2 * nn + 1036) = (v104 << 8) & 0xF800
                                   | (8 * v103) & 0x7E0
                                   | ((unsigned __int8)sub_1DC(v101, v98) >> 3);
    v74 += 1024;
  }
  (*(void (__fastcall **)(int *))(*(_DWORD *)((char *)off_23C34 + 0xFFFFFFFC + 146440) + 108))(v8);
  return 1;
}

