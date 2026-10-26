int __fastcall sub_6ADB8(
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
  const char *v21; // r1
  int v22; // r0
  int v23; // r0
  __int16 *v24; // r2
  int v30; // [sp+20h] [bp-40h]
  unsigned int v31; // [sp+24h] [bp-3Ch]
  int v32; // [sp+28h] [bp-38h]
  int v33; // [sp+2Ch] [bp-34h]
  __int16 *v34; // [sp+30h] [bp-30h]
  __int16 *v35; // [sp+34h] [bp-2Ch] BYREF
  _DWORD *v36; // [sp+38h] [bp-28h]
  char v37; // [sp+3Ch] [bp-24h]
  int v38; // [sp+50h] [bp-10h] BYREF
  int v39; // [sp+54h] [bp-Ch]
  int v40; // [sp+58h] [bp-8h]
  int v41; // [sp+5Ch] [bp-4h]
  _DWORD savedregs[5]; // [sp+60h] [bp+0h]

  v30 = a8[3];
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
  v31 = (unsigned __int8)(a9 - 4);
  if ( v31 <= 2 )
  {
    v33 = sub_6BB36(18, v11);
    v34 = (__int16 *)v33;
    sub_6BB36(v33, 0, 16, &unk_140329C);
    sub_69E04(v33, v10, a9);
  }
  else
  {
    v34 = v10;
  }
  sub_6BB36(&v35, 0, 28);
  v37 = 2;
  v16 = v30 + 1;
  if ( a8[3] )
  {
    v32 = sub_6BB36(18, v15);
    v35 = (__int16 *)v32;
    sub_6BB36(v32, 0, 16, &unk_140329C);
    v36 = v13;
    sub_69D34(&v35, v34, v16);
  }
  else
  {
    v36 = v13;
    v35 = v34;
  }
  if ( !a7 )
  {
    v17 = a1 + a3;
    v18 = a2 + a4;
    if ( !a9 )
    {
      v19 = v35;
      v38 = v17 - *v35;
      v20 = v35[1];
LABEL_25:
      v39 = v18 - v20;
      v40 = (unsigned __int16)v19[2];
      v41 = (unsigned __int16)v19[3];
      sub_6BB38(0, (const char *)&v38, &v35, *a8, a8[1], a8[2]);
      goto LABEL_32;
    }
    if ( a9 != 1 )
    {
      if ( a9 != 2 )
      {
        if ( a9 != 3 )
        {
          v21 = (const char *)(unsigned __int8)(a9 - 4);
          if ( v31 <= 2 )
          {
            v38 = v17 - *v35;
            v39 = v18 - v35[1];
            v40 = (unsigned __int16)v35[2];
            v41 = (unsigned __int16)v35[3];
            sub_6BB38(0, (const char *)&v38, &v35, *a8, a8[1], a8[2]);
            goto LABEL_33;
          }
          goto LABEL_37;
        }
LABEL_27:
        v38 = v17 - *v35;
        v39 = v18 - ((unsigned __int16)v35[3] - v16 - v35[1]);
        v40 = (unsigned __int16)v35[2];
        v41 = (unsigned __int16)v35[3];
        sub_6BB38(0, (const char *)&v38, &v35, *a8, a8[1], a8[2]);
        goto LABEL_32;
      }
      goto LABEL_29;
    }
LABEL_22:
    v38 = v17 - ((unsigned __int16)v35[2] - v16 - *v35);
    v39 = v18 - v35[1];
    v40 = (unsigned __int16)v35[2];
    v41 = (unsigned __int16)v35[3];
    sub_6BB38(0, (const char *)&v38, &v35, *a8, a8[1], a8[2]);
    goto LABEL_32;
  }
  if ( a7 != 1 )
    goto LABEL_32;
  v17 = a1 - a3;
  v18 = a2 + a4;
  switch ( a9 )
  {
    case 0u:
      goto LABEL_22;
    case 1u:
      v19 = v35;
      v38 = v17 - *v35;
      v20 = v35[1];
      goto LABEL_25;
    case 2u:
      goto LABEL_27;
    case 3u:
LABEL_29:
      v38 = v17 - ((unsigned __int16)v35[2] - v16 - *v35);
      v39 = v18 - ((unsigned __int16)v35[3] - v16 - v35[1]);
      v40 = (unsigned __int16)v35[2];
      v41 = (unsigned __int16)v35[3];
      sub_6BB38(0, (const char *)&v38, &v35, *a8, a8[1], a8[2]);
LABEL_32:
      v21 = (const char *)(unsigned __int8)(a9 - 4);
      if ( v31 <= 2 )
      {
LABEL_33:
        if ( v33 )
        {
          v22 = *((_DWORD *)v34 + 2);
          if ( v22 )
          {
            sub_6BB36(v22, v21);
            *((_DWORD *)v34 + 2) = 0;
            *((_DWORD *)v34 + 3) = 0;
          }
          sub_6BB36(v33, v21);
        }
        goto LABEL_37;
      }
      goto LABEL_37;
  }
  v21 = (const char *)(unsigned __int8)(a9 - 4);
  if ( v31 <= 2 )
  {
    v38 = v17 - ((unsigned __int16)v35[2] - v16 - *v35);
    v39 = v18 - v35[1];
    v40 = (unsigned __int16)v35[2];
    v41 = (unsigned __int16)v35[3];
    sub_6BB38(0, (const char *)&v38, &v35, *a8, a8[1], a8[2]);
    goto LABEL_33;
  }
LABEL_37:
  if ( a8[3] && v32 )
  {
    v23 = *((_DWORD *)v35 + 2);
    if ( v23 )
    {
      sub_6BB36(v23, v21);
      v24 = v35;
      *((_DWORD *)v35 + 2) = 0;
      *((_DWORD *)v24 + 3) = 0;
    }
    sub_6BB36(v32, v21);
  }
  return savedregs[4];
}
