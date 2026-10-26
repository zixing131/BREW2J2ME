int __fastcall sub_1C1B4(int a1, unsigned __int16 *a2, int a3)
{
  char *v6; // r10
  int *v7; // r8
  int v8; // r6
  int v9; // r0
  int result; // r0
  bool v11; // zf
  _WORD *v12; // r7
  unsigned int v13; // r3
  int v14; // r7
  int v15; // r9
  __int16 *v16; // r11
  int v17; // r7
  int v18; // r9
  void (__fastcall *v19)(_WORD *, int, __int16 *, unsigned __int16 *); // r12
  int v20; // r7
  int v21; // r8
  void (__fastcall *v22)(_WORD *, int, __int16 *, unsigned __int16 *); // r12
  unsigned __int8 v23; // r0
  _WORD *v24; // r7
  __int16 v25; // r0
  unsigned int v26; // r3
  int v27; // r7
  int v28; // r9
  int v29; // r7
  int v30; // r9
  void (__fastcall *v31)(_WORD *, int, __int16 *, unsigned __int16 *); // r12
  unsigned int v32; // r3
  int v33; // r5
  int v34; // r7
  unsigned int v35; // r3
  int v36; // r5
  int v37; // r7
  __int16 v38; // [sp+24h] [bp-C8h] BYREF
  __int16 v39; // [sp+26h] [bp-C6h]
  unsigned __int16 v40; // [sp+28h] [bp-C4h]
  __int16 v41; // [sp+2Ah] [bp-C2h]
  _WORD v42[64]; // [sp+2Ch] [bp-C0h] BYREF
  unsigned __int16 v43[32]; // [sp+ACh] [bp-40h] BYREF

  v6 = (char *)off_1CA48 + 115156;
  v7 = *(int **)((*(int (**)(void))(*(_DWORD *)((char *)off_1CA48 + 0xFFFFFFFC + 115156) + 192))() + 40);
  v8 = v7[25];
  v9 = *(__int16 *)(a1 + 40);
  if ( v9 > 0 )
    sub_10C58(
      (int)a2,
      0,
      0,
      (__int16)*a2,
      (__int16)a2[1],
      (unsigned __int16)((_WORD)v9 << 8) | 2,
      *(unsigned __int16 *)(a1 + 38),
      0);
  result = *(char *)(a1 + 5);
  if ( result == 17 )
  {
    result = *(_DWORD *)(a1 + 12);
    if ( *(_BYTE *)(result + 62) == 1 )
      return sub_1D170();
  }
  else
  {
    if ( result <= 17 )
    {
      if ( result == 1 )
      {
        if ( *(__int16 *)(a1 + 44) <= 0 )
          *(_WORD *)(a1 + 44) = 1;
        v23 = sub_104(*(__int16 *)(a1 + 44), 32 * *(__int16 *)(a1 + 42));
      }
      else
      {
        if ( result != 2 )
        {
          v11 = result == 4;
          if ( result == 4 )
          {
            result = *(_DWORD *)(a1 + 8);
            v11 = *(_BYTE *)(result + 300) == 1;
          }
          if ( v11 )
            return sub_F7D0(result, a2, a3, (int)v7);
          return result;
        }
        if ( *(__int16 *)(a1 + 44) <= 0 )
          *(_WORD *)(a1 + 44) = 1;
        v23 = 32 - sub_104(*(__int16 *)(a1 + 44), 32 * *(__int16 *)(a1 + 42));
      }
      return sub_10C58((int)a2, 0, 0, (__int16)*a2, (__int16)a2[1], (v23 << 8) | 2, *(unsigned __int16 *)(a1 + 46), 0);
    }
    if ( result != 18 )
    {
      if ( result != 21 )
        return result;
      sub_10C58((int)a2, 0, 0, (__int16)*a2, (__int16)a2[1], dword_1CA4C, 0, 0);
      v12 = *(_WORD **)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v6[-4] + 192))() + 1888) + 392);
      v12[7] = *a2 >> 1;
      v12[8] = a2[1] >> 1;
      sub_103F4(v12, 0, 8);
      v12[4] = 4;
      sub_21BA8(v12);
      sub_1CE08(v12, a2, a3);
      v12[8] = a2[1];
      v12[4] = 2;
      sub_21BA8(v12);
      sub_1CE08(v12, a2, a3);
      v38 = 0;
      v39 = 0;
      v40 = *a2;
      v41 = a2[1];
      sub_19618(v7, dword_1CA50, (int)v43, 0x40u);
      v14 = (__int16)((*a2 - sub_12BC8(v8, v43, 2, v13)) / 2);
      v15 = (__int16)((a2[1] >> 1) - 10);
      v16 = off_1CA54 + 57820;
      (*(void (__fastcall **)(_WORD *, int, __int16 *, unsigned __int16 *))(*(_DWORD *)&v6[-4] + 60))(
        v42,
        128,
        off_1CA54 + 57820,
        v43);
      sub_98BC(v8, a2, v15, &v38, v42, 0, 0, 0, v14, 0, 2, 0);
      sub_19618(v7, dword_1CA58, (int)v43, 0x50u);
      v17 = (__int16)((*a2 >> 1) - 35);
      v18 = (__int16)((a2[1] >> 1) + 10);
      v19 = *(void (__fastcall **)(_WORD *, int, __int16 *, unsigned __int16 *))(*(_DWORD *)&v6[-4] + 60);
      if ( *(_BYTE *)(a1 + 20) )
        v19(v42, 128, off_1CA5C + 57918, v43);
      else
        v19(v42, 128, v16, v43);
      sub_98BC(v8, a2, v18, &v38, v42, 0, 0, 0, v17, 0, 2, 0);
      sub_19618(v7, dword_1CA60, (int)v43, 0x50u);
      v20 = (__int16)((*a2 >> 1) + 23);
      v21 = (__int16)((a2[1] >> 1) + 10);
      v22 = *(void (__fastcall **)(_WORD *, int, __int16 *, unsigned __int16 *))(*(_DWORD *)&v6[-4] + 60);
      if ( *(_BYTE *)(a1 + 20) != 1 )
      {
        v22(v42, 128, off_1CA64 + 58012, v43);
        return sub_98BC(v8, a2, v21, &v38, v42, 0, 0, 0, v20, 0, 2, 0);
      }
LABEL_18:
      v22(v42, 128, v16, v43);
      return sub_98BC(v8, a2, v21, &v38, v42, 0, 0, 0, v20, 0, 2, 0);
    }
    sub_10C58((int)a2, 0, 0, (__int16)*a2, (__int16)a2[1], dword_1CA4C, 0, 0);
    v24 = *(_WORD **)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v6[-4] + 192))() + 1888) + 392);
    v24[7] = *a2 >> 1;
    v24[8] = a2[1] >> 1;
    sub_103F4(v24, 0, 8);
    if ( *(_BYTE *)(a1 + 21) )
      v25 = 3;
    else
      v25 = 4;
    v24[4] = v25;
    sub_21BA8(v24);
    sub_1CE08(v24, a2, a3);
    if ( !*(_BYTE *)(a1 + 21) )
    {
      v24[8] = a2[1];
      v24[4] = 2;
      sub_21BA8(v24);
      sub_1CE08(v24, a2, a3);
    }
    v38 = 0;
    v39 = 0;
    v40 = *a2;
    v41 = a2[1];
    result = *(unsigned __int8 *)(a1 + 21);
    if ( !*(_BYTE *)(a1 + 21) )
    {
      sub_19618(v7, dword_1CA68, (int)v43, 0x40u);
      v27 = (__int16)((*a2 - sub_12BC8(v8, v43, 2, v26)) / 2);
      v28 = (__int16)((a2[1] >> 1) - 10);
      v16 = off_1CA6C + 58264;
      (*(void (__fastcall **)(_WORD *, int, __int16 *, unsigned __int16 *))(*(_DWORD *)&v6[-4] + 60))(
        v42,
        128,
        off_1CA6C + 58264,
        v43);
      sub_98BC(v8, a2, v28, &v38, v42, 0, 0, 0, v27, 0, 2, 0);
      sub_19618(v7, dword_1CA58, (int)v43, 0x50u);
      v29 = (__int16)((*a2 >> 1) - 35);
      v30 = (__int16)((a2[1] >> 1) + 10);
      v31 = *(void (__fastcall **)(_WORD *, int, __int16 *, unsigned __int16 *))(*(_DWORD *)&v6[-4] + 60);
      if ( *(_BYTE *)(a1 + 20) )
        v31(v42, 128, off_1CA70 + 58362, v43);
      else
        v31(v42, 128, v16, v43);
      sub_98BC(v8, a2, v30, &v38, v42, 0, 0, 0, v29, 0, 2, 0);
      sub_19618(v7, dword_1CA60, (int)v43, 0x50u);
      v20 = (__int16)((*a2 >> 1) + 23);
      v21 = (__int16)((a2[1] >> 1) + 10);
      v22 = *(void (__fastcall **)(_WORD *, int, __int16 *, unsigned __int16 *))(*(_DWORD *)&v6[-4] + 60);
      if ( *(_BYTE *)(a1 + 20) != 1 )
      {
        v22(v42, 128, off_1CA74 + 58456, v43);
        return sub_98BC(v8, a2, v21, &v38, v42, 0, 0, 0, v20, 0, 2, 0);
      }
      goto LABEL_18;
    }
    if ( result == 1 )
    {
      sub_19618(v7, dword_1CA78, (int)v43, 0x40u);
      v33 = (__int16)((*a2 - sub_12BC8(v8, v43, 2, v32)) / 2);
      v34 = (__int16)((a2[1] >> 1) - 10);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, unsigned __int16 *))(*(_DWORD *)&v6[-4] + 60))(
        v42,
        128,
        off_1CA7C + 58518,
        v43);
      sub_98BC(v8, a2, v34, &v38, v42, 0, 0, 0, v33, 0, 2, 0);
      sub_19618(v7, dword_1CA80, (int)v43, 0x50u);
      v36 = (__int16)((*a2 - sub_12BC8(v8, v43, 2, v35)) / 2);
      v37 = (__int16)((a2[1] >> 1) + 10);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, unsigned __int16 *))(*(_DWORD *)&v6[-4] + 60))(
        v42,
        128,
        off_1CA84 + 58604,
        v43);
      return sub_98BC(v8, a2, v37, &v38, v42, 0, 0, 0, v36, 0, 2, 0);
    }
  }
  return result;
}

