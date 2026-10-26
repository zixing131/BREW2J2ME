int __fastcall sub_F7D0(int a1, unsigned __int16 *a2, int a3, int a4)
{
  char *v8; // r4
  int v9; // r0
  __int16 *v10; // r9
  int v11; // r1
  unsigned __int16 *v12; // r0
  int v13; // r8
  _WORD *v14; // r6
  int v15; // r1
  int v16; // r8
  int v17; // r8
  unsigned __int16 *v18; // r0
  int v19; // r8
  _WORD *v20; // r6
  int v21; // r1
  int v22; // r1
  unsigned __int16 *v23; // r0
  int v24; // r0
  int v25; // r1
  unsigned int v26; // r1
  int v27; // r0
  unsigned int v28; // r9
  int v29; // r4
  int v30; // r6
  int v31; // r7
  unsigned __int16 *v32; // r0
  unsigned int v33; // r1
  int v34; // r1
  bool v35; // zf
  __int16 v36; // r0
  bool v37; // zf
  __int16 v38; // r0
  __int16 v39; // r2
  int v40; // r7
  char *v41; // r4
  int v42; // r0
  bool v43; // cc
  int v44; // r4
  int v45; // r0
  int result; // r0
  _WORD v47[96]; // [sp+20h] [bp-27Ch] BYREF
  _BYTE v48[32]; // [sp+E0h] [bp-1BCh] BYREF
  int v49; // [sp+150h] [bp-14Ch] BYREF
  int v50; // [sp+154h] [bp-148h] BYREF
  int v51; // [sp+158h] [bp-144h] BYREF
  int v52; // [sp+15Ch] [bp-140h] BYREF
  int v53; // [sp+160h] [bp-13Ch] BYREF
  int v54; // [sp+164h] [bp-138h] BYREF
  int v55; // [sp+168h] [bp-134h]
  int v56; // [sp+16Ch] [bp-130h]
  int v57; // [sp+170h] [bp-12Ch]
  unsigned int v58; // [sp+174h] [bp-128h]
  _WORD v59[132]; // [sp+178h] [bp-124h] BYREF
  __int16 v60; // [sp+280h] [bp-1Ch] BYREF
  unsigned __int16 v61; // [sp+282h] [bp-1Ah]
  __int16 v62; // [sp+284h] [bp-18h]
  __int16 v63; // [sp+286h] [bp-16h]
  int v64; // [sp+288h] [bp-14h]
  int v65; // [sp+28Ch] [bp-10h]
  int v66; // [sp+290h] [bp-Ch]
  int v67; // [sp+294h] [bp-8h]
  _WORD *v68; // [sp+298h] [bp-4h]

  v56 = (__int16)a2[8];
  v55 = (__int16)a2[9];
  v60 = *(_WORD *)(a1 + 146) + *(_WORD *)(a1 + 154) + *(_WORD *)(a1 + 118);
  v61 = *(_WORD *)(a1 + 148) + *(_WORD *)(a1 + 156) + *(_WORD *)(a1 + 120);
  v62 = *(_WORD *)(a1 + 150) - 2 * (*(_WORD *)(a1 + 154) + *(_WORD *)(a1 + 118));
  v63 = *(_WORD *)(a1 + 152) - 2 * (*(_WORD *)(a1 + 156) + *(_WORD *)(a1 + 120));
  v68 = (_WORD *)(a1 + 256);
  v8 = (char *)off_10140 + 63608;
  if ( *(_WORD *)(a1 + 302) == 1 )
  {
    v59[128] = *(_WORD *)(a1 + 146);
    v59[130] = *(_WORD *)(a1 + 150);
    v59[129] = *(_WORD *)(a1 + 148);
    v59[131] = *(_WORD *)(a1 + 152);
    v9 = (__int16)v68[25];
    if ( v68[25] )
    {
      v10 = off_10144 + 31836;
      if ( v9 == 1 )
      {
        v19 = *(_DWORD *)(a4 + 100);
        v20 = *(_WORD **)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v8[-4] + 192))() + 1888) + 392);
        sub_103F4(v20, 3, 8);
        v20[7] = 120;
        v20[8] = a2[1] >> 1;
        v20[4] = 5;
        sub_21BA8(v20);
        sub_1CE08(v20, a2, a3);
        v53 = 0;
        v54 = *(_DWORD *)a2;
        v21 = (__int16)v68[24];
        if ( v21 > 0 )
        {
          sub_19618(a4, v21, v48, 128);
          (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)&v8[-4] + 60))(v47, 192, v10, v48);
          sub_98BC(v19, a2, (__int16)(*(_WORD *)(a1 + 148) - 16), (__int16 *)&v53, v47, 0, 0, 0, 70, 0, 2, 0);
        }
        v22 = *(_DWORD *)(a1 + 124);
        if ( v22 >= 0 )
        {
          v23 = (unsigned __int16 *)sub_11DD8(a3, v22);
          if ( v23 )
            sub_3324(
              (int)a2,
              5,
              *(_WORD *)(a1 + 148) + *(_WORD *)(a1 + 152) - v23[1] + 25,
              (__int16)*v23,
              (__int16)v23[1],
              v23,
              0,
              0,
              1u,
              0,
              0);
        }
      }
      else if ( v9 == 2 )
      {
        v11 = *(_DWORD *)(a1 + 124);
        if ( v11 >= 0 )
        {
          v12 = (unsigned __int16 *)sub_11DD8(a3, v11);
          if ( v12 )
            sub_3324(
              (int)a2,
              0,
              *(_WORD *)(a1 + 148) - v12[1] - 20,
              (__int16)*v12,
              (__int16)v12[1],
              v12,
              0,
              0,
              1u,
              0,
              0);
        }
        v13 = *(_DWORD *)(a4 + 100);
        v14 = *(_WORD **)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v8[-4] + 192))() + 1888) + 392);
        sub_103F4(v14, 3, 8);
        v14[7] = *a2 >> 1;
        v14[8] = a2[1];
        v14[4] = 3;
        sub_21BA8(v14);
        sub_1CE08(v14, a2, a3);
        v53 = 0;
        v54 = *(_DWORD *)a2;
        v15 = (__int16)v68[24];
        if ( v15 > 0 )
        {
          sub_19618(a4, v15, v48, 128);
          (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)&v8[-4] + 60))(v47, 192, v10, v48);
          sub_98BC(v13, a2, (__int16)(*(_WORD *)(a1 + 148) - 16), (__int16 *)&v53, v47, 0, 0, 0, 14, 0, 2, 0);
        }
      }
    }
    else
    {
      v18 = (unsigned __int16 *)sub_11DD8(a3, dword_10148);
      if ( v18 )
        sub_18BC(
          (int)a2,
          (*a2 >> 2) - 6,
          (a2[1] >> 1) - 17,
          (__int16)((*a2 >> 1) + 12),
          35,
          v18,
          0,
          0,
          (__int16)*v18,
          (__int16)v18[1],
          1u,
          0,
          0);
    }
  }
  v16 = (v61 - (unsigned __int16)v68[19]) << 16;
  v64 = 0;
  v57 = 0;
  v67 = v55 / 2;
  v17 = v16 >> 16;
  while ( (unsigned __int16)v68[17] > v64 )
  {
    v24 = a1 + 4 * v64;
    if ( *(_DWORD *)(v24 + 160) )
    {
      v66 = a1 + v64;
      v35 = *(_BYTE *)(a1 + v64 + 84) == 1;
      v54 = 1;
      if ( v35 )
        v25 = 2016;
      else
        v25 = 0xFFFF;
      v53 = v25;
      v52 = 0;
      if ( v68[23] == 1 )
      {
        v54 = 0;
        v53 = dword_1014C;
        v52 = 0;
      }
      v51 = v54;
      v50 = v53;
      v49 = v52;
      v26 = *(_DWORD *)(v24 + 160);
      v27 = 0;
      v28 = v26;
      while ( *(_WORD *)(v26 + 2 * v27) )
        v27 = (__int16)(v27 + 1);
      v58 = v26 + 2 * v27;
      while ( v28 < v58 )
      {
        v29 = 0;
        v65 = v58 - v28;
        v30 = 0;
        v31 = 0;
        while ( v29 < v65 >> 1 && v62 > v30 )
        {
          v32 = (unsigned __int16 *)(v28 + 2 * v29);
          v33 = *v32;
          if ( v33 == 36 )
          {
            v34 = v32[1];
            v35 = v34 == 110;
            if ( v34 != 110 )
              v35 = v34 == 78;
            if ( v35 )
            {
              v36 = v29 + 2;
LABEL_50:
              v31 = v36;
              break;
            }
            v37 = v34 == 116;
            if ( v34 != 116 )
              v37 = v34 == 84;
            if ( v37 )
            {
              v51 = 0;
              sub_12D60(v32 + 2, &v51);
              v38 = v29 + 6;
            }
            else
            {
              sub_12C54(v32 + 1, &v50, &v49);
              v38 = v29 + 7;
            }
            v29 = v38;
          }
          else
          {
            if ( v33 >= 0xFF )
              v39 = v55;
            else
              v39 = v67;
            v30 = (__int16)(*(_WORD *)(a1 + 158) + v39 + v30);
            if ( v62 < v30 )
            {
              v31 = v29;
              break;
            }
            if ( v32[1] >= 0xFFu )
            {
              if ( v30 + v55 > v62 )
              {
LABEL_49:
                v36 = v29 + 1;
                goto LABEL_50;
              }
            }
            else if ( v67 + v30 > v62 )
            {
              goto LABEL_49;
            }
          }
          v40 = (v29 + 1) << 16;
          v29 = (__int16)(v29 + 1);
          v31 = v40 >> 16;
        }
        v41 = (char *)off_10150 + 65148;
        (*(void (__fastcall **)(_WORD *, _DWORD, int))(*(_DWORD *)((char *)off_10150 + 0xFFFFFFFC + 65148) + 4))(
          v59,
          0,
          256);
        if ( v31 >= v65 >> 1 )
          v31 = (__int16)(v65 >> 1);
        (**(void (__fastcall ***)(_WORD *, unsigned int, int))&v41[-4])(v59, v28, 2 * v31);
        v42 = (__int16)v61 + v63;
        v43 = v42 <= v17;
        if ( v42 > v17 )
        {
          v42 = v17 + v56;
          v43 = v17 + v56 <= (__int16)v61;
        }
        if ( !v43 )
        {
          v42 = *(_DWORD *)(a4 + 100);
          v43 = *(unsigned __int16 *)(v42 + 48) + v17 <= (__int16)v61;
        }
        if ( !v43 )
        {
          if ( *(_BYTE *)(a1 + 292) == 1 )
          {
            v44 = v60;
          }
          else
          {
            v45 = (__int16)(sub_12BC8(v42, v59, *(__int16 *)(a1 + 158)) - *(_WORD *)(a1 + 158));
            if ( v62 < v45 )
              v45 = (__int16)(sub_12BC8(*(_DWORD *)(a4 + 100), v59, *(__int16 *)(a1 + 158)) - *(_WORD *)(a1 + 158));
            v44 = (__int16)(v60 + ((v62 - v45) >> 1));
          }
          if ( *(_BYTE *)(v66 + 84) == 1 )
          {
            sub_9534(
              *(_DWORD *)(a4 + 100),
              a2,
              v17,
              &v60,
              v59,
              &v54,
              &v53,
              &v52,
              (__int16)(v44 + 1),
              *(__int16 *)(a1 + 158),
              0,
              0);
          }
          else
          {
            if ( *(_BYTE *)a1 && *(__int16 *)(a1 + 2) == v64 )
              sub_10C58(a2, v44, v17, v62, 16, 16, off_10154, 0);
            sub_9534(
              *(_DWORD *)(a4 + 100),
              a2,
              (__int16)(v17 + 2),
              &v60,
              v59,
              &v54,
              &v53,
              &v52,
              (__int16)(v44 + 1),
              *(__int16 *)(a1 + 158),
              0,
              0);
          }
        }
        v28 += 2 * v31;
        v54 = v51;
        v53 = v50;
        v52 = v49;
        v17 = (__int16)(*(_WORD *)(*(_DWORD *)(a4 + 100) + 48) + v17 + 4);
        v57 = (__int16)(v57 + v56 + 4);
      }
    }
    v64 = (__int16)(v64 + 1);
  }
  result = (unsigned __int16)v68[20];
  if ( !v68[20] )
  {
    v68[20] = v57;
    result = *(unsigned __int16 *)(a1 + 152) - 2 * (*(unsigned __int16 *)(a1 + 156) + *(unsigned __int16 *)(a1 + 120));
    v68[21] = result;
  }
  return result;
}

