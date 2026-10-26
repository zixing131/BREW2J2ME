int __fastcall sub_EDD4(int a1, unsigned __int16 *a2, int a3)
{
  char *v6; // r6
  _WORD *v7; // r4
  int v8; // r6
  int v9; // r10
  int result; // r0
  int v11; // r8
  int v12; // r1
  int i; // r9
  void (__fastcall *v14)(_WORD *, int, __int16 *, _BYTE *); // r12
  int v15; // r0
  int v16; // r11
  int v17; // r1
  bool v18; // zf
  __int16 v19; // r0
  unsigned int v20; // r0
  unsigned int v21; // r1
  bool v22; // cf
  int v23; // r0
  int v24; // r0
  bool v25; // zf
  int v26; // r9
  int v27; // r11
  char *v28; // r4
  __int16 *v29; // r7
  int v30; // r9
  int v31; // r11
  void (__fastcall *v32)(_WORD *, int, __int16 *, _BYTE *); // r12
  int v33; // r6
  int v34; // r9
  void (__fastcall *v35)(_WORD *, int, __int16 *, _BYTE *); // r12
  int v36; // r10
  int v37; // r7
  int v38; // r0
  int v39; // r11
  int v40; // r4
  int v41; // r1
  int v42; // r1
  int v43; // [sp+10h] [bp-3E4h]
  __int16 v44[4]; // [sp+20h] [bp-3D4h] BYREF
  _WORD v45[192]; // [sp+28h] [bp-3CCh] BYREF
  _BYTE v46[88]; // [sp+1A8h] [bp-24Ch] BYREF
  __int16 v47[4]; // [sp+268h] [bp-18Ch] BYREF
  _WORD v48[96]; // [sp+270h] [bp-184h] BYREF
  _BYTE v49[192]; // [sp+330h] [bp-C4h] BYREF
  int v50; // [sp+3F0h] [bp-4h]

  v6 = (char *)off_F778 + 60916;
  v7 = *(_WORD **)((*(int (**)(void))(*(_DWORD *)((char *)off_F778 + 0xFFFFFFFC + 60916) + 192))() + 44);
  v8 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v6[-4] + 192))() + 40);
  v9 = *(_DWORD *)(v8 + 100);
  v50 = dword_F77C;
  v47[0] = 0;
  v47[1] = 0;
  v47[2] = *a2;
  result = a2[1];
  v47[3] = a2[1];
  if ( v7 )
  {
    v11 = a1 + 256;
    v12 = *(unsigned __int16 *)(a1 + 386);
    result = 235;
    if ( *(_WORD *)(a1 + 386) )
    {
      if ( v12 == 1 )
      {
        v17 = *(__int16 *)(a1 + 382);
        if ( *(_WORD *)(a1 + 382) )
        {
          if ( v17 == 2 )
          {
            v7[7] = *a2 >> 1;
            v7[8] = 235;
            sub_103F4(v7, 7, 8);
            v7[4] = 0;
            sub_21BA8(v7);
            sub_1CE08(v7, a2, a3);
            sub_10C58(a2, 0, 0, (__int16)*a2, (__int16)a2[1], dword_F79C, 0, 0);
            sub_19618(v8, dword_F7BC, v49, 32);
            v36 = dword_F7C4;
            v37 = dword_F7C0;
            sub_1A228(
              *(_DWORD *)(v8 + 100),
              a2,
              v49,
              -1,
              (__int16)((*a2 >> 1) - *(_WORD *)(*(_DWORD *)(v8 + 100) + 50)),
              (__int16)((a2[1] >> 1) - *(_WORD *)(*(_DWORD *)(v8 + 100) + 48)),
              0,
              17,
              dword_F7C4,
              dword_F7C0);
            v38 = *(_DWORD *)(v8 + 100);
            v39 = (__int16)((*a2 >> 1) - 2 * *(_WORD *)(v38 + 50));
            v40 = (__int16)(*(_WORD *)(v38 + 48) + (a2[1] >> 1));
            if ( !*(_WORD *)(a1 + 388) && (sub_1DC(3u, *(_DWORD *)(a1 + 320)), !v41)
              || (sub_19618(v8, dword_F7C8, v49, 32),
                  sub_1A228(*(_DWORD *)(v8 + 100), a2, v49, -1, v39, v40, 0, 17, v36, v37),
                  *(_WORD *)(a1 + 388) != 1)
              || (result = sub_1DC(3u, *(_DWORD *)(a1 + 320)), v42) )
            {
              sub_19618(v8, dword_F7CC, v49, 32);
              return sub_1A228(
                       *(_DWORD *)(v8 + 100),
                       a2,
                       v49,
                       -1,
                       (__int16)(*(_WORD *)(*(_DWORD *)(v8 + 100) + 50) + (*a2 >> 1)),
                       v40,
                       0,
                       17,
                       v36,
                       v37);
            }
          }
          else
          {
            v18 = v17 == 3;
            if ( v17 != 3 )
              v18 = v17 == 4;
            if ( v18 )
            {
              sub_10C58(a2, 0, 0, (__int16)*a2, (__int16)a2[1], 0, dword_F798, dword_F798);
              v7[7] = *a2 >> 1;
              v7[8] = 0;
              sub_103F4(v7, 6, 8);
              if ( *(_WORD *)(a1 + 382) == 4 )
                v19 = 5;
              else
                v19 = 6;
              v7[4] = v19;
              sub_21BA8(v7);
              sub_1CE08(v7, a2, a3);
              sub_F7D0(a1, a2, a3, v8);
              v7[4] = 2;
              v7[8] = a2[1];
              sub_21BA8(v7);
              sub_1CE08(v7, a2, a3);
              v20 = *(unsigned __int16 *)(a1 + 294) + *(unsigned __int16 *)(a1 + 298);
              v21 = *(unsigned __int16 *)(a1 + 296);
              v22 = v20 >= v21;
              if ( v20 < v21 )
                v21 = *(_DWORD *)(a1 + 320);
              v23 = a2[1];
              if ( !v22 )
                v23 += v21 << 30 >> 31;
              v7[8] = v23 - 8;
              v7[4] = 8;
              sub_21BA8(v7);
              sub_1CE08(v7, a2, a3);
              v24 = *(unsigned __int16 *)(a1 + 294);
              v25 = v24 == 0;
              if ( *(_WORD *)(a1 + 294) )
                v24 = *(_DWORD *)(a1 + 320);
              else
                v7[8] = 58;
              if ( !v25 )
                v7[8] = ((unsigned __int16)((_WORD)v24 << 14) >> 15) + 58;
              v7[4] = 7;
              sub_21BA8(v7);
              return sub_1CE08(v7, a2, a3);
            }
          }
        }
        else
        {
          v7[7] = 88;
          v7[8] = 235;
          sub_103F4(v7, 7, 8);
          v7[4] = 0;
          sub_21BA8(v7);
          sub_1CE08(v7, a2, a3);
          sub_10C58(a2, 0, 0, (__int16)*a2, (__int16)a2[1], dword_F79C, 0, 0);
          v7[7] = 88;
          v7[8] = a2[1] >> 1;
          sub_103F4(v7, 0, 8);
          v7[4] = 4;
          sub_21BA8(v7);
          sub_1CE08(v7, a2, a3);
          v7[8] = a2[1];
          v7[4] = 2;
          sub_21BA8(v7);
          sub_1CE08(v7, a2, a3);
          v44[0] = 0;
          v44[1] = 0;
          v44[2] = *a2;
          v44[3] = a2[1];
          sub_19618(v8, dword_F7A0, v46, 192);
          v26 = (__int16)((*a2 - sub_12BC8(v9, v46, 2)) / 2);
          v27 = (__int16)((a2[1] >> 1) - 12);
          v28 = (char *)off_F7A4 + 62392;
          v29 = off_F7A8 + 31204;
          (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)((char *)off_F7A4 + 0xFFFFFFFC + 62392)
                                                                   + 60))(
            v45,
            384,
            off_F7A8 + 31204,
            v46);
          sub_98BC(v9, a2, v27, v44, v45, 0, 0, 0, v26, 0, 2, 0);
          sub_19618(v8, dword_F7AC, v46, 80);
          v30 = (__int16)((*a2 >> 1) - 35);
          v31 = (__int16)((a2[1] >> 1) + 10);
          v32 = *(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)&v28[-4] + 60);
          if ( *(_WORD *)(v11 + 124) )
            v32(v45, 384, off_F7B0 + 31302, v46);
          else
            v32(v45, 384, v29, v46);
          sub_98BC(v9, a2, v31, v44, v45, 0, 0, 0, v30, 0, 2, 0);
          sub_19618(v8, dword_F7B4, v46, 80);
          v33 = (__int16)((*a2 >> 1) + 23);
          v34 = (__int16)((a2[1] >> 1) + 10);
          v35 = *(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)&v28[-4] + 60);
          if ( *(_WORD *)(v11 + 124) == 1 )
            v35(v45, 384, v29, v46);
          else
            v35(v45, 384, off_F7B8 + 31396, v46);
          return sub_98BC(v9, a2, v34, v44, v45, 0, 0, 0, v33, 0, 2, 0);
        }
      }
      else if ( v12 == 2 )
      {
        v7[7] = *a2 >> 1;
        v7[8] = 235;
        sub_103F4(v7, 7, 8);
        v7[4] = 0;
        sub_21BA8(v7);
        sub_1CE08(v7, a2, a3);
        sub_19618(v8, dword_F780, v49, 80);
        (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)((char *)off_F784 + 0xFFFFFFFC + 61132)
                                                                 + 60))(
          v48,
          192,
          off_F788 + 30574,
          v49);
        v43 = (__int16)((*a2 - sub_12BC8(v9, v49, 1)) / 2);
        return sub_98BC(*(_DWORD *)(v8 + 100), a2, (__int16)(a2[1] - 30), v47, v48, 0, 0, 0, v43, 0, 1, 0);
      }
    }
    else
    {
      v7[7] = *a2 >> 1;
      v7[8] = 235;
      sub_103F4(v7, 7, 8);
      v7[4] = 0;
      sub_21BA8(v7);
      sub_1CE08(v7, a2, a3);
      v7[7] = *a2 >> 1;
      v7[8] = (a2[1] - 175) / 2;
      sub_103F4(v7, 6, 8);
      for ( i = 0; i < 6; i = (__int16)(i + 1) )
      {
        sub_19618(v8, v50 + i, v49, 80);
        v14 = *(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)((char *)off_F78C + 0xFFFFFFFC + 61428)
                                                                      + 60);
        if ( *(__int16 *)(v11 + 126) == i )
        {
          v14(v48, 192, off_F790 + 30726, v49);
          v7[4] = 1;
          v15 = (*a2 - sub_12BC8(v9, v49, 1)) / 2 - 12;
        }
        else
        {
          v14(v48, 192, off_F794 + 30762, v49);
          v7[4] = 0;
          v15 = (*a2 - sub_12BC8(v9, v49, 1)) / 2;
        }
        v16 = (__int16)v15;
        sub_21BA8(v7);
        sub_1CE08(v7, a2, a3);
        sub_98BC(*(_DWORD *)(v8 + 100), a2, (__int16)(v7[8] + 11), v47, v48, 0, 0, 0, v16, 0, 1, 0);
        v7[8] += 30;
        result = i + 1;
      }
    }
  }
  return result;
}

