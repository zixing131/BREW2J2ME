int __fastcall sub_7BF58(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3)
{
  int v3; // r6
  int v4; // r3
  int v5; // r7
  int v6; // r2
  int v7; // r5
  unsigned __int8 *v8; // r4
  unsigned __int8 *v9; // r5
  int v10; // r4
  int v11; // r0
  __int16 v12; // r0
  int v13; // r4
  _BYTE *v14; // r1
  unsigned __int8 *v15; // r2
  int v16; // r5
  int v17; // r4
  int v18; // r0
  unsigned __int16 *v19; // r6
  int v20; // r5
  int v21; // r2
  int v22; // r5
  int v23; // r0
  int v24; // r2
  int v25; // r5
  int v26; // r0
  int v27; // r6
  int v28; // r4
  int v29; // r0
  int v30; // r2
  __int64 v31; // r0
  int v32; // r3
  int v33; // r7
  int v34; // r4
  __int16 v35; // r5
  int result; // r0
  int v37; // [sp+Ch] [bp-1Ch]
  int v38; // [sp+10h] [bp-18h]
  int v40; // [sp+18h] [bp-10h]
  __int16 v41; // [sp+1Ch] [bp-Ch]
  int v42; // [sp+20h] [bp-8h]
  int v43; // [sp+24h] [bp-4h]

  v3 = *(_DWORD *)(dword_1501D90 + 16);
  v37 = a3;
  v38 = a2;
  if ( *((_BYTE *)&unk_1538F9C + 640 * a1 + 183) )
    v40 = *(unsigned __int16 *)(2 * *((unsigned __int8 *)&unk_1538F9C + 640 * a1 + 176) + dword_1536B58 + 298);
  else
    v40 = 0;
  v4 = *(char *)(104 * a2 + v3 + 5224);
  switch ( v4 )
  {
    case 18:
      v5 = *(unsigned __int16 *)(v3 + 1286);
      if ( *(_WORD *)(v3 + 1286) )
      {
        v6 = 36 * a2 + v3;
        if ( *(_BYTE *)(v6 + 584) == 1 && *(_BYTE *)(v6 + 578) == 2 )
          break;
      }
LABEL_27:
      v5 = *(unsigned __int16 *)((char *)&dword_14A8[26 * a2 + v37] + v3 + 2);
      break;
    case 9:
      v5 = *(unsigned __int16 *)(v3 + 1284);
      if ( *(_WORD *)(v3 + 1284) )
        break;
      goto LABEL_27;
    case 20:
      v7 = *(unsigned __int16 *)((char *)&dword_14A8[26 * a2 + a3] + v3 + 2);
      v8 = (unsigned __int8 *)(v3 + 104 * a2 + 5304);
      LOBYTE(v43) = 0;
      v5 = v7;
      do
      {
        if ( *v8 == 138 )
          v5 = (unsigned __int16)(v7
                                + sub_80704(v7 * (__int16)(*((_WORD *)v8 + 1) * *(unsigned __int8 *)(v3 + 6627)), 100));
        v43 = (unsigned __int8)(v43 + 1);
        v8 += 8;
      }
      while ( v43 != 3 );
      break;
    default:
      if ( v4 != 14 && v4 != 33 && v4 != 35 || *((_BYTE *)&dword_19E4 + v3) != 1 )
        goto LABEL_27;
      v5 = 0;
      v41 = 0;
      v9 = (unsigned __int8 *)(v3 + 104 * a2 + 5304);
      do
      {
        if ( *v9 == 145 )
        {
          v10 = *(unsigned __int16 *)((char *)&dword_14A8[26 * v38 + v37] + v3 + 2);
          v11 = v10 * (__int16)(v41 + *((_WORD *)v9 + 2));
          v41 += *((_WORD *)v9 + 2);
          v5 = (unsigned __int16)(v10 + sub_80704(v11, 100));
        }
        v9 += 8;
      }
      while ( v9 != (unsigned __int8 *)((char *)&dword_14D0[26 * v38] + v3) );
      break;
  }
  v12 = *(unsigned __int8 *)(v3 + 6627);
  if ( *(_BYTE *)(v3 + 6627) )
  {
    LOBYTE(v13) = 0;
    v42 = 0;
    v14 = (_BYTE *)(v3 + 5224);
    v15 = (unsigned __int8 *)(v3 + 5304);
    do
    {
      if ( *v14 == 16 && (char)v14[1] > 0 && (char)v14[2] > 0 )
      {
        if ( *v15 == 139 )
          v42 = (unsigned __int16)(v42 + *((_WORD *)v15 + 1) * v12);
        if ( v15[8] == 139 )
          v42 = (unsigned __int16)(v42 + *((_WORD *)v15 + 5) * v12);
        if ( v15[16] == 139 )
          v42 = (unsigned __int16)(v42 + *((_WORD *)v15 + 9) * v12);
      }
      v13 = (unsigned __int8)(v13 + 1);
      v14 += 104;
      v15 += 104;
    }
    while ( v13 != 13 );
  }
  else
  {
    v42 = 0;
  }
  v16 = sub_7A928(0);
  v17 = *(unsigned __int16 *)(v3 + 1062);
  v18 = sub_7A72C(0);
  v19 = *(unsigned __int16 **)(dword_1501D90 + 16);
  v20 = v5 + v16 + sub_8070E((v17 + v19[655] + v19[687] + v18 + (unsigned int)v19[686] + v42) * v5, 200, v42);
  v22 = v20 + sub_8070E((unsigned int)v19[637] * v20, 100, v21);
  v23 = sub_76CAC(a1, 1);
  v25 = sub_8070E((100 - v23) * v22, 100, v24);
  v26 = sub_7A88C(0);
  v27 = dword_1501D90;
  v28 = v25
      + v26
      + sub_8070E(
          (unsigned int)*(unsigned __int16 *)(*(_DWORD *)(dword_1501D90 + 16) + 1166) * v25,
          100,
          *(_DWORD *)(dword_1501D90 + 16));
  v29 = sub_77540(a1);
  v31 = sub_8070E(v29 * v28, 100, v30);
  v32 = *(unsigned __int8 *)(v27 + 5905);
  v33 = v28 + v31;
  if ( *(_BYTE *)(v27 + 5905) )
    v32 = *(unsigned __int8 *)(v27 + 5916);
  v34 = (unsigned __int16)((v32 >> 2) + 1);
  v35 = sub_80706(2 * v34 + 1, HIDWORD(v31));
  result = (unsigned __int16)(v33 + sub_80706(v40 * v33, 100) - v34 + v35);
  if ( !result )
    return 1;
  return result;
}
