int __fastcall sub_1AD24(int a1, unsigned __int16 *a2, int a3)
{
  unsigned int v6; // r7
  char *v7; // r9
  int *v8; // r8
  int v9; // r7
  unsigned int v10; // r3
  int v11; // r10
  int v12; // r11
  unsigned int v13; // r3
  int v14; // r8
  int v15; // r10
  char *v16; // r10
  int *v17; // r8
  int v18; // r7
  unsigned int v19; // r3
  int v20; // r11
  unsigned int v21; // r3
  __int16 *v22; // r11
  unsigned int v23; // r3
  void (__fastcall *v24)(_WORD *, int, __int16 *, unsigned __int16 *); // r12
  unsigned int v25; // r3
  int v26; // r8
  void (__fastcall *v27)(_WORD *, int, __int16 *, unsigned __int16 *); // r12
  int v29; // [sp+24h] [bp-250h]
  int v30; // [sp+24h] [bp-250h]
  int v31; // [sp+28h] [bp-24Ch]
  int v32; // [sp+28h] [bp-24Ch]
  int v33; // [sp+28h] [bp-24Ch]
  int v34; // [sp+28h] [bp-24Ch]
  __int16 v35; // [sp+2Ch] [bp-248h] BYREF
  __int16 v36; // [sp+2Eh] [bp-246h]
  unsigned __int16 v37; // [sp+30h] [bp-244h]
  __int16 v38; // [sp+32h] [bp-242h]
  _WORD v39[160]; // [sp+34h] [bp-240h] BYREF
  unsigned __int16 v40[128]; // [sp+174h] [bp-100h] BYREF

  sub_10C58((int)a2, 0, 0, (__int16)*a2, (__int16)a2[1], 0, dword_1B5D0, dword_1B5D0);
  v6 = dword_1B5D4;
  switch ( *(_BYTE *)(a1 + 420) )
  {
    case 0:
      sub_1E204(*(_DWORD *)(a1 + 396), a2, a3);
      sub_77C4((_DWORD *)a1, a2, a3, 0);
      break;
    case 2:
      sub_1E204(*(_DWORD *)(a1 + 396), a2, a3);
      sub_77C4((_DWORD *)a1, a2, a3, 0);
      sub_10C58((int)a2, 0, 0, (__int16)*a2, (__int16)a2[1], v6, 0, 0);
      sub_1E6A8(*(_DWORD *)(a1 + 408), a2, a3);
      break;
    case 3:
      sub_1D8E0(*(_DWORD *)(a1 + 416), a2, a3);
      break;
    case 4:
      sub_1E204(*(_DWORD *)(a1 + 396), a2, a3);
      sub_77C4((_DWORD *)a1, a2, a3, 0);
      sub_10C58((int)a2, 0, 0, (__int16)*a2, (__int16)a2[1], v6, 0, 0);
      sub_103F4(*(_WORD **)(a1 + 392), 3, 8);
      *(_WORD *)(*(_DWORD *)(a1 + 392) + 14) = *a2 >> 1;
      *(_WORD *)(*(_DWORD *)(a1 + 392) + 16) = a2[1] >> 1;
      *(_WORD *)(*(_DWORD *)(a1 + 392) + 8) = 4;
      sub_21BA8(*(_DWORD *)(a1 + 392));
      sub_1CE08(*(_DWORD *)(a1 + 392), a2, a3);
      v16 = (char *)off_1B5F0 + 111132;
      v17 = *(int **)((*(int (**)(void))(*(_DWORD *)((char *)off_1B5F0 + 0xFFFFFFFC + 111132) + 192))() + 40);
      v18 = v17[25];
      v35 = 0;
      v36 = 0;
      v37 = *a2;
      v38 = a2[1];
      sub_19618(v17, dword_1B5F4, (int)v40, 0x100u);
      v31 = (__int16)((*a2 - sub_12BC8(v18, v40, -1, v19)) / 2);
      v20 = (__int16)((a2[1] >> 1) - 28);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, unsigned __int16 *))(*(_DWORD *)&v16[-4] + 60))(
        v39,
        320,
        off_1B5F8 + 55642,
        v40);
      sub_98BC(v18, a2, v20, &v35, v39, 0, 0, 0, v31, 0, -1, 0);
      sub_19618(v17, dword_1B5FC, (int)v40, 0x100u);
      v32 = (__int16)((*a2 - sub_12BC8(v18, v40, 1, v21)) / 2);
      v29 = (__int16)((a2[1] >> 1) - 6);
      v22 = off_1B600 + 55732;
      (*(void (__fastcall **)(_WORD *, int, __int16 *, unsigned __int16 *))(*(_DWORD *)&v16[-4] + 60))(
        v39,
        320,
        off_1B600 + 55732,
        v40);
      sub_98BC(v18, a2, v29, &v35, v39, 0, 0, 0, v32, 0, 1, 0);
      sub_19618(v17, dword_1B604, (int)v40, 0x100u);
      v33 = (__int16)((*a2 - sub_12BC8(v18, v40, 1, v23)) / 2 - 50);
      v30 = (__int16)((a2[1] >> 1) + 15);
      v24 = *(void (__fastcall **)(_WORD *, int, __int16 *, unsigned __int16 *))(*(_DWORD *)&v16[-4] + 60);
      if ( *(_WORD *)(a1 + 412) )
        v24(v39, 320, v22, v40);
      else
        v24(v39, 320, off_1B608 + 55834, v40);
      sub_98BC(v18, a2, v30, &v35, v39, 0, 0, 0, v33, 0, 1, 0);
      sub_19618(v17, dword_1B60C, (int)v40, 0x100u);
      v34 = (__int16)((*a2 - sub_12BC8(v18, v40, 1, v25)) / 2 + 50);
      v26 = (__int16)((a2[1] >> 1) + 15);
      v27 = *(void (__fastcall **)(_WORD *, int, __int16 *, unsigned __int16 *))(*(_DWORD *)&v16[-4] + 60);
      if ( *(_WORD *)(a1 + 412) == 1 )
        v27(v39, 320, off_1B610 + 55942, v40);
      else
        v27(v39, 320, v22, v40);
      sub_98BC(v18, a2, v26, &v35, v39, 0, 0, 0, v34, 0, 1, 0);
      sub_103F4(*(_WORD **)(a1 + 392), 6, 8);
      *(_WORD *)(*(_DWORD *)(a1 + 392) + 14) = *a2 >> 1;
      *(_WORD *)(*(_DWORD *)(a1 + 392) + 16) = a2[1];
      *(_WORD *)(*(_DWORD *)(a1 + 392) + 8) = 9;
      sub_21BA8(*(_DWORD *)(a1 + 392));
      sub_1CE08(*(_DWORD *)(a1 + 392), a2, a3);
      break;
    case 5:
      sub_1E204(*(_DWORD *)(a1 + 396), a2, a3);
      sub_77C4((_DWORD *)a1, a2, a3, 0);
      sub_10C58((int)a2, 0, 0, (__int16)*a2, (__int16)a2[1], v6, 0, 0);
      sub_103F4(*(_WORD **)(a1 + 392), 0, 8);
      *(_WORD *)(*(_DWORD *)(a1 + 392) + 14) = *a2 >> 1;
      *(_WORD *)(*(_DWORD *)(a1 + 392) + 16) = a2[1] >> 1;
      *(_WORD *)(*(_DWORD *)(a1 + 392) + 8) = 3;
      sub_21BA8(*(_DWORD *)(a1 + 392));
      sub_1CE08(*(_DWORD *)(a1 + 392), a2, a3);
      v7 = (char *)off_1B5D8 + 110148;
      v8 = *(int **)((*(int (**)(void))(*(_DWORD *)((char *)off_1B5D8 + 0xFFFFFFFC + 110148) + 192))() + 40);
      v9 = v8[25];
      v35 = 0;
      v36 = 0;
      v37 = *a2;
      v38 = a2[1];
      sub_19618(v8, dword_1B5DC, (int)v40, 0x100u);
      v11 = (__int16)((*a2 - sub_12BC8(v9, v40, 1, v10)) / 2);
      v12 = (__int16)((a2[1] >> 1) - 20);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, unsigned __int16 *))(*(_DWORD *)&v7[-4] + 60))(
        v39,
        320,
        off_1B5E0 + 55146,
        v40);
      sub_98BC(v9, a2, v12, &v35, v39, 0, 0, 0, v11, 0, 1, 0);
      sub_19618(v8, dword_1B5E4, (int)v40, 0x100u);
      v14 = (__int16)((*a2 - sub_12BC8(v9, v40, 1, v13)) / 2);
      v15 = (__int16)((a2[1] >> 1) + 10);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, unsigned __int16 *))(*(_DWORD *)&v7[-4] + 60))(
        v39,
        320,
        off_1B5E8 + 55232,
        v40);
      sub_98BC(v9, a2, v15, &v35, v39, 0, 0, 0, v14, 0, 1, 0);
      break;
    case 6:
      sub_1E204(*(_DWORD *)(a1 + 396), a2, a3);
      sub_77C4((_DWORD *)a1, a2, a3, 0);
      sub_1C1B4(*(_DWORD *)(a1 + 404), a2, a3);
      break;
    case 7:
      sub_10C58((int)a2, 0, 0, (__int16)*a2, (__int16)a2[1], 0, dword_1B5EC, dword_1B5EC);
      *(_WORD *)(*(_DWORD *)(a1 + 392) + 14) = *a2 >> 1;
      *(_WORD *)(*(_DWORD *)(a1 + 392) + 16) = 0;
      sub_103F4(*(_WORD **)(a1 + 392), 0, 8);
      *(_WORD *)(*(_DWORD *)(a1 + 392) + 8) = 10;
      sub_21BA8(*(_DWORD *)(a1 + 392));
      sub_1CE08(*(_DWORD *)(a1 + 392), a2, a3);
      *(_WORD *)(*(_DWORD *)(a1 + 392) + 8) = 2;
      *(_WORD *)(*(_DWORD *)(a1 + 392) + 16) = a2[1];
      sub_21BA8(*(_DWORD *)(a1 + 392));
      sub_1CE08(*(_DWORD *)(a1 + 392), a2, a3);
      sub_7228(
        *(_DWORD **)(a1 + 396),
        (int)a2,
        *(__int16 *)(a1 + 424) - *(_DWORD *)(a1 + 428) / 2,
        *(__int16 *)(a1 + 426) - *(_DWORD *)(a1 + 432) / 2);
      break;
    default:
      return sub_1D040(a1 + 544, a2, a3);
  }
  return sub_1D040(a1 + 544, a2, a3);
}

