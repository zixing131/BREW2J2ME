int __fastcall sub_18BC(
        int a1,
        int a2,
        __int16 a3,
        signed int a4,
        signed int a5,
        unsigned __int16 *a6,
        int a7,
        int a8,
        int a9,
        int a10,
        unsigned int a11,
        int a12,
        unsigned __int16 *a13)
{
  int v13; // r11
  int v15; // r1
  bool v16; // zf
  int result; // r0
  bool v19; // cc
  int v20; // r3
  int v21; // r4
  int v22; // r6
  int v23; // r7
  int v24; // r6
  signed int v25; // r5
  int v26; // r3
  int v27; // r0
  int v28; // r0
  int v29; // r0
  int v30; // r2
  int v31; // r0
  __int16 v32; // r12
  int v33; // r8
  bool v34; // cc
  int v35; // r2
  int v36; // r0
  int v37; // r0
  int v38; // r2
  int v39; // r3
  unsigned __int16 *v40; // r10
  int v41; // r6
  bool v42; // cc
  int v43; // r0
  _DWORD *v44; // r9
  _DWORD *v45; // r1
  int v46; // r1
  bool v47; // zf
  _DWORD *v48; // r0
  _WORD *v49; // r0
  _WORD *v50; // r1
  _DWORD *v51; // r0
  int v52; // lr
  int v53; // r12
  unsigned int v54; // r2
  unsigned int v55; // r3
  _WORD *v56; // r2
  unsigned int v57; // r2
  int v58; // r1
  int v59; // r2
  int v60; // r0
  int v61; // r11
  int v62; // r1
  unsigned int v63; // r10
  int v64; // r0
  unsigned int v65; // r3
  _DWORD *v66; // r1
  _WORD *v67; // r0
  int v68; // r0
  _DWORD *v69; // r1
  unsigned int v70; // r1
  unsigned int v71; // r2
  _WORD *v72; // r1
  unsigned int v73; // r1
  bool v74; // cc
  int v75; // r2
  unsigned __int16 *v76; // r1
  int v77; // r1
  int v78; // r1
  int v79; // r0
  int v80; // r3
  int v81; // r2
  int v82; // r11
  int v83; // r1
  int v84; // r10
  int v85; // r0
  _DWORD *v86; // r1
  _WORD *v87; // r0
  int v88; // r0
  _DWORD *v89; // r1
  int v90; // lr
  int v91; // r1
  unsigned int v92; // r1
  unsigned int v93; // r1
  unsigned int v94; // r2
  bool v95; // cc
  unsigned int v96; // r1
  unsigned int v97; // r1
  unsigned int v98; // r2
  bool v99; // cc
  int v100; // r1
  int v101; // r10
  int v102; // r0
  _DWORD *v103; // r1
  int v104; // r0
  int v105; // r0
  _DWORD *v106; // r1
  int v107; // r1
  unsigned int v108; // r2
  unsigned int v109; // r1
  bool v110; // cc
  unsigned int v111; // r2
  bool v112; // cc
  unsigned int v113; // r1
  int v114; // r1
  unsigned int v115; // r10
  int v116; // r0
  _DWORD *v117; // r1
  _WORD *v118; // r0
  int v119; // r1
  unsigned int v120; // r10
  int v121; // r0
  _DWORD *v122; // r1
  _WORD *i; // r0
  int v124; // r1
  int v125; // r1
  unsigned int v126; // r10
  int v127; // r0
  _DWORD *v128; // r1
  _WORD *j; // r0
  unsigned int v130; // r10
  int v131; // r0
  _DWORD *v132; // r1
  _WORD *k; // r0
  int v134; // r1
  int v135; // r2
  int v136; // r0
  int v137; // r11
  int v138; // r1
  unsigned int v139; // r10
  int v140; // r0
  unsigned int v141; // r3
  _DWORD *v142; // r1
  int v143; // r1
  __int16 *v144; // r0
  int v145; // r0
  _DWORD *v146; // r1
  __int16 v147; // r2
  int v148; // r3
  int v149; // r2
  unsigned int v150; // r1
  unsigned int v151; // r2
  bool v152; // cc
  int v153; // r11
  _DWORD *v154; // r0
  _WORD *v155; // r0
  _WORD *v156; // r1
  _DWORD *v157; // r0
  int v158; // r12
  unsigned int v159; // r2
  unsigned int v160; // r2
  unsigned int v161; // r3
  _WORD *v162; // r2
  unsigned __int16 *v163; // r1
  int v164; // r0
  int v165; // r12
  _DWORD *v166; // r1
  _WORD *v167; // r1
  _WORD *v168; // r2
  _DWORD *v169; // r1
  int v170; // r3
  unsigned int v171; // r3
  unsigned int v172; // r3
  unsigned int v173; // lr
  _WORD *v174; // r3
  unsigned int v175; // r3
  unsigned int v176; // r3
  unsigned int v177; // lr
  _WORD *v178; // r3
  int v179; // r3
  int v180; // lr
  _DWORD *v181; // r1
  int v182; // r1
  int v183; // r2
  _DWORD *v184; // r1
  int v185; // r12
  unsigned int v186; // r10
  _WORD *v187; // r12
  unsigned int v188; // r12
  unsigned int v189; // r10
  _WORD *v190; // r12
  unsigned int v191; // r12
  _DWORD *v192; // r1
  _WORD *v193; // r1
  _WORD *v194; // r2
  int v195; // r12
  int v196; // lr
  int v197; // r3
  _DWORD *v198; // r1
  _WORD *v199; // r1
  int v200; // r12
  _WORD *v201; // r2
  int v202; // lr
  int v203; // r3
  _DWORD *v204; // r1
  int v205; // lr
  int v206; // r3
  _WORD *v207; // r1
  _WORD *v208; // r2
  _DWORD *v209; // r1
  _WORD *v210; // r1
  _WORD *v211; // r2
  int v212; // lr
  int v213; // r3
  int v214; // [sp+20h] [bp-E0h]
  int v215; // [sp+24h] [bp-DCh]
  int v216; // [sp+24h] [bp-DCh]
  int v217; // [sp+24h] [bp-DCh]
  int v218; // [sp+28h] [bp-D8h]
  __int16 v219; // [sp+2Ch] [bp-D4h]
  int v220; // [sp+30h] [bp-D0h]
  int v221; // [sp+34h] [bp-CCh]
  int v222; // [sp+38h] [bp-C8h]
  int v223; // [sp+3Ch] [bp-C4h]
  int v224; // [sp+40h] [bp-C0h]
  int v225; // [sp+44h] [bp-BCh]
  int v226; // [sp+48h] [bp-B8h]
  int v227; // [sp+4Ch] [bp-B4h]
  signed int v228; // [sp+50h] [bp-B0h]
  int v229; // [sp+54h] [bp-ACh]
  int v230; // [sp+58h] [bp-A8h]
  int v231; // [sp+58h] [bp-A8h]
  int v232; // [sp+5Ch] [bp-A4h]
  int v233; // [sp+5Ch] [bp-A4h]
  int v234; // [sp+60h] [bp-A0h]
  int v235; // [sp+60h] [bp-A0h]
  int v236; // [sp+60h] [bp-A0h]
  int v237; // [sp+64h] [bp-9Ch]
  int v238; // [sp+64h] [bp-9Ch]
  int v239; // [sp+64h] [bp-9Ch]
  int v240; // [sp+68h] [bp-98h]
  int v241; // [sp+68h] [bp-98h]
  int v242; // [sp+68h] [bp-98h]
  int v243; // [sp+68h] [bp-98h]
  int v244; // [sp+6Ch] [bp-94h]
  int v245; // [sp+6Ch] [bp-94h]
  _DWORD *v246; // [sp+70h] [bp-90h]
  int v247; // [sp+78h] [bp-88h]
  int v248; // [sp+7Ch] [bp-84h]
  int v249; // [sp+80h] [bp-80h]
  unsigned int v250; // [sp+84h] [bp-7Ch]
  unsigned int v251; // [sp+88h] [bp-78h]
  int v252; // [sp+8Ch] [bp-74h]
  int v253; // [sp+90h] [bp-70h]
  int v254; // [sp+94h] [bp-6Ch]
  int v255; // [sp+98h] [bp-68h]
  int v256; // [sp+9Ch] [bp-64h]
  int v257; // [sp+A0h] [bp-60h]
  int v258; // [sp+A4h] [bp-5Ch]
  int v259; // [sp+A8h] [bp-58h]
  unsigned int v260; // [sp+B0h] [bp-50h]
  int v261; // [sp+B4h] [bp-4Ch]
  int v262; // [sp+B8h] [bp-48h]
  int v264; // [sp+C4h] [bp-3Ch]

  v13 = a10;
  v15 = a11;
  v16 = a4 == a9;
  if ( a4 == a9 )
    v16 = a5 == a10;
  if ( v16 )
    return sub_3324(a1, a2, a3, a4, a5, a6, a7, a8, a11, a12, a13);
  v262 = *(_DWORD *)(a1 + 20);
  if ( !v262 )
    return 7;
  if ( !a6 )
    return 2;
  v261 = *((_DWORD *)a6 + 2);
  if ( !v261 )
    return 101;
  v19 = a4 <= 0;
  if ( a4 > 0 )
    v19 = a5 <= 0;
  if ( !v19 )
  {
    v19 = a9 <= 0;
    if ( a9 > 0 )
      v19 = a10 <= 0;
  }
  if ( v19 )
    return 0;
  result = a6[2];
  v20 = result & 3;
  v260 = result;
  if ( v20 == 2 )
    result = 1;
  v256 = v20;
  if ( v20 != 2 )
  {
    v255 = a11 & 1;
    v21 = (a11 >> 1) & 1;
    v22 = (a11 >> 3) & 1;
    v23 = (a11 >> 2) & 1;
    v253 = (a11 >> 4) & 1;
    v254 = v22;
    if ( v253 )
      v22 = (int)a13;
    else
      v15 = (a11 >> 5) & 1;
    if ( ((a11 >> 4) & 1) != 0 )
    {
      v251 = (unsigned int)(v22 << 8) >> 24;
      v15 = 0;
    }
    v252 = v15;
    if ( v254 )
    {
      v250 = (unsigned __int8)a12;
      v222 = (unsigned __int8)(32 - a12);
      if ( !(_BYTE)a12 )
        return 0;
      if ( (unsigned __int8)a12 == 32 )
        v254 = 0;
    }
    v220 = 0;
    if ( v253 )
    {
      v221 = (unsigned __int8)(32 - v251);
      if ( v251 )
      {
        if ( v251 == 32 )
        {
          v219 = (__int16)a13;
          v220 = 1;
          v218 = (((unsigned __int16)a13 & 0xF800) << 11)
               | (32 * ((unsigned __int16)a13 & 0x7E0))
               | (unsigned __int8)a13 & 0x1F;
        }
      }
      else
      {
        v253 = 0;
      }
    }
    v24 = (__int16)(*(_WORD *)(a1 + 12) + a2);
    v264 = (__int16)(*(_WORD *)(a1 + 14) + a3);
    v25 = sub_104(a4, a9 << 16);
    v228 = sub_104(a5, a10 << 16);
    v26 = v24 + a4;
    v27 = *(unsigned __int16 *)(a1 + 4);
    if ( v27 < v24 )
      LOWORD(v27) = v24;
    v249 = (__int16)v27;
    v28 = *(unsigned __int16 *)(a1 + 6);
    if ( v28 < v264 )
      LOWORD(v28) = v264;
    v248 = (__int16)v28;
    v29 = *(unsigned __int16 *)(a1 + 8);
    if ( v26 <= v29 )
      LOWORD(v29) = v24 + a4;
    v30 = (__int16)v29;
    v31 = *(unsigned __int16 *)(a1 + 10);
    v32 = v30 - v249;
    if ( v264 + a5 <= v31 )
      LOWORD(v31) = v264 + a5;
    v33 = v32;
    v34 = v32 <= 0;
    if ( v32 > 0 )
    {
      v13 = (__int16)(v31 - v248);
      v34 = v13 <= 0;
    }
    if ( v34 )
      return 0;
    if ( !v21 )
      v30 = v249;
    v247 = (v25 * v32) >> 16;
    if ( v21 )
      v35 = v26 - v30;
    else
      v35 = v30 - v24;
    if ( v23 )
      v36 = v264 + a5 - (__int16)v31;
    else
      v36 = v248 - v264;
    v37 = v228 * v36;
    v38 = v25 * v35;
    v39 = a7 + (v38 >> 16);
    v40 = (unsigned __int16 *)(__int16)(a8 + HIWORD(v37));
    v225 = (unsigned __int16)v37 - (v228 >> 1);
    v226 = (unsigned __int16)v38 - (v25 >> 1);
    v41 = (__int16)v39;
    v259 = *a6;
    if ( (__int16)v39 + v247 > v259 )
      v33 = (__int16)sub_104(v25, (v259 - (__int16)v39) << 16);
    v258 = a6[1];
    if ( (int)v40 + ((v228 * v13) >> 16) > v258 )
      v13 = (__int16)sub_104(v228, (v258 - (_DWORD)v40) << 16);
    v42 = v33 <= 0;
    if ( v33 > 0 )
      v42 = v13 <= 0;
    if ( v42 )
      return 0;
    v43 = (v260 >> 4) & 1;
    if ( (v260 & 0x20) == 0 )
      v255 = 0;
    if ( v256 == 1 )
      v223 = (((unsigned __int16)a13 & 0xF800) << 11)
           | (32 * ((unsigned __int16)a13 & 0x7E0))
           | (unsigned __int8)a13 & 0x1F;
    if ( v253 )
      v223 = v251
           * ((((unsigned __int16)a13 & 0xF800) << 11)
            | (32 * ((unsigned __int16)a13 & 0x7E0))
            | (unsigned __int8)a13 & 0x1F);
    if ( v23 )
      v44 = (_DWORD *)(v262 + 4 * v248 + 4 * v13 - 4);
    else
      v44 = (_DWORD *)(v262 + 4 * v248);
    if ( v23 )
      v45 = &v44[-v13];
    else
      v45 = &v44[v13];
    v246 = v45;
    v227 = v225;
    if ( v252 )
    {
      v39 = v256;
      v46 = 1;
      if ( v256 || !a13 )
        goto LABEL_82;
      v39 = a13[2] & 3;
      v47 = v39 == 1;
      if ( v39 == 1 )
        v47 = v43 == 0;
      if ( !v47 || (v39 = v259, v259 != *a13) || (v39 = v258, v258 != a13[1]) )
LABEL_82:
        v46 = 0;
      if ( v46 )
      {
        if ( (a13[2] & 0x10) == 0 )
        {
          v238 = *((_DWORD *)a13 + 2) + 4 * (_DWORD)v40;
LABEL_113:
          if ( v44 == v246 )
            return 0;
          v227 += v228;
          v240 = *(_DWORD *)(v261 + 4 * (_DWORD)v40 + 4 * (v227 >> 16)) + 2 * v41;
          v234 = *(_DWORD *)(v238 + 4 * (v227 >> 16)) + v41;
          if ( v21 )
          {
            v48 = v44;
            if ( v23 )
              --v44;
            else
              ++v44;
            v49 = (_WORD *)(*v48 + 2 * v249 + 2 * v33 - 2);
            v50 = &v49[-v33];
          }
          else
          {
            v51 = v44;
            if ( v23 )
              --v44;
            else
              ++v44;
            v49 = (_WORD *)(*v51 + 2 * v249);
            v50 = &v49[v33];
          }
          v52 = v226;
          while ( 1 )
          {
            while ( 1 )
            {
              if ( v49 == v50 )
                goto LABEL_113;
              v52 += v25;
              v53 = v52 >> 16;
              v54 = *(unsigned __int8 *)(v234 + (v52 >> 16));
              if ( *(_BYTE *)(v234 + (v52 >> 16)) )
                break;
              if ( v21 )
                goto LABEL_110;
LABEL_111:
              ++v49;
            }
            if ( v254 )
              v54 = (v250 * v54) << 19 >> 24;
            if ( v54 == 32 )
            {
              LOWORD(v55) = *(_WORD *)(v240 + 2 * v53);
              if ( v21 )
                goto LABEL_101;
              goto LABEL_102;
            }
            if ( v54 )
            {
              v57 = ((unsigned __int8)(32 - v54) * (((*v49 & 0xF800) << 11) | (32 * (*v49 & 0x7E0)) | *v49 & 0x1F)
                   + v54
                   * (((*(_WORD *)(v240 + 2 * v53) & 0xF800) << 11)
                    | (32 * (*(_WORD *)(v240 + 2 * v53) & 0x7E0))
                    | *(_WORD *)(v240 + 2 * v53) & 0x1F)) >> 5;
              v55 = ((v57 & 0x7C00000) >> 11) | ((unsigned __int16)(v57 & 0xFC00) >> 5) | v57 & 0x1F;
              if ( v21 )
              {
LABEL_101:
                v56 = v49--;
                goto LABEL_103;
              }
LABEL_102:
              v56 = v49++;
LABEL_103:
              *v56 = v55;
            }
            else
            {
              if ( !v21 )
                goto LABEL_111;
LABEL_110:
              --v49;
            }
          }
        }
        v245 = v261 + 4 * (_DWORD)v40;
        v239 = *((_DWORD *)a13 + 2) + 4 * (_DWORD)v40;
        v232 = (int)v40 + *((_DWORD *)a13 + 3);
        v230 = (int)v40 + *((_DWORD *)a13 + 4);
        do
        {
          while ( 1 )
          {
            while ( 1 )
            {
LABEL_153:
              if ( v44 == v246 )
                return 0;
              v227 += v228;
              v58 = v227 >> 16;
              v59 = *(unsigned __int8 *)(v232 + (v227 >> 16));
              v60 = v41 > v59 ? v41 : *(unsigned __int8 *)(v232 + (v227 >> 16));
              v215 = (__int16)(*(unsigned __int8 *)(v230 + (v227 >> 16)) + (_WORD)v59 - v60);
              if ( v215 > 0 )
                break;
              if ( v23 )
                --v44;
              else
                ++v44;
            }
            v61 = v226;
            v235 = *(_DWORD *)(v239 + 4 * v58) + (__int16)(v60 - v59);
            v241 = *(_DWORD *)(v245 + 4 * v58) + 2 * v60;
            v62 = *v44;
            if ( !v21 )
              break;
            v63 = v62 + 2 * *(unsigned __int16 *)(a1 + 4) - 2;
            v64 = sub_104(v25, (v60 - v41) << 16);
            v66 = v44;
            if ( v23 )
              --v44;
            else
              ++v44;
            v67 = (_WORD *)(*v66 + 2 * v249 - 2 * v64 + 2 * v33 - 2);
            if ( v63 < (unsigned int)v67 )
              goto LABEL_150;
          }
          v63 = v62 + 2 * *(unsigned __int16 *)(a1 + 8);
          v68 = sub_104(v25, (v60 - v41) << 16);
          v69 = v44;
          if ( v23 )
            --v44;
          else
            ++v44;
          v67 = (_WORD *)(*v69 + 2 * v249 + 2 * v68);
        }
        while ( v63 <= (unsigned int)v67 );
        while ( 1 )
        {
          while ( 1 )
          {
LABEL_150:
            v74 = (int)v67 < (int)v63;
            if ( v67 != (_WORD *)v63 )
            {
              v61 += v25;
              v65 = v61 >> 16;
              v74 = v61 >> 16 < v215;
            }
            if ( !v74 )
              goto LABEL_153;
            v70 = *(unsigned __int8 *)(v235 + v65);
            if ( *(_BYTE *)(v235 + v65) )
              break;
            if ( v21 )
              goto LABEL_148;
LABEL_149:
            ++v67;
          }
          if ( v254 )
            v70 = (v250 * v70) << 19 >> 24;
          if ( v70 == 32 )
          {
            LOWORD(v71) = *(_WORD *)(v241 + 2 * v65);
            if ( v21 )
              goto LABEL_139;
            goto LABEL_140;
          }
          if ( v70 )
          {
            v73 = ((unsigned __int8)(32 - v70) * (((*v67 & 0xF800) << 11) | (32 * (*v67 & 0x7E0)) | *v67 & 0x1F)
                 + v70
                 * (((*(_WORD *)(v241 + 2 * v65) & 0xF800) << 11)
                  | (32 * (*(_WORD *)(v241 + 2 * v65) & 0x7E0))
                  | *(_WORD *)(v241 + 2 * v65) & 0x1F)) >> 5;
            v65 = v73 & 0xFC00;
            v71 = ((v73 & 0x7C00000) >> 11) | (v65 >> 5) | v73 & 0x1F;
            if ( v21 )
            {
LABEL_139:
              v72 = v67--;
              goto LABEL_141;
            }
LABEL_140:
            v72 = v67++;
LABEL_141:
            *v72 = v71;
          }
          else
          {
            if ( !v21 )
              goto LABEL_149;
LABEL_148:
            --v67;
          }
        }
      }
    }
    if ( v43 )
    {
      v229 = (int)v40 + *((_DWORD *)a6 + 5);
      v233 = (int)v40 + *((_DWORD *)a6 + 3);
      v75 = (int)v40 + *((_DWORD *)a6 + 4);
      v76 = v40;
      v231 = v75;
      if ( v256 )
        v39 = v261 + 4 * (_DWORD)v40;
      else
        v75 = v261 + 4 * (_DWORD)v40;
      if ( v256 )
        v237 = v39;
      else
        v76 = a6;
      if ( !v256 )
      {
        v244 = v75;
        v224 = v76[3];
      }
      v257 = v247 + v41;
      while ( 1 )
      {
        while ( 1 )
        {
          while ( 1 )
          {
            while ( 1 )
            {
LABEL_329:
              if ( v44 == v246 )
                return 0;
              v77 = v227 + v228;
              v227 += v228;
              if ( v256 )
                break;
              v214 = v77 >> 16;
              v78 = *(unsigned __int8 *)(v233 + (v77 >> 16));
              if ( v41 > v78 )
                v79 = v41;
              else
                v79 = v78;
              v80 = (__int16)(*(unsigned __int8 *)(v231 + v214) + (_WORD)v78 - v79);
              v81 = v257 - v79;
              if ( v257 - v79 < v80 )
                v81 = (__int16)v81;
              v216 = (__int16)(*(unsigned __int8 *)(v231 + v214) + (_WORD)v78 - v79);
              if ( v257 - v79 < v80 )
                v216 = v81;
              if ( v216 > 0 )
              {
                v82 = v226;
                v242 = *(_DWORD *)(v244 + 4 * v214) + 2 * (__int16)(v79 - v78);
                if ( v254 )
                {
                  v83 = *v44;
                  if ( v21 )
                  {
                    v84 = v83 + 2 * *(unsigned __int16 *)(a1 + 4) - 2;
                    v85 = sub_104(v25, (v79 - v41) << 16);
                    v86 = v44;
                    if ( v23 )
                      --v44;
                    else
                      ++v44;
                    v87 = (_WORD *)(*v86 + 2 * v249 - 2 * v85 + 2 * v33 - 2);
                    if ( v84 < (unsigned int)v87 )
                    {
LABEL_187:
                      v90 = dword_3118;
                      v91 = *(unsigned __int8 *)(v229 + v214);
                      if ( *(_BYTE *)(v229 + v214) )
                      {
                        while ( 1 )
                        {
                          v95 = (int)v87 < v84;
                          if ( v87 != (_WORD *)v84 )
                          {
                            v82 += v25;
                            v91 = v82 >> 16;
                            v95 = v82 >> 16 < v216;
                          }
                          if ( !v95 )
                            break;
                          v91 = *(unsigned __int16 *)(v242 + 2 * v91);
                          if ( v91 == v224 )
                          {
                            if ( v21 )
                              --v87;
                            else
                              ++v87;
                          }
                          else
                          {
                            if ( v220 )
                            {
                              v92 = v218;
                            }
                            else
                            {
                              v92 = ((v91 & 0xF800) << 11) | (32 * (v91 & 0x7E0)) | v91 & 0x1F;
                              if ( v253 )
                                v92 = v90 & ((v223 + v221 * v92) >> 5);
                            }
                            v93 = (v222 * (((*v87 & 0xF800) << 11) | (32 * (*v87 & 0x7E0)) | *v87 & 0x1F) + v250 * v92) >> 5;
                            v94 = ((v93 & 0x7C00000) >> 11) | ((unsigned __int16)(v93 & 0xFC00) >> 5) | v93 & 0x1F;
                            v91 = (int)v87;
                            if ( v21 )
                              --v87;
                            else
                              ++v87;
                            *(_WORD *)v91 = v94;
                          }
                        }
                      }
                      else
                      {
                        while ( 1 )
                        {
                          v99 = (int)v87 < v84;
                          if ( v87 != (_WORD *)v84 )
                          {
                            v82 += v25;
                            v91 = v82 >> 16;
                            v99 = v82 >> 16 < v216;
                          }
                          if ( !v99 )
                            break;
                          if ( v220 )
                          {
                            v96 = v218;
                          }
                          else
                          {
                            v96 = ((*(_WORD *)(v242 + 2 * v91) & 0xF800) << 11)
                                | (32 * (*(_WORD *)(v242 + 2 * v91) & 0x7E0))
                                | *(_WORD *)(v242 + 2 * v91) & 0x1F;
                            if ( v253 )
                              v96 = v90 & ((v223 + v221 * v96) >> 5);
                          }
                          v97 = (v222 * (((*v87 & 0xF800) << 11) | (32 * (*v87 & 0x7E0)) | *v87 & 0x1F) + v250 * v96) >> 5;
                          v98 = ((v97 & 0x7C00000) >> 11) | ((unsigned __int16)(v97 & 0xFC00) >> 5) | v97 & 0x1F;
                          v91 = (int)v87;
                          if ( v21 )
                            --v87;
                          else
                            ++v87;
                          *(_WORD *)v91 = v98;
                        }
                      }
                    }
                  }
                  else
                  {
                    v84 = v83 + 2 * *(unsigned __int16 *)(a1 + 8);
                    v88 = sub_104(v25, (v79 - v41) << 16);
                    v89 = v44;
                    if ( v23 )
                      --v44;
                    else
                      ++v44;
                    v87 = (_WORD *)(*v89 + 2 * v249 + 2 * v88);
                    if ( v84 > (unsigned int)v87 )
                      goto LABEL_187;
                  }
                }
                else if ( v253 )
                {
                  v100 = *v44;
                  if ( v21 )
                  {
                    v101 = v100 + 2 * *(unsigned __int16 *)(a1 + 4) - 2;
                    v102 = sub_104(v25, (v79 - v41) << 16);
                    v103 = v44;
                    if ( v23 )
                      --v44;
                    else
                      ++v44;
                    v104 = *v103 + 2 * v249 - 2 * v102 + 2 * v33 - 2;
                    if ( v101 < (unsigned int)v104 )
                      goto LABEL_228;
                  }
                  else
                  {
                    v101 = v100 + 2 * *(unsigned __int16 *)(a1 + 8);
                    v105 = sub_104(v25, (v79 - v41) << 16);
                    v106 = v44;
                    if ( v23 )
                      --v44;
                    else
                      ++v44;
                    v104 = *v106 + 2 * v249 + 2 * v105;
                    if ( v101 > (unsigned int)v104 )
                    {
LABEL_228:
                      v107 = *(unsigned __int8 *)(v229 + v214);
                      if ( *(_BYTE *)(v229 + v214) )
                      {
                        while ( 1 )
                        {
LABEL_241:
                          v110 = v104 < v101;
                          if ( v104 != v101 )
                          {
                            v82 += v25;
                            v107 = v82 >> 16;
                            v110 = v82 >> 16 < v216;
                          }
                          if ( !v110 )
                            goto LABEL_329;
                          v107 = *(unsigned __int16 *)(v242 + 2 * v107);
                          if ( v107 != v224 )
                            break;
                          if ( v21 )
                            v104 -= 2;
                          else
                            v104 += 2;
                        }
                        if ( v220 )
                        {
                          LOWORD(v108) = v219;
                          if ( v21 )
                            goto LABEL_233;
LABEL_234:
                          v107 = v104;
                          v104 += 2;
                        }
                        else
                        {
                          v109 = (v223 + v221 * (((v107 & 0xF800) << 11) | (32 * (v107 & 0x7E0)) | v107 & 0x1Fu)) >> 5;
                          v108 = ((v109 & 0x7C00000) >> 11) | ((unsigned __int16)(v109 & 0xFC00) >> 5) | v109 & 0x1F;
                          if ( !v21 )
                            goto LABEL_234;
LABEL_233:
                          v107 = v104;
                          v104 -= 2;
                        }
                        *(_WORD *)v107 = v108;
                        goto LABEL_241;
                      }
LABEL_250:
                      v112 = v104 < v101;
                      if ( v104 != v101 )
                      {
                        v82 += v25;
                        v107 = v82 >> 16;
                        v112 = v82 >> 16 < v216;
                      }
                      if ( !v112 )
                        continue;
                      if ( v220 )
                      {
                        LOWORD(v111) = v219;
                        if ( v21 )
                          goto LABEL_247;
LABEL_248:
                        v107 = v104;
                        v104 += 2;
                      }
                      else
                      {
                        v113 = (v223
                              + v221
                              * (((*(_WORD *)(v242 + 2 * v107) & 0xF800) << 11)
                               | (32 * (*(_WORD *)(v242 + 2 * v107) & 0x7E0))
                               | *(_WORD *)(v242 + 2 * v107) & 0x1Fu)) >> 5;
                        v111 = ((v113 & 0x7C00000) >> 11) | ((unsigned __int16)(v113 & 0xFC00) >> 5) | v113 & 0x1F;
                        if ( !v21 )
                          goto LABEL_248;
LABEL_247:
                        v107 = v104;
                        v104 -= 2;
                      }
                      *(_WORD *)v107 = v111;
                      goto LABEL_250;
                    }
                  }
                }
                else if ( *(_BYTE *)(v229 + v214) )
                {
                  v114 = *v44;
                  if ( v21 )
                  {
                    v115 = v114 + 2 * *(unsigned __int16 *)(a1 + 4) - 2;
                    v116 = sub_104(v25, (v79 - v41) << 16);
                    v117 = v44;
                    if ( v23 )
                      --v44;
                    else
                      ++v44;
                    v118 = (_WORD *)(*v117 + 2 * v249 - 2 * v116 + 2 * v33);
                    while ( (unsigned int)--v118 > v115 )
                    {
                      v82 += v25;
                      if ( v82 >> 16 >= v216 )
                        break;
                      v119 = *(unsigned __int16 *)(v242 + 2 * (v82 >> 16));
                      if ( v119 != v224 )
                        *v118 = v119;
                    }
                  }
                  else
                  {
                    v120 = v114 + 2 * *(unsigned __int16 *)(a1 + 8);
                    v121 = sub_104(v25, (v79 - v41) << 16);
                    v122 = v44;
                    if ( v23 )
                      --v44;
                    else
                      ++v44;
                    for ( i = (_WORD *)(*v122 + 2 * v249 + 2 * v121); (unsigned int)i < v120; ++i )
                    {
                      v82 += v25;
                      if ( v82 >> 16 >= v216 )
                        break;
                      v124 = *(unsigned __int16 *)(v242 + 2 * (v82 >> 16));
                      if ( v124 != v224 )
                        *i = v124;
                    }
                  }
                }
                else
                {
                  v125 = *v44;
                  if ( v21 )
                  {
                    v126 = v125 + 2 * *(unsigned __int16 *)(a1 + 4) - 2;
                    v127 = sub_104(v25, (v79 - v41) << 16);
                    v128 = v44;
                    if ( v23 )
                      --v44;
                    else
                      ++v44;
                    for ( j = (_WORD *)(*v128 + 2 * v249 - 2 * v127 + 2 * v33);
                          (unsigned int)--j > v126;
                          *j = *(_WORD *)(v242 + 2 * (v82 >> 16)) )
                    {
                      v82 += v25;
                      if ( v82 >> 16 >= v216 )
                        break;
                    }
                  }
                  else
                  {
                    v130 = v125 + 2 * *(unsigned __int16 *)(a1 + 8);
                    v131 = sub_104(v25, (v79 - v41) << 16);
                    v132 = v44;
                    if ( v23 )
                      --v44;
                    else
                      ++v44;
                    for ( k = (_WORD *)(*v132 + 2 * v249 + 2 * v131); (unsigned int)k < v130; ++k )
                    {
                      v82 += v25;
                      if ( v82 >> 16 >= v216 )
                        break;
                      *k = *(_WORD *)(v242 + 2 * (v82 >> 16));
                    }
                  }
                }
              }
              else
              {
                if ( !v23 )
                  goto LABEL_300;
LABEL_299:
                --v44;
              }
            }
            v134 = v77 >> 16;
            v135 = *(unsigned __int8 *)(v233 + v134);
            v136 = v41 > v135 ? v41 : *(unsigned __int8 *)(v233 + v134);
            v217 = (__int16)(*(unsigned __int8 *)(v231 + v134) + (_WORD)v135 - v136);
            if ( v217 > 0 )
              break;
            if ( v23 )
              goto LABEL_299;
LABEL_300:
            ++v44;
          }
          v137 = v226;
          v236 = *(_DWORD *)(v237 + 4 * v134) + (__int16)(v136 - v135);
          v138 = *v44;
          if ( v21 )
            break;
          v139 = v138 + 2 * *(unsigned __int16 *)(a1 + 8);
          v145 = sub_104(v25, (v136 - v41) << 16);
          v146 = v44;
          if ( v23 )
            --v44;
          else
            ++v44;
          v143 = *v146 + 2 * v249;
          v144 = (__int16 *)(v143 + 2 * v145);
          if ( v139 > (unsigned int)v144 )
            goto LABEL_326;
        }
        v139 = v138 + 2 * *(unsigned __int16 *)(a1 + 4) - 2;
        v140 = sub_104(v25, (v136 - v41) << 16);
        v142 = v44;
        if ( v23 )
          --v44;
        else
          ++v44;
        v143 = *v142 + 2 * v249;
        v144 = (__int16 *)(v143 - 2 * v140 + 2 * v33 - 2);
        if ( v139 < (unsigned int)v144 )
        {
          while ( 1 )
          {
LABEL_326:
            v152 = (int)v144 < (int)v139;
            if ( v144 != (__int16 *)v139 )
            {
              v137 += v25;
              v143 = v137 >> 16;
              v152 = v137 >> 16 < v217;
            }
            if ( !v152 )
              break;
            v143 = *(unsigned __int8 *)(v236 + v143);
            if ( v143 )
            {
              if ( v254 )
                v141 = v250;
              v147 = *v144;
              if ( v254 )
                v143 *= v141;
              v148 = ((v147 & 0xF800) << 11) | (32 * (v147 & 0x7E0));
              v149 = v147 & 0x1F;
              if ( v254 )
                v143 = (unsigned int)(v143 << 19) >> 24;
              v150 = ((32 - v143) * (v148 | (unsigned int)v149) + v143 * v223) >> 5;
              v141 = v150 & 0xFC00;
              v151 = ((v150 & 0x7C00000) >> 11) | (v141 >> 5) | v150 & 0x1F;
              v143 = (int)v144;
              if ( v21 )
                --v144;
              else
                ++v144;
              *(_WORD *)v143 = v151;
            }
            else if ( v21 )
            {
              --v144;
            }
            else
            {
              ++v144;
            }
          }
        }
      }
    }
    if ( v256 == 1 )
    {
      while ( v44 != v246 )
      {
        v227 += v228;
        v153 = *(_DWORD *)(v261 + 4 * (_DWORD)v40 + 4 * (v227 >> 16)) + v41;
        if ( v21 )
        {
          v154 = v44;
          if ( v23 )
            --v44;
          else
            ++v44;
          v155 = (_WORD *)(*v154 + 2 * v249 + 2 * v33 - 2);
          v156 = &v155[-v33];
        }
        else
        {
          v157 = v44;
          if ( v23 )
            --v44;
          else
            ++v44;
          v155 = (_WORD *)(*v157 + 2 * v249);
          v156 = &v155[v33];
        }
        v158 = v226;
        while ( v155 != v156 )
        {
          v158 += v25;
          v159 = *(unsigned __int8 *)(v153 + (v158 >> 16));
          if ( *(_BYTE *)(v153 + (v158 >> 16)) )
          {
            if ( v254 )
              v159 = (v250 * v159) << 19 >> 24;
            v160 = ((32 - v159) * (((*v155 & 0xF800) << 11) | (32 * (*v155 & 0x7E0)) | *v155 & 0x1F) + v159 * v223) >> 5;
            v161 = ((v160 & 0x7C00000) >> 11) | ((unsigned __int16)(v160 & 0xFC00) >> 5) | v160 & 0x1F;
            v162 = v155;
            if ( v21 )
              --v155;
            else
              ++v155;
            *v162 = v161;
          }
          else if ( v21 )
          {
            --v155;
          }
          else
          {
            ++v155;
          }
        }
      }
      return 0;
    }
    if ( v256 )
      return 0;
    v163 = (unsigned __int16 *)v255;
    if ( v255 )
      v163 = a6;
    v164 = v261 + 4 * (_DWORD)v40;
    if ( v255 )
      v224 = v163[3];
    if ( v254 )
    {
      while ( v44 != v246 )
      {
        v165 = v226;
        v227 += v228;
        v243 = *(_DWORD *)(v164 + 4 * (v227 >> 16)) + 2 * v41;
        if ( v21 )
        {
          v166 = v44;
          if ( v23 )
            --v44;
          else
            ++v44;
          v167 = (_WORD *)(*v166 + 2 * v249 + 2 * v33 - 2);
          v168 = &v167[-v33];
        }
        else
        {
          v169 = v44;
          if ( v23 )
            --v44;
          else
            ++v44;
          v167 = (_WORD *)(*v169 + 2 * v249);
          v168 = &v167[v33];
        }
        if ( v255 )
        {
          while ( v167 != v168 )
          {
            v165 += v25;
            v170 = *(unsigned __int16 *)(v243 + 2 * (v165 >> 16));
            if ( v170 == v224 )
            {
              if ( v21 )
                --v167;
              else
                ++v167;
            }
            else
            {
              if ( v220 )
              {
                v171 = v218;
              }
              else
              {
                v171 = ((v170 & 0xF800) << 11) | (32 * (v170 & 0x7E0)) | v170 & 0x1F;
                if ( v253 )
                  v171 = dword_3118 & ((v223 + v221 * v171) >> 5);
              }
              v172 = (v222 * (((*v167 & 0xF800) << 11) | (32 * (*v167 & 0x7E0)) | *v167 & 0x1F) + v250 * v171) >> 5;
              v173 = ((v172 & 0x7C00000) >> 11) | ((unsigned __int16)(v172 & 0xFC00) >> 5) | v172 & 0x1F;
              v174 = v167;
              if ( v21 )
                --v167;
              else
                ++v167;
              *v174 = v173;
            }
          }
        }
        else
        {
          while ( v167 != v168 )
          {
            if ( v220 )
            {
              v175 = v218;
            }
            else
            {
              v165 += v25;
              v175 = ((*(_WORD *)(v243 + 2 * (v165 >> 16)) & 0xF800) << 11)
                   | (32 * (*(_WORD *)(v243 + 2 * (v165 >> 16)) & 0x7E0))
                   | *(_WORD *)(v243 + 2 * (v165 >> 16)) & 0x1F;
              if ( v253 )
                v175 = dword_3118 & ((v223 + v221 * v175) >> 5);
            }
            v176 = (v222 * (((*v167 & 0xF800) << 11) | (32 * (*v167 & 0x7E0)) | *v167 & 0x1F) + v250 * v175) >> 5;
            v177 = ((v176 & 0x7C00000) >> 11) | ((unsigned __int16)(v176 & 0xFC00) >> 5) | v176 & 0x1F;
            v178 = v167;
            if ( v21 )
              --v167;
            else
              ++v167;
            *v178 = v177;
          }
        }
      }
      return 0;
    }
    if ( !v253 )
    {
      if ( v255 )
      {
        if ( v21 )
        {
          while ( v44 != v246 )
          {
            v192 = v44;
            if ( v23 )
              --v44;
            else
              ++v44;
            v227 += v228;
            v193 = (_WORD *)(*v192 + 2 * v249 + 2 * v33 - 2);
            v194 = &v193[-v33];
            v195 = v226;
            v196 = *(_DWORD *)(v164 + 4 * (v227 >> 16)) + 2 * v41;
            while ( v193 != v194 )
            {
              v195 += v25;
              v197 = *(unsigned __int16 *)(v196 + 2 * (v195 >> 16));
              if ( v197 != v224 )
                *v193 = v197;
              --v193;
            }
          }
        }
        else
        {
          while ( v44 != v246 )
          {
            v198 = v44;
            if ( v23 )
              --v44;
            else
              ++v44;
            v199 = (_WORD *)(*v198 + 2 * v249);
            v227 += v228;
            v200 = v226;
            v201 = &v199[v33];
            v202 = *(_DWORD *)(v164 + 4 * (v227 >> 16)) + 2 * v41;
            while ( v199 != v201 )
            {
              v200 += v25;
              v203 = *(unsigned __int16 *)(v202 + 2 * (v200 >> 16));
              if ( v203 != v224 )
                *v199 = v203;
              ++v199;
            }
          }
        }
      }
      else if ( v21 )
      {
        while ( v44 != v246 )
        {
          v204 = v44;
          if ( v23 )
            --v44;
          else
            ++v44;
          v227 += v228;
          v205 = *(_DWORD *)(v164 + 4 * (v227 >> 16)) + 2 * v41;
          v206 = v226;
          v207 = (_WORD *)(*v204 + 2 * v249 + 2 * v33 - 2);
          v208 = &v207[-v33];
          while ( v207 != v208 )
          {
            v206 += v25;
            *v207-- = *(_WORD *)(v205 + 2 * (v206 >> 16));
          }
        }
      }
      else
      {
        while ( v44 != v246 )
        {
          v209 = v44;
          if ( v23 )
            --v44;
          else
            ++v44;
          v210 = (_WORD *)(*v209 + 2 * v249);
          v227 += v228;
          v211 = &v210[v33];
          v212 = *(_DWORD *)(v164 + 4 * (v227 >> 16)) + 2 * v41;
          v213 = v226;
          while ( v210 != v211 )
          {
            v213 += v25;
            *v210++ = *(_WORD *)(v212 + 2 * (v213 >> 16));
          }
        }
      }
      return 0;
    }
LABEL_431:
    if ( v44 == v246 )
      return 0;
    v179 = v226;
    v227 += v228;
    v180 = *(_DWORD *)(v164 + 4 * (v227 >> 16)) + 2 * v41;
    if ( v21 )
    {
      v181 = v44;
      if ( v23 )
        --v44;
      else
        ++v44;
      v182 = *v181 + 2 * v249 + 2 * v33 - 2;
      v183 = v182 - 2 * v33;
    }
    else
    {
      v184 = v44;
      if ( v23 )
        --v44;
      else
        ++v44;
      v182 = *v184 + 2 * v249;
      v183 = v182 + 2 * v33;
    }
    if ( v255 )
    {
      while ( 1 )
      {
        while ( 1 )
        {
          if ( v182 == v183 )
            goto LABEL_431;
          v179 += v25;
          v185 = *(unsigned __int16 *)(v180 + 2 * (v179 >> 16));
          if ( v185 != v224 )
            break;
          if ( v21 )
            v182 -= 2;
          else
            v182 += 2;
        }
        if ( v220 )
        {
          LOWORD(v186) = v219;
          if ( v21 )
            goto LABEL_415;
        }
        else
        {
          v188 = (v223 + v221 * (((v185 & 0xF800) << 11) | (32 * (v185 & 0x7E0)) | v185 & 0x1Fu)) >> 5;
          v186 = ((v188 & 0x7C00000) >> 11) | ((unsigned __int16)(v188 & 0xFC00) >> 5) | v188 & 0x1F;
          if ( v21 )
          {
LABEL_415:
            v187 = (_WORD *)v182;
            v182 -= 2;
            goto LABEL_417;
          }
        }
        v187 = (_WORD *)v182;
        v182 += 2;
LABEL_417:
        *v187 = v186;
      }
    }
    while ( 1 )
    {
      if ( v182 == v183 )
        goto LABEL_431;
      if ( v220 )
      {
        LOWORD(v189) = v219;
        if ( v21 )
          goto LABEL_427;
      }
      else
      {
        v179 += v25;
        v191 = (v223
              + v221
              * (((*(_WORD *)(v180 + 2 * (v179 >> 16)) & 0xF800) << 11)
               | (32 * (*(_WORD *)(v180 + 2 * (v179 >> 16)) & 0x7E0))
               | *(_WORD *)(v180 + 2 * (v179 >> 16)) & 0x1Fu)) >> 5;
        v189 = ((v191 & 0x7C00000) >> 11) | ((unsigned __int16)(v191 & 0xFC00) >> 5) | v191 & 0x1F;
        if ( v21 )
        {
LABEL_427:
          v190 = (_WORD *)v182;
          v182 -= 2;
          goto LABEL_429;
        }
      }
      v190 = (_WORD *)v182;
      v182 += 2;
LABEL_429:
      *v190 = v189;
    }
  }
  return result;
}

