int sub_346D0()
{
  int v0; // r6
  int v1; // r5
  int v2; // r1
  int v3; // r1
  int v4; // r1
  int v5; // r4
  int v6; // r5
  int v7; // r1
  int v8; // r5
  int v9; // r1
  int v10; // r0
  int v11; // r7
  int v12; // r5
  int v13; // r3
  char v14; // r2
  int v15; // r2
  char *v16; // r1
  char v17; // r2
  int v18; // r3
  int v19; // r1
  int v20; // r0
  int v21; // r0
  int v22; // r1
  int v23; // r0
  int v24; // r1
  int v25; // r0
  int v26; // r1
  int v27; // r0
  int v28; // r1
  int v29; // r0
  int v30; // r1
  int v31; // r2
  int v32; // r1
  int v33; // r4
  int v34; // r0
  int v35; // r3
  _DWORD *v36; // r4
  int v37; // r0
  int v38; // r3
  int v40; // [sp+4h] [bp-ACh]
  int v41; // [sp+8h] [bp-A8h]
  _BYTE v42[60]; // [sp+Ch] [bp-A4h] BYREF
  _BYTE v43[60]; // [sp+48h] [bp-68h] BYREF
  _BYTE v44[17]; // [sp+84h] [bp-2Ch] BYREF
  _BYTE v45[12]; // [sp+95h] [bp-1Bh] BYREF
  _BYTE v46[11]; // [sp+A1h] [bp-Fh] BYREF
  _BYTE v47[4]; // [sp+ACh] [bp-4h] BYREF
  _DWORD savedregs[5]; // [sp+B0h] [bp+0h]

  sub_66A78(v45, 616241, 12);
  sub_66A78(v46, 616230, 11);
  sub_66A78(v44, 616213, 17);
  sub_66A78(v47, 616209, 4);
  v0 = 0;
  v1 = 0;
  do
  {
    *(_BYTE *)(v1 + *(_DWORD *)(dword_1501D90 + 16) + 116) = 0;
    *(_BYTE *)(v1 + *(_DWORD *)(dword_1501D90 + 16) + 584) = 0;
    v2 = v0++;
    sub_66A76(*(_DWORD *)(dword_1501D90 + 16), v2);
    v1 += 36;
  }
  while ( v0 != 13 );
  sub_66A76(*(_DWORD *)(dword_1501D90 + 16) + 68, v3);
  *(_BYTE *)(*(_DWORD *)(dword_1501D90 + 16) + 66) = 1;
  sub_66A76(*(_DWORD *)(dword_1501D90 + 16) + 68, 1);
  v4 = *(_DWORD *)(dword_1501D90 + 16);
  *(_BYTE *)(v4 + 6597) = 60;
  *(_BYTE *)(*(_DWORD *)(dword_1501D90 + 16) + 50) = 5;
  v5 = 0;
  v6 = 0;
  do
  {
    sub_66A76(v5, v4);
    sub_66A76((unsigned __int8)v46[(unsigned __int8)v47[v5++]], v7);
    *(_BYTE *)(v6 + dword_1501D90 + 514) = 0;
    v6 += 60;
  }
  while ( v5 != 4 );
  v41 = 0;
  v40 = 0;
  do
  {
    sub_66A76(v43, 0);
    v8 = (unsigned __int8)v45[v41];
    sub_66A78(v42, v8, v8);
    sub_66A76(v43, v42);
    sub_66A76(v43, v9);
    v10 = sub_66A76((unsigned __int8)v46[v8], v40 + 504 + dword_1501D90);
    *(_BYTE *)(v40 + dword_1501D90 + 514) = 1;
    ++v41;
    v40 += 60;
  }
  while ( v41 != 6 );
  sub_66A76(v10, 512);
  sub_66A76(1, 0);
  v11 = 0;
  v12 = 0;
  do
  {
    if ( v11 == 12 )
    {
      v13 = *(char *)(*(_DWORD *)(dword_1501D90 + 16) + 50);
      if ( v13 <= 4 )
        v14 = v44[v13 + 12];
      else
        v14 = v44[v13 + 8];
      *(_BYTE *)(*(_DWORD *)(dword_1501D90 + 16) + 6472) = v14;
    }
    else
    {
      *(_BYTE *)(v12 + *(_DWORD *)(dword_1501D90 + 16) + 5224) = v44[v11];
    }
    v15 = *(_DWORD *)(dword_1501D90 + 16);
    v16 = (char *)(v12 + v15 + 5224);
    if ( *v16 == -1 )
    {
      v17 = 0;
      v16[1] = 0;
    }
    else
    {
      v18 = v12 + v15 + 5224;
      v17 = 1;
      *(_BYTE *)(v18 + 1) = 1;
    }
    *(_BYTE *)(v12 + *(_DWORD *)(dword_1501D90 + 16) + 5226) = v17;
    v19 = *(_DWORD *)(dword_1501D90 + 16);
    *(_WORD *)(v12 + v19 + 5228) = 0;
    v20 = *(char *)(v12 + v19 + 5224);
    if ( v20 == -1 )
      *(_BYTE *)(v12 + v19 + 5230) = -1;
    else
      *(_BYTE *)(v12 + v19 + 5230) = sub_66A76(v20, v19);
    v21 = *(_DWORD *)(dword_1501D90 + 16);
    v22 = *(unsigned __int8 *)(v12 + v21 + 5230);
    if ( v22 != 255 )
      sub_66A78(v21, v22, v11);
    ++v11;
    v23 = sub_66A76(v12 + 5232 + *(_DWORD *)(dword_1501D90 + 16), 0);
    v12 += 104;
  }
  while ( v11 != 13 );
  v25 = sub_66A76(v23, v24);
  v27 = sub_66A76(v25, v26);
  v29 = sub_66A76(v27, v28);
  sub_66A76(v29, v30);
  v31 = *(_DWORD *)(dword_1501D90 + 16);
  *(_WORD *)((char *)&loc_146C + v31) = *(_WORD *)((char *)&dword_14A4 + v31);
  *(_WORD *)((char *)&dword_14D4 + v31) = *(_WORD *)((char *)&loc_150A + v31 + 2);
  *(_WORD *)((char *)&locret_153C + v31) = *(_WORD *)((char *)&dword_1574 + v31);
  *(_WORD *)((char *)&loc_15A4 + v31) = *(_WORD *)((char *)&loc_15DA + v31 + 2);
  v32 = *(unsigned __int16 *)((char *)&loc_1642 + v31 + 2);
  *(_WORD *)((char *)&loc_160C + v31) = v32;
  sub_66A76(4, v32);
  v33 = *(_DWORD *)(dword_1501D90 + 16);
  v34 = sub_66A76(0, 0);
  v35 = dword_1501D90;
  *(_DWORD *)(v33 + 6584) = v34;
  v36 = *(_DWORD **)(v35 + 16);
  v36[1645] = v36[1646];
  v37 = sub_66A76(0, 0);
  v38 = dword_1501D90;
  v36[3] = v37;
  *(_DWORD *)(*(_DWORD *)(v38 + 16) + 8) = *(_DWORD *)(*(_DWORD *)(v38 + 16) + 12);
  return savedregs[4];
}
