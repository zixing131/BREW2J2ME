int __fastcall sub_8164(__int16 *a1, unsigned __int16 *a2, int a3)
{
  int v3; // r9
  int v6; // r11
  int v7; // r10
  int v8; // r8
  int v9; // r0
  bool v10; // zf
  int v11; // r0
  __int16 v12; // r1
  bool v13; // zf
  int v14; // r0
  int i; // r6
  bool v16; // cc
  int v17; // r0
  __int16 v18; // r0
  int v19; // r0
  __int16 v20; // r0
  __int16 v21; // r0
  __int16 v22; // r1
  __int16 v23; // r0
  int v24; // r0
  int v25; // r0
  int v26; // r0
  __int16 *v27; // r0
  void (__fastcall *v28)(_WORD *, int, __int16 *, _BYTE *); // r12
  int v29; // r12
  int v30; // r0
  int v31; // r2
  int v32; // r0
  __int16 v33; // r1
  int v34; // r0
  int v35; // r1
  int v36; // r0
  int v38; // [sp+24h] [bp-258h]
  _WORD v39[4]; // [sp+28h] [bp-254h] BYREF
  _WORD v40[160]; // [sp+30h] [bp-24Ch] BYREF
  _BYTE v41[256]; // [sp+170h] [bp-10Ch] BYREF
  __int16 *v42; // [sp+270h] [bp-Ch]
  unsigned __int16 *v43; // [sp+274h] [bp-8h]
  int v44; // [sp+278h] [bp-4h]

  v42 = a1;
  v43 = a2;
  v44 = a3;
  v6 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_8B80 + 0xFFFFFFFC + 33152) + 192))() + 40);
  v7 = *(_DWORD *)(v6 + 100);
  v39[0] = 0;
  v39[1] = 0;
  v8 = 1;
  v39[2] = *a2;
  v39[3] = a2[1];
  v9 = (unsigned __int16)a1[132];
  if ( !a1[132] )
    goto LABEL_11;
  switch ( v9 )
  {
    case 1:
      goto LABEL_5;
    case 2:
LABEL_11:
      v3 = (__int16)((a2[1] - 146 - a1[133] * a1[131]) / 2 + 56);
      v13 = a1[130] == 0;
      if ( a1[130] )
      {
        v14 = v3 + (*((_DWORD *)a1 + 81) << 30 >> 31);
        *(_WORD *)(*((_DWORD *)a1 + 69) + 16) = v3 + ((unsigned __int16)(a1[162] << 14) >> 15);
      }
      else
      {
        v14 = *((_DWORD *)a1 + 69);
      }
      v12 = 4;
      if ( v13 )
        *(_WORD *)(v14 + 16) = v3;
      goto LABEL_16;
    case 3:
LABEL_5:
      v3 = (__int16)((a2[1] - 100 - a1[133] * a1[131]) / 2 + 69);
      v10 = a1[130] == 0;
      if ( a1[130] )
      {
        v11 = v3 + (*((_DWORD *)a1 + 81) << 30 >> 31);
        *(_WORD *)(*((_DWORD *)a1 + 69) + 16) = v3 + ((unsigned __int16)(a1[162] << 14) >> 15);
      }
      else
      {
        v11 = *((_DWORD *)a1 + 69);
      }
      v12 = 3;
      if ( v10 )
        *(_WORD *)(v11 + 16) = v3;
LABEL_16:
      *(_WORD *)(*((_DWORD *)a1 + 69) + 8) = v12;
      break;
  }
  sub_21BA8(*((_DWORD *)a1 + 69));
  sub_1CE08(*((_DWORD *)a1 + 69), a2, v44);
  for ( i = 0; a1[131] > i; i = (__int16)(i + 1) )
  {
    v16 = 0;
    if ( *a1 )
      v16 = a1[130] + i < *a1;
    if ( !v16 )
      break;
    *(_WORD *)(*((_DWORD *)a1 + 69) + 16) = v3 + a1[133] * i;
    if ( a1[1] - a1[130] != i )
      goto LABEL_33;
    v17 = (unsigned __int16)a1[132];
    if ( !a1[132] )
    {
      *(_WORD *)(*((_DWORD *)a1 + 69) + 8) = 2;
      if ( !a1[1] )
        *(_WORD *)(*((_DWORD *)a1 + 69) + 8) = 3;
      goto LABEL_32;
    }
    switch ( v17 )
    {
      case 1:
LABEL_28:
        v18 = 2;
        goto LABEL_29;
      case 2:
        v18 = 13;
LABEL_29:
        *(_WORD *)(*((_DWORD *)a1 + 69) + 8) = v18;
        break;
      case 3:
        goto LABEL_28;
    }
LABEL_32:
    sub_21BA8(*((_DWORD *)a1 + 69));
    sub_1CE08(*((_DWORD *)a1 + 69), a2, v44);
LABEL_33:
    v19 = (unsigned __int16)a1[132];
    if ( a1[132] )
    {
      switch ( v19 )
      {
        case 1:
          v21 = a1[130] + i;
          break;
        case 2:
          if ( a1[1] - a1[130] == i )
            v23 = 16;
          else
            v23 = 17;
          *(_WORD *)(*((_DWORD *)a1 + 69) + 8) = v23;
          sub_21BA8(*((_DWORD *)a1 + 69));
          sub_1CE08(*((_DWORD *)a1 + 69), a2, v44);
          v20 = (a1[4 * a1[130] + 5 + 4 * i] != 1) + 2 * (a1[130] + i) + 18;
          goto LABEL_48;
        case 3:
          if ( a1[1] - a1[130] == i )
            v22 = 5;
          else
            v22 = 6;
          *(_WORD *)(*((_DWORD *)a1 + 69) + 8) = v22;
          sub_21BA8(*((_DWORD *)a1 + 69));
          sub_1CE08(*((_DWORD *)a1 + 69), a2, v44);
          v21 = a1[4 * a1[130] + 4 + 4 * i];
          break;
        default:
          goto LABEL_49;
      }
      v20 = v21 + 7;
    }
    else
    {
      v20 = a1[130] + i + 6;
    }
LABEL_48:
    *(_WORD *)(*((_DWORD *)a1 + 69) + 8) = v20;
LABEL_49:
    sub_21BA8(*((_DWORD *)a1 + 69));
    sub_1CE08(*((_DWORD *)a1 + 69), a2, v44);
    v40[0] = 0;
    v24 = (unsigned __int16)a1[132];
    if ( a1[132] )
    {
      switch ( v24 )
      {
        case 1:
          v8 = 0;
          sub_19618(v6, a1[4 * a1[130] + 2 + 4 * i], v41, 256);
          v38 = (__int16)((65 - sub_12BC8(v7, v41, 0)) / 2 + 3);
          (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)((char *)off_8BA4 + 0xFFFFFFFC + 34624)
                                                                   + 60))(
            v40,
            320,
            off_8BA8 + 17320,
            v41);
          break;
        case 2:
          v8 = 0;
          sub_19618(v6, a1[4 * a1[130] + 2 + 4 * i], v41, 256);
          v38 = (__int16)((*a2 - sub_12BC8(v7, v41, 0)) / 2 + 80);
          (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)((char *)off_8BAC + 0xFFFFFFFC + 34756)
                                                                   + 60))(
            v40,
            320,
            off_8BB0 + 17386,
            v41);
          break;
        case 3:
          v8 = 0;
          sub_19618(v6, a1[4 * a1[130] + 2 + 4 * i], v41, 256);
          v38 = (__int16)((*a2 - sub_12BC8(v7, v41, 0)) / 2 + 80);
          (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)((char *)off_8B84 + 0xFFFFFFFC + 34032)
                                                                   + 60))(
            v40,
            320,
            off_8B88 + 17024,
            v41);
          break;
      }
    }
    else
    {
      sub_19618(v6, a1[4 * a1[130] + 2 + 4 * i], v41, 256);
      v38 = (__int16)((*a2 - sub_12BC8(v7, v41, v8)) / 2 + 12);
      v28 = *(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)((char *)off_8B98 + 0xFFFFFFFC + 34464)
                                                                    + 60);
      if ( a1[1] - a1[130] == i )
        v28(v40, 320, off_8B9C + 17244, v41);
      else
        v28(v40, 320, off_8BA0 + 17258, v41);
    }
    sub_98BC(v7, a2, (__int16)(v3 + a1[133] * i + (a1[133] - 12) / 2), v39, v40, 0, 0, 0, v38, 0, v8, 0);
    v25 = (unsigned __int16)a1[132];
    if ( !a1[132] )
    {
      if ( a1[4 * a1[130] + 5 + 4 * i] != 1 )
        continue;
      sub_19618(v6, dword_8BC0, v41, 80);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)((char *)off_8BC4 + 0xFFFFFFFC + 34972) + 60))(
        v40,
        320,
        off_8BC8 + 17494,
        v41);
      v29 = (__int16)(v3 + a1[133] * i + (a1[133] - 12) / 2);
      v30 = 15;
      v31 = v8;
      goto LABEL_77;
    }
    if ( v25 == 1 )
    {
      sub_19618(v6, dword_8BE0, v41, 80);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, _DWORD, _BYTE *))(*(_DWORD *)((char *)off_8BE4
                                                                                   + 0xFFFFFFFC
                                                                                   + 35416)
                                                                       + 60))(
        v40,
        320,
        off_8BE8 + 17714,
        a1[4 * a1[130] + 3 + 4 * i],
        v41);
      v29 = (__int16)(v3 + a1[133] * i + (a1[133] - 12) / 2);
      v30 = 125;
      v31 = v8;
      goto LABEL_77;
    }
    if ( v25 != 2 )
    {
      if ( v25 != 3 )
        continue;
      v26 = a1[4 * a1[130] + 5 + 4 * i];
      if ( v26 >= 0 )
        sub_C300(a1, a2, v44, v26, 42, (__int16)(v3 + a1[133] * i + (a1[133] - 15) / 2));
      v27 = &a1[4 * a1[130] + 4 * i];
      if ( v27[5] )
      {
        if ( v27[5] <= 0 )
          continue;
        sub_19618(v6, dword_8BB4, v41, 80);
        (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)((char *)off_8BB8 + 0xFFFFFFFC + 34836)
                                                                 + 60))(
          v40,
          320,
          off_8BBC + 17426,
          v41);
      }
      else
      {
        sub_19618(v6, dword_8B8C, v41, 80);
        (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)((char *)off_8B90 + 0xFFFFFFFC + 34320)
                                                                 + 60))(
          v40,
          320,
          off_8B94 + 17168,
          v41);
      }
      v29 = (__int16)(v3 + a1[133] * i + (a1[133] - 12) / 2);
      v30 = 5;
      v31 = v8;
      goto LABEL_77;
    }
    if ( a1[4 * a1[130] + 5 + 4 * i] == 1 )
    {
      sub_19618(v6, dword_8BC0, v41, 80);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)((char *)off_8BCC + 0xFFFFFFFC + 35108) + 60))(
        v40,
        320,
        off_8BD0 + 17562,
        v41);
      sub_98BC(v7, a2, (__int16)(v3 + a1[133] * i + (a1[133] - 12) / 2), v39, v40, 0, 0, 0, 15, 0, v8, 0);
    }
    if ( a1[4 * a1[130] + 5 + 4 * i] == 2 )
    {
      sub_19618(v6, dword_8BD4, v41, 80);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, _BYTE *))(*(_DWORD *)((char *)off_8BD8 + 0xFFFFFFFC + 35280) + 60))(
        v40,
        320,
        off_8BDC + 17648,
        v41);
      v29 = (__int16)(v3 + a1[133] * i + (a1[133] - 12) / 2);
      v30 = 25;
      v31 = v8;
LABEL_77:
      sub_98BC(v7, a2, v29, v39, v40, 0, 0, 0, v30, 0, v31, 0);
      continue;
    }
  }
  v32 = (unsigned __int16)a1[132];
  if ( !a1[132] )
  {
    v33 = 5;
    goto LABEL_87;
  }
  switch ( v32 )
  {
    case 1:
      goto LABEL_86;
    case 2:
      *(_WORD *)(*((_DWORD *)a1 + 69) + 8) = 15;
      break;
    case 3:
LABEL_86:
      v33 = 4;
LABEL_87:
      *(_WORD *)(*((_DWORD *)a1 + 69) + 8) = v33;
      break;
  }
  v34 = a1[131];
  v35 = a1[130] + v34;
  v36 = v3 + a1[133] * (v34 - 1);
  if ( v35 < *a1 )
    v36 += *((_DWORD *)a1 + 81) << 30 >> 31;
  *(_WORD *)(*((_DWORD *)a1 + 69) + 16) = v36;
  sub_21BA8(*((_DWORD *)a1 + 69));
  return sub_1CE08(*((_DWORD *)a1 + 69), a2, v44);
}

