int __fastcall sub_6640(int a1, int a2, int a3)
{
  int v3; // r4
  int *v4; // lr
  int *v5; // r12
  int v6; // r2
  int *v7; // r3
  int v8; // r1
  int v9; // r0
  unsigned __int16 *v10; // r0
  int result; // r0
  int v12; // r0
  int v13; // r1
  int v14; // r12
  int v15; // r3
  int v16; // r2
  int *v17; // r3
  int v18; // r12
  int v19; // r3
  _WORD *v20; // r4
  int v21; // r8
  int v22; // r7
  int v23; // r5
  int v24; // r6
  unsigned int v25; // r1
  unsigned int v26; // r0
  int v27; // r11
  bool v28; // cc
  int v29; // r0
  unsigned int v30; // r1
  unsigned int v31; // r0
  bool v32; // cc
  int v33; // r0
  int v34; // r0
  bool v35; // nf
  unsigned int v36; // r1
  unsigned int v37; // r0
  int v38; // r0
  int v39; // r0
  unsigned int v40; // r1
  unsigned int v41; // r0
  _WORD *v42; // r1
  __int16 v43; // r2
  __int16 v44; // r2
  unsigned int v45; // r2
  unsigned int v46; // r0
  __int16 v47; // r1
  int v48; // r1
  int v49; // r2
  int v50; // r1
  __int16 v51; // r2
  unsigned int v52; // r1
  unsigned int v53; // r1
  __int16 v54; // r0
  __int16 v55; // r0
  unsigned int v56; // r0
  int v57; // [sp+0h] [bp-74h]
  int v58; // [sp+4h] [bp-70h]
  int v59; // [sp+8h] [bp-6Ch]
  int v60; // [sp+Ch] [bp-68h]
  int v61; // [sp+14h] [bp-60h]
  __int16 v62; // [sp+1Ch] [bp-58h]
  int v63; // [sp+20h] [bp-54h]
  int v64; // [sp+24h] [bp-50h]
  int *v65; // [sp+28h] [bp-4Ch]
  int v66; // [sp+2Ch] [bp-48h]
  unsigned __int8 *v67; // [sp+30h] [bp-44h]
  int *v68; // [sp+34h] [bp-40h]
  int *v69; // [sp+38h] [bp-3Ch]
  int *v70; // [sp+3Ch] [bp-38h]
  int v71; // [sp+40h] [bp-34h]
  int v72; // [sp+44h] [bp-30h]
  int v73; // [sp+48h] [bp-2Ch]
  int v74; // [sp+4Ch] [bp-28h]
  int v75; // [sp+50h] [bp-24h]
  int v76; // [sp+54h] [bp-20h]
  int v77; // [sp+58h] [bp-1Ch]
  int v78; // [sp+5Ch] [bp-18h]
  int v79; // [sp+60h] [bp-14h]
  int v80; // [sp+64h] [bp-10h]

  v58 = a1 + 1548;
  v57 = a1 + 1804;
  v66 = *(_DWORD *)(a1 + 2060);
  v3 = *(_DWORD *)(a1 + 2200);
  v62 = *(_WORD *)(v3 + 16);
  v4 = *(int **)(a1 + 2236);
  v5 = *(int **)(a1 + 2240);
  v6 = *(_DWORD *)(a1 + 2244);
  v7 = *(int **)(a1 + 2248);
  v80 = a1 + 2048;
  v8 = *(_DWORD *)(a2 + 20) + 4 * *(unsigned __int16 *)(a1 + 2210);
  v9 = *(unsigned __int16 *)(a1 + 2206);
  if ( a3 )
  {
    v64 = v66 + 2048;
    v65 = (int *)v8;
    v63 = *(_DWORD *)(v3 + 36);
    v78 = *(_DWORD *)(a1 + 2232);
    v70 = &v4[v9 - 1];
    v6 = v6 + v9 - 1;
    v68 = &v7[v9 - 1];
    v69 = &v5[v9 - 1];
  }
  else
  {
    v65 = (int *)(v8 + 4 * v9 - 4);
    v64 = v66;
    v63 = *(_DWORD *)(v3 + 32);
    v78 = *(_DWORD *)(a1 + 2228);
    v68 = v7;
    v69 = v5;
    v70 = v4;
  }
  v67 = (unsigned __int8 *)v6;
  v75 = sub_197A8(*(_DWORD *)(a1 + 2100)) >> 8;
  v74 = sub_196D8(*(_DWORD *)(a1 + 2100)) >> 8;
  v73 = *(_DWORD *)(a1 + 2088) << 10;
  v72 = *(_DWORD *)(a1 + 2092) << 10;
  v71 = *(unsigned __int16 *)(v80 + 156);
  v10 = *(unsigned __int16 **)(a1 + 2200);
  v60 = *v10 << 15;
  v59 = v10[1] << 15;
  for ( result = 0; ; result = v79 + 1 )
  {
    v79 = result;
    if ( result >= v78 )
      break;
    v12 = *v70;
    if ( a3 )
    {
      --v70;
      v13 = *v69--;
      v14 = *v67--;
      v76 = v14;
      v15 = *v68--;
      v77 = v15;
      v17 = v65 + 1;
      v16 = *v65;
    }
    else
    {
      ++v70;
      v13 = *v69++;
      v18 = *v67++;
      v76 = v18;
      v19 = *v68++;
      v77 = v19;
      v17 = v65 - 1;
      v16 = *v65;
    }
    v65 = v17;
    v20 = (_WORD *)(v16 + 2 * *(unsigned __int16 *)(v80 + 160));
    v21 = v13 * v75 / -256;
    v22 = v74 * v13 / 256;
    v23 = v73 + v74 * v12 / 256 - v71 * v21 / 2;
    v24 = v72 + v75 * v12 / 256 - v71 * v22 / 2;
    if ( v23 >= 0 )
    {
      if ( v23 < v60 )
      {
        v27 = 0;
        goto LABEL_21;
      }
      v28 = v21 < 0;
      if ( v21 < 0 )
        v28 = v23 + v71 * v21 < v60;
      if ( !v28 )
      {
LABEL_18:
        v27 = v71;
        goto LABEL_21;
      }
      v25 = v23 - v60 - v21;
      v26 = -v21;
    }
    else
    {
      if ( v21 <= 0 || v23 + v71 * v21 < 0 )
        goto LABEL_18;
      v25 = v21 - v23 - 1;
      v26 = v21;
    }
    v27 = sub_104(v26, v25);
LABEL_21:
    if ( v27 >= v71 )
      goto LABEL_34;
    v29 = v24 + v22 * v27;
    if ( v29 >= 0 )
    {
      if ( v29 < v59 )
        goto LABEL_34;
      v32 = v22 < 0;
      if ( v22 < 0 )
        v32 = v29 + (v71 - v27) * v22 < v59;
      if ( !v32 )
      {
LABEL_31:
        v27 = v71;
        goto LABEL_34;
      }
      v30 = v29 - v59 - v22;
      v31 = -v22;
    }
    else
    {
      if ( v22 <= 0 || v29 + (v71 - v27) * v22 < 0 )
        goto LABEL_31;
      v30 = v22 - v29 - 1;
      v31 = v22;
    }
    v27 += sub_104(v31, v30);
LABEL_34:
    if ( v27 >= v71 )
    {
      v33 = 0;
      goto LABEL_50;
    }
    v34 = v23 + v71 * v21;
    v35 = v34 < 0;
    if ( v34 < 0 )
      v34 += v21;
    if ( v35 )
    {
      v36 = -(v34 + 1);
      v37 = -v21;
LABEL_43:
      v38 = sub_104(v37, v36);
      goto LABEL_44;
    }
    if ( v34 >= v60 )
    {
      v36 = v34 - v60 + v21 - 1;
      v37 = v21;
      goto LABEL_43;
    }
    v38 = 0;
LABEL_44:
    v61 = v38;
    if ( v27 + v38 >= v71 )
      goto LABEL_51;
    v39 = v24 + v71 * v22 - v22 * v38;
    if ( v39 >= 0 )
    {
      if ( v39 < v59 )
        goto LABEL_51;
      v40 = v39 - v59 + v22 - 1;
      v41 = v22;
    }
    else
    {
      v40 = -(v39 + v22 + 1);
      v41 = -v22;
    }
    v33 = sub_104(v41, v40) + v61;
LABEL_50:
    v61 = v33;
LABEL_51:
    v42 = &v20[v27];
    if ( v76 == 32 )
    {
      while ( v20 < v42 )
      {
        v43 = *(_WORD *)(v64 + ((v24 & 0x7C00) >> 10 << 6) + 2 * ((v23 & 0x7C00) >> 10));
        v23 += v21;
        v24 += v22;
        *v20++ = v43;
      }
    }
    else if ( v76 )
    {
      while ( v20 < v42 )
      {
        v44 = *(_WORD *)(v64 + ((v24 & 0x7C00) >> 10 << 6) + 2 * ((v23 & 0x7C00) >> 10));
        v23 += v21;
        v24 += v22;
        v45 = (v77 + v76 * (((v44 & 0xF800) << 11) | (32 * (v44 & 0x7E0)) | v44 & 0x1Fu)) >> 5;
        *v20++ = ((v45 & 0x7C00000) >> 11) | ((unsigned __int16)(v45 & 0xFC00) >> 5) | v45 & 0x1F;
      }
    }
    else
    {
      while ( v20 < v42 )
      {
        v23 += v21;
        v24 += v22;
        *v20++ = v62;
      }
    }
    v46 = (unsigned int)&v42[v71 - v27 - v61];
    if ( v76 == 32 )
    {
      while ( (unsigned int)v20 < v46 )
      {
        v47 = *(_WORD *)(v66
                       + ((((v24 & 0x7C00) >> 10)
                         + 32 * *(unsigned __int8 *)(*(_DWORD *)(v63 + 4 * (v24 >> 15)) + (v23 >> 15))) << 6)
                       + 2 * ((v23 & 0x7C00) >> 10));
        v23 += v21;
        v24 += v22;
        *v20++ = v47;
      }
    }
    else if ( v76 )
    {
      while ( (unsigned int)v20 < v46 )
      {
        v49 = *(unsigned __int8 *)(*(_DWORD *)(v63 + 4 * (v24 >> 15)) + (v23 >> 15));
        if ( !*(_BYTE *)(v58 + v49) || (v50 = 1, *(_BYTE *)(v57 + v49)) && (*(_DWORD *)(a1 + 2212) & 4) == 0 )
          v50 = 0;
        v51 = *(_WORD *)(v66 + ((((v24 & 0x7C00) >> 10) + 32 * v49) << 6) + 2 * ((v23 & 0x7C00) >> 10));
        if ( v50 )
        {
          *v20 = v51;
        }
        else
        {
          v52 = (v77 + v76 * (((v51 & 0xF800) << 11) | (32 * (v51 & 0x7E0)) | v51 & 0x1Fu)) >> 5;
          *v20 = ((v52 & 0x7C00000) >> 11) | ((unsigned __int16)(v52 & 0xFC00) >> 5) | v52 & 0x1F;
        }
        ++v20;
        v23 += v21;
        v24 += v22;
      }
    }
    else
    {
      while ( (unsigned int)v20 < v46 )
      {
        v48 = *(unsigned __int8 *)(*(_DWORD *)(v63 + 4 * (v24 >> 15)) + (v23 >> 15));
        if ( *(_BYTE *)(v58 + v48) && (!*(_BYTE *)(v57 + v48) || (*(_DWORD *)(a1 + 2212) & 4) != 0) )
          *v20 = *(_WORD *)(v66 + ((((v24 & 0x7C00) >> 10) + 32 * v48) << 6) + 2 * ((v23 & 0x7C00) >> 10));
        else
          *v20 = v62;
        ++v20;
        v23 += v21;
        v24 += v22;
      }
    }
    v53 = v46 + 2 * v61;
    if ( v76 == 32 )
    {
      while ( (unsigned int)v20 < v53 )
      {
        v54 = *(_WORD *)(v64 + ((v24 & 0x7C00) >> 10 << 6) + 2 * ((v23 & 0x7C00) >> 10));
        v23 += v21;
        v24 += v22;
        *v20++ = v54;
      }
    }
    else if ( v76 )
    {
      while ( (unsigned int)v20 < v53 )
      {
        v55 = *(_WORD *)(v64 + ((v24 & 0x7C00) >> 10 << 6) + 2 * ((v23 & 0x7C00) >> 10));
        v23 += v21;
        v56 = (v77 + v76 * (((v55 & 0xF800) << 11) | (32 * (v55 & 0x7E0)) | v55 & 0x1Fu)) >> 5;
        *v20++ = ((v56 & 0x7C00000) >> 11) | ((unsigned __int16)(v56 & 0xFC00) >> 5) | v56 & 0x1F;
        v24 += v22;
      }
    }
    else
    {
      while ( (unsigned int)v20 < v53 )
        *v20++ = v62;
    }
  }
  return result;
}

