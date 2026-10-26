int __fastcall sub_9990(int a1, int a2, int a3)
{
  int v3; // r10
  unsigned int v6; // r1
  unsigned int v7; // r4
  unsigned __int8 *v8; // r2
  int result; // r0
  unsigned __int8 *v10; // r7
  int v11; // r3
  int v12; // r0
  int v13; // r0
  unsigned int v14; // r9
  int v15; // r11
  int v16; // r0
  int v17; // r2
  int v18; // r1
  signed int v19; // r12
  int v20; // r3
  _WORD *v21; // r3
  _WORD *v22; // lr
  int v23; // r9
  int v24; // r2
  int v25; // r2
  unsigned int v26; // r12
  __int16 v27; // r2
  __int16 v28; // r12
  unsigned int v29; // r12
  int v30; // r7
  signed int v31; // r11
  int v32; // r1
  int v33; // r0
  int v34; // r9
  unsigned int v35; // r0
  bool v36; // cf
  bool v37; // cc
  int v38; // r1
  unsigned int v39; // r0
  __int16 v40; // r0
  int v41; // r1
  int v42; // r12
  int v43; // r3
  int v44; // r0
  int v45; // kr00_4
  int v46; // r0
  int v47; // r2
  __int16 v48; // r3
  unsigned __int8 *v49; // r11
  int v50; // r9
  int v51; // r0
  int v52; // r1
  __int16 v53; // r7
  int v54; // r12
  int v55; // r0
  bool v56; // cc
  int v57; // r2
  unsigned __int16 v58; // r0
  int v59; // r9
  int v60; // r1
  int v61; // r12
  int v62; // r3
  int v63; // r0
  unsigned int v64; // r7
  int v65; // r0
  int v66; // r1
  int v67; // r9
  int v68; // r0
  int v69; // r12
  int v70; // r1
  bool v71; // cf
  int v72; // lr
  unsigned __int16 *v73; // r3
  unsigned __int8 *v74; // r7
  int v75; // r1
  unsigned __int16 *v76; // r12
  int v77; // lr
  int v78; // r1
  int v79; // r0
  int v80; // r0
  unsigned __int16 v81; // r1
  int v82; // r0
  int v83; // lr
  int v84; // r2
  int v85; // r3
  int v86; // r9
  int v87; // r10
  __int16 v88; // r12
  int v89; // r9
  int v90; // r2
  int v91; // r3
  int v92; // r7
  int v93; // r11
  int v94; // [sp+0h] [bp-16Ch]
  int v95; // [sp+14h] [bp-158h] BYREF
  unsigned int v96; // [sp+18h] [bp-154h]
  int v97; // [sp+1Ch] [bp-150h]
  unsigned __int16 *v98; // [sp+20h] [bp-14Ch]
  int v99; // [sp+24h] [bp-148h]
  unsigned __int16 *v100; // [sp+28h] [bp-144h]
  unsigned int v101; // [sp+2Ch] [bp-140h]
  int v102; // [sp+30h] [bp-13Ch]
  int v103; // [sp+34h] [bp-138h]
  int v104; // [sp+38h] [bp-134h]
  int v105; // [sp+3Ch] [bp-130h]
  BOOL v106; // [sp+40h] [bp-12Ch]
  int v107; // [sp+44h] [bp-128h]
  int v108; // [sp+48h] [bp-124h]
  int v109; // [sp+4Ch] [bp-120h]
  int v110; // [sp+50h] [bp-11Ch]
  int v111; // [sp+54h] [bp-118h]
  int v112; // [sp+58h] [bp-114h]
  int v113; // [sp+5Ch] [bp-110h]
  int v114; // [sp+60h] [bp-10Ch]
  int v115; // [sp+64h] [bp-108h]
  int v116; // [sp+68h] [bp-104h]
  int v117; // [sp+6Ch] [bp-100h]
  int v118; // [sp+70h] [bp-FCh]
  int v119; // [sp+74h] [bp-F8h]
  int v120; // [sp+78h] [bp-F4h]
  __int16 v121[4]; // [sp+7Ch] [bp-F0h] BYREF
  _WORD v122[64]; // [sp+84h] [bp-E8h] BYREF
  int v123; // [sp+104h] [bp-68h]
  int v124; // [sp+108h] [bp-64h]
  _DWORD *v125; // [sp+10Ch] [bp-60h]
  int v126; // [sp+110h] [bp-5Ch]
  int v127; // [sp+114h] [bp-58h]
  int v128; // [sp+118h] [bp-54h]
  int v129; // [sp+11Ch] [bp-50h]
  int v130; // [sp+120h] [bp-4Ch]
  signed int v131; // [sp+124h] [bp-48h]
  int v132; // [sp+128h] [bp-44h]
  unsigned __int16 *v133; // [sp+12Ch] [bp-40h]
  unsigned __int8 *i; // [sp+130h] [bp-3Ch]
  int v135; // [sp+134h] [bp-38h]
  int v136; // [sp+138h] [bp-34h]
  int v137; // [sp+13Ch] [bp-30h]
  int v138; // [sp+140h] [bp-2Ch]
  unsigned int v139; // [sp+144h] [bp-28h]
  int v140; // [sp+148h] [bp-24h]
  int v141; // [sp+14Ch] [bp-20h]
  int v142; // [sp+150h] [bp-1Ch]
  int v143; // [sp+154h] [bp-18h]
  int v144; // [sp+158h] [bp-14h]
  int v145; // [sp+15Ch] [bp-10h]
  int v146; // [sp+160h] [bp-Ch]
  int v147; // [sp+164h] [bp-8h]
  int v148; // [sp+168h] [bp-4h]

  v146 = a1;
  v147 = a2;
  v148 = a3;
  v124 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_A7CC + 0xFFFFFFFC + 39340) + 192))() + 40);
  v123 = *(_DWORD *)(v124 + 100);
  v127 = *(unsigned __int16 *)(*(_DWORD *)(a1 + 2200) + 16);
  v6 = *(__int16 *)(*(_DWORD *)(a2 + 40) + 24);
  v105 = v127;
  v121[1] = 0;
  v7 = v6 >> 1;
  v121[2] = *(_WORD *)a2;
  v121[3] = *(_WORD *)(a2 + 2);
  v100 = (unsigned __int16 *)sub_11DD8(v148, dword_A7D0);
  v8 = *(unsigned __int8 **)(a1 + 2256);
  result = ((v127 & 0xF800) << 11) | (32 * (v127 & 0x7E0));
  v145 = result | v127 & 0x1F;
  for ( i = v8; i; i = (unsigned __int8 *)*((_DWORD *)i + 3) )
  {
    result = *i;
    switch ( result )
    {
      case 1:
        v10 = i;
        if ( i[36] )
        {
          v11 = *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 72) + 28 * *((unsigned __int16 *)i + 19);
          if ( *(_WORD *)(v11 + 4) )
          {
            if ( !--*(_WORD *)(v11 + 4) )
              sub_8BEC(a1, a2, v148, v11);
          }
        }
        v119 = *((_DWORD *)v10 + 10);
        v118 = *((_DWORD *)v10 + 11);
        v117 = *((_DWORD *)v10 + 14);
        v116 = *((_DWORD *)v10 + 16);
        v115 = *((_DWORD *)v10 + 12);
        v114 = *((_DWORD *)v10 + 13);
        v113 = *((_DWORD *)v10 + 15);
        v12 = *((_DWORD *)v10 + 17);
        v111 = 0;
        v110 = 0;
        v109 = 0;
        v112 = v12;
        v13 = *(_DWORD *)(a1 + 2084) + 32 * *((unsigned __int16 *)v10 + 10);
        v108 = *(unsigned __int16 *)(v13 + 2);
        v107 = *(_DWORD *)(v13 + 8);
        v106 = (*(_WORD *)(v13 + 4) & 0x20) != 0;
        if ( (*((_WORD *)v10 + 11) & 4) != 0 )
        {
          v112 = -v112;
          v116 = (v10[33] << 8) - v116 - 1;
        }
        v120 = 0;
        v3 = v108 - 1;
        v144 = v108 - 1;
        while ( 1 )
        {
          result = v115;
          if ( v120 < v115 )
            break;
          v129 = v119 + v120;
          v3 = (v116 + v109) >> 8;
          if ( v3 < 0 )
            v3 = 0;
          if ( v3 >= v108 )
            v3 = v144;
          v14 = (v117 - v110) >> 8;
          v15 = (v118 - v111) >> 8;
          v16 = sub_104(v14, v10[32] << 16);
          if ( v15 < 0 )
            v17 = 32;
          v18 = 0;
          if ( v15 >= 0 )
          {
            v126 = *(_DWORD *)(*(_DWORD *)(a1 + 2248) + 4 * v15);
            v17 = *(unsigned __int8 *)(*(_DWORD *)(a1 + 2244) + v15);
          }
          v129 += *(unsigned __int16 *)(a1 + 2208);
          v143 = *(unsigned __int16 *)(a1 + 2206);
          v19 = *(unsigned __int16 *)(a1 + 2210);
          v20 = v143 - v15 + v19;
          if ( (int)(v20 - v14) < v19 )
            v14 = v143 - v15 + 1;
          if ( v19 + v143 <= v20 )
          {
            v18 = v16 * (1 - v15);
            v14 -= 1 - v15;
            v20 = v143 + v19 - 1;
          }
          v21 = (_WORD *)(*(_DWORD *)(*(_DWORD *)(a2 + 20) + 4 * v20) + 2 * v129 + 2 * v7);
          v22 = &v21[-(v7 * v14)];
          v23 = *(_DWORD *)(v107 + 4 * v3);
          if ( v106 )
          {
            if ( v17 )
            {
              if ( v17 == 32 )
              {
                while ( v21 > v22 )
                {
                  v25 = *(unsigned __int16 *)(v23 + 2 * (v18 >> 16));
                  v21 -= v7;
                  v18 += v16;
                  if ( v25 != 63519 )
                    *v21 = v25;
                }
              }
              else
              {
                while ( v21 > v22 )
                {
                  v3 = *(unsigned __int16 *)(v23 + 2 * (v18 >> 16));
                  v21 -= v7;
                  if ( v3 != 63519 )
                  {
                    v26 = (v126 + v17 * (((v3 & 0xF800) << 11) | (32 * (v3 & 0x7E0)) | v3 & 0x1Fu)) >> 5;
                    v3 = ((v26 & 0x7C00000) >> 11) | ((unsigned __int16)(v26 & 0xFC00) >> 5);
                    *v21 = v3 | v26 & 0x1F;
                  }
                  v18 += v16;
                }
              }
            }
            else
            {
              while ( v21 > v22 )
              {
                v24 = *(unsigned __int16 *)(v23 + 2 * (v18 >> 16));
                v21 -= v7;
                v18 += v16;
                if ( v24 != 63519 )
                  *v21 = v105;
              }
            }
          }
          else if ( v17 )
          {
            if ( v17 == 32 )
            {
              while ( v21 > v22 )
              {
                v27 = *(_WORD *)(v23 + 2 * (v18 >> 16));
                v21 -= v7;
                v18 += v16;
                *v21 = v27;
              }
            }
            else
            {
              while ( v21 > v22 )
              {
                v28 = *(_WORD *)(v23 + 2 * (v18 >> 16));
                v21 -= v7;
                v18 += v16;
                v29 = (v126 + v17 * (((v28 & 0xF800) << 11) | (32 * (v28 & 0x7E0)) | v28 & 0x1Fu)) >> 5;
                v3 = ((v29 & 0x7C00000) >> 11) | ((unsigned __int16)(v29 & 0xFC00) >> 5);
                *v21 = v3 | v29 & 0x1F;
              }
            }
          }
          else
          {
            while ( v21 > v22 )
            {
              v21 -= v7;
              *v21 = v105;
            }
          }
          v111 += v114;
          v110 += v113;
          v109 += v112;
          --v120;
        }
        continue;
      case 2:
        v125 = i;
        v30 = *(_DWORD *)(a1 + 2172) + 36 * i[20];
        if ( !*(_BYTE *)(v30 + 30) )
        {
          v133 = (unsigned __int16 *)sub_11DD8(v148, *(_DWORD *)v30);
          v132 = *v133;
          v3 = sub_1DC(*(unsigned __int8 *)(v30 + 4), v133[1]);
          v142 = v125[9];
          v31 = (v132 * v142) >> 8;
          v130 = (v3 * v142) >> 8;
          v141 = v125[7] + *(unsigned __int16 *)(a1 + 2208);
          v129 = v141 - ((v142 * *(__int16 *)(v30 + 8)) >> 8);
          v32 = *(unsigned __int16 *)(a1 + 2206);
          v33 = v125[8];
          v140 = v32 - v33 + *(unsigned __int16 *)(a1 + 2210);
          v128 = v140 - ((v142 * *(__int16 *)(v30 + 10)) >> 8);
          if ( *(_BYTE *)(v30 + 7) )
          {
            if ( v33 < v32 )
            {
              v33 = v32 - 1 - v33;
              goto LABEL_61;
            }
LABEL_60:
            v34 = 0;
          }
          else
          {
            if ( v33 < 0 )
              goto LABEL_60;
LABEL_61:
            v34 = (unsigned __int8)(32 - *(_BYTE *)(*(_DWORD *)(a1 + 2244) + v33));
          }
          if ( *(_BYTE *)(v30 + 5) )
            v34 = (unsigned __int8)sub_104(0x64u, v34 * (100 - *(unsigned __int8 *)(v30 + 5)));
          v35 = *(_DWORD *)v30;
          v36 = *(_DWORD *)v30 >= 0x800u;
          if ( *(_DWORD *)v30 >= 0x800u )
            v36 = (unsigned int)(*(_DWORD *)v30 - 2048) >= 0x35;
          if ( v36 )
          {
            v37 = v35 > 0x800;
            if ( v35 >= 0x800 )
              v37 = v35 - 2048 > 0x38;
            if ( !v37 )
            {
              sub_2E4(*(_DWORD *)(a1 + 2212));
              v102 = 3 * v38;
              if ( 3 * v38 > 15 )
                v102 = 30 - v102;
              v128 -= (v102 * v142) >> 8;
              v104 = v141;
              v103 = v140;
              v39 = ((((*(_WORD *)(*(_DWORD *)(a1 + 2200) + 16) & 0xF800) << 11)
                    | (32 * (*(_WORD *)(*(_DWORD *)(a1 + 2200) + 16) & 0x7E0))
                    | *(_WORD *)(*(_DWORD *)(a1 + 2200) + 16) & 0x1Fu)
                   * v34) >> 5;
              v101 = ((v39 & 0x7C00000) >> 11) | ((unsigned __int16)(v39 & 0xFC00) >> 5) | v39 & 0x1F;
              v98 = (unsigned __int16 *)sub_104(6u, v31);
              v139 = v31 * (15 - v102);
              v138 = (unsigned __int16)((_WORD)v98 + sub_104(0x78u, v139));
              v137 = v31 / 2;
              v40 = sub_104(0x3Cu, v139);
              sub_105D0(a2, (__int16)v104, (__int16)v103, (unsigned __int16)(v137 + v40), v138, 16, 0, v101);
            }
          }
          sub_1DC(*(char *)(v30 + 12), *(_DWORD *)(a1 + 2212));
          v42 = *(char *)(v30 + v41 + 13);
          if ( v42 > 0 )
          {
            v95 = (__int16)v3;
            v96 = 17;
            v97 = 0;
            v98 = (unsigned __int16 *)(v127 | (v34 << 16));
            v43 = (__int16)v132;
            LOWORD(v44) = v42 - 1;
            goto LABEL_78;
          }
          if ( v42 < 0 )
          {
            v95 = (__int16)v3;
            v96 = 19;
            v97 = 0;
            v98 = (unsigned __int16 *)(v127 | (v34 << 16));
            v44 = -(v42 + 1);
            v43 = (__int16)v132;
LABEL_78:
            sub_18BC(
              a2,
              (__int16)v129,
              v128,
              (__int16)v31,
              (__int16)v130,
              v133,
              0,
              (__int16)(v3 * v44),
              v43,
              v95,
              v96,
              v97,
              v98);
          }
        }
        result = *(unsigned __int8 *)(v30 + 31);
        if ( result == 1 )
        {
          sub_19618(v124, *(__int16 *)(v30 + 32), v122, 128);
          v45 = sub_12BC8(v123, v122, 0);
          v46 = *(unsigned __int16 *)(v123 + 48);
          v47 = *(unsigned __int16 *)(a1 + 2206) - *(_DWORD *)(a1 + 2096) + *(_DWORD *)(a1 + 2108);
          v48 = *(_WORD *)(a1 + 2210);
          v121[0] = v125[7] + *(_WORD *)(a1 + 2208) - v45 / 2;
          result = sub_98BC(
                     v123,
                     (unsigned __int16 *)a2,
                     (__int16)(v47 + v48 - (v46 >> 1)),
                     v121,
                     v122,
                     0,
                     0,
                     0,
                     0,
                     0,
                     0,
                     0);
        }
        continue;
      case 4:
        v49 = i;
        v50 = *(_DWORD *)(a1 + 2188) + 84 * *((unsigned __int16 *)i + 10);
        v133 = (unsigned __int16 *)sub_11DD8(v148, *(_DWORD *)v50);
        v132 = *v133;
        v51 = sub_1DC(*(unsigned __int8 *)(v50 + 4), v133[1]);
        v52 = *((_DWORD *)v49 + 12);
        v53 = v51;
        v131 = (v132 * v52) >> 8;
        v130 = (v51 * v52) >> 8;
        v54 = *((_DWORD *)v49 + 10) + *(unsigned __int16 *)(a1 + 2208);
        v104 = v54;
        v55 = *((_DWORD *)v49 + 11);
        v56 = v55 < 0;
        v57 = *(unsigned __int16 *)(a1 + 2206) - v55 + *(unsigned __int16 *)(a1 + 2210);
        v103 = v57;
        if ( v55 < 0 )
          v3 = 0;
        v129 = v54 - ((v52 * *(__int16 *)(v50 + 8)) >> 8);
        v128 = v57 - ((v52 * *(__int16 *)(v50 + 10)) >> 8);
        if ( v55 >= 0 )
          LOBYTE(v55) = *(_BYTE *)(*(_DWORD *)(a1 + 2244) + v55);
        if ( !v56 )
          v3 = (unsigned __int8)(32 - v55);
        v101 = ((((unsigned int)(v145 * v3) >> 5) & 0x7C00000) >> 11)
             | ((((unsigned int)(v145 * v3) >> 5) & 0xFC00) >> 5)
             | ((unsigned int)(v145 * v3) >> 5) & 0x1F;
        v136 = (unsigned __int16)(v131 / 8);
        v58 = sub_104(3u, v131);
        sub_105D0(a2, (__int16)v104, (__int16)v103, v58, v136, 16, 0, v101);
        v59 = v50 + 16 * *((unsigned __int16 *)v49 + 34);
        sub_1DC(*(char *)(v59 + 12), *(_DWORD *)(a1 + 2212));
        result = v59 + v60;
        v61 = *(char *)(v59 + v60 + 13);
        if ( v61 > 0 )
        {
          v95 = v53;
          v96 = 17;
          v97 = 0;
          v98 = (unsigned __int16 *)(v127 | (v3 << 16));
          v62 = (__int16)v132;
          LOWORD(v63) = v61 - 1;
          goto LABEL_92;
        }
        if ( v61 < 0 )
        {
          v95 = v53;
          v96 = 19;
          v97 = 0;
          v98 = (unsigned __int16 *)(v127 | (v3 << 16));
          v63 = -(v61 + 1);
          v62 = (__int16)v132;
LABEL_92:
          result = sub_18BC(
                     a2,
                     (__int16)v129,
                     v128,
                     (__int16)v131,
                     (__int16)v130,
                     v133,
                     0,
                     (__int16)(v53 * v63),
                     v62,
                     v95,
                     v96,
                     v97,
                     v98);
        }
        v64 = v49[73];
        if ( v49[73] )
        {
          v132 = *v100;
          v65 = sub_1DC(3u, v100[1]);
          v66 = *((_DWORD *)v49 + 12);
          v67 = v65;
          v68 = v132 * v66;
          v69 = (v132 * v66) >> 8;
          v70 = v67 * v66;
          v71 = v64 >= 4;
          if ( v64 < 4 )
            v68 = 4 - v64;
          v72 = v70 >> 8;
          if ( v64 >= 4 )
            v68 = v69 + ((unsigned int)v69 >> 31);
          else
            LOWORD(v64) = v68 - 1;
          if ( v71 )
          {
            v69 = v68 >> 1;
            v72 /= 2;
          }
          v129 = *((_DWORD *)v49 + 10) + *(unsigned __int16 *)(a1 + 2208) - v69 / 2;
          if ( v71 )
            LOWORD(v64) = 0;
          v73 = (unsigned __int16 *)(*(unsigned __int16 *)(*(_DWORD *)(a1 + 2200) + 16) | (v3 << 16));
          v3 = (int)&v95;
          result = sub_18BC(
                     a2,
                     (__int16)v129,
                     *(_WORD *)(a1 + 2206) - *((_WORD *)v49 + 26) + *(_WORD *)(a1 + 2210) - v72 / 2,
                     (__int16)v69,
                     (__int16)v72,
                     v100,
                     0,
                     (__int16)(v67 * v64),
                     (__int16)v132,
                     (__int16)v67,
                     0x11u,
                     0,
                     v73);
        }
        continue;
      case 5:
        v74 = i;
        if ( i[33] == 1 )
          v75 = dword_A7D8;
        else
          v75 = dword_A7D4;
        result = sub_11DD8(v148, v75);
        v76 = (unsigned __int16 *)result;
        if ( result )
        {
          v77 = *(unsigned __int16 *)result;
          v78 = *((_DWORD *)v74 + 7);
          v79 = *(unsigned __int16 *)(result + 2);
          v3 = (v79 * v78) >> 8;
          result = sub_18BC(
                     a2,
                     (__int16)(*((_WORD *)v74 + 10)
                             + *(_WORD *)(a1 + 2208)
                             - ((int)(((v77 * v78) >> 8) + ((unsigned int)(v77 * v78) >> 31)) >> 1)),
                     *(_WORD *)(a1 + 2206) - *((_WORD *)v74 + 12) + *(_WORD *)(a1 + 2210) - v3 / 2,
                     (__int16)((v77 * v78) >> 8),
                     (__int16)v3,
                     v76,
                     0,
                     0,
                     (__int16)v77,
                     (__int16)v79,
                     1u,
                     0,
                     0);
        }
        break;
      case 6:
        v80 = *((_DWORD *)i + 1);
        if ( v80 == 1 )
        {
          v81 = dword_A7DC;
        }
        else if ( v80 == 2 )
        {
          v81 = dword_A7E4;
        }
        else
        {
          v81 = dword_A7E0;
        }
        v82 = *(unsigned __int16 *)(a1 + 2208);
        v83 = *((_DWORD *)i + 8) + v82;
        v84 = *(unsigned __int16 *)(a1 + 2206);
        v85 = *(unsigned __int16 *)(a1 + 2210);
        v86 = v84 - *((_DWORD *)i + 9) + v85;
        v87 = *((_DWORD *)i + 12) / 2;
        v88 = v86 - v87;
        LOWORD(v87) = v87 + v86;
        v89 = *((_DWORD *)i + 10) + v82;
        v90 = v84 - *((_DWORD *)i + 11) + v85;
        v91 = *((_DWORD *)i + 13) / 2;
        v99 = v91 + v90;
        v135 = (__int16)(v90 - v91);
        v92 = v81;
        v94 = (__int16)v87;
        v93 = (__int16)v87;
        v3 = (__int16)v83;
        sub_1165C(a2, (__int16)v83, v88, (__int16)v83, v94, (__int16)v89, v135, 0, v81, v81);
        result = sub_1165C(a2, (__int16)v89, v135, v3, v93, (__int16)v89, (__int16)v99, 0, v92, v92);
        break;
    }
  }
  return result;
}

