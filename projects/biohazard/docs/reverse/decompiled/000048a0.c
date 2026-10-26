int __fastcall sub_48A0(int a1, int a2)
{
  int v2; // r5
  int v3; // r8
  int v4; // r9
  int v5; // r10
  int v7; // r6
  int v8; // r0
  int v10; // r1
  int v11; // r0
  int v12; // r7
  int v13; // r0
  int v14; // r1
  int v15; // r0
  int v16; // r1
  bool v17; // zf
  int v18; // r0
  bool v19; // zf
  int v20; // r0
  int v21; // r0
  bool v22; // zf
  int v23; // r0
  int v24; // r6
  signed int v25; // r7
  unsigned int v26; // r0
  int v27; // r0
  unsigned int v28; // r1
  unsigned int v29; // r0
  int v30; // r5
  int v31; // r0
  unsigned int v32; // r1
  int v33; // r6
  unsigned int v34; // r0
  int v35; // r6
  int v36; // r0
  unsigned int v37; // r1
  int v38; // r0
  int v39; // r1
  int v40; // r0
  _DWORD *v41; // r0
  int v42; // r1
  int result; // r0
  unsigned int v44; // [sp+0h] [bp-6Ch]
  int v45; // [sp+4h] [bp-68h]
  int v46; // [sp+8h] [bp-64h]
  int v47; // [sp+Ch] [bp-60h]
  int v48; // [sp+10h] [bp-5Ch]
  int v49; // [sp+14h] [bp-58h]
  int v50; // [sp+18h] [bp-54h]
  int v51; // [sp+1Ch] [bp-50h]
  int v52; // [sp+20h] [bp-4Ch]
  int v53; // [sp+24h] [bp-48h]
  int v54; // [sp+28h] [bp-44h]
  int v55; // [sp+2Ch] [bp-40h]
  signed int v56; // [sp+30h] [bp-3Ch]
  int v57; // [sp+34h] [bp-38h]
  int v58; // [sp+3Ch] [bp-30h]
  int v59; // [sp+40h] [bp-2Ch]
  int v60; // [sp+44h] [bp-28h]
  int v61; // [sp+48h] [bp-24h]
  int v62; // [sp+4Ch] [bp-20h]
  _DWORD *v63; // [sp+50h] [bp-1Ch]
  unsigned int v64; // [sp+54h] [bp-18h]
  unsigned int v65; // [sp+58h] [bp-14h]
  int v66; // [sp+5Ch] [bp-10h]
  int v67; // [sp+60h] [bp-Ch]
  int v68; // [sp+68h] [bp-4h]

  v63 = *(_DWORD **)(a1 + 2256);
  v7 = *(_DWORD *)(a1 + 2096);
  v52 = *(_DWORD *)(a1 + 2108);
  v8 = *(_DWORD *)(a1 + 2200);
  v10 = *(unsigned __int8 *)(v8 + 9);
  if ( *(_BYTE *)(v8 + 9) )
    v11 = *(unsigned __int8 *)(v8 + 11);
  else
    v11 = 0;
  if ( v10 )
    v11 <<= 7;
  v51 = v11;
  v12 = *(_DWORD *)(a1 + 2100);
  v50 = *(_DWORD *)(a1 + 2104);
  v49 = sub_197A8(v12) >> 8;
  v48 = sub_196D8(v12) >> 8;
  v45 = 4 * *(_DWORD *)(a1 + 2112);
  v47 = 4 * *(_DWORD *)(a1 + 2088);
  v46 = 4 * *(_DWORD *)(a1 + 2092);
  switch ( a2 )
  {
    case 4:
      v13 = *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 52);
      break;
    case 2:
      v13 = *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 44);
      break;
    case 5:
      v13 = 40;
      break;
    case 6:
      v13 = 100;
      break;
    default:
      v13 = 0;
      break;
  }
  v53 = v13;
  v54 = 0;
  v67 = v7 - v52;
  v68 = 8 * v50;
  v64 = v50 * ((v7 - 180) << 8);
  v65 = v50 * ((v51 - v7) << 8);
  v66 = v50 * (v7 << 8);
  while ( 1 )
  {
    result = v53;
    if ( v54 >= v53 )
      return result;
    switch ( a2 )
    {
      case 4:
        v5 = *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 56) + 76 * v54;
        v62 = *(__int16 *)(v5 + 60);
        v61 = *(__int16 *)(v5 + 62);
        v59 = 0;
        v14 = *(unsigned __int8 *)(*(_DWORD *)(a1 + 2188) + 84 * *(unsigned __int16 *)(v5 + 20) + 6);
        goto LABEL_33;
      case 2:
        v3 = *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 48) + 40 * v54;
        v15 = *(_DWORD *)(a1 + 2172) + 36 * *(unsigned __int8 *)(v3 + 20);
        v62 = *(__int16 *)(v3 + 24);
        v61 = *(__int16 *)(v3 + 26);
        v59 = *(unsigned __int8 *)(v15 + 7);
        v60 = *(unsigned __int8 *)(v15 + 6);
        v16 = *(unsigned __int8 *)(v15 + 28);
        v17 = v16 == 0;
        if ( *(_BYTE *)(v15 + 28) )
        {
          v16 = *(_DWORD *)(a1 + 2224);
          v17 = v16 == 0;
        }
        if ( v17 || *(_BYTE *)(v16 + *(char *)(v15 + 29) + 40) != 1 )
        {
          v18 = *(unsigned __int8 *)(v3 + 21);
          v19 = v18 == 0;
          if ( *(_BYTE *)(v3 + 21) )
          {
            v18 = *(_DWORD *)(a1 + 2224);
            v19 = v18 == 0;
          }
          if ( v19 || *(_BYTE *)(v18 + *(unsigned __int16 *)(v3 + 22) + 40) != 1 )
            goto LABEL_43;
        }
        break;
      case 5:
        v20 = *(_DWORD *)(a1 + 2200) + 48 * v54;
        v4 = v20 + 76;
        v21 = *(unsigned __int8 *)(v20 + 108);
        v22 = v21 == 0;
        if ( v21 )
          v22 = *(_BYTE *)(v4 + 33) == 0;
        if ( !v22 )
        {
          v14 = 10;
          v62 = *(__int16 *)(v4 + 34);
          v61 = *(__int16 *)(v4 + 36);
          v59 = 0;
LABEL_33:
          v60 = v14;
LABEL_43:
          v58 = 4 * v62 - v47;
          v33 = 4 * v61 - v46;
          v25 = (v58 * v48 + v33 * v49) >> 8;
          if ( v25 <= 0 || v25 >= v45 )
            break;
          v44 = sub_1973C(v58, 4 * v61 - v46);
          v34 = sub_2A0(v60 * v50);
          v55 = sub_104(v44, v34 << 8);
          v35 = sub_104(v25, ((v33 * v48 - v58 * v49) >> 8) * v50);
          if ( v59 )
          {
            v36 = sub_104(v25, v65) + (v67 << 8);
          }
          else
          {
            if ( a2 == 5 )
              v37 = v64;
            else
              v37 = v66;
            v36 = (v67 << 8) - sub_104(v25, v37);
          }
          v38 = v36 >> 8;
          v39 = v35 + (*(unsigned __int16 *)(a1 + 2204) >> 1);
          switch ( a2 )
          {
            case 4:
              *(_DWORD *)(v5 + 44) = v38;
              *(_DWORD *)(v5 + 40) = v39;
              *(_DWORD *)(v5 + 48) = v55;
              *(_DWORD *)(v5 + 8) = v25;
              v2 = v5;
              *(_DWORD *)(v5 + 52) = ((v67 << 8) - sub_104(v25, v64)) >> 8;
              break;
            case 2:
              *(_DWORD *)(v3 + 32) = v38;
              *(_DWORD *)(v3 + 28) = v39;
              v2 = v3;
              *(_DWORD *)(v3 + 36) = v55;
              *(_DWORD *)(v3 + 8) = v25;
              break;
            case 5:
              *(_DWORD *)(v4 + 24) = v38;
              *(_DWORD *)(v4 + 20) = v39;
              v2 = v4;
              *(_DWORD *)(v4 + 28) = v55;
              *(_DWORD *)(v4 + 8) = v25;
              break;
          }
          goto LABEL_57;
        }
        break;
      case 6:
        v23 = *(_DWORD *)(a1 + 2200) + 56 * v54;
        v24 = v23 + 1996;
        if ( !*(_BYTE *)(v23 + 2016) )
          break;
        v62 = *(__int16 *)(v23 + 2020);
        v61 = *(__int16 *)(v23 + 2022);
        v25 = ((4 * v62 - v47) * v48 + (4 * v61 - v46) * v49) >> 8;
        if ( v25 <= 0 )
          break;
        if ( v25 >= v45 )
          break;
        v26 = sub_1DC(3u, *(_DWORD *)(v23 + 2000) * v68);
        *(_DWORD *)(v24 + 48) = sub_1DC(v25, v26);
        v57 = sub_104(v25, (((4 * v61 - v46) * v48 - (4 * v62 - v47) * v49) >> 8) * v50);
        v27 = sub_104(v25, v64);
        v28 = *(unsigned __int16 *)(a1 + 2204);
        *(_DWORD *)(v24 + 36) = ((v67 << 8) - v27) >> 8;
        *(_DWORD *)(v24 + 32) = v57 + (v28 >> 1);
        v62 = *(__int16 *)(v24 + 28);
        v61 = *(__int16 *)(v24 + 30);
        v56 = ((4 * v62 - v47) * v48 + (4 * v61 - v46) * v49) >> 8;
        if ( v56 <= 0 || v56 >= v45 )
          break;
        v29 = sub_1DC(3u, *(_DWORD *)(v24 + 4) * v68);
        *(_DWORD *)(v24 + 52) = sub_1DC(v56, v29);
        if ( v25 > v56 )
          v25 = ((4 * v62 - v47) * v48 + (4 * v61 - v46) * v49) >> 8;
        v30 = sub_104(v56, (((4 * v61 - v46) * v48 - (4 * v62 - v47) * v49) >> 8) * v50);
        v31 = sub_104(v56, v64);
        v32 = *(unsigned __int16 *)(a1 + 2204);
        *(_DWORD *)(v24 + 44) = ((v67 << 8) - v31) >> 8;
        *(_DWORD *)(v24 + 40) = v30 + (v32 >> 1);
        *(_DWORD *)(v24 + 8) = v25;
        v2 = v24;
LABEL_57:
        v40 = *(_DWORD *)(a1 + 2256);
        if ( v40 )
        {
          if ( *(_DWORD *)(v40 + 8) >= v25 )
          {
            if ( *(_DWORD *)(*(_DWORD *)(a1 + 2260) + 8) < v25 )
            {
              v41 = v63;
              if ( v63[2] < v25 )
              {
                while ( v41[2] < v25 )
                  v41 = (_DWORD *)v41[4];
              }
              else
              {
                while ( *(_DWORD *)(v41[3] + 8) >= v25 )
                  v41 = (_DWORD *)v41[3];
              }
              v42 = v41[3];
              *(_DWORD *)(v2 + 16) = v41;
              *(_DWORD *)(v2 + 12) = v42;
              *(_DWORD *)(v41[3] + 16) = v2;
              v41[3] = v2;
            }
            else
            {
              *(_DWORD *)(v2 + 12) = 0;
              *(_DWORD *)(*(_DWORD *)(a1 + 2260) + 12) = v2;
              *(_DWORD *)(v2 + 16) = *(_DWORD *)(a1 + 2260);
              *(_DWORD *)(a1 + 2260) = v2;
            }
          }
          else
          {
            *(_DWORD *)(v2 + 12) = v40;
            *(_DWORD *)(v2 + 16) = 0;
            *(_DWORD *)(*(_DWORD *)(a1 + 2256) + 16) = v2;
            *(_DWORD *)(a1 + 2256) = v2;
          }
        }
        else
        {
          *(_DWORD *)(a1 + 2256) = v2;
          *(_DWORD *)(a1 + 2260) = v2;
          *(_DWORD *)(v2 + 12) = 0;
          *(_DWORD *)(v2 + 16) = 0;
        }
        v63 = (_DWORD *)v2;
        break;
      default:
        goto LABEL_43;
    }
    ++v54;
  }
}

