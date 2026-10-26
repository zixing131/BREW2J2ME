int __fastcall sub_77C4(_DWORD *a1, _WORD *a2, int a3, int a4)
{
  char *v7; // r9
  int v8; // r8
  int v9; // r7
  int v10; // r0
  int v11; // r1
  unsigned __int16 *v12; // r11
  __int16 v13; // r0
  __int16 *v14; // r11
  int v15; // r0
  int v16; // r1
  int v17; // r0
  int v18; // r0
  int result; // r0
  int v20; // [sp+10h] [bp-26Ch] BYREF
  char v21; // [sp+1Ch] [bp-260h]
  unsigned __int8 v22; // [sp+1Dh] [bp-25Fh]
  unsigned __int8 v23; // [sp+1Eh] [bp-25Eh]
  _WORD v24[4]; // [sp+24h] [bp-258h] BYREF
  _WORD v25[160]; // [sp+2Ch] [bp-250h] BYREF
  _BYTE v26[256]; // [sp+16Ch] [bp-110h] BYREF
  _DWORD *v27; // [sp+26Ch] [bp-10h]
  _WORD *v28; // [sp+270h] [bp-Ch]
  int v29; // [sp+274h] [bp-8h]
  int v30; // [sp+278h] [bp-4h]

  v27 = a1;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v7 = (char *)off_7C30 + 30692;
  v8 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_7C30 + 0xFFFFFFFC + 30692) + 192))() + 40);
  v9 = *(_DWORD *)(v8 + 100);
  v24[0] = 0;
  v24[1] = 0;
  v24[2] = *a2;
  v24[3] = a2[1];
  sub_103F4(a1[98], 3, 8);
  *(_WORD *)(a1[98] + 14) = *a2 >> 1;
  *(_WORD *)(a1[98] + 16) = 0;
  *(_WORD *)(a1[98] + 8) = 0;
  sub_21BA8(a1[98]);
  sub_1CE08(a1[98], a2, a3);
  if ( *(_BYTE *)(a1[100] + 32) )
  {
    *(_WORD *)(a1[98] + 8) = 2;
    sub_21BA8(a1[98]);
    sub_1CE08(a1[98], a2, a3);
    sub_19618(v8, dword_7C34, v26, 80);
    (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)&v7[-4] + 60))(
      v25,
      320,
      off_7C38 + 15452,
      v26);
    sub_98BC(v9, a2, 1, v24, v25, 0, 0, 0, 76, 0, 0, 0);
  }
  v10 = a1[100];
  v11 = *(__int16 *)(dword_7C3C + v10);
  if ( v11 >= 0 && v11 < *(__int16 *)(v10 + 540) )
  {
    *(_WORD *)(a1[98] + 8) = *(unsigned __int8 *)(v10 + 8 * v11 + 543) + 6;
    sub_21BA8(a1[98]);
    sub_1CE08(a1[98], a2, a3);
  }
  v12 = (unsigned __int16 *)sub_11DD8(a3, dword_7C40);
  if ( v12 )
  {
    v13 = sub_104(**(_DWORD **)(a1[100] + 20), 94 * **(_DWORD **)(a1[100] + 24));
    sub_3324((int)a2, 0, 14, v13, 10, v12, 0, 0, 0, 0, 0);
  }
  v25[0] = 0;
  v14 = off_7C48 + 15600;
  (*(void (__fastcall **)(_WORD *, int, __int16 *, _DWORD))(*(_DWORD *)&v7[-4] + 60))(
    v25,
    320,
    off_7C48 + 15600,
    *(__int16 *)&(*off_7C44)[a1[100]]);
  sub_98BC(v9, a2, 2, v24, v25, 0, 0, 0, 36, 0, -1, 0);
  v25[0] = 0;
  v15 = a1[100];
  if ( *(_BYTE *)(v15 + 33) )
    (*(void (__fastcall **)(_WORD *, int, __int16 *))(*(_DWORD *)&v7[-4] + 60))(v25, 320, off_7C4C + 15656);
  else
    (*(void (__fastcall **)(_WORD *, int, __int16 *, _DWORD))(*(_DWORD *)&v7[-4] + 60))(
      v25,
      320,
      v14,
      *(_DWORD *)(v15 + 36));
  sub_98BC(v9, a2, 20, v24, v25, 0, 0, 0, 75, 0, 0, 0);
  v25[0] = 0;
  v16 = a1[100];
  v17 = *(__int16 *)(v16 + 798);
  if ( v17 < *(__int16 *)(v16 + 540) && v17 >= 0 )
  {
    sub_12F30(&v20, v16, *(unsigned __int16 *)(v16 + 798));
    if ( v21 )
    {
      (*(void (__fastcall **)(_WORD *, int, __int16 *))(*(_DWORD *)&v7[-4] + 60))(v25, 320, off_7C50 + 15748);
    }
    else if ( *(_BYTE *)(a1[99] + 2140) )
    {
      sub_19618(v8, dword_7C54, v26, 256);
      v18 = sub_1DC(*(unsigned __int8 *)(a1[99] + 2142), *(unsigned __int8 *)(a1[99] + 2141) * v23);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *, int, _DWORD))(*(_DWORD *)&v7[-4] + 60))(
        v25,
        320,
        off_7C58 + 15802,
        v26,
        v18,
        v22);
    }
    else
    {
      (*(void (__fastcall **)(_WORD *, int, __int16 *, _DWORD, _DWORD))(*(_DWORD *)&v7[-4] + 60))(
        v25,
        320,
        off_7C5C + 15826,
        v23,
        v22);
    }
  }
  sub_98BC(v9, a2, 46, v24, v25, 0, 0, 0, 0, 0, 0, 0);
  result = v30;
  if ( !v30 )
  {
    *(_WORD *)(a1[98] + 16) = a2[1];
    *(_WORD *)(a1[98] + 8) = 1;
    sub_21BA8(a1[98]);
    return sub_1CE08(a1[98], a2, a3);
  }
  return result;
}

