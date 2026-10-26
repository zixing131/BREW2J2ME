unsigned __int16 *__fastcall sub_7228(_DWORD *a1, int a2, int a3, int a4)
{
  unsigned __int16 *result; // r0
  int v9; // r8
  int v10; // lr
  char **v11; // r9
  _DWORD *v12; // r0
  char *v13; // r1
  char *v14; // t1
  _DWORD *v15; // r10
  __int16 *v16; // r3
  __int16 *v17; // r12
  int i; // r2
  char v19; // r0
  char v20; // t1
  __int16 v21; // r0
  __int16 *v22; // r3
  int v23; // r2
  _WORD *v24; // r1
  __int16 v25; // t1
  int v26; // r11
  int v27; // r9
  unsigned __int16 *v28; // r8
  int *v29; // r10
  int v30; // r0
  int v31; // r1
  bool v32; // zf
  unsigned __int16 *v33; // r12
  int *v34; // r2
  int v35; // r1
  int v36; // r2
  bool v37; // zf
  unsigned __int16 *v38; // r12
  unsigned __int16 *v39; // r2
  int v40; // r1
  int v41; // r2
  bool v42; // zf
  int v43; // r4
  int v44; // r7
  int v45; // r8
  int v46; // r0
  int v47; // [sp+24h] [bp-38h]
  int v48; // [sp+24h] [bp-38h]
  int v49; // [sp+28h] [bp-34h]
  __int16 v50; // [sp+2Ch] [bp-30h]
  __int16 v51; // [sp+30h] [bp-2Ch]
  int v52; // [sp+38h] [bp-24h]

  result = (unsigned __int16 *)a1[550];
  if ( result )
  {
    v9 = 0;
    v51 = dword_77A0;
    v50 = dword_77A0 + 576;
    v10 = *result;
    v47 = result[1];
    v11 = (char **)*((_DWORD *)result + 10);
    v12 = (_DWORD *)(*(_DWORD *)(a2 + 20) + 4 * a4);
    while ( v9 < v47 )
    {
      v14 = *v11;
      v11 += 2;
      v13 = v14;
      v15 = v12 + 1;
      v16 = (__int16 *)(*v12 + 2 * a3);
      v17 = v16;
      for ( i = 0; i < v10; ++i )
      {
        v20 = *v13;
        v13 += 2;
        v19 = v20;
        if ( (v20 & 2) != 0 )
        {
          v21 = 512;
        }
        else if ( (v19 & 1) != 0 )
        {
          v21 = v51;
        }
        else
        {
          v21 = v50;
        }
        *v16 = v21;
        v22 = v16 + 1;
        *v22 = v21;
        v16 = v22 + 1;
      }
      v23 = 0;
      v24 = (_WORD *)(*v15 + 2 * a3);
      v12 = v15 + 1;
      while ( v23 < 2 * v10 )
      {
        v25 = *v17++;
        ++v23;
        *v24++ = v25;
      }
      ++v9;
    }
    v52 = *(unsigned __int8 *)(a1[556] + 41);
    v26 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_77A4 + 0xFFFFFFFC + 29464) + 192))() + 36);
    v27 = **(__int16 **)(a1[556] + 820);
    v28 = (unsigned __int16 *)sub_11DD8(v26, dword_77A8);
    v49 = *v28;
    v48 = v28[1];
    v29 = &(*off_77AC)[2 * v27 + 7386];
    sub_18BC(
      a2,
      (__int16)(a3 + 2 * *(_WORD *)v29 + 2 - (v49 >> 2)),
      a4 + 2 * *((_WORD *)v29 + 1) + 2 - (v48 >> 2),
      (__int16)(v49 >> 1),
      (__int16)(v48 >> 1),
      v28,
      0,
      0,
      (__int16)v49,
      (__int16)v48,
      1u,
      0,
      0);
    v30 = *((unsigned __int16 *)v29 + 2);
    v31 = *((unsigned __int16 *)v29 + 3);
    v32 = v30 == 0;
    if ( *((_WORD *)v29 + 2) )
      v32 = v31 == 0;
    if ( !v32 )
      sub_18BC(
        a2,
        (__int16)(a3 + 2 * v30 + 2 - v49 / 4),
        a4 + 2 * v31 + 2 - v48 / 4,
        (__int16)(v49 >> 1),
        (__int16)(v48 >> 1),
        v28,
        0,
        0,
        (__int16)v49,
        (__int16)v48,
        1u,
        0,
        0);
    v33 = (unsigned __int16 *)sub_11DD8(v26, dword_77B0);
    v34 = &(*off_77B4)[v27 + 7492];
    v35 = *(unsigned __int16 *)v34;
    v36 = *((unsigned __int16 *)v34 + 1);
    v37 = v35 == 0;
    if ( v35 )
      v37 = v36 == 0;
    if ( !v37 )
      sub_18BC(
        a2,
        (__int16)(a3 + 2 * v35 + 2 - ((int)*v33 >> 2)),
        a4 + 2 * v36 + 2 - ((int)v33[1] >> 2),
        *v33 / 2,
        v33[1] / 2,
        v33,
        0,
        0,
        (__int16)*v33,
        (__int16)v33[1],
        1u,
        0,
        0);
    v38 = (unsigned __int16 *)sub_11DD8(v26, dword_77B8);
    if ( v52 > 35 )
      v52 = 35;
    v39 = (unsigned __int16 *)&(*off_77BC)[7558] + 3 * v52;
    if ( *v39 == v27 )
    {
      v40 = v39[1];
      v41 = v39[2];
      v42 = v40 == 0;
      if ( v40 )
        v42 = v41 == 0;
      if ( !v42 )
        sub_18BC(
          a2,
          (__int16)(a3 + 2 * v40 + 2 - ((int)*v38 >> 2)),
          a4 + 2 * v41 + 2 - ((int)v38[1] >> 2),
          *v38 / 2,
          v38[1] / 2,
          v38,
          0,
          0,
          (__int16)*v38,
          (__int16)v38[1],
          1u,
          0,
          0);
    }
    v43 = a3 + 2 * a1[522] / 32;
    v44 = a4 + 2 * a1[523] / 32;
    sub_10C58(a2, (__int16)(v43 - 2), (__int16)(v44 - 2), 5, 5, 0, dword_77C0, dword_77C0);
    v45 = v43 + ((12 * sub_196D8(a1[525])) >> 16);
    v46 = sub_197A8(a1[525]);
    return (unsigned __int16 *)sub_7DEC(
                                 a2,
                                 (__int16)v43,
                                 (__int16)v44,
                                 (__int16)v45,
                                 (__int16)(v44 + ((unsigned int)(12 * v46) >> 16)),
                                 dword_77C0);
  }
  return result;
}

