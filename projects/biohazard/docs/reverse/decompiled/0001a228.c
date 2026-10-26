int __fastcall sub_1A228(
        int a1,
        int a2,
        int a3,
        int a4,
        signed int a5,
        signed int a6,
        __int16 *a7,
        char a8,
        int a9,
        unsigned int a10)
{
  int v10; // r5
  unsigned int v12; // r8
  unsigned int v13; // r9
  signed int v14; // r1
  int v15; // r1
  signed int v16; // r1
  int v17; // r1
  int v18; // r3
  int v19; // r11
  int i; // r6
  unsigned __int8 v21; // r0
  _WORD *v22; // r1
  int j; // r0
  _WORD *v24; // r2
  unsigned int v25; // r7
  unsigned int v26; // r6
  unsigned int v27; // r2
  unsigned int v28; // r1
  bool v29; // cc
  unsigned int v30; // r0
  signed int v31; // r12
  unsigned int v32; // r0
  bool v33; // cc
  unsigned int v34; // r1
  int v35; // r0
  unsigned int v36; // r1
  unsigned int v37; // lr
  int v38; // r0
  unsigned int v39; // r0
  char v40; // r3
  unsigned int v41; // r2
  bool v42; // cc
  bool v43; // cf
  bool v44; // cf
  int v45; // r0
  int v46; // r1
  int v47; // r2
  int v48; // r2
  unsigned int v49; // r1
  int v50; // lr
  int v51; // r0
  unsigned int v52; // r0
  char v53; // r3
  unsigned int v54; // r2
  bool v55; // cc
  bool v56; // cf
  bool v57; // cf
  unsigned int v59; // [sp+4h] [bp-B8h]
  unsigned int v60; // [sp+8h] [bp-B4h]
  signed int v61; // [sp+24h] [bp-98h]
  int v62; // [sp+28h] [bp-94h]
  unsigned int v63; // [sp+2Ch] [bp-90h]
  unsigned int v64; // [sp+30h] [bp-8Ch]
  int v65; // [sp+34h] [bp-88h]
  int v66; // [sp+38h] [bp-84h]
  unsigned int v67; // [sp+3Ch] [bp-80h]
  _WORD v68[12]; // [sp+40h] [bp-7Ch] BYREF
  int v69; // [sp+58h] [bp-64h]
  unsigned int v70; // [sp+5Ch] [bp-60h]
  unsigned int v71; // [sp+60h] [bp-5Ch]
  unsigned int v72; // [sp+64h] [bp-58h]
  unsigned int v73; // [sp+68h] [bp-54h]
  unsigned int v74; // [sp+6Ch] [bp-50h]
  unsigned int v75; // [sp+70h] [bp-4Ch]
  int v76; // [sp+74h] [bp-48h]
  _WORD *v77; // [sp+78h] [bp-44h]
  int *v78; // [sp+7Ch] [bp-40h]
  int v79; // [sp+80h] [bp-3Ch]
  signed int v80; // [sp+84h] [bp-38h]
  signed int v81; // [sp+88h] [bp-34h]
  int v82; // [sp+8Ch] [bp-30h]
  int v83; // [sp+90h] [bp-2Ch]
  unsigned int v84; // [sp+94h] [bp-28h]
  unsigned int v85; // [sp+98h] [bp-24h]
  unsigned int v86; // [sp+9Ch] [bp-20h]
  unsigned int v87; // [sp+A0h] [bp-1Ch]
  _WORD *v88; // [sp+A4h] [bp-18h]
  unsigned int v89; // [sp+A8h] [bp-14h]
  int v90; // [sp+ACh] [bp-10h]
  int v91; // [sp+B0h] [bp-Ch]
  int v92; // [sp+B4h] [bp-8h]
  int v93; // [sp+B8h] [bp-4h]

  v90 = a1;
  v91 = a2;
  v92 = a3;
  v93 = a4;
  if ( *(_DWORD *)(a1 + 4) )
  {
    v66 = *(unsigned __int16 *)(v91 + 2);
    v12 = *(unsigned __int16 *)(v91 + 4);
    v81 = *(unsigned __int16 *)(v91 + 8);
    v13 = *(unsigned __int16 *)(v91 + 6);
    v80 = *(unsigned __int16 *)(v91 + 10);
    if ( a7 )
    {
      v14 = *a7;
      if ( v14 > (int)v12 )
        v12 = *a7;
      v15 = v14 + a7[2];
      if ( v15 < v81 )
        v81 = v15;
      v16 = a7[1];
      if ( v16 > (int)v13 )
        v13 = a7[1];
      v17 = v16 + a7[3];
      if ( v17 < v80 )
        v80 = v17;
    }
    v18 = a8 & 0x60;
    v19 = a8 & 0xF;
    v67 = HIWORD(a10);
    if ( (a8 & 0x60) != 0 )
      v18 = 1;
    v65 = v18;
    if ( (a8 & 0x10) != 0 )
    {
      for ( i = 0; i < 12; ++i )
      {
        v60 = sub_1DC(0xCu, (12 - i) * ((unsigned __int16)(a9 & 0xF800) >> 8) + i * ((a9 & 0xF8FFFFFF) >> 24));
        v59 = (unsigned __int8)sub_1DC(
                                 0xCu,
                                 (12 - i) * ((unsigned __int16)(a9 & 0x7E0) >> 3) + i * ((a9 & 0x7E7FFFFu) >> 19));
        v21 = sub_1DC(0xCu, (12 - i) * (unsigned __int8)(8 * a9) + i * ((a9 & 0x1F0000u) >> 13));
        v22 = &v68[i];
        *v22 = ((unsigned __int16)(v60 >> 3) << 11) | (32 * (v59 >> 2)) | (v21 >> 3);
      }
    }
    else
    {
      for ( j = 0; j < 12; ++j )
      {
        v24 = &v68[j];
        *v24 = a9;
      }
    }
    v83 = 0;
    v89 = v66 - 1;
    v25 = v81 - 1;
    v26 = v80 - 1;
    while ( 1 )
    {
      while ( 1 )
      {
        while ( 1 )
        {
          v27 = *(unsigned __int16 *)(v90 + 48);
          if ( (int)(v27 + a6) <= (int)v13 )
            return 0;
          if ( a6 >= v80 )
            return 0;
          v88 = (_WORD *)(v92 + 2 * v83);
          v28 = (unsigned __int16)*v88;
          if ( !*v88 )
            return 0;
          v29 = v93 < 0;
          if ( v93 >= 0 )
            v29 = v83 < v93;
          if ( !v29 )
            return 0;
          v30 = *(unsigned __int16 *)(v90 + 50);
          if ( (int)(v30 + a5) > (int)v12 )
            break;
          if ( v28 >= 0x100 )
            a5 += v30;
          else
            a5 += v30 >> 1;
          ++v83;
        }
        if ( a5 >= v81 )
          return 0;
        if ( v65 )
        {
          if ( v28 < 0x100 )
            v30 >>= 1;
          v62 = v30;
          v64 = a5;
          if ( a5 < (int)v12 )
          {
            v64 = v12;
            v62 = v30 + a5 - v12;
          }
          v31 = v81;
          v32 = v64 + v62;
          if ( (int)(v64 + v62) > v81 )
          {
            v32 = v64;
            v31 = v81;
          }
          v63 = a6;
          if ( (int)(v64 + v62) > v81 )
            v62 = v31 - v32;
          v61 = v27;
          if ( a6 < (int)v13 )
          {
            v61 = v27 - v13 + a6;
            v63 = v13;
          }
          v27 = v61;
          if ( (int)(v63 + v61) > v80 )
            v61 = v80 - v63;
          v33 = v62 <= 0;
          if ( v62 > 0 )
            v33 = v61 <= 0;
          if ( !v33 )
          {
            if ( (a8 & 0x40) != 0 )
              sub_109D0(v91, (__int16)v64, v63 + v61, (__int16)v62, 0, v67);
            if ( (a8 & 0x20) != 0 )
              sub_10C58(v91, v64, v63 - 1, (__int16)v62, (__int16)(v61 + 1), 0, v67, 0);
          }
        }
        v34 = (unsigned __int16)*v88;
        if ( v34 >= 0x100 )
          break;
        if ( v34 - 32 < 0x5F )
          v35 = (unsigned __int8)*v88;
        else
          v35 = *(unsigned __int8 *)(v90 + 30);
        v79 = *(_DWORD *)(v90 + 24) + 12 * v35 - 384;
        v78 = (int *)(*(_DWORD *)(v91 + 20) + 4 * a6);
        v82 = 0;
        while ( 1 )
        {
          v36 = a6 + v82;
          if ( a6 + v82 >= v13 )
            break;
          ++v78;
LABEL_121:
          if ( (unsigned int)++v82 >= 0xC )
            goto LABEL_122;
        }
        if ( v36 < v80 )
        {
          v69 = (unsigned __int16)v68[v82];
          if ( (a8 & 0xF) != 0 )
          {
            if ( v36 )
              v76 = *(v78 - 1) + 2 * a5;
            if ( v36 < v89 )
              v10 = v78[1] + 2 * a5;
            if ( !v82 )
            {
              v74 = 0;
              goto LABEL_70;
            }
            v74 = *(unsigned __int8 *)(v79 + v82 - 1);
            if ( v82 == 11 )
              v37 = 0;
            else
LABEL_70:
              v37 = *(unsigned __int8 *)(v79 + v82 + 1);
            v73 = v37;
          }
          v38 = *v78++;
          v77 = (_WORD *)(v38 + 2 * a5);
          v39 = 0;
          v75 = *(unsigned __int8 *)(v79 + v82);
          while ( 2 )
          {
            v40 = 7 - v39;
            if ( ((v75 >> (7 - v39)) & 1) != 0 )
            {
              v41 = a5 + v39;
              if ( a5 + v39 >= v12 && v41 < v81 )
              {
                *v77 = v69;
                if ( (a8 & 0xF) != 0 )
                {
                  if ( v19 == 1 )
                  {
                    v87 = 8 - v39;
                    if ( ((v74 >> (8 - v39)) & 1) == 0 )
                    {
                      v42 = v36 > v13;
                      if ( v36 > v13 )
                        v42 = v41 > v12;
                      if ( v42 )
                        *(_WORD *)(v76 + 2 * v39 - 2) = a10;
                    }
                    if ( ((v74 >> v40) & 1) == 0 && v36 > v13 )
                      *(_WORD *)(v76 + 2 * v39) = a10;
                    v86 = 6 - v39;
                    if ( ((v74 >> (6 - v39)) & 1) == 0 && v36 > v13 && v41 < v25 )
                      *(_WORD *)(v76 + 2 * v39 + 2) = a10;
                    if ( ((v75 >> v87) & 1) == 0 && v41 > v12 )
                      *(v77 - 1) = a10;
                    if ( ((v75 >> v86) & 1) == 0 && v41 < v25 )
                      v77[1] = a10;
                    if ( ((v73 >> v87) & 1) == 0 && v36 < v26 && v41 > v12 )
                      *(_WORD *)(v10 + 2 * v39 - 2) = a10;
                    if ( ((v73 >> v40) & 1) == 0 && v36 < v26 )
                      *(_WORD *)(v10 + 2 * v39) = a10;
                    if ( ((v73 >> v86) & 1) == 0 )
                    {
                      v43 = v36 >= v26;
                      if ( v36 < v26 )
                        v43 = v41 >= v25;
                      if ( !v43 )
                        goto LABEL_119;
                    }
                  }
                  else if ( v19 == 2 )
                  {
                    if ( ((v75 >> (6 - v39)) & 1) == 0 && v41 < v25 )
                      v77[1] = a10;
                    if ( ((v73 >> v40) & 1) == 0 && v36 < v26 )
                      *(_WORD *)(v10 + 2 * v39) = a10;
                    if ( ((v73 >> (6 - v39)) & 1) == 0 )
                    {
                      v44 = v36 >= v26;
                      if ( v36 < v26 )
                        v44 = v41 >= v25;
                      if ( !v44 )
LABEL_119:
                        *(_WORD *)(v10 + 2 * v39 + 2) = a10;
                    }
                  }
                }
              }
            }
            ++v39;
            ++v77;
            if ( v39 >= 6 )
              goto LABEL_121;
            continue;
          }
        }
LABEL_122:
        ++v83;
        a5 += *(unsigned __int16 *)(v90 + 50) >> 1;
      }
      v45 = sub_12384(v90, v34, v27);
      if ( v45 != 0xFFFF )
        break;
      v45 = sub_122B8(v90, (unsigned __int16)*v88);
      if ( v45 != 0xFFFF )
      {
        v46 = *(_DWORD *)(v90 + 44);
        goto LABEL_128;
      }
      v47 = *(_DWORD *)(v90 + 20) + 24 * *(unsigned __int16 *)(v90 + 28);
LABEL_129:
      v79 = v47;
      v48 = *(_DWORD *)(v91 + 20) + 4 * a6;
      v82 = 0;
      v78 = (int *)v48;
      while ( 1 )
      {
        v49 = a6 + v82;
        if ( a6 + v82 >= v13 )
          break;
        ++v78;
LABEL_193:
        if ( (unsigned int)++v82 >= 0xC )
          goto LABEL_194;
      }
      if ( v49 < v80 )
      {
        v69 = (unsigned __int16)v68[v82];
        if ( (a8 & 0xF) != 0 )
        {
          if ( v49 )
            v76 = *(v78 - 1) + 2 * a5;
          if ( v49 < v89 )
            v10 = v78[1] + 2 * a5;
          if ( !v82 )
          {
            v71 = 0;
            goto LABEL_142;
          }
          v71 = *(unsigned __int8 *)(v79 + 2 * v82 - 1) | (*(unsigned __int8 *)(v79 + 2 * v82 - 2) << 8);
          if ( v82 == 11 )
            v50 = 0;
          else
LABEL_142:
            v50 = *(unsigned __int8 *)(v79 + 2 * v82 + 3) | (*(unsigned __int8 *)(v79 + 2 * v82 + 2) << 8);
          v70 = v50;
        }
        v51 = *v78++;
        v77 = (_WORD *)(v51 + 2 * a5);
        v72 = *(unsigned __int8 *)(v79 + 2 * v82 + 1) | (*(unsigned __int8 *)(v79 + 2 * v82) << 8);
        v52 = 0;
        while ( 2 )
        {
          v53 = 15 - v52;
          if ( ((v72 >> (15 - v52)) & 1) != 0 )
          {
            v54 = a5 + v52;
            if ( a5 + v52 >= v12 && v54 < v81 )
            {
              *v77 = v69;
              if ( (a8 & 0xF) != 0 )
              {
                if ( v19 == 1 )
                {
                  v85 = 16 - v52;
                  if ( ((v71 >> (16 - v52)) & 1) == 0 )
                  {
                    v55 = v49 > v13;
                    if ( v49 > v13 )
                      v55 = v54 > v12;
                    if ( v55 )
                      *(_WORD *)(v76 + 2 * v52 - 2) = a10;
                  }
                  if ( ((v71 >> v53) & 1) == 0 && v49 > v13 )
                    *(_WORD *)(v76 + 2 * v52) = a10;
                  v84 = 14 - v52;
                  if ( ((v71 >> (14 - v52)) & 1) == 0 && v49 > v13 && v54 < v25 )
                    *(_WORD *)(v76 + 2 * v52 + 2) = a10;
                  if ( ((v72 >> v85) & 1) == 0 && v54 > v12 )
                    *(v77 - 1) = a10;
                  if ( ((v72 >> v84) & 1) == 0 && v54 < v25 )
                    v77[1] = a10;
                  if ( ((v70 >> v85) & 1) == 0 && v49 < v26 && v54 > v12 )
                    *(_WORD *)(v10 + 2 * v52 - 2) = a10;
                  if ( ((v70 >> v53) & 1) == 0 && v49 < v26 )
                    *(_WORD *)(v10 + 2 * v52) = a10;
                  if ( ((v70 >> v84) & 1) == 0 )
                  {
                    v56 = v49 >= v26;
                    if ( v49 < v26 )
                      v56 = v54 >= v25;
                    if ( !v56 )
                      goto LABEL_191;
                  }
                }
                else if ( v19 == 2 )
                {
                  if ( ((v72 >> (14 - v52)) & 1) == 0 && v54 < v25 )
                    v77[1] = a10;
                  if ( ((v70 >> v53) & 1) == 0 && v49 < v26 )
                    *(_WORD *)(v10 + 2 * v52) = a10;
                  if ( ((v70 >> (14 - v52)) & 1) == 0 )
                  {
                    v57 = v49 >= v26;
                    if ( v49 < v26 )
                      v57 = v54 >= v25;
                    if ( !v57 )
LABEL_191:
                      *(_WORD *)(v10 + 2 * v52 + 2) = a10;
                  }
                }
              }
            }
          }
          ++v52;
          ++v77;
          if ( v52 >= 0xC )
            goto LABEL_193;
          continue;
        }
      }
LABEL_194:
      ++v83;
      a5 += *(unsigned __int16 *)(v90 + 50);
    }
    v46 = *(_DWORD *)(v90 + 20);
LABEL_128:
    v47 = v46 + 24 * v45;
    goto LABEL_129;
  }
  return 0;
}

