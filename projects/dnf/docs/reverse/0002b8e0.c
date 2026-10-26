int __fastcall sub_2B8E0(char a1)
{
  const char *v1; // r1
  const char *v2; // r1
  const char *v3; // r7
  const char *v4; // r5
  const char *v5; // r1
  const char *v6; // r5
  int v7; // r6
  int v8; // r7
  int v9; // r0
  int v10; // r1
  int v11; // r2
  const char *v12; // r1
  int v13; // r1
  int v14; // r6
  int i; // r5
  const char *v16; // r1
  int v18; // [sp+0h] [bp-B0h]
  int v19; // [sp+0h] [bp-B0h]
  int v20; // [sp+4h] [bp-ACh]
  int v21; // [sp+8h] [bp-A8h]
  const char *v22; // [sp+Ch] [bp-A4h]
  const char *v23; // [sp+10h] [bp-A0h]
  int v24; // [sp+14h] [bp-9Ch]
  const char *v25; // [sp+18h] [bp-98h]
  unsigned int v26; // [sp+1Ch] [bp-94h]
  const char *v27; // [sp+20h] [bp-90h]
  int v28; // [sp+24h] [bp-8Ch]
  const char *v29; // [sp+28h] [bp-88h]
  int v30; // [sp+2Ch] [bp-84h]
  _BYTE v31[114]; // [sp+32h] [bp-7Eh] BYREF
  int v32; // [sp+A4h] [bp-Ch] BYREF
  int v33; // [sp+A8h] [bp-8h] BYREF
  __int16 v34; // [sp+AEh] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+B0h] [bp+0h]

  sub_2BCB6(v31, "%d.zon", a1);
  v21 = sub_2BCB6(v31, v1);
  if ( !v21 )
    return savedregs[4];
  sub_2BCBC(&v34, v21, 2);
  sub_2BCBC(&v33, v21 + 2, 4);
  sub_2BCBC(&v32, v21 + 6, 4);
  v22 = (const char *)sub_2BCB6(v33 + 2, v2);
  sub_2BCB8(v21 + 10, v22, v33, v32, 6);
  sub_2BCBC(dword_150D89C, v22, 1);
  sub_2BCBC(dword_150D89C + 1, v22 + 1, 1);
  sub_2BCBC(dword_150D89C + 2, v22 + 2, 1);
  v29 = v22 + 3;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v20 = 0;
  do
  {
    sub_2BCBC(&v31[v20 + 66], v29, 1);
    sub_2BCBC(&v31[v20 + 67], v29 + 1, 1);
    v23 = v29 + 2;
    if ( (char)v31[v28 + 66] != -1 && (char)v31[v28 + 67] != -1 )
    {
      ++v25;
      sub_2BCBC(&v31[v20 + 102], v29 + 2, 2);
      sub_2BCBC(&v31[v20 + 104], v29 + 4, 1);
      v23 = v29 + 5;
    }
    sub_2BCBC(&v31[v20 + 90], v23, 1);
    sub_2BCBC(&v31[v20 + 91], v23 + 1, 1);
    v3 = v23 + 2;
    if ( (char)v31[v28 + 90] != -1 && (char)v31[v28 + 91] != -1 )
    {
      ++v26;
      sub_2BCBC(&v31[v20 + 42], v23 + 2, 2);
      sub_2BCBC(&v31[v20 + 44], v23 + 4, 1);
      v3 = v23 + 5;
    }
    sub_2BCBC(&v31[v20 + 78], v3, 1);
    sub_2BCBC(&v31[v20 + 79], v3 + 1, 1);
    v4 = v3 + 2;
    if ( (char)v31[v28 + 78] != -1 && (char)v31[v28 + 79] != -1 )
    {
      ++v27;
      sub_2BCBC(&v31[v20 + 30], v4, 2);
      sub_2BCBC(&v31[v20 + 32], v3 + 4, 1);
      v4 = v3 + 5;
    }
    v5 = v4;
    v6 = v4 + 2;
    sub_2BCBC(&v31[v20 + 54], v5, 2);
    sub_2BCBC(&v31[v20 + 56], v6, 2);
    v29 = v6 + 2;
    ++v30;
    v20 += 4;
    v28 += 4;
  }
  while ( v30 != 3 );
  if ( v25 == (const char *)v26 )
  {
    if ( v25 == v27 )
    {
      v7 = sub_2BCB8(v25, v26, v27, v25, v18);
      v8 = v7;
      v24 = v7;
      goto LABEL_28;
    }
    v9 = sub_2BCB8(v25, v26, v27, v25, v18);
    v24 = v9;
    if ( (unsigned int)v27 > 1 )
    {
      v7 = v9;
      v8 = sub_2BCB8(v27, v10, v11, v27, v19);
      goto LABEL_28;
    }
    v7 = v9;
    goto LABEL_26;
  }
  v12 = v25;
  if ( (unsigned int)v25 > 1 )
    v24 = sub_2BCB6(v25, v25);
  else
    v24 = 0;
  if ( v26 > 1 )
    v7 = sub_2BCB6(v26, v12);
  else
    v7 = 0;
  if ( (unsigned int)v27 <= 1 )
  {
LABEL_26:
    v8 = 0;
    goto LABEL_28;
  }
  v8 = sub_2BCB6(v27, v27);
LABEL_28:
  *(_BYTE *)(dword_150D89C + 12) = v31[4 * v24 + 66];
  *(_BYTE *)(dword_150D89C + 13) = v31[4 * v24 + 67];
  *(_BYTE *)(dword_150D89C + 4) = v31[4 * v7 + 90];
  *(_BYTE *)(dword_150D89C + 5) = v31[4 * v7 + 91];
  *(_BYTE *)(dword_150D89C + 8) = v31[4 * v8 + 78];
  *(_BYTE *)(dword_150D89C + 9) = v31[4 * v8 + 79];
  v13 = dword_150D89C;
  *(_WORD *)(dword_150D89C + 16) = *(_WORD *)&v31[4 * v24 + 54];
  v14 = 0;
  *(_WORD *)(v13 + 18) = *(_WORD *)&v31[4 * v24 + 56];
  while ( v14 < *(unsigned __int8 *)dword_150D89C )
  {
    for ( i = 0; i < *(unsigned __int8 *)(dword_150D89C + 1); ++i )
    {
      sub_2BCB6(dword_150D89C + 10 * v14 + 20 + i, v29++, 1, &unk_140327C);
      *(_BYTE *)(10 * v14 + dword_150D89C + i + 120) = 0;
    }
    ++v14;
  }
  if ( v25 && *(_BYTE *)(dword_1501D90 + 6888) )
  {
    *(_BYTE *)(dword_1501D90 + 6889) = *(_WORD *)&v31[4 * v24 + 102];
    *(_BYTE *)(dword_1501D90 + 6890) = v31[4 * v24 + 104];
  }
  dword_150D88C = *(char *)(dword_1501D90 + 6888);
  dword_150D890 = *(unsigned __int8 *)(dword_1501D90 + 6889);
  dword_150D894 = *(char *)(dword_1501D90 + 6890);
  byte_150D898 = *(_BYTE *)(dword_150D89C + 12);
  v16 = v22;
  byte_150D899 = *(_BYTE *)(dword_150D89C + 13);
  if ( v22 )
    sub_2BCB6(v22, v22);
  sub_2BCB6(v21, v16);
  return savedregs[4];
}
