int __fastcall sub_1D8E0(int a1, unsigned __int16 *a2)
{
  char *v4; // r5
  int *v5; // r6
  int v6; // r7
  int v7; // r9
  int result; // r0
  unsigned int v9; // r10
  int v10; // r11
  int v11; // r5
  unsigned int v12; // r3
  int v13; // r0
  unsigned int v14; // r3
  int v15; // r0
  unsigned int v16; // r3
  int v17; // r0
  int v18; // r0
  unsigned int v19; // r3
  int v20; // r0
  int v21; // r0
  int v22; // kr04_4
  int v23; // r0
  __int16 v24; // r1
  unsigned int v25; // r3
  unsigned int v26; // r3
  int v27; // r0
  int v28; // r0
  int v29; // r2
  unsigned int v30; // r1
  unsigned int v31; // r3
  int v32; // r0
  int v33; // r3
  char *v34; // r8
  int v35; // r2
  unsigned int v36; // r3
  signed int v37; // [sp+0h] [bp-34h]
  signed int v38; // [sp+0h] [bp-34h]
  __int16 v39[4]; // [sp+24h] [bp-10h] BYREF
  __int16 v40; // [sp+2Ch] [bp-8h] BYREF
  __int16 v41; // [sp+2Eh] [bp-6h]
  __int16 v42; // [sp+30h] [bp-4h]
  __int16 v43; // [sp+32h] [bp-2h]

  v4 = (char *)off_1E1A4 + 121084;
  v5 = *(int **)((*(int (**)(void))(*(_DWORD *)((char *)off_1E1A4 + 0xFFFFFFFC + 121084) + 192))() + 40);
  v6 = v5[25];
  v7 = (*(int (**)(void))(*(_DWORD *)&v4[-4] + 192))();
  if ( *(_BYTE *)(a1 + 16) != 1 )
  {
    sub_10C58((int)a2, 0, 0, (__int16)*a2, (__int16)a2[1], 0, dword_1E1A8, 0);
    sub_10C58((int)a2, 0, 0, (__int16)*a2, 0xFu, 0, dword_1E1AC, 0);
    sub_10C58((int)a2, 0, a2[1] - 15, (__int16)*a2, 0xFu, 0, dword_1E1B0, 0);
  }
  result = *(unsigned __int8 *)(a1 + 16);
  v9 = dword_1E1B4;
  v10 = dword_1E1B8;
  v11 = a1 + 18;
  switch ( *(_BYTE *)(a1 + 16) )
  {
    case 0:
      sub_19618(v5, dword_1E1BC, a1 + 18, 0x20u);
      v13 = sub_12BC8(v6, (unsigned __int16 *)(a1 + 18), 0, v12);
      sub_1A228(v6, (int)a2, a1 + 18, -1, (*a2 - v13) >> 1, 30, 0, 0, v10, 0);
      sub_19618(v5, *(unsigned __int16 *)(*(_DWORD *)(*(_DWORD *)a1 + 8) + 20 * *(_DWORD *)(a1 + 12)), a1 + 18, 0x20u);
      v15 = sub_12BC8(v6, (unsigned __int16 *)(a1 + 18), 0, v14);
      sub_1A228(v6, (int)a2, a1 + 18, -1, (*a2 - v15) >> 1, 50, 0, 0, dword_1E1B8, 0);
      sub_19618(v5, dword_1E1C0, a1 + 18, 0x20u);
      v17 = sub_12BC8(v6, (unsigned __int16 *)(a1 + 18), 0, v16);
      sub_1A228(v6, (int)a2, a1 + 18, -1, (*a2 >> 1) - v17, 70, 0, 0, dword_1E1B8, 0);
      (*(void (__fastcall **)(int, int, __int16 *, _DWORD))(*(_DWORD *)((char *)off_1E1C4 + 0xFFFFFFFC + 121668) + 60))(
        a1 + 18,
        32,
        off_1E1C8 + 60840,
        *(unsigned __int8 *)(*(_DWORD *)(*(_DWORD *)a1 + 8) + 20 * *(_DWORD *)(a1 + 12) + 4));
      sub_1A228(v6, (int)a2, a1 + 18, -1, *a2 >> 1, 70, 0, 0, dword_1E1B8, 0);
      sub_19618(v5, dword_1E1CC, a1 + 18, 0x20u);
      sub_1A228(v6, (int)a2, a1 + 18, -1, (*a2 >> 1) + 8, 70, 0, 0, dword_1E1B8, 0);
      v18 = sub_19618(v5, dword_1E1D0, a1 + 18, 0x20u);
      (*(void (__fastcall **)(int, int, __int16 *, _DWORD))(*(_DWORD *)((char *)off_1E1D4 + 0xFFFFFFFC + 121912) + 60))(
        a1 + 2 * (v18 / 2 - 1) + 18,
        32 - 2 * (v18 / 2 - 1),
        off_1E1D8 + 60964,
        *(unsigned __int8 *)(*(_DWORD *)(a1 + 12) + v7 + 912));
      v20 = sub_12BC8(v5[25], (unsigned __int16 *)(a1 + 18), 0, v19);
      sub_1A228(v5[25], (int)a2, a1 + 18, -1, ((*a2 - v20) >> 1) + 8, 85, 0, 0, dword_1E1B8, 0);
      if ( *(_BYTE *)(v7 + 64) )
        sub_1A228(v5[25], (int)a2, v7 + 1848, -1, 0, 200, 0, 0, v10, 0);
      v42 = 100;
      v43 = 40;
      v40 = 38;
      v41 = 110;
      *(_BYTE *)(a1 + 290) = 1;
      (*(void (__fastcall **)(__int16 *, _DWORD, int))(*(_DWORD *)((char *)off_1E1DC + 0xFFFFFFFC + 122144) + 4))(
        v39,
        0,
        8);
      v39[2] = v42;
      v21 = (__int16)(((unsigned int)sub_98BC(v5[25], a2, v39[1], v39, (_WORD *)(a1 + 50), 0, 0, 0, v39[0], 0, 0, 0) >> 16)
                    + 12);
      if ( v43 <= v21 )
      {
        v22 = *(_DWORD *)(a1 + 296);
        v23 = sub_104(0xCu, v43 + v21);
        sub_104(v23 + 1, v22 / 8);
        sub_98BC(v5[25], a2, (__int16)(v41 + v43 - 12 - 12 * v24), &v40, (_WORD *)(a1 + 50), 0, 0, 0, v40, 0, 0, 0);
      }
      else
      {
        sub_98BC(v5[25], a2, v41, &v40, (_WORD *)(a1 + 50), 0, 0, 0, v40, 0, 0, 0);
      }
      sub_19618(v5, v9, a1 + 18, 0x20u);
      sub_1A228(v6, (int)a2, a1 + 18, -1, 0, a2[1] - 12, 0, 0, v10, 0);
      sub_19618(v5, dword_1E1E0, a1 + 18, 0x20u);
      return sub_1A228(v6, (int)a2, v11, -1, *a2 - 24, a2[1] - 12, 0, 0, dword_1E1B8, 0);
    case 2:
      sub_19618(v5, dword_1E1E4, a1 + 18, 0x20u);
      v37 = (*a2 - sub_12BC8(v5[25], (unsigned __int16 *)(a1 + 18), 0, v25)) >> 1;
      sub_1A228(v5[25], (int)a2, a1 + 18, -1, v37, 50, 0, 0, v10, 0);
      goto LABEL_23;
    case 3:
      sub_19618(v5, dword_1E1E8, a1 + 18, 0x20u);
      v27 = sub_12BC8(v5[25], (unsigned __int16 *)(a1 + 18), 0, v26);
      sub_1A228(v5[25], (int)a2, a1 + 18, -1, (*a2 - v27) >> 1, 50, 0, 0, v10, 0);
      v28 = *(_DWORD *)(a1 + 344);
      if ( v28 == 1005 )
      {
        v29 = a1 + 18;
        v30 = dword_1E1EC;
      }
      else if ( v28 == 1010 )
      {
        v29 = a1 + 18;
        v30 = dword_1E1F0;
      }
      else
      {
        if ( v28 == 1013 )
          v30 = 9760;
        else
          v30 = dword_1E1F4;
        v29 = a1 + 18;
      }
      sub_19618(v5, v30, v29, 0x20u);
      v32 = sub_12BC8(v6, (unsigned __int16 *)(a1 + 18), 0, v31);
      sub_1A228(v6, (int)a2, a1 + 18, -1, (*a2 - v32) >> 1, 62, 0, 0, v10, 0);
      v33 = *(_DWORD *)(a1 + 344);
      v34 = (char *)off_1E1F8 + 122964;
      (*(void (__fastcall **)(int, int, __int16 *, int))(*(_DWORD *)((char *)off_1E1F8 + 0xFFFFFFFC + 122964) + 60))(
        v11,
        32,
        off_1E1FC + 61488,
        v33);
      if ( *(_BYTE *)((*(int (**)(void))(*(_DWORD *)&v34[-4] + 192))() + 64) == 1 )
        sub_1A228(v5[25], (int)a2, v11, -1, 0, 80, 0, 0, v10, 0);
      sub_19618(v5, v9, v11, 0x20u);
      v35 = v10;
      goto LABEL_24;
    case 4:
      sub_19618(v5, dword_1E200, a1 + 18, 0x20u);
      v38 = (*a2 - sub_12BC8(v5[25], (unsigned __int16 *)(a1 + 18), 0, v36)) >> 1;
      sub_1A228(v6, (int)a2, a1 + 18, -1, v38, 50, 0, 0, v10, 0);
LABEL_23:
      sub_19618(v5, v9, a1 + 18, 0x20u);
      v35 = dword_1E1B8;
LABEL_24:
      result = sub_1A228(v6, (int)a2, v11, -1, 0, a2[1] - 12, 0, 0, v35, 0);
      break;
    default:
      return result;
  }
  return result;
}

