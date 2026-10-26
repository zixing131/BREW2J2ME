int __fastcall sub_B96C(int a1, unsigned __int16 *a2, int a3)
{
  char *v6; // r10
  int v7; // r7
  int v8; // r6
  __int16 v9; // r9
  int v10; // r9
  int result; // r0
  __int16 v12; // r0
  int v13; // r0
  int v14; // r11
  __int16 *v15; // r11
  void (__fastcall *v16)(_WORD *, int, __int16 *, _BYTE *); // r12
  int v17; // r7
  void (__fastcall *v18)(_WORD *, int, __int16 *, _BYTE *); // r12
  int v19; // r9
  int v20; // r11
  int v21; // r7
  int v22; // r9
  int v23; // [sp+24h] [bp-250h]
  int v24; // [sp+24h] [bp-250h]
  int v25; // [sp+28h] [bp-24Ch]
  int v26; // [sp+28h] [bp-24Ch]
  int v27; // [sp+28h] [bp-24Ch]
  int v28; // [sp+28h] [bp-24Ch]
  __int16 v29[4]; // [sp+2Ch] [bp-248h] BYREF
  _WORD v30[160]; // [sp+34h] [bp-240h] BYREF
  _BYTE v31[256]; // [sp+174h] [bp-100h] BYREF

  v6 = (char *)off_C0F8 + 47500;
  v7 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_C0F8 + 0xFFFFFFFC + 47500) + 192))() + 40);
  v8 = *(_DWORD *)(v7 + 100);
  v29[0] = 0;
  v29[1] = 0;
  v29[2] = *a2;
  v29[3] = a2[1];
  sub_10C58(a2, 0, 0, (__int16)*a2, (__int16)a2[1], 0, dword_C0FC, dword_C0FC);
  sub_103F4(*(_DWORD *)(a1 + 276), 2, 8);
  *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = *a2 >> 1;
  *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = 0;
  *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 0;
  sub_21BA8(*(_DWORD *)(a1 + 276));
  sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
  *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = a2[1];
  *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 1;
  sub_21BA8(*(_DWORD *)(a1 + 276));
  sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
  sub_19618(v7, dword_C100, v31, 80);
  v9 = sub_12BC8(v8, v31, 0);
  (*(void (__fastcall **)(_WORD *, int, __int16 *, _DWORD))(*(_DWORD *)&v6[-4] + 60))(
    v30,
    320,
    off_C104 + 23884,
    *(_DWORD *)(*(_DWORD *)(a1 + 272) + 28));
  v10 = (__int16)((*a2 - (__int16)(sub_12BC8(v8, v30, 0) + v9)) / 2);
  (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *, _DWORD))(*(_DWORD *)&v6[-4] + 60))(
    v30,
    320,
    off_C108 + 23932,
    v31,
    *(_DWORD *)(*(_DWORD *)(a1 + 272) + 28));
  sub_98BC(v8, a2, 40, v29, v30, 0, 0, 0, v10, 0, 0, 0);
  sub_8164((__int16 *)a1, a2, a3);
  result = *(unsigned __int16 *)(a1 + 290);
  if ( result == 1 )
  {
    sub_10C58(a2, 0, 0, (__int16)*a2, (__int16)a2[1], dword_C10C, 0, 0);
    *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = *a2 >> 1;
    *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = a2[1] >> 1;
    if ( *(_DWORD *)(*(_DWORD *)(a1 + 272) + 28) >= *(__int16 *)(a1 + 8 * *(__int16 *)(a1 + 2) + 6) )
      v12 = 14;
    else
      v12 = 13;
    *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = v12;
    sub_21BA8(*(_DWORD *)(a1 + 276));
    sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
    v13 = *(__int16 *)(a1 + 2);
    if ( *(_DWORD *)(*(_DWORD *)(a1 + 272) + 28) < *(__int16 *)(a1 + 8 * v13 + 6) )
    {
      sub_19618(v7, dword_C134, v31, 80);
      v19 = (__int16)((*a2 - sub_12BC8(v8, v31, 1)) / 2);
      v20 = (__int16)((a2[1] >> 1) - 10);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)&v6[-4] + 60))(
        v30,
        320,
        off_C138 + 24548,
        v31);
      sub_98BC(v8, a2, v20, v29, v30, 0, 0, 0, v19, 0, 2, 0);
      sub_19618(v7, dword_C13C, v31, 80);
      v21 = (__int16)((*a2 - sub_12BC8(v8, v31, 1)) / 2);
      v22 = (__int16)((a2[1] >> 1) + 10);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)&v6[-4] + 60))(
        v30,
        320,
        off_C140 + 24634,
        v31);
      sub_98BC(v8, a2, v22, v29, v30, 0, 0, 0, v21, 0, 2, 0);
    }
    else
    {
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = v13 + 7;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = (*a2 >> 1) - 30;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = (a2[1] >> 1) - 38;
      sub_21BA8(*(_DWORD *)(a1 + 276));
      sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = *a2 >> 1;
      *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = a2[1] >> 1;
      sub_19618(v7, dword_C110, v31, 80);
      v25 = (__int16)((*a2 - sub_12BC8(v8, v31, 0)) / 2 + 20);
      v14 = (__int16)((a2[1] >> 1) - 24);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, _DWORD, _BYTE *))(*(_DWORD *)&v6[-4] + 60))(
        v30,
        320,
        off_C114 + 24178,
        *(__int16 *)(a1 + 8 * *(__int16 *)(a1 + 2) + 6),
        v31);
      sub_98BC(v8, a2, v14, v29, v30, 0, 0, 0, v25, 0, 0, 0);
      sub_19618(v7, dword_C118, v31, 80);
      v26 = (__int16)((*a2 - sub_12BC8(v8, v31, 1)) / 2);
      v23 = (__int16)((a2[1] >> 1) - 10);
      v15 = off_C120 + 24270;
      (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)((char *)off_C11C + 0xFFFFFFFC + 48524) + 60))(
        v30,
        320,
        off_C120 + 24270,
        v31);
      sub_98BC(v8, a2, v23, v29, v30, 0, 0, 0, v26, 0, 2, 0);
      sub_19618(v7, dword_C124, v31, 80);
      v27 = (__int16)((*a2 >> 1) - 35);
      v24 = (__int16)((a2[1] >> 1) + 10);
      v16 = *(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)&v6[-4] + 60);
      if ( *(_WORD *)(a1 + 334) )
        v16(v30, 320, off_C128 + 24372, v31);
      else
        v16(v30, 320, v15, v31);
      sub_98BC(v8, a2, v24, v29, v30, 0, 0, 0, v27, 0, 2, 0);
      sub_19618(v7, dword_C12C, v31, 80);
      v28 = (__int16)((*a2 >> 1) + 23);
      v17 = (__int16)((a2[1] >> 1) + 10);
      v18 = *(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)&v6[-4] + 60);
      if ( *(_WORD *)(a1 + 334) == 1 )
        v18(v30, 320, v15, v31);
      else
        v18(v30, 320, off_C130 + 24468, v31);
      sub_98BC(v8, a2, v17, v29, v30, 0, 0, 0, v28, 0, 2, 0);
    }
    *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 1;
    *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = a2[1];
    sub_21BA8(*(_DWORD *)(a1 + 276));
    return sub_1CE08(*(_DWORD *)(a1 + 276), a2, a3);
  }
  return result;
}

