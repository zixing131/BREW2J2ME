int __fastcall sub_A7E8(_DWORD *a1, int a2, int a3, int a4)
{
  unsigned __int16 *v6; // r0
  int v8; // r8
  int v9; // r9
  int v10; // r1
  int v11; // r3
  int v12; // r0
  int v13; // r2
  bool v14; // nf
  int v15; // r10
  int v16; // r11
  int v17; // r10
  int v18; // r11
  __int16 *v19; // r10
  int v20; // r0
  int v21; // r1
  char v22; // r0
  __int16 v23; // r0
  int v24; // r0
  int v25; // r10
  int v26; // r11
  int v27; // r0
  int v28; // r1
  __int16 v29; // r0
  unsigned __int16 *v30; // r1
  int v31; // r0
  bool v32; // zf
  int v33; // r0
  int v34; // r1
  __int16 v35; // r0
  int v36; // r10
  int v37; // r11
  int *v38; // r1
  int v39; // r0
  bool v40; // zf
  int v41; // r0
  int v42; // r1
  __int16 v43; // r0
  int v44; // r10
  int v45; // r11
  unsigned __int16 *v46; // r0
  int v47; // r1
  int v48; // r2
  bool v49; // zf
  int v50; // r0
  int v51; // r1
  __int16 v52; // r0
  __int16 v53; // r4
  __int16 v54; // r6
  __int16 v55; // r10
  int v56; // r12
  int v57; // r11
  int v58; // r8
  int v59; // r9
  int v61; // [sp+0h] [bp-364h]
  int v62; // [sp+24h] [bp-340h]
  unsigned __int16 *v63; // [sp+28h] [bp-33Ch]
  unsigned __int16 *v64; // [sp+28h] [bp-33Ch]
  unsigned __int16 *v65; // [sp+28h] [bp-33Ch]
  int v66; // [sp+2Ch] [bp-338h]
  int v67; // [sp+30h] [bp-334h]
  _DWORD v68[162]; // [sp+34h] [bp-330h]
  int v69; // [sp+2BCh] [bp-A8h]
  __int16 *v70; // [sp+2C0h] [bp-A4h]
  int v71; // [sp+2C4h] [bp-A0h]
  int v72; // [sp+2C8h] [bp-9Ch]
  int v73; // [sp+2CCh] [bp-98h]
  int v74; // [sp+2D0h] [bp-94h]
  int v75; // [sp+2D4h] [bp-90h]
  int v76; // [sp+2D8h] [bp-8Ch]
  int v77; // [sp+2DCh] [bp-88h]
  int v78; // [sp+2E0h] [bp-84h]
  int v79; // [sp+2E4h] [bp-80h]
  int v80; // [sp+2E8h] [bp-7Ch]
  int v81; // [sp+2ECh] [bp-78h]
  signed int v82; // [sp+2F0h] [bp-74h]
  signed int v83; // [sp+2F4h] [bp-70h]
  signed int v84; // [sp+2F8h] [bp-6Ch]
  signed int v85; // [sp+2FCh] [bp-68h]
  signed int v86; // [sp+300h] [bp-64h]
  signed int v87; // [sp+304h] [bp-60h]
  signed int v88; // [sp+308h] [bp-5Ch]
  signed int v89; // [sp+30Ch] [bp-58h]
  signed int v90; // [sp+310h] [bp-54h]
  signed int v91; // [sp+314h] [bp-50h]
  signed int v92; // [sp+318h] [bp-4Ch]
  signed int v93; // [sp+31Ch] [bp-48h]
  signed int v94; // [sp+320h] [bp-44h]
  signed int v95; // [sp+324h] [bp-40h]
  signed int v96; // [sp+328h] [bp-3Ch]
  signed int v97; // [sp+32Ch] [bp-38h]
  signed int v98; // [sp+330h] [bp-34h]
  signed int v99; // [sp+334h] [bp-30h]
  unsigned __int16 *v100; // [sp+338h] [bp-2Ch]
  int v101; // [sp+33Ch] [bp-28h]
  unsigned int v102; // [sp+340h] [bp-24h]
  unsigned int v103; // [sp+344h] [bp-20h]
  int v104; // [sp+348h] [bp-1Ch]
  int v105; // [sp+34Ch] [bp-18h]
  int v106; // [sp+350h] [bp-14h]
  _DWORD *v107; // [sp+354h] [bp-10h]
  int v108; // [sp+358h] [bp-Ch]
  int v109; // [sp+35Ch] [bp-8h]
  int v110; // [sp+360h] [bp-4h]

  v107 = a1;
  v108 = a2;
  v109 = a3;
  v110 = a4;
  v73 = 512;
  v72 = dword_B5D0;
  v71 = dword_B5D0 + 576;
  v6 = (unsigned __int16 *)a1[550];
  v76 = 2 * *v6;
  v75 = 2 * v6[1];
  v8 = sub_196D8(v107[525]);
  v9 = sub_197A8(v107[525]);
  v78 = v107[522] / 16;
  v77 = v107[523] / 16;
  v105 = (__int16)a3;
  v106 = (__int16)a4;
  sub_64E0(a2, a3, a4, 23, 0);
  sub_64E0(a2, a3, a4, 22, dword_B5D4);
  sub_64E0(a2, a3, a4, 21, 0);
  sub_64E0(a2, a3, a4, 20, 0);
  v10 = 0;
  v11 = -37;
  v74 = *(_DWORD *)(v107[550] + 40);
  v12 = *(_DWORD *)(a2 + 20);
  v13 = 20;
  do
  {
    v68[v10 + 101] = a3 - v13;
    v68[v10 + 20] = v13;
    v68[20 - v10 + 81] = a3 - v13;
    v14 = v11 < 0;
    if ( v11 < 0 )
      v11 += 4 * v10;
    v68[20 - v10] = v13;
    if ( v14 )
    {
      v11 += 6;
    }
    else
    {
      v11 += 4 * (v10 - v13) + 10;
      if ( v10 < v13 )
      {
        v68[v13 + 101] = a3 - v10;
        v68[v13 + 20] = v10;
        v68[20 - v13 + 81] = a3 - v10;
        v68[20 - v13] = v10;
      }
      --v13;
    }
    ++v10;
  }
  while ( v10 <= v13 );
  v104 = v12 + 4 * a4;
  v103 = 2 * v8;
  v69 = 0;
  v102 = 2 * v9;
  do
  {
    v15 = v69 - 20;
    v16 = (v78 << 16) - sub_104(3u, 2 * v8 * (v69 - 20));
    v101 = v68[v69];
    v80 = v16 + sub_104(3u, 2 * v9 * v101);
    v17 = (v77 << 16) - sub_104(3u, 2 * v9 * v15);
    v18 = v17 - sub_104(3u, 2 * v8 * v101);
    v19 = (__int16 *)(*(_DWORD *)(v104 + 4 * v69 - 80) + 2 * a3 - 2 * v101);
    v70 = &v19[2 * v101];
    while ( v19 < v70 )
    {
      v20 = v80 >> 16;
      v21 = v18 >> 16;
      if ( v80 >> 16 < 0 || v20 >= v76 || v21 < 0 || v21 >= v75 )
      {
        v23 = 0;
      }
      else
      {
        v22 = *(_BYTE *)(*(_DWORD *)(v74 + 4 * v21) + v20);
        if ( (v22 & 4) != 0 )
        {
          v23 = -2048;
        }
        else if ( (v22 & 2) != 0 )
        {
          v23 = v73;
        }
        else if ( (v22 & 1) != 0 )
        {
          v23 = v72;
        }
        else
        {
          v23 = v71;
        }
      }
      *v19++ = v23;
      v24 = sub_104(3u, v102);
      v80 -= v24;
      v18 += sub_104(3u, v103);
    }
    ++v69;
  }
  while ( v69 < 41 );
  v67 = *(unsigned __int8 *)(v107[556] + 41);
  v62 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_B5D8 + 0xFFFFFFFC + 43856) + 192))() + 36);
  v66 = **(__int16 **)(v107[556] + 820);
  v63 = (unsigned __int16 *)sub_11DD8(v62, dword_B5DC);
  v25 = *v63;
  v26 = v63[1];
  v100 = (unsigned __int16 *)&(*off_B5E0)[2 * v66 + 10983];
  v27 = 2 * *v100 - v78;
  v28 = 2 * v100[1] - v77;
  v80 = (int)(((v8 * v28 - v9 * v27) >> 16) + ((unsigned int)(v8 * v28 - v9 * v27) >> 31)) >> 1;
  v79 = (int)(((v9 * -v28 - v8 * v27) >> 16) + ((unsigned int)(v9 * -v28 - v8 * v27) >> 31)) >> 1;
  v99 = 3 * sub_1973C(v27, v28) / 2;
  if ( v99 > 20 )
  {
    v80 = sub_104(v99, 20 * v80);
    v29 = sub_104(v99, 20 * v79);
    v96 = (__int16)(v26 / 2);
    v95 = (__int16)(v25 / 2);
    sub_18BC(
      a2,
      (__int16)(3 * v80 + a3 + 2 - v25 / 4),
      3 * v29 + a4 + 2 - v26 / 4,
      v95,
      v96,
      v63,
      0,
      0,
      (__int16)v25,
      (__int16)v26,
      9u,
      16,
      0);
  }
  else
  {
    v98 = (__int16)(v26 / 2);
    v97 = (__int16)(v25 / 2);
    sub_18BC(
      a2,
      (__int16)(3 * v80 + a3 + 2 - v25 / 4),
      3 * v79 + a4 + 2 - v26 / 4,
      v97,
      v98,
      v63,
      0,
      0,
      (__int16)v25,
      (__int16)v26,
      1u,
      0,
      0);
  }
  v30 = v100;
  v31 = v100[2];
  v32 = v31 == 0;
  if ( v100[2] )
  {
    v30 = (unsigned __int16 *)v100[3];
    v32 = v30 == 0;
  }
  if ( !v32 )
  {
    v33 = 2 * v31 - v78;
    v34 = 2 * (_DWORD)v30 - v77;
    v80 = (int)(((v8 * v34 - v9 * v33) >> 16) + ((unsigned int)(v8 * v34 - v9 * v33) >> 31)) >> 1;
    v79 = (int)(((v9 * -v34 - v8 * v33) >> 16) + ((unsigned int)(v9 * -v34 - v8 * v33) >> 31)) >> 1;
    v94 = 3 * sub_1973C(v33, v34) / 2;
    if ( v94 >= 20 )
    {
      v80 = sub_104(v94, 20 * v80);
      v35 = sub_104(v94, 20 * v79);
      v91 = (__int16)(v26 / 2);
      v90 = (__int16)(v25 / 2);
      sub_18BC(
        a2,
        (__int16)(3 * v80 + a3 + 2 - v25 / 4),
        3 * v35 + a4 + 2 - v26 / 4,
        v90,
        v91,
        v63,
        0,
        0,
        (__int16)v25,
        (__int16)v26,
        9u,
        16,
        0);
    }
    else
    {
      v93 = (__int16)(v26 / 2);
      v92 = (__int16)(v25 / 2);
      sub_18BC(
        a2,
        (__int16)(3 * v80 + a3 + 2 - v25 / 4),
        3 * v79 + a4 + 2 - v26 / 4,
        v92,
        v93,
        v63,
        0,
        0,
        (__int16)v25,
        (__int16)v26,
        1u,
        0,
        0);
    }
  }
  v64 = (unsigned __int16 *)sub_11DD8(v62, dword_B5E4);
  v36 = *v64;
  v37 = v64[1];
  v38 = &(*off_B5E8)[v66 + 11259];
  v39 = *(unsigned __int16 *)v38;
  v40 = v39 == 0;
  if ( *(_WORD *)v38 )
  {
    v38 = (int *)*((unsigned __int16 *)v38 + 1);
    v40 = v38 == 0;
  }
  if ( !v40 )
  {
    v41 = 2 * v39 - v78;
    v42 = 2 * (_DWORD)v38 - v77;
    v80 = (int)(((v8 * v42 - v9 * v41) >> 16) + ((unsigned int)(v8 * v42 - v9 * v41) >> 31)) >> 1;
    v79 = (int)(((v9 * -v42 - v8 * v41) >> 16) + ((unsigned int)(v9 * -v42 - v8 * v41) >> 31)) >> 1;
    v89 = 3 * sub_1973C(v41, v42) / 2;
    if ( v89 >= 20 )
    {
      v80 = sub_104(v89, 20 * v80);
      v43 = sub_104(v89, 20 * v79);
      v86 = (__int16)(v37 / 2);
      v85 = (__int16)(v36 / 2);
      sub_18BC(
        a2,
        (__int16)(3 * v80 + a3 + 2 - v36 / 4),
        3 * v43 + a4 + 2 - v37 / 4,
        v85,
        v86,
        v64,
        0,
        0,
        (__int16)v36,
        (__int16)v37,
        9u,
        16,
        0);
    }
    else
    {
      v88 = (__int16)(v37 / 2);
      v87 = (__int16)(v36 / 2);
      sub_18BC(
        a2,
        (__int16)(3 * v80 + a3 + 2 - v36 / 4),
        3 * v79 + a4 + 2 - v37 / 4,
        v87,
        v88,
        v64,
        0,
        0,
        (__int16)v36,
        (__int16)v37,
        1u,
        0,
        0);
    }
  }
  v65 = (unsigned __int16 *)sub_11DD8(v62, dword_B5EC);
  v44 = *v65;
  v45 = v65[1];
  if ( v67 > 35 )
    v67 = 35;
  v46 = (unsigned __int16 *)&(*off_B5F0)[11406] + 3 * v67;
  if ( *v46 == v66 )
  {
    v47 = v46[1];
    v48 = v46[2];
    v49 = v47 == 0;
    if ( v46[1] )
      v49 = v48 == 0;
    if ( !v49 )
    {
      v50 = 2 * v47 - v78;
      v51 = 2 * v48 - v77;
      v80 = (int)(((v8 * v51 - v9 * v50) >> 16) + ((unsigned int)(v8 * v51 - v9 * v50) >> 31)) >> 1;
      v79 = ((v9 * (v77 - 2 * v48) - v8 * v50) >> 16) / 2;
      v84 = 3 * sub_1973C(v50, v51) / 2;
      if ( v84 >= 20 )
      {
        v80 = sub_104(v84, 20 * v80);
        v52 = sub_104(v84, 20 * v79);
        v82 = (__int16)(v45 / 2);
        sub_18BC(
          a2,
          (__int16)(3 * v80 + a3 + 2 - v44 / 4),
          3 * v52 + a4 + 2 - v45 / 4,
          (__int16)(v44 / 2),
          v82,
          v65,
          0,
          0,
          (__int16)v44,
          (__int16)v45,
          9u,
          16,
          0);
      }
      else
      {
        v83 = (__int16)(v45 / 2);
        sub_18BC(
          a2,
          (__int16)(3 * v80 + a3 + 2 - v44 / 4),
          3 * v79 + a4 + 2 - v45 / 4,
          (__int16)(v44 / 2),
          v83,
          v65,
          0,
          0,
          (__int16)v44,
          (__int16)v45,
          1u,
          0,
          0);
      }
    }
  }
  sub_10434(a2, v105, v106, 3, 0, dword_B5F4, dword_B5F4);
  sub_10C58(a2, v105, (__int16)(a4 - 20), 1, 20, 0, dword_B5F4, dword_B5F4);
  v53 = a3 - 25;
  sub_64E0(a2, a3 - 25, v106, 10, 0);
  sub_10434(a2, (__int16)(a3 - 25), v106, 9, 1, dword_B5D4, 0);
  v54 = v8 >> 13;
  v55 = v9 >> 13;
  v56 = (3 * v9) >> 16;
  v81 = (__int16)(a4 + ((unsigned int)(3 * v8) >> 16));
  v61 = (__int16)(a4 - ((unsigned int)(3 * v8) >> 16));
  v57 = v61;
  v58 = (__int16)(v53 + v56);
  v59 = (__int16)(v53 - v56);
  sub_1165C(a2, (__int16)(v53 + v54), (__int16)(a4 + v55), v58, v61, v59, v81, 0, 0, 63488);
  return sub_1165C(a2, (__int16)(v53 - v54), (__int16)(a4 - v55), v58, v57, v59, v81, 0, 0, 2016);
}

