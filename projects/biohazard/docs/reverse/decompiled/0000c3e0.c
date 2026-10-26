int __fastcall sub_C3E0(int a1, unsigned __int16 *a2, int a3)
{
  int v6; // r8
  int v7; // r6
  int v8; // r11
  int result; // r0
  __int16 *v10; // r7
  unsigned int v11; // r0
  unsigned int v12; // r1
  bool v13; // cf
  int v14; // r0
  int v15; // r0
  int i; // r7
  int *v17; // r12
  int *v18; // r10
  char *v19; // r7
  int v20; // r0
  __int16 j; // r0
  int v22; // r10
  char *v23; // r5
  __int16 *v24; // r9
  int v25; // r10
  void (__fastcall *v26)(_WORD *, int, __int16 *, _WORD *); // r12
  int v27; // r8
  int v28; // r10
  void (__fastcall *v29)(_WORD *, int, __int16 *, _WORD *); // r12
  char *v30; // r10
  void (__fastcall *v31)(_WORD *, int, __int16 *, _WORD *); // r12
  int v32; // r8
  void (__fastcall *v33)(_WORD *, int, __int16 *, _WORD *); // r12
  int v34; // r0
  int v35; // r7
  int v36; // r10
  char *v37; // r11
  int v38; // r7
  int v39; // [sp+24h] [bp-250h]
  int v40; // [sp+24h] [bp-250h]
  int v41; // [sp+24h] [bp-250h]
  int v42; // [sp+28h] [bp-24Ch]
  int v43; // [sp+28h] [bp-24Ch]
  int v44; // [sp+28h] [bp-24Ch]
  int v45; // [sp+28h] [bp-24Ch]
  int v46; // [sp+28h] [bp-24Ch]
  int v47; // [sp+28h] [bp-24Ch]
  int v48; // [sp+2Ch] [bp-248h] BYREF
  int v49; // [sp+30h] [bp-244h]
  _WORD v50[96]; // [sp+34h] [bp-240h] BYREF
  _WORD v51[96]; // [sp+F4h] [bp-180h] BYREF
  _WORD v52[96]; // [sp+1B4h] [bp-C0h] BYREF

  v6 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_D188 + 0xFFFFFFFC + 50176) + 192))() + 40);
  v7 = *(_DWORD *)(v6 + 100);
  v48 = 0;
  v8 = a1 + 256;
  v49 = *(_DWORD *)a2;
  result = *(__int16 *)(a1 + 330);
  v10 = off_D18C + 25124;
  switch ( result )
  {
    case 1:
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = *a2 >> 1;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = a2[1] >> 1;
      sub_103F4(*(_DWORD *)(a1 + 276), 0, 8);
      if ( *(__int16 *)(a1 + 332) > 0 )
        *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 4;
      else
        *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 3;
      sub_21BA8(*(_DWORD *)(a1 + 276));
      sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
      if ( *(__int16 *)(a1 + 332) <= 0 )
      {
        sub_19618(v6, dword_D1F0, v52, 80);
        v35 = (__int16)((*a2 - sub_12BC8(v7, v52, 1)) / 2);
        v36 = (__int16)((a2[1] >> 1) - 15);
        v37 = (char *)off_D1F4 + 53320;
        (*(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)((char *)off_D1F4 + 0xFFFFFFFC + 53320)
                                                                 + 60))(
          v51,
          192,
          off_D1F8 + 26668,
          v52);
        sub_98BC(v7, a2, v36, (__int16 *)&v48, v51, 0, 0, 0, v35, 0, 2, 0);
        sub_19618(v6, dword_D1FC, v52, 80);
        v38 = (__int16)((*a2 - sub_12BC8(v7, v52, 1)) / 2);
        v32 = (__int16)((a2[1] >> 1) + 10);
        (*(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)&v37[-4] + 60))(
          v51,
          192,
          off_D200 + 26754,
          v52);
        v34 = v38;
      }
      else
      {
        sub_19618(v6, dword_D1D4, v52, 80);
        v44 = (__int16)((*a2 - sub_12BC8(v7, v52, 1)) / 2);
        v30 = (char *)off_D1D8 + 52600;
        v39 = (__int16)((a2[1] >> 1) - 25);
        (*(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)((char *)off_D1D8 + 0xFFFFFFFC + 52600)
                                                                 + 60))(
          v51,
          192,
          off_D1DC + 26310,
          v52);
        sub_98BC(v7, a2, v39, (__int16 *)&v48, v51, 0, 0, 0, v44, 0, 2, 0);
        sub_19618(v6, dword_D1E0, v52, 80);
        v45 = (__int16)((*a2 - sub_12BC8(v7, v52, 1)) / 2 - 10);
        v40 = (__int16)((a2[1] >> 1) - 8);
        (*(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *, _DWORD))(*(_DWORD *)&v30[-4] + 60))(
          v51,
          192,
          off_D1E4 + 26406,
          v52,
          *(__int16 *)(a1 + 332));
        sub_98BC(v7, a2, v40, (__int16 *)&v48, v51, 0, 0, 0, v45, 0, 2, 0);
        sub_19618(v6, dword_D1CC, v52, 80);
        v46 = (__int16)((*a2 >> 1) - 35);
        v41 = (__int16)((a2[1] >> 1) + 10);
        v31 = *(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)&v30[-4] + 60);
        if ( *(_WORD *)(a1 + 334) )
          v31(v51, 192, v10, v52);
        else
          v31(v51, 192, off_D1E8 + 26494, v52);
        sub_98BC(v7, a2, v41, (__int16 *)&v48, v51, 0, 0, 0, v46, 0, 2, 0);
        sub_19618(v6, dword_D1D0, v52, 80);
        v47 = (__int16)((*a2 >> 1) + 23);
        v32 = (__int16)((a2[1] >> 1) + 10);
        v33 = *(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)&v30[-4] + 60);
        if ( *(_WORD *)(a1 + 334) == 1 )
          v33(v51, 192, off_D1EC + 26590, v52);
        else
          v33(v51, 192, v10, v52);
        v34 = v47;
      }
      sub_98BC(v7, a2, v32, (__int16 *)&v48, v51, 0, 0, 0, v34, 0, 2, 0);
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 2;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = a2[1];
LABEL_42:
      sub_21BA8(*(_DWORD *)(a1 + 276));
      return sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
    case 4:
      sub_10C58(a2, 0, 0, (__int16)*a2, (__int16)a2[1], 0, dword_D190, dword_D190);
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = *a2 >> 1;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = 0;
      sub_103F4(*(_DWORD *)(a1 + 276), 0, 8);
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 9;
      sub_21BA8(*(_DWORD *)(a1 + 276));
      sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 2;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = a2[1];
      sub_21BA8(*(_DWORD *)(a1 + 276));
      sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
      for ( i = 0; i < 10; i = (__int16)(i + 1) )
      {
        if ( *((unsigned __int16 *)off_D198
             + *(__int16 *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_D194 + 0xFFFFFFFC + 50796) + 192))()
                                      + 1888)
                          + 388)
             + 25416) != i
          || (*(_DWORD *)(a1 + 320) & 2) != 0 )
        {
          v17 = &(*off_D1A0)[2 * i + 12723];
          sub_10C58(
            a2,
            (__int16)(*(_WORD *)v17 + 25),
            (__int16)(*((_WORD *)v17 + 1) + 48),
            (__int16)(*((_WORD *)v17 + 2) - *(_WORD *)v17),
            (__int16)(*((_WORD *)v17 + 3) - *((_WORD *)v17 + 1)),
            0,
            *((unsigned __int16 *)&(*off_D19C)[12718] + i),
            0);
        }
        v18 = &(*off_D1A8)[2 * i + 12748];
        sub_B5F8(
          (int)a2,
          (__int16)(*(_WORD *)v18 + 25),
          (__int16)(*((_WORD *)v18 + 1) + 48),
          (__int16)(*((_WORD *)v18 + 2) - *(_WORD *)v18 + 1),
          (__int16)(*((_WORD *)v18 + 3) - *((_WORD *)v18 + 1) + 1),
          dword_D1A4);
        sub_19618(v6, i + 4000, v52, 192);
        sub_98BC(
          v7,
          a2,
          (__int16)(*((_WORD *)v18 + 1) + 50),
          (__int16 *)&v48,
          v52,
          0,
          0xFFFF,
          0,
          (__int16)(*(_WORD *)v18 + 27),
          0,
          -1,
          0);
      }
      v19 = (char *)off_D1AC + 51240;
      v20 = (*(int (**)(void))(*(_DWORD *)((char *)off_D1AC + 0xFFFFFFFC + 51240) + 192))();
      sub_19618(v6, *(__int16 *)(*(_DWORD *)(v20 + 1888) + 388) + 3000, v52, 192);
      sub_19618(v6, dword_D1B0, v51, 192);
      v50[0] = 0;
      (*(void (__fastcall **)(_WORD *, int, _WORD *, _WORD *))(*(_DWORD *)&v19[-4] + 60))(v50, 192, v51, v52);
      sub_98BC(v7, a2, 122, (__int16 *)&v48, v50, 0, dword_D1B4, 0, 25, 0, 0, 0);
      v48 = 9830412;
      LOWORD(v49) = 152;
      for ( j = 13; ; j = HIWORD(v49) + 13 )
      {
        HIWORD(v49) = j;
        if ( SHIWORD(v48) + j > *(unsigned __int16 *)(a1 + 316) - 37 )
          break;
      }
      sub_19618(v6, *((__int16 *)&(*off_D1B8)[12874] + *(unsigned __int8 *)(*(_DWORD *)(a1 + 272) + 41)), v52, 192);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)&v19[-4] + 60))(
        v51,
        192,
        off_D1BC + 25768,
        v52);
      return sub_7C60(a1, (int)a2, a3, (int)v51, v48, v49, 1);
    case 5:
      sub_10C58(a2, 0, 0, (__int16)*a2, (__int16)a2[1], 0, dword_D190, dword_D190);
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = *a2 >> 1;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = 0;
      sub_103F4(*(_DWORD *)(a1 + 276), 0, 8);
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 5;
      sub_21BA8(*(_DWORD *)(a1 + 276));
      sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 2;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = a2[1];
      sub_21BA8(*(_DWORD *)(a1 + 276));
      sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = *a2 >> 1;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = a2[1] >> 1;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 4;
      sub_21BA8(*(_DWORD *)(a1 + 276));
      sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
      sub_19618(v6, dword_D1C0, v52, 80);
      v42 = (__int16)((*a2 - sub_12BC8(v7, v52, 1)) / 2);
      v22 = (__int16)((a2[1] >> 1) - 12);
      v23 = (char *)off_D1C4 + 51924;
      v24 = off_D1C8 + 25970;
      (*(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)((char *)off_D1C4 + 0xFFFFFFFC + 51924) + 60))(
        v51,
        192,
        off_D1C8 + 25970,
        v52);
      sub_98BC(v7, a2, v22, (__int16 *)&v48, v51, 0, 0, 0, v42, 0, 2, 0);
      sub_19618(v6, dword_D1CC, v52, 80);
      v43 = (__int16)((*a2 >> 1) - 35);
      v25 = (__int16)((a2[1] >> 1) + 10);
      v26 = *(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)&v23[-4] + 60);
      if ( *(_WORD *)(v8 + 78) )
        v26(v51, 192, v10, v52);
      else
        v26(v51, 192, v24, v52);
      sub_98BC(v7, a2, v25, (__int16 *)&v48, v51, 0, 0, 0, v43, 0, 2, 0);
      sub_19618(v6, dword_D1D0, v52, 80);
      v27 = (__int16)((*a2 >> 1) + 23);
      v28 = (__int16)((a2[1] >> 1) + 10);
      v29 = *(void (__fastcall **)(_WORD *, int, __int16 *, _WORD *))(*(_DWORD *)&v23[-4] + 60);
      if ( *(_WORD *)(v8 + 78) == 1 )
        v29(v51, 192, v24, v52);
      else
        v29(v51, 192, v10, v52);
      return sub_98BC(v7, a2, v28, (__int16 *)&v48, v51, 0, 0, 0, v27, 0, 2, 0);
    case 6:
      sub_10C58(a2, 0, 0, (__int16)*a2, (__int16)a2[1], 0, dword_D190, dword_D190);
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = *a2 >> 1;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = 0;
      sub_103F4(*(_DWORD *)(a1 + 276), 0, 8);
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 6;
      sub_21BA8(*(_DWORD *)(a1 + 276));
      sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
      sub_F7D0(*(_DWORD *)(a1 + 284), a2, a3, v6);
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 2;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = a2[1];
      sub_21BA8(*(_DWORD *)(a1 + 276));
      sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
      v11 = *(unsigned __int16 *)(*(_DWORD *)(a1 + 284) + 296);
      v12 = *(unsigned __int16 *)(*(_DWORD *)(a1 + 284) + 294) + *(unsigned __int16 *)(*(_DWORD *)(a1 + 284) + 298);
      v13 = v12 >= v11;
      if ( v12 < v11 )
        v12 = *(_DWORD *)(a1 + 324);
      v14 = a2[1];
      if ( !v13 )
        v14 += v12 << 30 >> 31;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = v14 - 8;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 8;
      sub_21BA8(*(_DWORD *)(a1 + 276));
      sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
      LOWORD(v15) = 57;
      if ( *(_WORD *)(*(_DWORD *)(a1 + 284) + 294) )
        v15 = (*(_DWORD *)(a1 + 324) << 30 >> 31) + 57;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = v15;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 7;
      goto LABEL_42;
  }
  return result;
}

