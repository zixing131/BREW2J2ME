int *__fastcall sub_1BAB8(int *result, int a2, int a3, int *a4, int *a5, int a6)
{
  unsigned __int16 *v6; // r5
  int v7; // r8
  int v8; // r10
  int v9; // r11
  int v10; // r9
  int v11; // r6
  int v12; // r7
  int v13; // r0
  _BYTE *v14; // r0
  char v15; // r1
  char v16; // t1
  _DWORD *v17; // r1
  int v18; // r0
  _BYTE *v19; // r0
  char v20; // t1
  char v21; // r1
  _DWORD *v22; // r1
  int v23; // r0
  char v24; // t1
  int v25; // r10
  int v26; // r11
  int v27; // r12
  int v28; // r5
  int v29; // r0
  int v30; // r2
  int v31; // r1
  int v32; // r2
  int v33; // r1
  int v34; // r12
  char v35; // r3
  int v36; // r3
  bool v37; // r12
  bool v38; // zf
  int v39; // r3
  int v40; // r12
  bool v41; // zf
  bool v42; // cc
  int v43; // r12
  bool v44; // zf
  bool v45; // cc
  int v46; // r1
  bool v47; // zf
  int v48; // r1
  int v49; // r1
  bool v50; // zf
  bool v51; // zf
  bool v52; // zf
  bool v53; // zf
  bool v54; // zf
  bool v55; // cc
  int v56; // r12
  bool v57; // zf
  bool v58; // zf
  bool v59; // zf
  bool v60; // cc
  bool v61; // zf
  bool v62; // cc
  bool v63; // zf
  bool v64; // zf
  bool v65; // zf
  bool v66; // cc
  bool v67; // zf
  bool v68; // cc
  bool v69; // cc
  __int16 v70; // r1
  int v71; // r0
  unsigned int v72; // r1
  bool v73; // cf
  int v74; // r5
  int v75; // r0
  int v76; // r1
  _BYTE *v77; // r1
  char v78; // r2
  char v79; // t1
  _DWORD *v80; // r2
  int v81; // r0
  _BYTE *v82; // r0
  char v83; // t1
  char v84; // r1
  _DWORD *v85; // r2
  int v86; // r0
  char v87; // t1
  BOOL v88; // [sp+0h] [bp-24h]
  BOOL v89; // [sp+4h] [bp-20h]
  bool v90; // [sp+8h] [bp-1Ch]
  bool v91; // [sp+9h] [bp-1Bh]
  bool v92; // [sp+Ah] [bp-1Ah]
  bool v93; // [sp+Bh] [bp-19h]
  int v94; // [sp+Ch] [bp-18h]
  int v95; // [sp+10h] [bp-14h]

  v6 = (unsigned __int16 *)result[550];
  if ( !v6 )
    return result;
  v7 = 13;
  if ( !a6 && *(_BYTE *)(result[556] + 32) )
    v7 = 1;
  v8 = *a4;
  v9 = *a5;
  v10 = *((_DWORD *)v6 + 10);
  v11 = sub_104(0x10u, *a4 - 8);
  v12 = sub_104(0x10u, v9 - 8);
  v13 = *(_DWORD *)(v10 + 4 * v12);
  v16 = *(_BYTE *)(v13 + v11);
  v14 = (_BYTE *)(v13 + v11);
  v15 = v16;
  if ( a6 )
  {
    *v14 = v15 & 0xFB;
    v17 = (_DWORD *)(v10 + 4 * v12);
    *(_BYTE *)(v17[1] + v11) &= ~4u;
    *(_BYTE *)(v17[1] + v11 + 1) &= ~4u;
    v18 = *v17 + v11;
    v20 = *(_BYTE *)(v18 + 1);
    v19 = (_BYTE *)(v18 + 1);
    v21 = v20 & 0xFB;
  }
  else
  {
    *v14 = v15 & 0xF7;
    v22 = (_DWORD *)(v10 + 4 * v12);
    *(_BYTE *)(v22[1] + v11) &= ~8u;
    *(_BYTE *)(v22[1] + v11 + 1) &= ~8u;
    v23 = *v22 + v11;
    v24 = *(_BYTE *)(v23 + 1);
    v19 = (_BYTE *)(v23 + 1);
    v21 = v24 & 0xF7;
  }
  *v19 = v21;
  v25 = v8 + ((a3 * sub_196D8(a2)) >> 16);
  v26 = v9 + ((a3 * sub_197A8(a2)) >> 16);
  v88 = *a4 > v25;
  v89 = *a5 > v26;
  if ( v25 < 16 )
    v25 = 16;
  v95 = *v6;
  v27 = v6[1];
  if ( 32 * v95 - 16 <= v25 )
    v25 = 32 * *v6 - 17;
  if ( v26 < 16 )
    v26 = 16;
  if ( 32 * v27 - 16 <= v26 )
    v26 = 32 * v27 - 17;
  v94 = v6[1];
  v28 = sub_104(0x10u, v25 - 8);
  v29 = sub_104(0x10u, v26 - 8);
  v30 = *(_DWORD *)(v10 + 4 * v29);
  v31 = *(unsigned __int8 *)(v30 + v28);
  v32 = v30 + v28;
  v90 = (v31 & v7) != 0;
  LOBYTE(v31) = *(_BYTE *)(v32 + 1) & v7;
  v91 = (_BYTE)v31 != 0;
  v33 = v10 + 4 * v29;
  v34 = *(_DWORD *)(v33 + 4);
  v35 = *(_BYTE *)(v34 + v28) & v7;
  v92 = v35 != 0;
  v36 = v34 + v28;
  v37 = (unsigned __int8)(*(_BYTE *)(v34 + v28 + 1) & v7) != 0;
  v38 = v28 == v11;
  if ( v28 != v11 )
    v38 = v29 == v12;
  v93 = v37;
  if ( v38 )
  {
    if ( v29 != v12 )
      goto LABEL_41;
    v39 = 0;
    if ( v89 )
    {
      if ( v29 <= 0 )
        goto LABEL_26;
      v33 = *(_DWORD *)(v33 - 4);
      v40 = *(unsigned __int8 *)(v33 + v11);
      v41 = (v40 & v7) == 0;
      if ( (v40 & v7) == 0 )
      {
        v33 = *(unsigned __int8 *)(v33 + v11 + 1);
        v41 = (v33 & v7) == 0;
      }
      if ( !v41 )
LABEL_26:
        v39 = 1;
      v42 = v39 <= 0;
      if ( v39 )
      {
        v33 = 16 * v29 + 16;
        v42 = v33 <= v26;
      }
      if ( !v42 )
LABEL_40:
        v26 = v33;
    }
    else
    {
      if ( 2 * v94 - 2 <= v29 )
        goto LABEL_35;
      v33 = *(_DWORD *)(v33 + 8);
      v43 = *(unsigned __int8 *)(v33 + v11);
      v44 = (v43 & v7) == 0;
      if ( (v43 & v7) == 0 )
      {
        v33 = *(unsigned __int8 *)(v33 + v11 + 1);
        v44 = (v33 & v7) == 0;
      }
      if ( !v44 )
LABEL_35:
        v39 = 1;
      v45 = v39 < 0;
      if ( v39 )
      {
        v33 = 16 * v29 + 16;
        v45 = v33 < v26;
      }
      if ( v45 )
        goto LABEL_40;
    }
LABEL_41:
    if ( v28 != v11 )
      goto LABEL_55;
    if ( v88 )
    {
      if ( v28 <= 0 )
        goto LABEL_166;
      v46 = *(unsigned __int8 *)(*(_DWORD *)(v10 + 4 * v12) + v28 - 1);
      v47 = (v46 & v7) == 0;
      if ( (v46 & v7) == 0 )
        v47 = (unsigned __int8)(*(_BYTE *)(*(_DWORD *)(v10 + 4 * v12 + 4) + v28 - 1) & v7) == 0;
      if ( !v47 )
      {
LABEL_166:
        v48 = 16 * v28 + 16;
        if ( v48 > v25 )
LABEL_54:
          v25 = v48;
      }
    }
    else
    {
      if ( 2 * v95 - 2 <= v28 )
        goto LABEL_167;
      v49 = *(unsigned __int8 *)(*(_DWORD *)(v10 + 4 * v12) + v28 + 2);
      v50 = (v49 & v7) == 0;
      if ( (v49 & v7) == 0 )
        v50 = (unsigned __int8)(*(_BYTE *)(*(_DWORD *)(v10 + 4 * v12 + 4) + v28 + 2) & v7) == 0;
      if ( !v50 )
      {
LABEL_167:
        v48 = 16 * v28 + 16;
        if ( v48 < v25 )
          goto LABEL_54;
      }
    }
LABEL_55:
    if ( v29 >= v12 )
    {
      if ( v29 > v12 )
      {
        v52 = !v92;
        if ( !v92 )
          v52 = !v93;
        if ( !v52 )
          goto LABEL_64;
      }
    }
    else
    {
      v51 = !v90;
      if ( !v90 )
        v51 = !v91;
      if ( !v51 )
LABEL_64:
        v26 = 16 * v12 + 16;
    }
    if ( v28 >= v11 )
    {
      if ( v28 <= v11 )
        goto LABEL_160;
      v54 = !v91;
      if ( !v91 )
        v54 = !v93;
      if ( v54 )
        goto LABEL_160;
    }
    else
    {
      v53 = !v90;
      if ( !v90 )
        v53 = !v92;
      if ( v53 )
        goto LABEL_160;
    }
    goto LABEL_158;
  }
  v55 = v28 <= v11;
  if ( v28 > v11 )
    v55 = v29 <= v12;
  v56 = 0;
  if ( !v55 )
  {
    if ( v91 )
      goto LABEL_105;
    v57 = !v93;
    if ( v93 )
      v57 = (unsigned __int8)(*(_BYTE *)(*(_DWORD *)(v33 - 4) + v28 + 1) & v7) == 0;
    if ( !v57 )
      goto LABEL_105;
  }
  if ( v28 > v11 && v29 < v12 )
  {
    if ( v93 )
      goto LABEL_105;
    v58 = !v91;
    if ( v91 )
      v58 = (unsigned __int8)(*(_BYTE *)(*(_DWORD *)(v33 + 8) + v28 + 1) & v7) == 0;
    if ( !v58 )
      goto LABEL_105;
  }
  if ( v28 < v11 && v29 > v12 )
  {
    if ( v90 )
      goto LABEL_105;
    v59 = !v92;
    if ( v92 )
      v59 = (unsigned __int8)(*(_BYTE *)(*(_DWORD *)(v33 - 4) + v28) & v7) == 0;
    if ( !v59 )
      goto LABEL_105;
  }
  v60 = v28 < v11;
  if ( v28 < v11 )
    v60 = v29 < v12;
  if ( v60 )
  {
    if ( v92 )
      goto LABEL_105;
    v61 = !v90;
    if ( v90 )
      v61 = (unsigned __int8)(*(_BYTE *)(*(_DWORD *)(v33 + 8) + v28) & v7) == 0;
    if ( !v61 )
    {
LABEL_105:
      v25 = 16 * v11 + 16;
      v56 = 1;
    }
  }
  v62 = v28 <= v11;
  if ( v28 > v11 )
    v62 = v29 <= v12;
  if ( !v62 )
  {
    if ( v92 )
      goto LABEL_159;
    v63 = !v93;
    if ( v93 )
      v63 = (unsigned __int8)(*(_BYTE *)(v36 - 1) & v7) == 0;
    if ( !v63 )
      goto LABEL_159;
  }
  if ( v28 > v11 && v29 < v12 )
  {
    if ( v90 )
      goto LABEL_159;
    v64 = !v91;
    if ( v91 )
      v64 = (unsigned __int8)(*(_BYTE *)(v32 - 1) & v7) == 0;
    if ( !v64 )
      goto LABEL_159;
  }
  if ( v28 < v11 && v29 > v12 )
  {
    if ( v93 )
      goto LABEL_159;
    v65 = !v92;
    if ( v92 )
      v65 = (unsigned __int8)(*(_BYTE *)(v36 + 2) & v7) == 0;
    if ( !v65 )
      goto LABEL_159;
  }
  v66 = v28 < v11;
  if ( v28 < v11 )
    v66 = v29 < v12;
  if ( v66 )
  {
    if ( v91 )
      goto LABEL_159;
    v67 = !v90;
    if ( v90 )
      v67 = (unsigned __int8)(*(_BYTE *)(v32 + 2) & v7) == 0;
    if ( !v67 )
      goto LABEL_159;
  }
  if ( v56 )
    goto LABEL_160;
  v68 = v28 <= v11;
  if ( v28 > v11 )
    v68 = v29 <= v12;
  if ( (v68 || !v93) && (v28 <= v11 || v29 >= v12 || !v91) && (v28 >= v11 || v29 <= v12 || !v92) )
  {
    v69 = v28 < v11;
    if ( v28 < v11 )
      v69 = v29 < v12;
    if ( !v69 || !v90 )
      goto LABEL_160;
  }
  if ( a2 < 0 )
    a2 = (__int16)(a2 + 360);
  sub_104(0x168u, a2);
  v71 = v70;
  v72 = v70 - 46;
  v73 = v72 >= 0x59;
  if ( v72 >= 0x59 )
    v73 = (unsigned int)(v71 - 226) >= 0x59;
  if ( v73 )
  {
LABEL_159:
    v26 = 16 * v12 + 16;
    goto LABEL_160;
  }
LABEL_158:
  v25 = 16 * v11 + 16;
LABEL_160:
  v74 = sub_104(0x10u, v25 - 8);
  v75 = sub_104(0x10u, v26 - 8);
  v76 = *(_DWORD *)(v10 + 4 * v75);
  v79 = *(_BYTE *)(v76 + v74);
  v77 = (_BYTE *)(v76 + v74);
  v78 = v79;
  if ( a6 )
  {
    *v77 = v78 | 4;
    v80 = (_DWORD *)(v10 + 4 * v75);
    *(_BYTE *)(v80[1] + v74) |= 4u;
    *(_BYTE *)(v80[1] + v74 + 1) |= 4u;
    v81 = *v80 + v74;
    v83 = *(_BYTE *)(v81 + 1);
    v82 = (_BYTE *)(v81 + 1);
    v84 = v83 | 4;
  }
  else
  {
    *v77 = v78 | 8;
    v85 = (_DWORD *)(v10 + 4 * v75);
    *(_BYTE *)(v85[1] + v74) |= 8u;
    *(_BYTE *)(v85[1] + v74 + 1) |= 8u;
    v86 = *v85 + v74;
    v87 = *(_BYTE *)(v86 + 1);
    v82 = (_BYTE *)(v86 + 1);
    v84 = v87 | 8;
  }
  *v82 = v84;
  *a4 = v25;
  *a5 = v26;
  return a5;
}

