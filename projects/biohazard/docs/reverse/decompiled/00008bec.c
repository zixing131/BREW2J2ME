signed int __fastcall sub_8BEC(int a1, int a2, int a3, int a4)
{
  int v5; // r1
  int v6; // r0
  int v7; // r4
  int v8; // r7
  int v9; // r10
  int v10; // r11
  int v11; // r8
  int v12; // r9
  int v13; // r1
  int v14; // r2
  int v15; // lr
  int v16; // r12
  signed int result; // r0
  int v18; // r3
  signed int v19; // r5
  int v20; // lr
  int v21; // r12
  int v22; // r3
  int v23; // r2
  int v24; // r3
  int v25; // r1
  int v26; // r5
  int v27; // r0
  int v28; // r0
  int v29; // r2
  unsigned __int16 *v30; // r0
  int v31; // r7
  int v32; // r11
  signed int v33; // r10
  int v34; // r0
  int v35; // r6
  int v36; // r4
  int v37; // r1
  int v38; // r9
  unsigned int v39; // r1
  unsigned int v40; // r0
  int v41; // r5
  bool v42; // cc
  int v43; // r0
  unsigned int v44; // r1
  unsigned int v45; // r0
  bool v46; // cc
  int v47; // r8
  int v48; // r0
  bool v49; // nf
  unsigned int v50; // r1
  unsigned int v51; // r0
  int v52; // r0
  unsigned int v53; // r1
  unsigned int v54; // r0
  int v55; // r3
  int v56; // r8
  bool v57; // cc
  int v58; // r9
  unsigned int v59; // r0
  unsigned int v60; // r0
  int v61; // r1
  int v62; // r2
  unsigned int v63; // r0
  _WORD *v64; // r2
  _WORD *v65; // r12
  __int16 v66; // r0
  __int16 v67; // r3
  unsigned int v68; // r3
  __int16 v69; // [sp+0h] [bp-8Ch]
  int v70; // [sp+4h] [bp-88h]
  int *v71; // [sp+8h] [bp-84h]
  int v72; // [sp+Ch] [bp-80h]
  int v73; // [sp+10h] [bp-7Ch]
  int v74; // [sp+18h] [bp-74h]
  int v75; // [sp+1Ch] [bp-70h]
  int v76; // [sp+28h] [bp-64h]
  signed int v77; // [sp+2Ch] [bp-60h]
  int v78; // [sp+30h] [bp-5Ch]
  int v79; // [sp+34h] [bp-58h]
  int v80; // [sp+38h] [bp-54h]
  int v81; // [sp+3Ch] [bp-50h]
  unsigned int v82; // [sp+40h] [bp-4Ch]
  int v83; // [sp+44h] [bp-48h]
  int v84; // [sp+48h] [bp-44h]
  int v85; // [sp+4Ch] [bp-40h]
  int v86; // [sp+50h] [bp-3Ch]
  int v87; // [sp+54h] [bp-38h]
  int v88; // [sp+58h] [bp-34h]
  int v89; // [sp+5Ch] [bp-30h]
  int v90; // [sp+60h] [bp-2Ch]
  int v91; // [sp+64h] [bp-28h]
  unsigned int v92; // [sp+68h] [bp-24h]
  int v93; // [sp+70h] [bp-1Ch]
  int v94; // [sp+74h] [bp-18h]
  int v95; // [sp+78h] [bp-14h]

  v91 = *(__int16 *)(a4 + 12);
  v90 = *(__int16 *)(a4 + 14);
  v89 = *(__int16 *)(a4 + 16);
  v88 = *(__int16 *)(a4 + 18);
  v87 = *(__int16 *)(a4 + 20);
  v86 = *(__int16 *)(a4 + 22);
  v85 = *(__int16 *)(a4 + 24);
  v84 = *(__int16 *)(a4 + 26);
  v5 = *(_DWORD *)(a1 + 2096);
  v6 = *(unsigned __int16 *)(a4 + 2) - 1;
  v7 = v5 - 4 * v6;
  v83 = *(_DWORD *)(a1 + 2108) - 4 * v6;
  v8 = *(_DWORD *)(a1 + 2100);
  v82 = *(_DWORD *)(a1 + 2104);
  v9 = sub_197A8(v8) >> 8;
  v10 = sub_196D8(v8) >> 8;
  v11 = sub_197A8(*(__int16 *)(a4 + 6)) >> 8;
  v12 = sub_196D8(*(__int16 *)(a4 + 6)) >> 8;
  v95 = *(_DWORD *)(a1 + 2088);
  v13 = 4 * v95;
  v94 = *(_DWORD *)(a1 + 2092);
  v14 = 4 * v94;
  v15 = (4 * v89 - 4 * v95) * v10;
  v16 = 4 * v88 - 4 * v94;
  result = ((4 * v91 - 4 * v95) * v10 + (4 * v90 - 4 * v94) * v9) >> 8;
  v18 = (v15 + v16 * v9) >> 8;
  v19 = result;
  if ( v18 < result )
    v19 = (v15 + v16 * v9) >> 8;
  if ( v18 > result )
    result = (v15 + v16 * v9) >> 8;
  v20 = (4 * v87 - v13) * v10;
  v21 = 4 * v86 - v14;
  v22 = (v20 + v21 * v9) >> 8;
  if ( v22 < v19 )
    v19 = (v20 + v21 * v9) >> 8;
  if ( v22 > result )
    result = (v20 + v21 * v9) >> 8;
  v23 = 4 * v84 - v14;
  v24 = (4 * v85 - v13) * v10;
  v25 = (v24 + v23 * v9) >> 8;
  if ( v25 < v19 )
    v19 = (v24 + v23 * v9) >> 8;
  if ( v25 > result )
    result = (v24 + v23 * v9) >> 8;
  if ( result > 0 )
  {
    result = (((v7 - v83) << 8) - sub_104(result, v82 * (v7 << 8))) >> 8;
    v77 = result;
    v93 = v7 - v83;
    if ( result > 0 )
    {
      if ( v19 <= 0 || (v26 = ((v93 << 8) - sub_104(v19, v82 * (v7 << 8))) >> 8, v26 < 0) )
        v26 = 0;
      v27 = *(_DWORD *)(a1 + 2200);
      v75 = 4 * *(unsigned __int8 *)(v27 + 19);
      v69 = *(_WORD *)(v27 + 16);
      v28 = 4 * (v95 - v91);
      v29 = 4 * (v94 - v90);
      v79 = v12 * v28 + v11 * v29;
      v78 = v11 * v28 - v12 * v29;
      v81 = sub_197A8(v8 - *(__int16 *)(a4 + 6)) >> 8;
      v80 = sub_196D8(v8 - *(__int16 *)(a4 + 6)) >> 8;
      v30 = (unsigned __int16 *)sub_11DD8(a3, *(_DWORD *)(a4 + 8));
      v31 = *(unsigned __int16 *)(a1 + 2204);
      v73 = *v30 << 10;
      v32 = v30[1] << 10;
      v71 = (int *)(*(_DWORD *)(a2 + 20)
                  + 4 * *(unsigned __int16 *)(a1 + 2210)
                  + 4 * *(unsigned __int16 *)(a1 + 2206)
                  - 4
                  - 4 * v26);
      v76 = v26;
      v92 = (v82 * v7) << 8;
      v70 = *((_DWORD *)v30 + 2);
      while ( 1 )
      {
        result = v77;
        if ( v76 > v77 )
          return result;
        v33 = sub_104(v93 - v76, v92);
        v34 = sub_104(v82, v33);
        v35 = v34 * v81 / -256;
        v36 = v80 * v34 / -256;
        v37 = *(unsigned __int16 *)(a1 + 2204);
        v38 = v79 + v80 * v33 / 256 - v35 * v37 / 2;
        v74 = v78 - v81 * v33 / 256 - v36 * v37 / 2;
        if ( v38 >= 0 )
        {
          if ( v38 < v73 )
          {
            v41 = 0;
            goto LABEL_32;
          }
          v42 = v35 < 0;
          if ( v35 < 0 )
            v42 = v38 + v31 * v35 < v73;
          if ( !v42 )
          {
LABEL_29:
            v41 = v31;
            goto LABEL_32;
          }
          v39 = v38 - v73 - v35;
          v40 = v34 * v81 / 256;
        }
        else
        {
          if ( v35 <= 0 || v38 + v31 * v35 < 0 )
            goto LABEL_29;
          v39 = v35 - v38 - 1;
          v40 = v34 * v81 / -256;
        }
        v41 = sub_104(v40, v39);
LABEL_32:
        if ( v41 >= v31 )
          goto LABEL_45;
        v43 = v74 + v36 * v41;
        if ( v43 >= 0 )
        {
          if ( v43 < v32 )
            goto LABEL_45;
          v46 = v36 < 0;
          if ( v36 < 0 )
            v46 = v43 + (v31 - v41) * v36 < v32;
          if ( !v46 )
          {
LABEL_42:
            v41 = v31;
            goto LABEL_45;
          }
          v44 = v43 - v32 - v36;
          v45 = -v36;
        }
        else
        {
          if ( v36 <= 0 || v43 + (v31 - v41) * v36 < 0 )
            goto LABEL_42;
          v44 = v36 - v43 - 1;
          v45 = v36;
        }
        v41 += sub_104(v45, v44);
LABEL_45:
        if ( v41 >= v31 )
        {
          v47 = 0;
          goto LABEL_61;
        }
        v48 = v38 + v31 * v35;
        v49 = v48 < 0;
        if ( v48 < 0 )
          v48 += v35;
        if ( v49 )
        {
          v50 = -(v48 + 1);
          v51 = -v35;
        }
        else
        {
          if ( v48 < v73 )
          {
            v47 = 0;
            goto LABEL_55;
          }
          v50 = v48 - v73 + v35 - 1;
          v51 = v35;
        }
        v47 = sub_104(v51, v50);
LABEL_55:
        if ( v41 + v47 >= v31 )
          goto LABEL_61;
        v52 = v74 + v31 * v36 - v36 * v47;
        if ( v52 >= 0 )
        {
          if ( v52 < v32 )
            goto LABEL_61;
          v53 = v52 - v32 + v36 - 1;
          v54 = v36;
        }
        else
        {
          v53 = -(v52 + v36 + 1);
          v54 = -v36;
        }
        v47 += sub_104(v54, v53);
LABEL_61:
        v55 = v31 - v41 - v47;
        v56 = v38 + v41 * v35;
        v72 = v55;
        v57 = v55 <= 0;
        if ( v55 <= 0 )
          v55 = (int)v71;
        v58 = v74 + v41 * v36;
        if ( v57 )
        {
          v71 = (int *)(v55 - 4);
        }
        else
        {
          if ( v75 <= v33 >> 8 )
          {
            v60 = sub_104(0x64u, *(unsigned __int8 *)(*(_DWORD *)(a1 + 2200) + 18) * 32 * ((v33 >> 8) - v75));
            v59 = sub_104(0x640u, v60);
            if ( v59 > 0x20 )
              v59 = 32;
          }
          else
          {
            v59 = 0;
          }
          v61 = v59 * (((v69 & 0xF800) << 11) | (32 * (v69 & 0x7E0)) | v69 & 0x1F);
          v62 = *v71--;
          v63 = 32 - v59;
          v64 = (_WORD *)(v62 + 2 * *(unsigned __int16 *)(a1 + 2208) + 2 * v41);
          v65 = &v64[v72];
          if ( v63 )
          {
            if ( v63 == 32 )
            {
              while ( v64 < v65 )
              {
                v66 = *(_WORD *)(*(_DWORD *)(v70 + 4 * (v58 >> 10)) + 2 * (v56 >> 10));
                v56 += v35;
                v58 += v36;
                *v64++ = v66;
              }
            }
            else
            {
              while ( v64 < v65 )
              {
                v67 = *(_WORD *)(*(_DWORD *)(v70 + 4 * (v58 >> 10)) + 2 * (v56 >> 10));
                v56 += v35;
                v58 += v36;
                v68 = (v61 + v63 * (((v67 & 0xF800) << 11) | (32 * (v67 & 0x7E0)) | v67 & 0x1F)) >> 5;
                *v64++ = ((v68 & 0x7C00000) >> 11) | ((unsigned __int16)(v68 & 0xFC00) >> 5) | v68 & 0x1F;
              }
            }
          }
          else
          {
            while ( v64 < v65 )
              *v64++ = v69;
          }
        }
        ++v76;
      }
    }
  }
  return result;
}

