int __fastcall sub_1CA88(int result, _BYTE *a2, int a3, int a4)
{
  unsigned int v4; // r5
  bool v5; // zf
  unsigned __int16 *v8; // r4
  int v9; // r8
  int v10; // r9
  int v12; // r0
  int v13; // lr
  int v14; // r7
  unsigned int v15; // r0
  unsigned int v16; // r1
  unsigned int v17; // r1
  unsigned int v18; // r1
  char v19; // r0
  unsigned __int8 v20; // r0
  unsigned int v21; // r0
  unsigned int v22; // r1
  unsigned int v23; // r1
  unsigned int v24; // r1
  unsigned __int16 v25; // r0
  unsigned __int8 v26; // r1
  __int16 v27; // r1
  __int16 v28; // r2
  __int16 v29; // r1
  bool v30; // zf
  int v31; // r5
  _WORD v32[64]; // [sp+20h] [bp-88h] BYREF
  __int16 v33; // [sp+A0h] [bp-8h] BYREF
  __int16 v34; // [sp+A2h] [bp-6h]
  unsigned __int16 v35; // [sp+A4h] [bp-4h]
  __int16 v36; // [sp+A6h] [bp-2h]

  v4 = (unsigned int)a2;
  v5 = a2 == 0;
  if ( a2 )
    v5 = a3 == 0;
  v8 = *(unsigned __int16 **)(a3 + 32);
  v9 = result;
  if ( !v5 )
  {
    result = *(_DWORD *)(result + 364);
    v5 = result == 0;
  }
  if ( v5 )
    result = 0;
  v10 = 1;
  if ( !v5 )
  {
    sub_10C58((int)v8, 0, 0, (__int16)*v8, (__int16)v8[1], 0, 0, 0);
    if ( a2[336] )
    {
      if ( *(int *)(v9 + 360) >= 0 )
      {
        sub_19618(*(int **)(a3 + 40), *(_DWORD *)(v9 + 360), (int)v32, 0x40u);
        sub_10C58((int)v8, 0, 0, (__int16)*v8, (__int16)v8[1], 0, 0, 0);
        v12 = (*(int (__fastcall **)(_WORD *))(*(_DWORD *)((char *)off_1CE04 + 0xFFFFFFFC + 117560) + 48))(v32);
        v13 = ((v8[1] >> 1) - v8[8]) << 16;
        v33 = (*v8 - 12 * v12) / 2;
        v13 >>= 16;
        v34 = v13;
        v35 = *v8 - v33;
        v36 = v8[1];
        sub_98BC(*(_DWORD *)(*(_DWORD *)(a3 + 40) + 100), v8, v13, &v33, v32, 1, 2016, 0, v33, 0, 0, 0);
        return 1;
      }
    }
    else
    {
      v10 = (*(int (__fastcall **)(unsigned int, int, int))(v9 + 364))(v4, a3, a4);
      if ( !v10 )
        return v10;
    }
    v14 = (unsigned __int8)a2[340];
    if ( a2[340] )
    {
      switch ( v14 )
      {
        case 1:
          v15 = *(unsigned __int16 *)(v4 + 344);
          v16 = 32 * (v15 - *(unsigned __int16 *)(v4 + 342));
LABEL_23:
          v19 = sub_104(v15, v16);
          goto LABEL_24;
        case 2:
          v15 = *(unsigned __int16 *)(v4 + 344);
          v17 = 32 * *(unsigned __int16 *)(v4 + 342);
          goto LABEL_21;
        case 3:
          v18 = *(unsigned __int16 *)(v4 + 342);
          v15 = *(unsigned __int16 *)(v4 + 344);
          if ( v18 >= v15 >> 1 )
          {
            v16 = (v15 - v18) << 6;
            goto LABEL_23;
          }
          v17 = v18 << 6;
LABEL_21:
          v19 = sub_1DC(v15, v17);
LABEL_24:
          v20 = v19 + 32;
LABEL_35:
          v4 = v20;
LABEL_36:
          if ( v4 <= 0x20 )
            v25 = 0;
          else
            v25 = -1;
          if ( v4 <= 0x20 )
            v26 = 32 - v4;
          else
            v26 = v4 - 32;
          sub_10C58((int)v8, 0, 0, (__int16)*v8, (__int16)v8[1], (v26 << 8) | 2, v25, 0);
          if ( !a2[352] )
            return v10;
          v27 = v8[1];
          v28 = v8[8];
          v33 = 0;
          v29 = v27 - v28;
          v34 = v29;
          v30 = v14 == 1;
          v35 = *v8;
          if ( v14 != 1 )
            v30 = v14 == 2;
          v36 = v8[1];
          v31 = *(_DWORD *)(v9 + 356);
          if ( v30 )
          {
            if ( v31 == -1 )
            {
LABEL_48:
              sub_98BC(
                *(_DWORD *)(*(_DWORD *)(a3 + 40) + 100),
                v8,
                v29,
                &v33,
                (_WORD *)(a3 + 1716),
                1,
                2016,
                0,
                0,
                0,
                0,
                0);
              return v10;
            }
          }
          else if ( v31 == -1 )
          {
            goto LABEL_48;
          }
          sub_98BC(
            *(_DWORD *)(*(_DWORD *)(a3 + 40) + 100),
            v8,
            v29,
            &v33,
            (_WORD *)(a3 + (v31 << 7) + 948),
            1,
            2016,
            0,
            0,
            0,
            0,
            0);
          return v10;
        case 4:
          v21 = *(unsigned __int16 *)(v4 + 344);
          v22 = 32 * *(unsigned __int16 *)(v4 + 342);
LABEL_32:
          v20 = sub_1DC(v21, v22);
          goto LABEL_35;
        case 5:
          v21 = *(unsigned __int16 *)(v4 + 344);
          v23 = 32 * (v21 - *(unsigned __int16 *)(v4 + 342));
          break;
        case 6:
          v24 = *(unsigned __int16 *)(v4 + 342);
          v21 = *(unsigned __int16 *)(v4 + 344);
          if ( v24 < v21 >> 1 )
          {
            v22 = v24 << 6;
            goto LABEL_32;
          }
          v23 = (v21 - v24) << 6;
          break;
        default:
          goto LABEL_36;
      }
      v20 = sub_104(v21, v23);
      goto LABEL_35;
    }
    return v10;
  }
  return result;
}

