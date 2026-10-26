int __fastcall sub_E1D8(int a1, unsigned __int16 *a2, int a3)
{
  int v6; // r9
  int v7; // r7
  int result; // r0
  bool v9; // zf
  int v10; // r10
  __int16 v11; // r6
  int v12; // r6
  int v13; // r0
  __int16 v14; // r0
  int v15; // r6
  int v16; // r6
  int v17; // r3
  int v18; // r2
  int v19; // r1
  void (__fastcall *v20)(_WORD *, int, __int16 *, _WORD *); // r12
  __int16 v21; // r6
  int v22; // r6
  __int16 *v23; // r10
  int v24; // r11
  char *v25; // r6
  int v26; // r11
  void (__fastcall *v27)(_WORD *, int, __int16 *, _WORD *); // r12
  int v28; // r9
  int v29; // r11
  void (__fastcall *v30)(_WORD *, int, __int16 *, _WORD *); // r12
  int v31; // r4
  int v32; // r6
  char *v33; // r8
  int v34; // r4
  int v35; // r6
  int v36; // [sp+24h] [bp-250h]
  int v37; // [sp+24h] [bp-250h]
  int v38; // [sp+28h] [bp-24Ch] BYREF
  int v39; // [sp+2Ch] [bp-248h]
  _WORD v40[104]; // [sp+30h] [bp-244h] BYREF
  _WORD v41[128]; // [sp+170h] [bp-104h] BYREF
  int v42; // [sp+270h] [bp-4h]

  v6 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_ED58 + 0xFFFFFFFC + 57848) + 192))() + 40);
  v7 = *(_DWORD *)(v6 + 100);
  v38 = 0;
  v39 = *(_DWORD *)a2;
  sub_10C58(a2, 0, 0, (__int16)*a2, (__int16)a2[1], 0, dword_ED5C, dword_ED5C);
  sub_103F4(*(_DWORD *)(a1 + 276), 4, 8);
  *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = *a2 >> 1;
  *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = 0;
  *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 0;
  sub_21BA8(*(_DWORD *)(a1 + 276));
  sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
  *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = a2[1];
  *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 1;
  sub_21BA8(*(_DWORD *)(a1 + 276));
  sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
  result = *(unsigned __int16 *)(a1 + 292);
  if ( !*(_WORD *)(a1 + 292) )
  {
    sub_8164((__int16 *)a1, a2, a3);
LABEL_18:
    result = *(unsigned __int16 *)(a1 + 292);
    if ( result == 2 )
    {
      sub_10C58(a2, 0, 0, (__int16)*a2, (__int16)a2[1], dword_EDA8, 0, 0);
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = *a2 >> 1;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = a2[1] >> 1;
      sub_103F4(*(_DWORD *)(a1 + 276), 0, 8);
      if ( *(_DWORD *)(a1 + 296) < *(_DWORD *)(*(_DWORD *)(a1 + 272) + 28) )
        *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 4;
      else
        *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 3;
      sub_21BA8(*(_DWORD *)(a1 + 276));
      sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
      v23 = off_EDAC + 29880;
      if ( *(_DWORD *)(a1 + 296) >= *(_DWORD *)(*(_DWORD *)(a1 + 272) + 28) )
      {
        sub_19618(v6, dword_EDC4, v41, 80);
        v31 = (__int16)((*a2 - sub_12BC8(v7, v41, 1)) / 2);
        v32 = (__int16)((a2[1] >> 1) - 24);
        v33 = (char *)off_EDC8 + 60500;
        (*(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)((char *)off_EDC8 + 0xFFFFFFFC + 60500)
                                                                 + 60))(
          v40,
          320,
          v23,
          v41);
        sub_98BC(v7, a2, v32, (__int16 *)&v38, v40, 0, 0, 0, v31, 0, 2, 0);
        sub_19618(v6, dword_EDCC, v41, 80);
        v34 = (__int16)((*a2 - sub_12BC8(v7, v41, 1)) / 2);
        v35 = (__int16)((a2[1] >> 1) + 10);
        (*(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)&v33[-4] + 60))(
          v40,
          320,
          off_EDD0 + 30342,
          v41);
        return sub_98BC(v7, a2, v35, (__int16 *)&v38, v40, 0, 0, 0, v34, 0, 2, 0);
      }
      else
      {
        sub_19618(v6, 8016, v41, 80);
        v36 = (__int16)((*a2 - sub_12BC8(v7, v41, 1)) / 2);
        v24 = (__int16)((a2[1] >> 1) - 12);
        v25 = (char *)off_EDB0 + 59860;
        (*(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)((char *)off_EDB0 + 0xFFFFFFFC + 59860)
                                                                 + 60))(
          v40,
          320,
          v23,
          v41);
        sub_98BC(v7, a2, v24, (__int16 *)&v38, v40, 0, 0, 0, v36, 0, 2, 0);
        sub_19618(v6, dword_EDB4, v41, 80);
        v37 = (__int16)((*a2 >> 1) - 35);
        v26 = (__int16)((a2[1] >> 1) + 10);
        v27 = *(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)&v25[-4] + 60);
        if ( *(_BYTE *)(a1 + 315) == 1 )
          v27(v40, 320, v23, v41);
        else
          v27(v40, 320, off_EDB8 + 30034, v41);
        sub_98BC(v7, a2, v26, (__int16 *)&v38, v40, 0, 0, 0, v37, 0, 2, 0);
        sub_19618(v6, dword_EDBC, v41, 80);
        v28 = (__int16)((*a2 >> 1) + 23);
        v29 = (__int16)((a2[1] >> 1) + 10);
        v30 = *(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)&v25[-4] + 60);
        if ( *(_BYTE *)(a1 + 315) )
          v30(v40, 320, off_EDC0 + 30128, v41);
        else
          v30(v40, 320, v23, v41);
        sub_98BC(v7, a2, v29, (__int16 *)&v38, v40, 0, 0, 0, v28, 0, 2, 0);
        sub_103F4(*(_DWORD *)(a1 + 276), 4, 8);
        *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = *a2 >> 1;
        *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = a2[1];
        *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 1;
        sub_21BA8(*(_DWORD *)(a1 + 276));
        return sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
      }
    }
    return result;
  }
  v9 = result == 1;
  if ( result != 1 )
    v9 = result == 2;
  if ( v9 )
  {
    v10 = (__int16)((*(unsigned __int16 *)(a1 + 316) - 226) / 2 + 42);
    sub_19618(v6, dword_ED60, v41, 80);
    v11 = sub_12BC8(v7, v41, 0);
    (*(void (__fastcall **)(_WORD *, int, __int16 *, _DWORD))(*(_DWORD *)((char *)off_ED64 + 0xFFFFFFFC + 58188) + 60))(
      v40,
      320,
      off_ED68 + 29100,
      *(_DWORD *)(*(_DWORD *)(a1 + 272) + 28));
    v12 = (__int16)((*a2 - (__int16)(sub_12BC8(v7, v40, 0) + v11)) / 2);
    (*(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *, _DWORD))(*(_DWORD *)((char *)off_ED6C + 0xFFFFFFFC + 58284)
                                                                     + 60))(
      v40,
      320,
      off_ED70 + 29152,
      v41,
      *(_DWORD *)(*(_DWORD *)(a1 + 272) + 28));
    sub_98BC(v7, a2, v10, (__int16 *)&v38, v40, 0, 0, 0, v12, 0, 0, 0);
    sub_103F4(*(_DWORD *)(a1 + 276), 5, 8);
    *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = *a2 >> 1;
    *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = v10 + 14;
    *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 0;
    sub_21BA8(*(_DWORD *)(a1 + 276));
    sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
    v13 = *(__int16 *)(a1 + 8 * *(__int16 *)(a1 + 2) + 10);
    if ( v13 >= 0 )
      sub_C300(a1, (int)a2, a3, v13, 39, v10 + 17);
    sub_103F4(*(_DWORD *)(a1 + 276), 4, 8);
    *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = *(_WORD *)(a1 + 8 * *(__int16 *)(a1 + 2) + 8) + 7;
    sub_21BA8(*(_DWORD *)(a1 + 276));
    sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
    v41[0] = 0;
    sub_19618(v6, *(__int16 *)(a1 + 8 * *(__int16 *)(a1 + 2) + 4), v41, 256);
    (*(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)((char *)off_ED74 + 0xFFFFFFFC + 58628) + 60))(
      v40,
      320,
      off_ED78 + 29322,
      v41);
    v14 = (*(int (__fastcall **)(_WORD *))(*(_DWORD *)((char *)off_ED7C + 0xFFFFFFFC + 58672) + 48))(v40);
    v41[0] = 0;
    v15 = v14;
    sub_19618(v6, *(__int16 *)(a1 + 8 * *(__int16 *)(a1 + 2) + 6), v41, 256);
    (*(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)((char *)off_ED80 + 0xFFFFFFFC + 58764) + 60))(
      &v40[v15],
      320 - 2 * v15,
      off_ED84 + 29392,
      v41);
    LOWORD(v38) = 40;
    HIWORD(v38) = v10 + 50;
    v39 = 1704032;
    sub_7C60(a1, (int)a2, a3, (int)v40, v38, 1704032, 1);
    v38 = 0;
    v16 = 0;
    v39 = *(_DWORD *)a2;
    do
    {
      if ( *(__int16 *)(a1 + 334) == v16 )
      {
        sub_103F4(*(_DWORD *)(a1 + 276), 5, 8);
        *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = *a2 >> 1;
        *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = v10 + 14 * v16 + 78;
        *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 1;
        sub_21BA8(*(_DWORD *)(a1 + 276));
        sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
      }
      v17 = *(unsigned __int8 *)(a1 + v16 + 310);
      v18 = *(unsigned __int8 *)(a1 + v16 + 305);
      v19 = *(unsigned __int8 *)(a1 + v16 + 300);
      v42 = v10 + 14 * v16;
      sub_6338(a1, (int)a2, a3, 50, v42 + 82, v19, v18, v17);
      v41[0] = 0;
      sub_19618(v6, v16 + 8010, v41, 256);
      v20 = *(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)((char *)off_ED88 + 0xFFFFFFFC + 59112)
                                                                    + 60);
      if ( *(__int16 *)(a1 + 334) == v16 )
        v20(v40, 320, off_ED8C + 29568, v41);
      else
        v20(v40, 320, off_ED90 + 29582, v41);
      sub_98BC(v7, a2, (__int16)(v42 + 81), (__int16 *)&v38, v40, 0, 0, 0, 19, 0, 0, 0);
      v16 = (__int16)(v16 + 1);
    }
    while ( v16 < 5 );
    if ( *(int *)(a1 + 296) > 0 )
    {
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = v10 + 76;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 3;
      sub_21BA8(*(_DWORD *)(a1 + 276));
      sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
      v41[0] = 0;
      sub_19618(v6, dword_ED94, v41, 256);
      v21 = sub_12BC8(v7, v41, 0);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, _DWORD))(*(_DWORD *)((char *)off_ED98 + 0xFFFFFFFC + 59384) + 60))(
        v40,
        320,
        off_ED9C + 29700,
        *(_DWORD *)(a1 + 296));
      v22 = (__int16)((*a2 - (__int16)(sub_12BC8(v7, v40, 0) + v21)) / 2);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *, _DWORD))(*(_DWORD *)((char *)off_EDA0
                                                                                   + 0xFFFFFFFC
                                                                                   + 59480)
                                                                       + 60))(
        v40,
        320,
        off_EDA4 + 29750,
        v41,
        *(_DWORD *)(a1 + 296));
      sub_98BC(v7, a2, (__int16)(v10 + 57), (__int16 *)&v38, v40, 0, 0, 0, v22, 0, 0, 0);
    }
    goto LABEL_18;
  }
  return result;
}

