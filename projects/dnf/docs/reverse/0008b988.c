int __fastcall sub_8B988(__int16 *a1, int a2, int a3)
{
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r0
  int v8; // r0
  int v9; // r0
  int v10; // r1
  int v11; // r2
  int v12; // r5
  int i; // r7
  int v14; // r4
  int v15; // r0
  int v16; // r3
  int *v17; // r3
  int v18; // r0
  int v19; // r0
  int v20; // r1
  int v21; // r2
  int v22; // r5
  int j; // r7
  int v24; // r4
  int v25; // r0
  int v26; // r3
  int *v27; // r3
  int v28; // r0
  int v29; // r0
  int v30; // r1
  int v31; // r2
  int v32; // r5
  int k; // r7
  int v34; // r4
  int v35; // r0
  int v36; // r3
  int *v37; // r3
  int v38; // r0
  int v39; // r0
  int m; // r7
  int v41; // r5
  int v42; // r4
  int v43; // r0
  int v44; // r3
  int *v45; // r3
  int v46; // r1
  int v47; // r0
  int v48; // r4
  int v49; // r5
  int v50; // r0
  int v51; // r3
  int v52; // r0
  int n; // r7
  int v54; // r5
  int v55; // r4
  int v56; // r0
  int v57; // r3
  int *v58; // r3
  int v59; // r1
  int v60; // r0
  int v61; // r4
  int v62; // r5
  int v63; // r0
  int v64; // r3
  int v65; // r0
  int ii; // r7
  int v67; // r5
  int v68; // r4
  int v69; // r0
  int v70; // r3
  int *v71; // r3
  int v72; // r1
  int v73; // r0
  int v74; // r4
  int v75; // r5
  int v76; // r0
  int v77; // r3
  int v78; // r0
  int v79; // r0
  int v80; // r3
  int result; // r0
  int v83; // [sp+24h] [bp-Ch]
  int v84; // [sp+28h] [bp-8h]
  int v85; // [sp+2Ch] [bp-4h]

  sub_8BDE8(a1 + 4, a2, a3, 572917);
  *((_BYTE *)a1 + 32) = 0;
  sub_8BDF0(a1, a2, 2);
  sub_8BDF0(a1 + 1, a2 + 2, 1);
  sub_8BDF0((char *)a1 + 3, a2 + 3, 1);
  sub_8BDF0(a1 + 2, a2 + 4, 1);
  sub_8BDF0((char *)a1 + 5, a2 + 5, 1);
  sub_8BDF0(a1 + 3, a2 + 6, 1);
  v6 = *((unsigned __int8 *)a1 + 2);
  if ( v6 == 1 )
  {
    v9 = sub_8BDE8(66, v4, v5, &unk_14032EC);
    *((_DWORD *)a1 + 15) = v9;
    *((_DWORD *)a1 + 16) = v9;
    v12 = a2 + 7;
    for ( i = 0; i != 64; i += 8 )
    {
      v14 = *((_DWORD *)a1 + 16);
      v15 = sub_8BDE8(42, v10, v11, &unk_14032EC);
      v16 = *((_DWORD *)a1 + 16);
      *(_DWORD *)(i + v14) = v15;
      v17 = (int *)(i + v16);
      v18 = *v17;
      v17[1] = *v17;
      sub_8BDE8(v18, v12, 38, &unk_140327C);
      v12 += 38;
    }
    v19 = sub_8BDEA(34);
    v20 = a2;
    v21 = 311;
    *((_DWORD *)a1 + 17) = v19;
    *((_DWORD *)a1 + 18) = v19;
    v22 = a2 + 311;
    for ( j = 0; j != 32; j += 8 )
    {
      v24 = *((_DWORD *)a1 + 18);
      v25 = sub_8BDE8(46, v20, v21, &unk_14032EC);
      v26 = *((_DWORD *)a1 + 18);
      *(_DWORD *)(j + v24) = v25;
      v27 = (int *)(j + v26);
      v28 = *v27;
      v27[1] = *v27;
      sub_8BDE8(v28, v22, 42, &unk_140327C);
      v22 += 42;
    }
    v29 = sub_8BDEA(34);
    v30 = a2;
    v31 = 479;
    *((_DWORD *)a1 + 19) = v29;
    *((_DWORD *)a1 + 20) = v29;
    v32 = a2 + 479;
    for ( k = 0; k != 32; k += 8 )
    {
      v34 = *((_DWORD *)a1 + 20);
      v35 = sub_8BDE8(60, v30, v31, &unk_14032EC);
      v36 = *((_DWORD *)a1 + 20);
      *(_DWORD *)(k + v34) = v35;
      v37 = (int *)(k + v36);
      v38 = *v37;
      v37[1] = *v37;
      sub_8BDE8(v38, v32, 56, &unk_140327C);
      v32 += 56;
    }
    v39 = sub_8BDEA(66);
    *((_DWORD *)a1 + 9) = v39;
    *((_DWORD *)a1 + 10) = v39;
    v85 = 703;
    for ( m = 0; m != 56; m += 8 )
    {
      v41 = **(__int16 **)(m + *((_DWORD *)a1 + 16) + 12) - **(__int16 **)(m + *((_DWORD *)a1 + 16) + 4);
      v42 = *((_DWORD *)a1 + 10);
      v43 = sub_8BDE8(v41 + 2, 0, 0, &unk_14032EC);
      v44 = *((_DWORD *)a1 + 10);
      *(_DWORD *)(m + v42) = v43;
      v45 = (int *)(m + v44);
      v46 = *v45;
      v45[1] = *v45;
      v47 = sub_8B31C(
              a2 + v85,
              v46,
              *(_DWORD *)(m + *((_DWORD *)a1 + 16) + 4),
              **(__int16 **)(m + *((_DWORD *)a1 + 16) + 12),
              v41,
              20);
      v85 += v47;
    }
    v48 = **(__int16 **)(*((_DWORD *)a1 + 18) + 4) - **(__int16 **)(*((_DWORD *)a1 + 16) + 60);
    v49 = *((_DWORD *)a1 + 10);
    v50 = sub_8BDE4(v48 + 2, &unk_14032EC);
    v51 = *((_DWORD *)a1 + 10);
    *(_DWORD *)(v49 + 56) = v50;
    *(_DWORD *)(v51 + 60) = *(_DWORD *)(v51 + 56);
    v84 = v85
        + sub_8B31C(
            a2 + v85,
            *(_DWORD *)(v51 + 60),
            *(_DWORD *)(*((_DWORD *)a1 + 16) + 60),
            **(__int16 **)(*((_DWORD *)a1 + 18) + 4),
            v48,
            20);
    v52 = sub_8BDE4(34, &unk_14032EC);
    *((_DWORD *)a1 + 11) = v52;
    *((_DWORD *)a1 + 12) = v52;
    for ( n = 0; n != 24; n += 8 )
    {
      v54 = **(__int16 **)(n + *((_DWORD *)a1 + 18) + 12) - **(__int16 **)(n + *((_DWORD *)a1 + 18) + 4);
      v55 = *((_DWORD *)a1 + 12);
      v56 = sub_8BDE6(v54 + 2);
      v57 = *((_DWORD *)a1 + 12);
      *(_DWORD *)(n + v55) = v56;
      v58 = (int *)(n + v57);
      v59 = *v58;
      v58[1] = *v58;
      v60 = sub_8B31C(
              a2 + v84,
              v59,
              *(_DWORD *)(n + *((_DWORD *)a1 + 18) + 4),
              **(__int16 **)(n + *((_DWORD *)a1 + 18) + 12),
              v54,
              22);
      v84 += v60;
    }
    v61 = **(__int16 **)(*((_DWORD *)a1 + 20) + 4) - **(__int16 **)(*((_DWORD *)a1 + 18) + 28);
    v62 = *((_DWORD *)a1 + 12);
    v63 = sub_8BDE4(v61 + 2, &unk_14032EC);
    v64 = *((_DWORD *)a1 + 12);
    *(_DWORD *)(v62 + 24) = v63;
    *(_DWORD *)(v64 + 28) = *(_DWORD *)(v64 + 24);
    v83 = v84
        + sub_8B31C(
            a2 + v84,
            *(_DWORD *)(v64 + 28),
            *(_DWORD *)(*((_DWORD *)a1 + 18) + 28),
            **(__int16 **)(*((_DWORD *)a1 + 20) + 4),
            v61,
            22);
    v65 = sub_8BDE4(34, &unk_14032EC);
    *((_DWORD *)a1 + 13) = v65;
    *((_DWORD *)a1 + 14) = v65;
    for ( ii = 0; ii != 24; ii += 8 )
    {
      v67 = **(__int16 **)(ii + *((_DWORD *)a1 + 20) + 12) - **(__int16 **)(ii + *((_DWORD *)a1 + 20) + 4);
      v68 = *((_DWORD *)a1 + 14);
      v69 = sub_8BDE6(v67 + 2);
      v70 = *((_DWORD *)a1 + 14);
      *(_DWORD *)(ii + v68) = v69;
      v71 = (int *)(ii + v70);
      v72 = *v71;
      v71[1] = *v71;
      v73 = sub_8B31C(
              a2 + v83,
              v72,
              *(_DWORD *)(ii + *((_DWORD *)a1 + 20) + 4),
              **(__int16 **)(ii + *((_DWORD *)a1 + 20) + 12),
              v67,
              29);
      v83 += v73;
    }
    v74 = *a1 - **(__int16 **)(*((_DWORD *)a1 + 20) + 28);
    v75 = *((_DWORD *)a1 + 14);
    v76 = sub_8BDE4(v74 + 2, &unk_14032EC);
    v77 = *((_DWORD *)a1 + 14);
    *(_DWORD *)(v75 + 24) = v76;
    *(_DWORD *)(v77 + 28) = *(_DWORD *)(v77 + 24);
    return v83 + sub_8B31C(a2 + v83, *(_DWORD *)(v77 + 28), *(_DWORD *)(*((_DWORD *)a1 + 20) + 28), *a1, v74, 29);
  }
  else if ( *((_BYTE *)a1 + 2) )
  {
    if ( v6 == 2 )
    {
      v78 = sub_8BDEA(412);
      *((_DWORD *)a1 + 27) = v78;
      *((_DWORD *)a1 + 28) = v78;
      sub_8BDF0(v78, a2 + 7, 408);
      v79 = sub_8BDEA(*a1 + 2);
      v80 = *a1;
      *((_DWORD *)a1 + 25) = v79;
      *((_DWORD *)a1 + 26) = v79;
      result = sub_8B31C(a2 + 415, v79, *((_DWORD *)a1 + 28), v80, v80, 204) + 415;
      *(_WORD *)(*((_DWORD *)a1 + 28) + 408) = *a1;
    }
    else
    {
      return 7;
    }
  }
  else
  {
    v7 = sub_8BDEA(194);
    *((_DWORD *)a1 + 23) = v7;
    *((_DWORD *)a1 + 24) = v7;
    v8 = sub_8BDEA(*a1 + 2);
    *((_DWORD *)a1 + 21) = v8;
    *((_DWORD *)a1 + 22) = v8;
    sub_8BDF0(*((_DWORD *)a1 + 24), a2 + 7, 190);
    result = sub_8B31C(a2 + 197, *((_DWORD *)a1 + 22), *((_DWORD *)a1 + 24), *a1, *a1, 95) + 197;
    *(_WORD *)(*((_DWORD *)a1 + 24) + 190) = *a1;
  }
  return result;
}
