int __fastcall sub_10C58(
        int a1,
        __int16 a2,
        __int16 a3,
        int a4,
        unsigned int a5,
        unsigned int a6,
        unsigned int a7,
        int a8)
{
  unsigned int v8; // r4
  unsigned int v9; // r5
  int v10; // lr
  int v12; // r7
  int v13; // r3
  int v14; // r1
  int v15; // r2
  int v16; // r6
  int v17; // r1
  int v18; // r7
  __int16 v19; // r3
  int v20; // r7
  int v21; // r6
  bool v22; // cc
  int v23; // r11
  int v24; // r5
  bool v25; // zf
  int *v26; // r5
  unsigned int v27; // lr
  unsigned int v28; // r9
  __int16 v29; // r0
  __int16 v30; // r0
  int v31; // r9
  signed int i; // r8
  int v33; // r11
  unsigned __int8 v34; // r0
  unsigned int v35; // r2
  unsigned int v36; // r0
  _WORD *v37; // r1
  __int16 v38; // r3
  int v39; // r0
  bool v40; // cc
  int v41; // r3
  int v42; // t1
  int v43; // r12
  _DWORD *v44; // r0
  _DWORD *v45; // r2
  int v46; // r2
  _WORD *v47; // r3
  unsigned int v48; // r1
  bool v49; // cc
  _WORD *v50; // r3
  unsigned int v51; // r1
  int v52; // r0
  unsigned int v53; // r12
  int v54; // t1
  int v55; // r3
  unsigned int *v56; // r0
  unsigned int *v57; // r2
  bool v58; // cc
  int v59; // r2
  int v60; // t1
  int *v61; // r0
  int *v62; // r1
  __int16 v63; // r4
  int v64; // r2
  int v65; // t1
  bool v66; // cc
  int v67; // t1
  int v68; // r1
  int v69; // r4
  int v70; // t1
  _DWORD *v71; // r2
  _DWORD *v72; // r12
  unsigned int v73; // r2
  int v74; // r12
  int v75; // t1
  _WORD *v76; // r9
  unsigned int v77; // r3
  bool v78; // cc
  int v79; // t1
  _WORD *v80; // r9
  unsigned int v81; // r3
  int v82; // r3
  int v83; // r12
  int v84; // r1
  unsigned int v85; // r2
  int v86; // r10
  int v87; // t1
  unsigned int *v88; // r12
  unsigned int *v89; // r8
  int v90; // t1
  bool v91; // cc
  int v92; // t1
  int v93; // t1
  int *v94; // r1
  int *v95; // r2
  unsigned int v96; // [sp+4h] [bp-40h]
  unsigned int v97; // [sp+8h] [bp-3Ch]
  unsigned int v98; // [sp+20h] [bp-24h]
  signed int v99; // [sp+24h] [bp-20h]
  int v100; // [sp+28h] [bp-1Ch]
  int v101; // [sp+2Ch] [bp-18h]
  int v102; // [sp+30h] [bp-14h]
  int v103; // [sp+34h] [bp-10h]
  unsigned int v104; // [sp+38h] [bp-Ch]
  unsigned int v105; // [sp+3Ch] [bp-8h]
  int v106; // [sp+40h] [bp-4h]

  v9 = a6;
  v10 = *(_DWORD *)(a1 + 20);
  if ( !v10 )
    return 7;
  v12 = (__int16)(*(_WORD *)(a1 + 12) + a2);
  v13 = v12 + a4;
  v14 = *(unsigned __int16 *)(a1 + 4);
  v15 = (__int16)(*(_WORD *)(a1 + 14) + a3);
  if ( v14 < v12 )
    v14 = v12;
  v16 = v14 << 16;
  v17 = *(unsigned __int16 *)(a1 + 6);
  if ( v17 < v15 )
    LOWORD(v17) = v15;
  if ( v13 > *(unsigned __int16 *)(a1 + 8) )
    v13 = *(unsigned __int16 *)(a1 + 8);
  v18 = v13 << 16;
  v19 = v15 + a5;
  if ( (int)(v15 + a5) > *(unsigned __int16 *)(a1 + 10) )
    v19 = *(_WORD *)(a1 + 10);
  v20 = v18 >> 16;
  v21 = v16 >> 16;
  v22 = v20 <= v21;
  if ( v20 > v21 )
    v22 = v19 <= (__int16)v17;
  if ( !v22 )
  {
    v23 = (a6 >> 2) & 1;
    if ( v23 && a7 == a8 )
      v23 = 0;
    if ( ((a6 >> 4) & 1) != 0 )
    {
      v9 = 0;
      v103 = 0;
    }
    v102 = (a6 >> 4) & 1;
    if ( v102 || (v8 = v9 >> 8, v24 = (v9 >> 1) & 1, (v103 = v24) == 0) )
    {
LABEL_26:
      v106 = a7 & 0x1F;
      v105 = a7 & 0x7E0;
      v26 = (int *)(v10 + 4 * (__int16)v17);
      v27 = v10 + 4 * v19;
      v28 = a7 & 0xF800;
      if ( v23 )
      {
        v98 = v28 >> 8;
        v99 = (__int16)(v19 - v15);
        if ( (v21 & 1) != 0 )
          v29 = v21 + 1;
        else
          v29 = v21;
        v101 = v29;
        if ( (v20 & 1) != 0 )
          v30 = v20 - 1;
        else
          v30 = v20;
        v100 = v30;
        v31 = (v30 - v101) >> 1;
        v104 = 32 - v8;
        for ( i = (unsigned __int16)(v17 - v15); i < v99; i = (i + 1) & 0xFFFEFFFF )
        {
          v33 = (__int16)(a5 - i);
          v97 = (unsigned __int8)sub_104(a5, v33 * v98 + i * ((unsigned __int16)(a8 & 0xF800) >> 8));
          v96 = (unsigned __int8)sub_104(a5, v33 * (v105 >> 3) + i * ((unsigned __int16)(a8 & 0x7E0) >> 3));
          v34 = sub_104(a5, v33 * 8 * v106 + i * (unsigned __int8)(8 * a8));
          v35 = v96 >> 2;
          v36 = (v97 >> 3 << 11) | (32 * (v96 >> 2)) | (v34 >> 3);
          v37 = (_WORD *)((a6 >> 4) & 1);
          if ( v102 )
          {
            if ( (v21 & 1) != 0 )
              v37 = (_WORD *)*v26;
            v38 = dword_11424;
            if ( (v21 & 1) != 0 )
            {
              v37 += v21;
              v35 = (unsigned __int16)*v37;
            }
            v39 = dword_11424 & (v36 >> 1);
            if ( (v21 & 1) != 0 )
              *v37 = (dword_11424 & (v35 >> 1)) + v39;
            v40 = 0;
            if ( (v20 & 1) != 0 )
              v40 = v21 < v20;
            if ( v40 )
              *(_WORD *)(*v26 + 2 * v100) = (v38 & (*(_WORD *)(*v26 + 2 * v100) >> 1)) + v39;
            if ( v31 )
            {
              v41 = v39 | (v39 << 16);
              v42 = *v26++;
              v43 = dword_11428;
              v44 = (_DWORD *)(v42 + 2 * v101);
              v45 = &v44[v31];
              while ( v44 < v45 )
              {
                *v44 = (v43 & (*v44 >> 1)) + v41;
                ++v44;
              }
            }
          }
          else if ( v103 )
          {
            v46 = v104 * (((v36 & 0xF800) << 11) | (32 * (v36 & 0x7E0)) | v36 & 0x1F);
            if ( (v21 & 1) != 0 )
            {
              v47 = (_WORD *)(*v26 + 2 * v21);
              v48 = (v46 + v8 * (((*v47 & 0xF800) << 11) | (32 * (*v47 & 0x7E0)) | *v47 & 0x1F)) >> 5;
              *v47 = ((v48 & 0x7C00000) >> 11) | ((unsigned __int16)(v48 & 0xFC00) >> 5) | v48 & 0x1F;
            }
            v49 = 0;
            if ( (v20 & 1) != 0 )
              v49 = v21 < v20;
            if ( v49 )
            {
              v50 = (_WORD *)(*v26 + 2 * v100);
              v51 = (v46 + v8 * (((*v50 & 0xF800) << 11) | (32 * (*v50 & 0x7E0)) | *v50 & 0x1F)) >> 5;
              *v50 = ((v51 & 0x7C00000) >> 11) | ((unsigned __int16)(v51 & 0xFC00) >> 5) | v51 & 0x1F;
            }
            if ( !v31 )
              return 0;
            v52 = v36 | (v36 << 16);
            v53 = v104 * ((v52 & 0xF81F07FF) >> 5);
            v54 = *v26++;
            v55 = v104 * (v52 & dword_1142C);
            v56 = (unsigned int *)(v54 + 2 * v101);
            v57 = &v56[v31];
            while ( v56 < v57 )
            {
              *v56 = dword_1142C & ((v55 + v8 * (*v56 & dword_1142C)) >> 5)
                   | (v53 + v8 * ((*v56 & 0xF81F07FF) >> 5)) & __ROR4__(dword_1142C, 16);
              ++v56;
            }
          }
          else
          {
            if ( (v21 & 1) != 0 )
              *(_WORD *)(*v26 + 2 * v21) = v36;
            v58 = 0;
            if ( (v20 & 1) != 0 )
              v58 = v21 < v20;
            if ( v58 )
              *(_WORD *)(*v26 + 2 * v100) = v36;
            if ( v31 )
            {
              v59 = v36 | (v36 << 16);
              v60 = *v26++;
              v61 = (int *)(v60 + 2 * v101);
              v62 = &v61[v31];
              while ( v61 < v62 )
                *v61++ = v59;
            }
          }
        }
      }
      else if ( v102 )
      {
        v63 = dword_11424;
        v64 = dword_11424 & (a7 >> 1);
        if ( (v21 & 1) != 0 )
        {
          while ( (unsigned int)v26 < v27 )
          {
            v65 = *v26++;
            *(_WORD *)(v65 + 2 * v21) = (v63 & (*(_WORD *)(v65 + 2 * v21) >> 1)) + v64;
          }
          v21 = (__int16)(v21 + 1);
          v26 = (int *)(*(_DWORD *)(a1 + 20) + 4 * (__int16)v17);
        }
        v66 = 0;
        if ( (v20 & 1) != 0 )
          v66 = v21 < v20;
        if ( v66 )
        {
          v20 = (__int16)(v20 - 1);
          while ( (unsigned int)v26 < v27 )
          {
            v67 = *v26++;
            *(_WORD *)(v67 + 2 * v20) = (v63 & (*(_WORD *)(v67 + 2 * v20) >> 1)) + v64;
          }
          v26 = (int *)(*(_DWORD *)(a1 + 20) + 4 * (__int16)v17);
        }
        if ( (v20 - v21) >> 1 )
        {
          v68 = v64 | (v64 << 16);
          v69 = dword_11428;
          while ( (unsigned int)v26 < v27 )
          {
            v70 = *v26++;
            v71 = (_DWORD *)(v70 + 2 * v21);
            v72 = &v71[(v20 - v21) >> 1];
            while ( v71 < v72 )
            {
              *v71 = (v69 & (*v71 >> 1)) + v68;
              ++v71;
            }
          }
        }
      }
      else if ( v103 )
      {
        v73 = 32 - v8;
        v74 = (32 - v8) * ((v28 << 11) | (32 * v105) | v106);
        if ( (v21 & 1) != 0 )
        {
          while ( (unsigned int)v26 < v27 )
          {
            v75 = *v26++;
            v76 = (_WORD *)(v75 + 2 * v21);
            v77 = (v74 + v8 * (((*v76 & 0xF800) << 11) | (32 * (*v76 & 0x7E0)) | *v76 & 0x1F)) >> 5;
            *v76 = ((v77 & 0x7C00000) >> 11) | ((unsigned __int16)(v77 & 0xFC00) >> 5) | v77 & 0x1F;
          }
          v21 = (__int16)(v21 + 1);
          v26 = (int *)(*(_DWORD *)(a1 + 20) + 4 * (__int16)v17);
        }
        v78 = 0;
        if ( (v20 & 1) != 0 )
          v78 = v21 < v20;
        if ( v78 )
        {
          v20 = (__int16)(v20 - 1);
          while ( (unsigned int)v26 < v27 )
          {
            v79 = *v26++;
            v80 = (_WORD *)(v79 + 2 * v20);
            v81 = (v74 + v8 * (((*v80 & 0xF800) << 11) | (32 * (*v80 & 0x7E0)) | *v80 & 0x1F)) >> 5;
            *v80 = ((v81 & 0x7C00000) >> 11) | ((unsigned __int16)(v81 & 0xFC00) >> 5) | v81 & 0x1F;
          }
          v26 = (int *)(*(_DWORD *)(a1 + 20) + 4 * (__int16)v17);
        }
        if ( (v20 - v21) >> 1 )
        {
          v82 = dword_1142C;
          v83 = a7 | (a7 << 16);
          v84 = v73 * (v83 & dword_1142C);
          v85 = ((v83 & 0xF81F07FF) >> 5) * v73;
          v86 = __ROR4__(dword_1142C, 16);
          while ( (unsigned int)v26 < v27 )
          {
            v87 = *v26++;
            v88 = (unsigned int *)(v87 + 2 * v21);
            v89 = &v88[(v20 - v21) >> 1];
            while ( v88 < v89 )
            {
              *v88 = v82 & ((v84 + v8 * (*v88 & v82)) >> 5) | (v85 + v8 * ((*v88 & 0xF81F07FF) >> 5)) & v86;
              ++v88;
            }
          }
        }
      }
      else
      {
        if ( (v21 & 1) != 0 )
        {
          while ( (unsigned int)v26 < v27 )
          {
            v90 = *v26++;
            *(_WORD *)(v90 + 2 * v21) = a7;
          }
          v21 = (__int16)(v21 + 1);
          v26 = (int *)(*(_DWORD *)(a1 + 20) + 4 * (__int16)v17);
        }
        v91 = 0;
        if ( (v20 & 1) != 0 )
          v91 = v21 < v20;
        if ( v91 )
        {
          v20 = (__int16)(v20 - 1);
          while ( (unsigned int)v26 < v27 )
          {
            v92 = *v26++;
            *(_WORD *)(v92 + 2 * v20) = a7;
          }
          v26 = (int *)(*(_DWORD *)(a1 + 20) + 4 * (__int16)v17);
        }
        if ( (v20 - v21) >> 1 )
        {
          while ( (unsigned int)v26 < v27 )
          {
            v93 = *v26++;
            v94 = (int *)(v93 + 2 * v21);
            v95 = &v94[(v20 - v21) >> 1];
            while ( v94 < v95 )
              *v94++ = a7 | (a7 << 16);
          }
        }
      }
      return 0;
    }
    if ( v8 )
    {
      v25 = v8 == 32;
      if ( v8 == 32 )
        v24 = 0;
      v8 = (unsigned __int8)(32 - v8);
      if ( v25 )
        v103 = v24;
      goto LABEL_26;
    }
  }
  return 0;
}

