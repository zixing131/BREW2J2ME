int sub_1700()
{
  int v0; // r0
  int v1; // r0
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int v6; // r0
  int v7; // r0
  int v8; // r0
  int v9; // r0
  int v10; // r0
  int v11; // r0
  int v12; // r2
  int v13; // r5
  int v14; // r6
  int v15; // r0
  int v16; // r1
  int v17; // r0
  int v18; // r0
  int v19; // r0
  int v20; // r0
  int v21; // r0
  int v22; // r0
  int v23; // r0
  int v24; // r1
  int v25; // r2
  int v26; // r0
  int v27; // r5
  int v28; // r0
  int v29; // r0
  int v30; // r0
  int v31; // r0
  int v32; // r0
  int v33; // r0
  int v34; // r5
  int v35; // r6
  int v36; // r0
  int v37; // r1
  int v38; // r0
  int v39; // r0
  int v40; // r0
  int v41; // r0
  int v42; // r0
  int v43; // r0
  int v44; // r1
  int v45; // r2
  int v46; // r0
  int v47; // r1
  int v48; // r2
  int v49; // r0
  int v50; // r0
  int v51; // r0
  int v52; // r0
  int v53; // r1
  int v54; // r2
  int v55; // r0
  int v56; // r0
  int v57; // r0
  int v58; // r0
  int v60; // [sp+4h] [bp-A8h]
  int v61; // [sp+1Ch] [bp-90h]
  _BYTE v62[60]; // [sp+20h] [bp-8Ch] BYREF
  _BYTE v63[61]; // [sp+5Ch] [bp-50h] BYREF
  _BYTE v64[11]; // [sp+99h] [bp-13h] BYREF
  _BYTE v65[4]; // [sp+A4h] [bp-8h] BYREF
  _BYTE v66[4]; // [sp+A8h] [bp-4h] BYREF
  _DWORD savedregs[5]; // [sp+ACh] [bp+0h]

  sub_1B42(v66, 576829, 4);
  sub_1B42(v65, 576825, 4);
  sub_1B42(v64, 576814, 11);
  v0 = sub_1B40(0);
  v1 = sub_1B3C(v0);
  v2 = sub_1B40(v1);
  v3 = sub_1B40(v2);
  v4 = sub_1B40(v3);
  v5 = sub_1B40(v4);
  sub_1B40(v5);
  if ( *((char *)&unk_1501C8C + 12 * (unsigned __int8)byte_150D760 + 1) == -1 )
  {
    sub_1B3E(0);
    sub_1B44(1);
    v6 = sub_1B46(45167, &unk_1533768);
    v7 = sub_1B3E(v6);
    v8 = sub_1B40(v7);
    sub_1B40(v8);
    *(_BYTE *)(dword_1501D90 + 500) = 40;
    v9 = *(_DWORD *)(dword_1501D90 + 16);
    *(_DWORD *)(v9 + 28) = 5;
    sub_1B40(v9);
    v10 = sub_1B40(*(_DWORD *)(dword_1501D90 + 16));
    v11 = sub_1B3C(v10);
    sub_1B3E(v11);
    sub_1B40(*(_DWORD *)(dword_1501D90 + 16) + 68);
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(_DWORD *)(dword_1501D90 + 16);
      v16 = *(unsigned __int8 *)(v14 + v15 + 5230);
      if ( v16 != 255 )
        v15 = sub_1B42(v15, v16, v13);
      ++v13;
      v14 += 104;
    }
    while ( v13 != 13 );
    v17 = sub_1B42(v15, v16, v12);
    v18 = sub_1B40(v17);
    v19 = sub_1B40(v18);
    v20 = sub_1B40(v19);
    v21 = sub_1B40(v20);
    v22 = sub_1B40(v21);
    v23 = sub_1B40(v22);
    sub_1B42(v23, v24, v25);
    v26 = sub_14AC(0);
    sub_1584(v26);
    v61 = 0;
    v60 = 0;
    do
    {
      sub_1B40(v63);
      v27 = (unsigned __int8)v66[v61];
      sub_1B42(v62, v27, v27);
      sub_1B40(v63);
      sub_1B40(v63);
      sub_1B40((unsigned __int8)v64[v27]);
      *(_BYTE *)(v60 + dword_1501D90 + 514) = 1;
      ++v61;
      v60 += 60;
    }
    while ( v61 != 4 );
    sub_1B40(*(_DWORD *)(dword_1501D90 + 16));
    v28 = sub_1B40(100);
    v29 = sub_1B40(v28);
    v30 = sub_1B40(v29);
  }
  else
  {
    sub_1B3E(0);
    sub_1B44(1);
    v31 = sub_1B46(45167, &unk_1533768);
    sub_1584(v31);
    v32 = sub_1B40(4);
    sub_1B3C(v32);
    v33 = sub_1B3E(*(_DWORD *)(dword_1501D90 + 16));
    sub_1B40(v33);
    sub_1B40(*(_DWORD *)(dword_1501D90 + 16) + 68);
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = *(_DWORD *)(dword_1501D90 + 16);
      v37 = *(unsigned __int8 *)(v35 + v36 + 5230);
      if ( v37 != 255 )
        v36 = sub_1B42(v36, v37, v34);
      ++v34;
      v35 += 104;
    }
    while ( v34 != 13 );
    v38 = sub_1B40(v36);
    v39 = sub_1B40(v38);
    v40 = sub_1B40(v39);
    v41 = sub_1B40(v40);
    v42 = sub_1B40(v41);
    v43 = sub_1B40(v42);
    sub_1B42(v43, v44, v45);
    v46 = sub_14AC(0);
    v49 = sub_1B42(v46, v47, v48);
    v50 = sub_1B40(v49);
    v51 = sub_1B40(v50);
    v52 = sub_1B40(v51);
    v55 = sub_1B42(v52, v53, v54);
    sub_1B40(v55);
    v30 = sub_1404(1, 0, 0, 0);
  }
  *(_BYTE *)(*(_DWORD *)(dword_1501D90 + 16) + 56) = 0;
  v56 = sub_1B40(v30);
  v57 = sub_1B40(v56);
  v58 = sub_1B40(v57);
  sub_1B40(v58);
  return savedregs[4];
}
