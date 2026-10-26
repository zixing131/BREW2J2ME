int __fastcall sub_4F8C(int a1)
{
  int v1; // r4
  int v2; // r7
  int v3; // r10
  int v4; // r6
  unsigned int i; // r1
  int v7; // r2
  int v8; // r4
  int v9; // r2
  int v10; // r3
  int v11; // r0
  int v12; // r1
  signed int v13; // r7
  bool v14; // cc
  signed int v15; // r6
  bool v16; // cc
  int v17; // r9
  int v18; // r1
  int v19; // r11
  __int16 v20; // r0
  __int16 v21; // r0
  int v22; // r0
  int v23; // r8
  int v24; // r0
  bool v25; // cc
  int v26; // r0
  int v27; // r0
  bool v28; // cc
  unsigned int v29; // r11
  int v30; // r9
  int v31; // r0
  bool v32; // zf
  int v33; // r11
  int v34; // r0
  unsigned int v35; // r8
  int v36; // r0
  int v37; // r0
  int v38; // r1
  _DWORD *v39; // r1
  int v40; // r0
  char *v41; // r6
  int result; // r0
  unsigned __int8 *v43; // r4
  unsigned __int8 *v44; // r0
  unsigned int v45; // r1
  int v46; // r12
  int v47; // r8
  int v48; // lr
  int v49; // r2
  int v50; // r7
  _BYTE *v51; // r3
  unsigned int v52; // r9
  _BYTE *v53; // r2
  bool v54; // cf
  _BYTE *v55; // r3
  int v56; // r1
  int v57; // t1
  int v58; // r1
  bool v59; // zf
  int v60; // r1
  _BYTE *v61; // lr
  int v62; // r2
  bool v63; // cc
  unsigned int v64; // [sp+0h] [bp-5Ch]
  unsigned int v65; // [sp+4h] [bp-58h]
  int v66; // [sp+8h] [bp-54h]
  _DWORD *v67; // [sp+Ch] [bp-50h]
  int v68; // [sp+10h] [bp-4Ch]
  int v69; // [sp+14h] [bp-48h]
  int v70; // [sp+18h] [bp-44h]
  int v71; // [sp+1Ch] [bp-40h]
  int v72; // [sp+20h] [bp-3Ch]
  int v73; // [sp+28h] [bp-34h]
  int v74; // [sp+2Ch] [bp-30h]
  int v75; // [sp+30h] [bp-2Ch]
  int v76; // [sp+34h] [bp-28h]
  int v77; // [sp+38h] [bp-24h]
  unsigned int v78; // [sp+3Ch] [bp-20h]
  int v79; // [sp+40h] [bp-1Ch]
  int v80; // [sp+44h] [bp-18h]
  unsigned int v81; // [sp+48h] [bp-14h]
  int v82; // [sp+4Ch] [bp-10h]
  int v83; // [sp+58h] [bp-4h]

  v1 = *(_DWORD *)(a1 + 2096);
  v2 = *(_DWORD *)(a1 + 2100);
  v3 = *(_DWORD *)(a1 + 2104);
  v4 = *(_DWORD *)(a1 + 2108);
  v68 = 4 * *(_DWORD *)(a1 + 2112);
  v70 = 4 * *(_DWORD *)(a1 + 2088);
  v83 = a1 + 2048;
  v69 = 4 * *(_DWORD *)(a1 + 2092);
  v77 = *(unsigned __int16 *)(a1 + 2204) >> 1;
  v72 = sub_197A8(v2) >> 8;
  v71 = sub_196D8(v2) >> 8;
  v67 = *(_DWORD **)(a1 + 2256);
  for ( i = 0; ; ++i )
  {
    v7 = *(_DWORD *)(a1 + 2200);
    if ( *(_DWORD *)(v7 + 68) <= i )
      break;
    *(_WORD *)(*(_DWORD *)(v7 + 72) + 28 * i + 4) = 0;
  }
  v78 = 0;
  v81 = v3 * (v1 << 8);
  v82 = v1 - v4;
  v80 = -v77;
  v79 = v77 - 1;
  while ( 1 )
  {
    v40 = *(_DWORD *)(a1 + 2200);
    if ( *(_DWORD *)(v40 + 60) <= v78 )
      break;
    v8 = *(_DWORD *)(v40 + 64) + 72 * v78;
    v9 = 4 * *(__int16 *)(v8 + 24) - v70;
    v10 = 4 * *(__int16 *)(v8 + 26) - v69;
    v11 = 4 * *(__int16 *)(v8 + 28) - v70;
    v12 = 4 * *(__int16 *)(v8 + 30) - v69;
    v13 = (v9 * v71 + v10 * v72) >> 8;
    v14 = v13 <= 0;
    v15 = (v11 * v71 + v12 * v72) >> 8;
    if ( v13 <= 0 )
      v14 = v15 <= 0;
    if ( !v14 )
    {
      v16 = v13 <= v68;
      if ( v13 <= v68 )
        v16 = v15 <= v68;
      if ( v16 )
      {
        v76 = (v10 * v71 - v9 * v72) >> 8;
        v17 = (v12 * v71 - v11 * v72) >> 8;
        v18 = v17 * v13;
        v19 = v76 * v15 - v17 * v13;
        v20 = *(_WORD *)(v8 + 22);
        if ( v19 > 0 )
        {
          if ( (v20 & 1) == 0 )
            goto LABEL_15;
        }
        else
        {
          if ( (v20 & 8) == 0 )
            goto LABEL_62;
          v13 = v15;
          v15 = (v9 * v71 + v10 * v72) >> 8;
          v18 = (v10 * v71 - v9 * v72) >> 8;
          v76 = v17;
          v17 = v18;
          v19 = -v19;
          if ( (v20 & 1) != 0 )
          {
LABEL_15:
            v21 = v20 & 0xFFFB;
            goto LABEL_17;
          }
        }
        v21 = v20 | 4;
LABEL_17:
        *(_WORD *)(v8 + 22) = v21;
        if ( v13 > 0 )
          v22 = sub_104(v13, v76 * v3);
        else
          v22 = v77 + 1;
        v23 = v22;
        if ( v15 > 0 )
          v24 = sub_104(v15, v17 * v3);
        else
          v24 = -(v77 + 1);
        v25 = v23 <= v24;
        if ( v23 > v24 )
          v18 = -v77;
        v75 = v24;
        if ( v23 > v24 )
          v25 = v23 <= v18;
        if ( !v25 && v24 < v79 )
        {
          v65 = 0;
          v64 = 0;
          if ( v24 < v80 || v23 >= v77 )
          {
            if ( v23 >= v77 )
            {
              v74 = sub_104(v79 * (v15 - v13) - v3 * (v17 - v76), v3 * v19);
              v26 = sub_104(v79 * (v15 - v13) - v3 * (v17 - v76), v79 * v19);
              v65 = (unsigned int)sub_1973C(v74 - v13, v26 - v76) >> 2;
            }
            if ( v75 < v80 )
            {
              v73 = sub_104(v80 * (v15 - v13) - v3 * (v17 - v76), v3 * v19);
              v27 = sub_104(v80 * (v15 - v13) - v3 * (v17 - v76), v19 * v80);
              v64 = (unsigned int)sub_1973C(v73 - v15, v27 - v17) >> 2;
              v15 = v73;
              v75 = -v77;
            }
            if ( v23 >= v77 )
            {
              v13 = v74;
              v23 = v77 - 1;
            }
          }
          v28 = v13 <= 0;
          if ( v13 > 0 )
            v28 = v15 <= 0;
          if ( !v28 )
          {
            v29 = (4 * *(unsigned __int8 *)(v8 + 32) * v3) << 8;
            v30 = sub_104(v13, v29);
            v31 = sub_104(v15, v29);
            v32 = v30 == 0;
            v66 = v31;
            if ( v30 )
              v32 = v31 == 0;
            if ( !v32 )
            {
              v33 = (v82 << 8) - sub_104(v13, v81);
              v34 = sub_104(v15, v81);
              *(_DWORD *)(v8 + 40) = v23 + v77;
              *(_DWORD *)(v8 + 44) = v33;
              *(_DWORD *)(v8 + 56) = v30;
              v35 = v75 - v23;
              *(_DWORD *)(v8 + 48) = v35;
              *(_DWORD *)(v8 + 52) = sub_104(v35, (v82 << 8) - v34 - v33);
              *(_DWORD *)(v8 + 60) = sub_104(v35, v66 - v30);
              *(_DWORD *)(v8 + 64) = v65 << 8;
              *(_DWORD *)(v8 + 68) = sub_104(-v35, (*(unsigned __int8 *)(v8 + 33) - v65 - v64) << 8);
              if ( *(_BYTE *)(v8 + 36) )
              {
                v36 = *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 72) + 28 * *(unsigned __int16 *)(v8 + 38);
                ++*(_WORD *)(v36 + 4);
              }
              v37 = (v13 + v15) / 2;
              *(_DWORD *)(v8 + 8) = v37;
              v38 = *(_DWORD *)(a1 + 2256);
              if ( v38 )
              {
                if ( *(_DWORD *)(v38 + 8) >= v37 )
                {
                  if ( *(_DWORD *)(*(_DWORD *)(a1 + 2260) + 8) < v37 )
                  {
                    v39 = v67;
                    if ( v67[2] < v37 )
                    {
                      while ( v39[2] < v37 )
                        v39 = (_DWORD *)v39[4];
                    }
                    else
                    {
                      while ( *(_DWORD *)(v39[3] + 8) >= v37 )
                        v39 = (_DWORD *)v39[3];
                    }
                    *(_DWORD *)(v8 + 12) = v39[3];
                    *(_DWORD *)(v8 + 16) = v39;
                    *(_DWORD *)(v39[3] + 16) = v8;
                    v39[3] = v8;
                  }
                  else
                  {
                    *(_DWORD *)(v8 + 12) = 0;
                    *(_DWORD *)(*(_DWORD *)(a1 + 2260) + 12) = v8;
                    *(_DWORD *)(v8 + 16) = *(_DWORD *)(a1 + 2260);
                    *(_DWORD *)(a1 + 2260) = v8;
                  }
                }
                else
                {
                  *(_DWORD *)(v8 + 16) = 0;
                  *(_DWORD *)(v8 + 12) = v38;
                  *(_DWORD *)(*(_DWORD *)(a1 + 2256) + 16) = v8;
                  *(_DWORD *)(a1 + 2256) = v8;
                }
              }
              else
              {
                *(_DWORD *)(a1 + 2256) = v8;
                *(_DWORD *)(a1 + 2260) = v8;
                *(_DWORD *)(v8 + 12) = 0;
                *(_DWORD *)(v8 + 16) = 0;
              }
              v67 = (_DWORD *)v8;
            }
          }
        }
      }
    }
LABEL_62:
    ++v78;
  }
  v41 = (char *)off_5718 + 21784;
  result = (*(int (__fastcall **)(_DWORD, _DWORD, _DWORD))(*(_DWORD *)((char *)off_5718 + 0xFFFFFFFC + 21784) + 4))(
             *(_DWORD *)(a1 + 2252),
             0,
             *(unsigned __int16 *)(v83 + 156));
  v43 = *(unsigned __int8 **)(a1 + 2260);
  while ( v43 )
  {
    result = *v43;
    if ( result == 1 )
    {
      v44 = v43;
      v45 = v43[34];
      v46 = *((_DWORD *)v43 + 10);
      v43 = (unsigned __int8 *)*((_DWORD *)v43 + 4);
      v47 = v46;
      v48 = *((_DWORD *)v44 + 12) + v46;
      v49 = *(unsigned __int16 *)(v83 + 156);
      v50 = *(_DWORD *)(a1 + 2252);
      if ( v49 <= v46 )
        v46 = v49 - 1;
      if ( v48 < 0 )
        v48 = 0;
      v51 = (_BYTE *)(v50 + v46);
      v52 = v50 + v46;
      v53 = (_BYTE *)(v50 + v48);
      if ( v45 )
      {
        while ( 1 )
        {
          v54 = v51 >= v53;
          if ( v51 >= v53 )
            v54 = (unsigned __int8)*v51 >= v45;
          if ( !v54 )
            break;
          --v51;
        }
      }
      else
      {
        while ( v51 >= v53 && *v51 )
          --v51;
      }
      v55 = &v51[-v50];
      if ( (int)v55 >= v48 )
      {
        if ( v45 )
        {
          while ( (unsigned int)v53 <= v52 && (unsigned __int8)*v53 >= v45 )
            ++v53;
        }
        else
        {
          while ( (unsigned int)v53 <= v52 && *v53 )
            ++v53;
        }
        v61 = &v53[-v50];
        if ( (int)v55 < v46 )
        {
          *((_DWORD *)v44 + 10) = v47 - (v46 - (_DWORD)v55);
          *((_DWORD *)v44 + 11) -= (v46 - (_DWORD)v55) * *((_DWORD *)v44 + 13);
          *((_DWORD *)v44 + 14) -= (v46 - (_DWORD)v55) * *((_DWORD *)v44 + 15);
          *((_DWORD *)v44 + 16) += (v46 - (_DWORD)v55) * *((_DWORD *)v44 + 17);
        }
        *((_DWORD *)v44 + 12) = v61 - v55;
        result = v83;
        v62 = *(unsigned __int16 *)(v83 + 156);
        if ( v62 > (int)v61 )
        {
          result = v55 - v61;
          v63 = v55 - v61 < 0;
          if ( v55 - v61 >= 0 )
            v63 = v62 < (int)v55;
          if ( !v63 && v45 )
            result = (*(int (__fastcall **)(_BYTE *, unsigned int, int))(*(_DWORD *)&v41[-4] + 4))(
                       &v61[*(_DWORD *)(a1 + 2252)],
                       v45,
                       result + 1);
        }
      }
      else
      {
        if ( v44[36] )
        {
          v56 = *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 72) + 28 * *((unsigned __int16 *)v44 + 19);
          v57 = *(unsigned __int16 *)(v56 + 4);
          v53 = (_BYTE *)(v57 - 1);
          *(_WORD *)(v56 + 4) = v57 - 1;
        }
        v58 = *((_DWORD *)v44 + 3);
        v59 = v58 == 0;
        if ( v58 )
          v53 = (_BYTE *)*((_DWORD *)v44 + 4);
        else
          v58 = *((_DWORD *)v44 + 4);
        if ( v59 )
          *(_DWORD *)(a1 + 2260) = v58;
        else
          *(_DWORD *)(v58 + 16) = v53;
        v60 = *((_DWORD *)v44 + 4);
        result = *((_DWORD *)v44 + 3);
        if ( v60 )
          *(_DWORD *)(v60 + 12) = result;
        else
          *(_DWORD *)(a1 + 2256) = result;
      }
    }
    else
    {
      v43 = (unsigned __int8 *)*((_DWORD *)v43 + 4);
    }
  }
  return result;
}

