int __fastcall sub_D7A8(int a1, int a2, int a3)
{
  __int16 v3; // r9
  int v5; // r1
  int result; // r0
  bool v8; // cc
  _DWORD *v9; // r7
  _WORD *v10; // r4
  int v11; // r0
  bool v12; // zf
  bool v13; // zf
  unsigned __int16 *v14; // r10
  int v15; // r0
  unsigned __int16 *v16; // r8
  bool v17; // zf
  int v18; // r1
  int v19; // r2
  int v20; // r0
  bool v21; // zf
  int v22; // r0
  __int16 v23; // r11
  int v24; // r11
  int v25; // r8
  int v26; // r12
  int v27; // r0
  bool v28; // zf
  int v29; // r11
  int v30; // r9
  int v31; // r8
  __int16 v32; // r10
  int i; // r8
  bool v34; // cf
  unsigned __int16 *v35; // r8
  int v36; // r12
  char *v37; // r7
  signed int v38; // r0
  int v39; // r5
  unsigned __int16 *v40; // r8
  bool v41; // zf
  unsigned __int16 *v42; // r9
  int v43; // r1
  unsigned __int16 *v44; // r0
  unsigned int v45; // r0
  char *v46; // r0
  int v47; // r9
  int v48; // r7
  bool v49; // zf
  int v50; // r1
  _DWORD *v51; // r1
  int v52; // r0
  bool v53; // zf
  int v54; // r0
  int v55; // [sp+1Ch] [bp-50h]
  unsigned __int16 *v56; // [sp+20h] [bp-4Ch]
  int v57; // [sp+24h] [bp-48h]
  int v58; // [sp+2Ch] [bp-40h]
  int v59; // [sp+30h] [bp-3Ch]
  _BYTE v60[8]; // [sp+34h] [bp-38h] BYREF
  unsigned __int16 v61; // [sp+3Ch] [bp-30h]
  unsigned __int8 v62; // [sp+45h] [bp-27h]
  int v63; // [sp+48h] [bp-24h]
  int v64; // [sp+4Ch] [bp-20h]
  int v65; // [sp+50h] [bp-1Ch]
  int v66; // [sp+54h] [bp-18h]
  int v67; // [sp+58h] [bp-14h]
  int v68; // [sp+5Ch] [bp-10h]
  int v69; // [sp+60h] [bp-Ch]
  int v70; // [sp+64h] [bp-8h]
  int v71; // [sp+68h] [bp-4h]

  v69 = a1;
  v70 = a2;
  v71 = a3;
  v5 = *(_DWORD *)(a1 + 2224);
  result = *(__int16 *)(dword_E1C0 + v5);
  v8 = result <= 0;
  if ( result >= 0 )
    v8 = *(__int16 *)(v5 + 540) <= result;
  if ( !v8 )
  {
    sub_12F30(v60, v5, *(unsigned __int16 *)(dword_E1C0 + v5));
    v63 = v62;
    v9 = (_DWORD *)(*(_DWORD *)(a1 + 2196) + 116 * v62);
    v10 = (_WORD *)(a1 + 2048);
    v11 = *(unsigned __int8 *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_E1C4 + 0xFFFFFFFC + 55316) + 192))()
                                         + 1888)
                             + 420);
    v12 = v11 == 0;
    if ( !v11 )
      v12 = *(_BYTE *)(a1 + 2125) == 0;
    if ( v12 )
      v12 = *(_BYTE *)(a1 + 2140) == 0;
    if ( !v12 )
      goto LABEL_44;
    v13 = *((_BYTE *)v9 + 4) == 0;
    if ( !*((_BYTE *)v9 + 4) )
      v13 = *(_BYTE *)(a1 + 2160) == 0;
    if ( !v13 )
    {
      if ( *(_BYTE *)(a1 + 2160) == 1 )
      {
        v56 = (unsigned __int16 *)sub_11DD8(v71, dword_E1D0);
        if ( v56 )
        {
          v29 = *(unsigned __int16 *)(a1 + 2204) >> 1;
          v30 = 80;
          v31 = *(unsigned __int16 *)(a1 + 2206) - *(_DWORD *)(a1 + 2096) + *(_DWORD *)(a1 + 2108) - 80;
          sub_10C58(
            a2,
            *(__int16 *)(a1 + 2208),
            *(__int16 *)(a1 + 2210),
            *(__int16 *)(a1 + 2204),
            (__int16)v31,
            0,
            0,
            0);
          sub_10C58(
            a2,
            *(__int16 *)(a1 + 2208),
            (__int16)(v31 + 160 + *(_WORD *)(a1 + 2210)),
            *(__int16 *)(a1 + 2204),
            (__int16)(*(_WORD *)(a1 + 2206) - v31 - 160),
            0,
            0,
            0);
          v32 = v31 + 80;
          v55 = -157;
          for ( i = 0; i <= v30; ++i )
          {
            v66 = (__int16)(v29 - v30);
            v65 = v66;
            sub_10C58(a2, *(__int16 *)(a1 + 2208), (__int16)(*(_WORD *)(a1 + 2210) + v32 + i), v66, 1, 0, 0, 0);
            sub_10C58(
              a2,
              (__int16)(*(_WORD *)(a1 + 2208) + v29 + v30),
              (__int16)(*(_WORD *)(a1 + 2210) + v32 + i),
              v65,
              1,
              0,
              0,
              0);
            if ( i > 0 )
            {
              sub_10C58(a2, *(__int16 *)(a1 + 2208), (__int16)(*(_WORD *)(a1 + 2210) + v32 - i), v66, 1, 0, 0, 0);
              sub_10C58(
                a2,
                (__int16)(*(_WORD *)(a1 + 2208) + v29 + v30),
                (__int16)(*(_WORD *)(a1 + 2210) + v32 - i),
                v66,
                1,
                0,
                0,
                0);
            }
            if ( v55 >= 0 )
            {
              v55 += 4 * (i - v30) + 10;
              if ( i < v30 )
              {
                v64 = (__int16)(v29 - i);
                sub_10C58(a2, *(__int16 *)(a1 + 2208), (__int16)(*(_WORD *)(a1 + 2210) + v32 + v30), v64, 1, 0, 0, 0);
                sub_10C58(
                  a2,
                  (__int16)(*(_WORD *)(a1 + 2208) + v29 + i),
                  (__int16)(*(_WORD *)(a1 + 2210) + v32 + v30),
                  v64,
                  1,
                  0,
                  0,
                  0);
                sub_10C58(a2, *(__int16 *)(a1 + 2208), (__int16)(*(_WORD *)(a1 + 2210) + v32 - v30), v64, 1, 0, 0, 0);
                sub_10C58(
                  a2,
                  (__int16)(*(_WORD *)(a1 + 2208) + v29 + i),
                  (__int16)(*(_WORD *)(a1 + 2210) + v32 - v30),
                  v64,
                  1,
                  0,
                  0,
                  0);
              }
              --v30;
            }
            else
            {
              v55 += 4 * i + 6;
            }
          }
          sub_3324(
            a2,
            *(_WORD *)(a1 + 2208)
          + ((*(unsigned __int16 *)(a1 + 2204) - *v56 + (*(unsigned __int16 *)(a1 + 2204) < (unsigned int)*v56)) >> 1),
            *(_WORD *)(a1 + 2210)
          + *(_WORD *)(a1 + 2206)
          - *(_WORD *)(a1 + 2096)
          + *(_WORD *)(a1 + 2108)
          - ((int)v56[1] >> 1),
            (__int16)*v56,
            (__int16)v56[1],
            v56,
            0,
            0,
            1u,
            0,
            0);
        }
      }
LABEL_44:
      if ( v63 )
        goto LABEL_52;
      v34 = 1;
      if ( *(_BYTE *)(a1 + 2130) )
        v34 = (unsigned int)*(unsigned __int8 *)(a1 + 2131) >= v9[14];
      if ( v34 )
      {
LABEL_52:
        result = *(unsigned __int8 *)(a1 + 2160);
        if ( !*(_BYTE *)(a1 + 2160) )
        {
          v40 = (unsigned __int16 *)sub_11DD8(v71, *v9);
          if ( !*(_BYTE *)(a1 + 2130) )
            goto LABEL_67;
          v41 = *((_BYTE *)v9 + 5) == 0;
          if ( !*((_BYTE *)v9 + 5) )
            v41 = *(_BYTE *)(a1 + 2131) == 0;
          if ( v41 )
            v41 = *((_BYTE *)v9 + 4) == 0;
          if ( (!v41
             || (v42 = (unsigned __int16 *)sub_11DD8(v71, dword_E1D4),
                 sub_1DC(*((unsigned __int8 *)v9 + 12), *(_DWORD *)(a1 + 2136)),
                 v44 = (unsigned __int16 *)sub_11DD8(v71, *((unsigned __int8 *)v9 + v43 + 13) + 4111),
                 sub_3324(
                   a2,
                   *(_WORD *)(a1 + 2208) + (*(_WORD *)(a1 + 2204) >> 1) + *((_WORD *)v9 + 4),
                   *(_WORD *)(a1 + 2210) + *(_WORD *)(a1 + 2206) - v40[1] + *((_WORD *)v9 + 5),
                   (__int16)*v42,
                   (__int16)v42[1],
                   v42,
                   0,
                   0,
                   0x21u,
                   0,
                   v44),
                 *(_BYTE *)(a1 + 2130)))
            && (v45 = *(unsigned __int8 *)(a1 + 2131), v45 < v9[14]) )
          {
            v46 = (char *)v9 + 6 * v45;
            v47 = (*(unsigned __int16 *)(a1 + 2204) >> 1) + *((__int16 *)v46 + 30);
            v48 = v40[1] - *((__int16 *)v46 + 31);
          }
          else
          {
LABEL_67:
            if ( *(_BYTE *)(a1 + 2152) || (*(_DWORD *)(a1 + 2116) & 0xFFF) == 0 )
              goto LABEL_70;
            v49 = *(_BYTE *)(a1 + 2125) == 0;
            if ( !*(_BYTE *)(a1 + 2125) )
              v49 = *(_BYTE *)(a1 + 2140) == 0;
            if ( v49 )
              sub_1DC(v9[5], *(_DWORD *)(a1 + 2212));
            else
LABEL_70:
              v50 = 0;
            v51 = &v9[v50];
            v47 = (*(unsigned __int16 *)(a1 + 2204) >> 1) + *((__int16 *)v51 + 12);
            v48 = v40[1] - *((__int16 *)v51 + 13);
          }
          if ( *(_BYTE *)(a1 + 2125) )
          {
            v52 = *(unsigned __int8 *)(a1 + 2128);
            v53 = v52 == 1;
            if ( v52 != 1 )
              v53 = v52 == 3;
            if ( v53 )
            {
              v48 /= 2;
            }
            else if ( v52 == 2 )
            {
              LOWORD(v48) = 0;
            }
          }
          else if ( *(_BYTE *)(a1 + 2140) )
          {
            v54 = sub_104(*(unsigned __int8 *)(a1 + 2142), *(unsigned __int8 *)(a1 + 2141) * 2 * v48);
            if ( v54 > v48 )
              LOWORD(v54) = 2 * v48 - v54;
            LOWORD(v48) = v48 - v54;
          }
          return sub_3324(
                   a2,
                   *(_WORD *)(a1 + 2208) + v47,
                   *(_WORD *)(a1 + 2210) + *(_WORD *)(a1 + 2206) - v48,
                   (__int16)*v40,
                   (__int16)v40[1],
                   v40,
                   0,
                   0,
                   1u,
                   0,
                   0);
        }
      }
      else
      {
        v35 = (unsigned __int16 *)sub_11DD8(v71, *v9);
        v36 = *v35;
        v37 = (char *)v9 + 6 * *(unsigned __int8 *)(a1 + 2131);
        v38 = v35[1];
        v39 = v38 - 5 * *((__int16 *)v37 + 31) / 2 + 20;
        if ( v38 < v39 )
          LOWORD(v36) = sub_104(v38, v39 * v36);
        return sub_18BC(
                 a2,
                 (__int16)(v10[80] + (v10[78] >> 1) + *((_WORD *)v37 + 30) - 60),
                 v10[81] + v10[79] - v39,
                 (__int16)v36,
                 (__int16)v39,
                 v35,
                 0,
                 0,
                 (__int16)*v35,
                 (__int16)v35[1],
                 1u,
                 0,
                 0);
      }
      return result;
    }
    v14 = (unsigned __int16 *)sub_11DD8(v71, dword_E1C8);
    v15 = sub_11DD8(v71, dword_E1CC);
    v16 = (unsigned __int16 *)v15;
    v17 = v14 == 0;
    if ( v14 )
      v17 = v15 == 0;
    if ( v17 )
      goto LABEL_44;
    v18 = *(unsigned __int16 *)(a1 + 2206);
    v19 = *(unsigned __int16 *)(a1 + 2210);
    v58 = v18 - *(_DWORD *)(a1 + 2096) + *(_DWORD *)(a1 + 2108) + v19;
    v20 = *(unsigned __int8 *)(a1 + 2152);
    v21 = v20 == 1;
    if ( v20 != 1 )
      v21 = v20 == 2;
    if ( !v21 )
      goto LABEL_26;
    if ( v20 == 1 )
      v3 = 1;
    LOWORD(v58) = v18 - *(_WORD *)(a1 + 2146) + v19;
    if ( v20 == 1 )
      goto LABEL_27;
    if ( v20 == 2 )
      v3 = 2;
    else
LABEL_26:
      v3 = 0;
LABEL_27:
    v57 = 2 * ((*(_DWORD *)(a1 + 2104) * sub_19808(v61)) >> 16);
    v22 = sub_1DC(3u, v16[1]);
    v59 = (*(unsigned __int16 *)(a1 + 2204) - v57) / 2 - (*v16 >> 1) + *(unsigned __int16 *)(a1 + 2208);
    v23 = v58 - v22 / 2;
    v68 = (__int16)(v3 * v22);
    v67 = (__int16)v22;
    sub_3324(a2, v59, v23, (__int16)*v16, (__int16)v22, v16, 0, v3 * v22, 1u, 0, 0);
    sub_3324(a2, v59 + v57, v23, (__int16)*v16, v67, v16, 0, v68, 3u, 0, 0);
    v24 = *v14;
    v25 = *(unsigned __int16 *)(a1 + 2208) + (*(unsigned __int16 *)(a1 + 2204) >> 1);
    v26 = sub_1DC(3u, v14[1]);
    v27 = *(unsigned __int8 *)(a1 + 2152);
    v28 = v27 == 1;
    if ( v27 != 1 )
      v28 = v27 == 2;
    if ( v28 )
      LOWORD(v25) = *(_WORD *)(a1 + 2144) + v25;
    sub_3324(a2, v25 - v24 / 2, v58 - v26 / 2, (__int16)v24, (__int16)v26, v14, 0, v3 * v26, 1u, 0, 0);
    goto LABEL_44;
  }
  return result;
}

