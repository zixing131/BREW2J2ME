int __fastcall sub_6AA7C(
        int a1,
        int a2,
        int a3,
        int a4,
        int *a5,
        int a6,
        char a7,
        unsigned __int8 *a8,
        unsigned __int8 a9)
{
  int v9; // r1
  __int16 *v10; // r5
  const char *v11; // r1
  int v12; // r2
  _DWORD *v13; // r7
  int v14; // r3
  const char *v15; // r1
  int v16; // r5
  int v17; // r0
  int v18; // r7
  __int16 *v19; // r2
  int v20; // r3
  __int16 *v21; // r1
  int v22; // r3
  __int16 *v23; // r1
  int v24; // r3
  const char *v25; // r1
  int v26; // r0
  int v27; // r0
  int v28; // r0
  int v34; // [sp+20h] [bp-40h]
  unsigned int v35; // [sp+24h] [bp-3Ch]
  int v36; // [sp+28h] [bp-38h]
  int v37; // [sp+2Ch] [bp-34h]
  __int16 *v38; // [sp+30h] [bp-30h]
  __int16 *v39; // [sp+34h] [bp-2Ch] BYREF
  _DWORD *v40; // [sp+38h] [bp-28h]
  char v41; // [sp+3Ch] [bp-24h]
  int v42; // [sp+50h] [bp-10h] BYREF
  int v43; // [sp+54h] [bp-Ch]
  int v44; // [sp+58h] [bp-8h]
  int v45; // [sp+5Ch] [bp-4h]
  _DWORD savedregs[5]; // [sp+60h] [bp+0h]

  v34 = a8[3];
  v9 = a5[1];
  if ( !v9 )
    return savedregs[4];
  v10 = (__int16 *)(v9 + 16 * a6);
  a5[5] = v9;
  v11 = (const char *)*((_DWORD *)v10 + 2);
  if ( !v11 )
    return savedregs[4];
  v12 = *a5;
  if ( !*a5 )
    return savedregs[4];
  a5[4] = v12;
  v13 = (_DWORD *)(v12 + 8 * a8[4]);
  v14 = *v13;
  if ( !*v13 )
    return savedregs[4];
  *((_DWORD *)v10 + 3) = v11;
  v13[1] = v14;
  v35 = (unsigned __int8)(a9 - 4);
  if ( v35 <= 2 )
  {
    v37 = sub_6BB36(18, v11);
    v38 = (__int16 *)v37;
    sub_6BB36(v37, 0, 16, &unk_140329C);
    sub_69E04(v37, v10, a9);
  }
  else
  {
    v38 = v10;
  }
  sub_6BB36(&v39, 0, 28);
  v41 = 2;
  v16 = v34 + 1;
  if ( a8[3] )
  {
    v36 = sub_6BB36(18, v15);
    v39 = (__int16 *)v36;
    sub_6BB36(v36, 0, 16, &unk_140329C);
    v40 = v13;
    sub_69D34(&v39, v38, v16);
  }
  else
  {
    v40 = v13;
    v39 = v38;
  }
  if ( !a7 )
  {
    v17 = a1 + a3;
    v18 = a2 + a4;
    switch ( a9 )
    {
      case 0u:
        v19 = v39;
        v42 = v17 - *v39;
        v20 = v39[1];
LABEL_29:
        v43 = v18 - v20;
        v44 = (unsigned __int16)v19[2];
        v45 = (unsigned __int16)v19[3];
        sub_6BB38(0, (const char *)&v42, &v39, *a8, a8[1], a8[2]);
        goto LABEL_37;
      case 1u:
        v21 = v39;
        v42 = v17 + *v39 - ((unsigned __int16)v39[2] - v16) + 15;
        v22 = v39[1];
LABEL_26:
        v43 = v18 - v22;
        v44 = (unsigned __int16)v21[2];
        v45 = (unsigned __int16)v21[3];
        sub_6BB38(0, (const char *)&v42, &v39, *a8, a8[1], a8[2]);
        goto LABEL_37;
      case 2u:
        v23 = v39;
        v42 = v17 + *v39 - ((unsigned __int16)v39[2] - v16) + 15;
        v24 = v18 + v39[1] - ((unsigned __int16)v39[3] - v16) + 15;
        break;
      case 3u:
        v23 = v39;
        v42 = v17 - *v39;
        v24 = v18 + v39[1] - ((unsigned __int16)v39[3] - v16) + 15;
        break;
      default:
        v25 = (const char *)(unsigned __int8)(a9 - 4);
        if ( v35 <= 2 )
        {
          v42 = v17 - *v39;
          v43 = v18 - v39[1];
          v44 = (unsigned __int16)v39[2];
          v45 = (unsigned __int16)v39[3];
          sub_6BB38(0, (const char *)&v42, &v39, *a8, a8[1], a8[2]);
          goto LABEL_38;
        }
        goto LABEL_42;
    }
LABEL_34:
    v43 = v24;
    v44 = (unsigned __int16)v23[2];
    v45 = (unsigned __int16)v23[3];
    sub_6BB38(0, (const char *)&v42, &v39, *a8, a8[1], a8[2]);
LABEL_37:
    v25 = (const char *)(unsigned __int8)(a9 - 4);
    if ( v35 <= 2 )
    {
LABEL_38:
      if ( v37 )
      {
        v27 = *((_DWORD *)v38 + 2);
        if ( v27 )
        {
          sub_6BB36(v27, v25);
          *((_DWORD *)v38 + 2) = 0;
          *((_DWORD *)v38 + 3) = 0;
        }
        sub_6BB36(v37, v25);
      }
      goto LABEL_42;
    }
    goto LABEL_42;
  }
  if ( a7 != 1 )
    goto LABEL_37;
  v26 = a1 - a3;
  v18 = a2 + a4;
  switch ( a9 )
  {
    case 0u:
      v21 = v39;
      v42 = v26 - ((unsigned __int16)v39[2] - v16 - *v39);
      v22 = v39[1];
      goto LABEL_26;
    case 1u:
      v19 = v39;
      v42 = v26 - *v39;
      v20 = v39[1];
      goto LABEL_29;
    case 2u:
      v23 = v39;
      v42 = v26 - *v39;
      v24 = v18 - ((unsigned __int16)v39[3] - v16 - v39[1]);
      goto LABEL_34;
    case 3u:
      v23 = v39;
      v42 = v26 - ((unsigned __int16)v39[2] - v16 - *v39);
      v24 = v18 - ((unsigned __int16)v39[3] - v16 - v39[1]);
      goto LABEL_34;
  }
  v25 = (const char *)(unsigned __int8)(a9 - 4);
  if ( v35 <= 2 )
  {
    v42 = v26 - ((unsigned __int16)v39[2] - v16 - *v39);
    v43 = v18 - v39[1];
    v44 = (unsigned __int16)v39[2];
    v45 = (unsigned __int16)v39[3];
    sub_6BB38(0, (const char *)&v42, &v39, *a8, a8[1], a8[2]);
    goto LABEL_38;
  }
LABEL_42:
  if ( a8[3] && v36 )
  {
    v28 = *((_DWORD *)v39 + 2);
    if ( v28 )
    {
      sub_6BB36(v28, v25);
      *((_DWORD *)v39 + 2) = 0;
      v39 = 0;
    }
    sub_6BB36(v36, v25);
  }
  return savedregs[4];
}
