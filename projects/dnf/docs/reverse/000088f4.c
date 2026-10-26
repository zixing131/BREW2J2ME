int sub_88F4()
{
  __int64 v0; // r0
  int v1; // r4
  const char *v2; // r7
  __int64 v3; // r0
  int v4; // r2
  __int64 v5; // r0
  const char *v6; // r5
  char *v7; // r6
  int v8; // r6
  int v9; // r4
  __int64 v10; // r0
  int v11; // r2
  int v12; // r4
  __int64 v13; // r0
  int v14; // r2
  int v15; // r4
  __int64 v16; // r0
  int v17; // r2
  int v18; // r4
  __int64 v19; // r0
  int v20; // r2
  int v21; // r4
  __int64 v22; // r0
  int v23; // r2
  int v24; // r4
  __int64 v25; // r0
  int v26; // r2
  int v27; // r4
  __int64 v28; // r0
  int v29; // r2
  int v30; // r4
  __int64 v31; // r0
  int v32; // r2
  int v33; // r4
  __int64 v34; // r0
  int v35; // r2
  int v36; // r4
  __int64 v37; // r0
  int v38; // r2
  int v39; // r4
  __int64 v40; // r0
  int v41; // r2
  int v42; // r4
  __int64 v43; // r0
  int v44; // r2
  int v45; // r4
  __int64 v46; // r0
  int v47; // r2
  int v48; // r4
  __int64 v49; // r0
  int v50; // r2
  int v51; // r4
  __int64 v52; // r0
  int v53; // r2
  int v54; // r4
  __int64 v55; // r0
  int v56; // r2
  int v57; // r4
  __int64 v58; // r0
  int v59; // r2
  int v60; // r4
  __int64 v61; // r0
  int v62; // r2
  int v63; // r4
  __int64 v64; // r0
  int v65; // r2
  int v66; // r4
  __int64 v67; // r0
  int v68; // r2
  int v69; // r4
  __int64 v70; // r0
  int v71; // r2
  int v72; // r4
  __int64 v73; // r0
  int v74; // r2
  int v75; // r4
  __int64 v76; // r0
  int v77; // r2
  __int64 v78; // r0
  int v79; // r4
  __int64 v80; // r0
  _DWORD *v81; // r5
  int v82; // r4
  __int64 v83; // r0
  _DWORD *v84; // r5
  int v85; // r4
  __int64 v86; // r0
  int v87; // r4
  __int64 v88; // r0
  __int64 v89; // r0
  int v91; // [sp+14h] [bp-460h]
  int v92; // [sp+18h] [bp-45Ch]
  _DWORD *v93; // [sp+1Ch] [bp-458h]
  int *v94; // [sp+20h] [bp-454h]
  int i; // [sp+24h] [bp-450h]
  int v96; // [sp+2Ch] [bp-448h] BYREF
  int v97; // [sp+30h] [bp-444h] BYREF
  int v98; // [sp+34h] [bp-440h] BYREF
  int v99; // [sp+38h] [bp-43Ch] BYREF
  int v100; // [sp+3Ch] [bp-438h] BYREF
  int v101; // [sp+40h] [bp-434h] BYREF
  int v102; // [sp+44h] [bp-430h] BYREF
  int v103; // [sp+48h] [bp-42Ch] BYREF
  int v104; // [sp+4Ch] [bp-428h] BYREF
  int v105; // [sp+50h] [bp-424h] BYREF
  int v106; // [sp+54h] [bp-420h] BYREF
  int v107; // [sp+58h] [bp-41Ch] BYREF
  int v108; // [sp+5Ch] [bp-418h] BYREF
  int v109; // [sp+60h] [bp-414h] BYREF
  int v110; // [sp+64h] [bp-410h] BYREF
  int v111; // [sp+68h] [bp-40Ch] BYREF
  int v112; // [sp+6Ch] [bp-408h] BYREF
  int v113; // [sp+70h] [bp-404h] BYREF
  int v114; // [sp+74h] [bp-400h] BYREF
  int v115; // [sp+78h] [bp-3FCh] BYREF
  int v116; // [sp+7Ch] [bp-3F8h] BYREF
  int v117; // [sp+80h] [bp-3F4h] BYREF
  int v118; // [sp+84h] [bp-3F0h] BYREF
  _BYTE v119[240]; // [sp+88h] [bp-3ECh] BYREF
  char v120; // [sp+178h] [bp-2FCh] BYREF
  int v121; // [sp+358h] [bp-11Ch] BYREF
  _BYTE v122[30]; // [sp+44Ah] [bp-2Ah] BYREF
  _BYTE v123[8]; // [sp+468h] [bp-Ch] BYREF
  int v124; // [sp+470h] [bp-4h] BYREF

  sub_F0C0(v122, 0, 30, sub_8CA1C);
  sub_F0C2(&v96, 0, 1052);
  sub_F0C2(v123, 0, 12);
  if ( (int)sub_F0C0("DnFSm.dat", v123, 1, &unk_140350C) )
    ((void (*)(void))sub_9242)();
  v0 = sub_F0C0("DnFSm.dat", (const char *)1, 1, &unk_14034CC);
  v1 = v0;
  v2 = (const char *)sub_F0C0(v124 + 2, (const char *)HIDWORD(v0), &v124, &unk_14032EC);
  v3 = sub_F0C0(v1, v2, v124, &unk_14034DC);
  v5 = sub_F0C0(v1, (const char *)HIDWORD(v3), v4, &unk_14034FC);
  if ( !v2 )
    sub_9242(v5, HIDWORD(v5));
  sub_88E0("DnfOpt");
  sub_88E0("DnfSlot");
  sub_88E0("DnfHero0");
  sub_88E0("DnfHero1");
  sub_88E0("DnfHero2");
  sub_88E0("DnfHero3");
  sub_88E0("DnfQuest0");
  sub_88E0("DnfQuest1");
  sub_88E0("DnfQuest2");
  sub_88E0("DnfQuest3");
  sub_88E0("DnfNet_ET_info");
  sub_88E0("DnfNet_CP");
  sub_88E0("DnfNet_RK_1");
  sub_88E0("DnfNet_RK_2");
  sub_88E0("DnfNet_RK_3");
  sub_88E0("DnfNet_RK_4");
  sub_88E0("DnfLocal_RK_1");
  sub_88E0("DnfLocal_RK_2");
  sub_88E0("DnfLocal_RK_3");
  sub_88E0("DnfLocal_RK_4");
  sub_88E0("46000.act");
  sub_88E0("46000.fra");
  sub_88E0("46000.dat");
  for ( i = 0; i != 60; ++i )
  {
    sub_F0C6(v122, 0, 30);
    sub_F0C4(v122, "%d.act", i + 46001);
    sub_88E0(v122);
    sub_F0C6(v122, 0, 30);
    sub_F0C4(v122, "%d.fra", i + 46001);
    sub_88E0(v122);
    sub_F0C6(v122, 0, 30);
    sub_F0C4(v122, "%d.dat", i + 46001);
    sub_88E0(v122);
    sub_F0C6(v122, 0, 30);
    sub_F0C4(v122, "%d.dg", i + 46001);
    sub_88E0(v122);
  }
  sub_F0C2(&v96, v2, 4);
  sub_F0C2(&v97, v2 + 4, 4);
  sub_F0C2(&v98, v2 + 8, 4);
  sub_F0C2(&v99, v2 + 12, 4);
  sub_F0C2(&v100, v2 + 16, 4);
  sub_F0C2(&v101, v2 + 20, 4);
  sub_F0C2(&v102, v2 + 24, 4);
  sub_F0C2(&v103, v2 + 28, 4);
  sub_F0C2(&v104, v2 + 32, 4);
  sub_F0C2(&v105, v2 + 36, 4);
  sub_F0C2(&v106, v2 + 40, 4);
  sub_F0C2(&v107, v2 + 44, 4);
  sub_F0C2(&v108, v2 + 48, 4);
  sub_F0C2(&v109, v2 + 52, 4);
  sub_F0C2(&v110, v2 + 56, 4);
  sub_F0C2(&v111, v2 + 60, 4);
  sub_F0C2(&v112, v2 + 64, 4);
  sub_F0C2(&v113, v2 + 68, 4);
  sub_F0C2(&v114, v2 + 72, 4);
  sub_F0C2(&v115, v2 + 76, 4);
  sub_F0C2(&v116, v2 + 80, 4);
  sub_F0C2(&v117, v2 + 84, 4);
  sub_F0C2(&v118, v2 + 88, 4);
  v6 = v2 + 92;
  v7 = v119;
  do
  {
    sub_F0C2(v7, v6, 4);
    sub_F0C2(v7 + 240, v6 + 4, 4);
    sub_F0C2(v7 + 480, v6 + 8, 4);
    sub_F0C2(v7 + 720, v6 + 12, 4);
    v7 += 4;
    v6 += 16;
  }
  while ( v7 != &v120 );
  if ( v96 )
  {
    v9 = sub_F0C0("DnfOpt", (const char *)8, 1, &unk_14034CC);
    v10 = sub_F0C0(v9, v2 + 1052, v96, &unk_14034EC);
    sub_F0C0(v9, (const char *)HIDWORD(v10), v11, &unk_14034FC);
    v8 = v96 + 1052;
  }
  else
  {
    v8 = 1052;
  }
  if ( v97 )
  {
    v12 = sub_F0C0("DnfSlot", (const char *)8, 1, &unk_14034CC);
    v13 = sub_F0C0(v12, &v2[v8], v97, &unk_14034EC);
    sub_F0C0(v12, (const char *)HIDWORD(v13), v14, &unk_14034FC);
    v8 += v97;
  }
  if ( v98 )
  {
    v15 = sub_F0C0("DnfHero0", (const char *)8, 1, &unk_14034CC);
    v16 = sub_F0C0(v15, &v2[v8], v98, &unk_14034EC);
    sub_F0C0(v15, (const char *)HIDWORD(v16), v17, &unk_14034FC);
    v8 += v98;
  }
  if ( v99 )
  {
    v18 = sub_F0C0("DnfHero1", (const char *)8, 1, &unk_14034CC);
    v19 = sub_F0C0(v18, &v2[v8], v99, &unk_14034EC);
    sub_F0C0(v18, (const char *)HIDWORD(v19), v20, &unk_14034FC);
    v8 += v99;
  }
  if ( v100 )
  {
    v21 = sub_F0C0("DnfHero2", (const char *)8, 1, &unk_14034CC);
    v22 = sub_F0C0(v21, &v2[v8], v100, &unk_14034EC);
    sub_F0C0(v21, (const char *)HIDWORD(v22), v23, &unk_14034FC);
    v8 += v100;
  }
  if ( v101 )
  {
    v24 = sub_F0C0("DnfHero3", (const char *)8, 1, &unk_14034CC);
    v25 = sub_F0C0(v24, &v2[v8], v101, &unk_14034EC);
    sub_F0C0(v24, (const char *)HIDWORD(v25), v26, &unk_14034FC);
    v8 += v101;
  }
  if ( v102 )
  {
    v27 = sub_F0C0("DnfQuest0", (const char *)8, 1, &unk_14034CC);
    v28 = sub_F0C0(v27, &v2[v8], v102, &unk_14034EC);
    sub_F0C0(v27, (const char *)HIDWORD(v28), v29, &unk_14034FC);
    v8 += v102;
  }
  if ( v103 )
  {
    v30 = sub_F0C0("DnfQuest1", (const char *)8, 1, &unk_14034CC);
    v31 = sub_F0C0(v30, &v2[v8], v103, &unk_14034EC);
    sub_F0C0(v30, (const char *)HIDWORD(v31), v32, &unk_14034FC);
    v8 += v103;
  }
  if ( v104 )
  {
    v33 = sub_F0C0("DnfQuest2", (const char *)8, 1, &unk_14034CC);
    v34 = sub_F0C0(v33, &v2[v8], v104, &unk_14034EC);
    sub_F0C0(v33, (const char *)HIDWORD(v34), v35, &unk_14034FC);
    v8 += v104;
  }
  if ( v105 )
  {
    v36 = sub_F0C0("DnfQuest3", (const char *)8, 1, &unk_14034CC);
    v37 = sub_F0C0(v36, &v2[v8], v105, &unk_14034EC);
    sub_F0C0(v36, (const char *)HIDWORD(v37), v38, &unk_14034FC);
    v8 += v105;
  }
  if ( v106 )
  {
    v39 = sub_F0C0("DnfNet_ET_info", (const char *)8, 1, &unk_14034CC);
    v40 = sub_F0C0(v39, &v2[v8], v106, &unk_14034EC);
    sub_F0C0(v39, (const char *)HIDWORD(v40), v41, &unk_14034FC);
    v8 += v106;
  }
  if ( v107 )
  {
    v42 = sub_F0C0("DnfNet_CP", (const char *)8, 1, &unk_14034CC);
    v43 = sub_F0C0(v42, &v2[v8], v107, &unk_14034EC);
    sub_F0C0(v42, (const char *)HIDWORD(v43), v44, &unk_14034FC);
    v8 += v107;
  }
  if ( v108 )
  {
    v45 = sub_F0C0("DnfNet_RK_1", (const char *)8, 1, &unk_14034CC);
    v46 = sub_F0C0(v45, &v2[v8], v108, &unk_14034EC);
    sub_F0C0(v45, (const char *)HIDWORD(v46), v47, &unk_14034FC);
    v8 += v108;
  }
  if ( v109 )
  {
    v48 = sub_F0C0("DnfNet_RK_2", (const char *)8, 1, &unk_14034CC);
    v49 = sub_F0C0(v48, &v2[v8], v109, &unk_14034EC);
    sub_F0C0(v48, (const char *)HIDWORD(v49), v50, &unk_14034FC);
    v8 += v109;
  }
  if ( v110 )
  {
    v51 = sub_F0C0("DnfNet_RK_3", (const char *)8, 1, &unk_14034CC);
    v52 = sub_F0C0(v51, &v2[v8], v110, &unk_14034EC);
    sub_F0C0(v51, (const char *)HIDWORD(v52), v53, &unk_14034FC);
    v8 += v110;
  }
  if ( v111 )
  {
    v54 = sub_F0C0("DnfNet_RK_4", (const char *)8, 1, &unk_14034CC);
    v55 = sub_F0C0(v54, &v2[v8], v111, &unk_14034EC);
    sub_F0C0(v54, (const char *)HIDWORD(v55), v56, &unk_14034FC);
    v8 += v111;
  }
  if ( v112 )
  {
    v57 = sub_F0C0("DnfLocal_RK_1", (const char *)8, 1, &unk_14034CC);
    v58 = sub_F0C0(v57, &v2[v8], v112, &unk_14034EC);
    sub_F0C0(v57, (const char *)HIDWORD(v58), v59, &unk_14034FC);
    v8 += v112;
  }
  if ( v113 )
  {
    v60 = sub_F0C0("DnfLocal_RK_2", (const char *)8, 1, &unk_14034CC);
    v61 = sub_F0C0(v60, &v2[v8], v113, &unk_14034EC);
    sub_F0C0(v60, (const char *)HIDWORD(v61), v62, &unk_14034FC);
    v8 += v113;
  }
  if ( v114 )
  {
    v63 = sub_F0C0("DnfLocal_RK_3", (const char *)8, 1, &unk_14034CC);
    v64 = sub_F0C0(v63, &v2[v8], v114, &unk_14034EC);
    sub_F0C0(v63, (const char *)HIDWORD(v64), v65, &unk_14034FC);
    v8 += v114;
  }
  if ( v115 )
  {
    v66 = sub_F0C0("DnfLocal_RK_4", (const char *)8, 1, &unk_14034CC);
    v67 = sub_F0C0(v66, &v2[v8], v115, &unk_14034EC);
    sub_F0C0(v66, (const char *)HIDWORD(v67), v68, &unk_14034FC);
    v8 += v115;
  }
  if ( v116 )
  {
    v69 = sub_F0C0("46000.act", (const char *)8, 1, &unk_14034CC);
    v70 = sub_F0C0(v69, &v2[v8], v116, &unk_14034EC);
    sub_F0C0(v69, (const char *)HIDWORD(v70), v71, &unk_14034FC);
    v8 += v116;
  }
  if ( v117 )
  {
    v72 = sub_F0C0("46000.fra", (const char *)8, 1, &unk_14034CC);
    v73 = sub_F0C0(v72, &v2[v8], v117, &unk_14034EC);
    sub_F0C0(v72, (const char *)HIDWORD(v73), v74, &unk_14034FC);
    v8 += v117;
  }
  if ( v118 )
  {
    v75 = sub_F0C0("46000.dat", (const char *)8, 1, &unk_14034CC);
    v76 = sub_F0C0(v75, &v2[v8], v118, &unk_14034EC);
    sub_F0C0(v75, (const char *)HIDWORD(v76), v77, &unk_14034FC);
    v8 += v118;
  }
  v92 = 0;
  v93 = v119;
  v94 = &v121;
  do
  {
    sub_F0C0(v122, 0, 30, &unk_140329C);
    v91 = v92 + 46001;
    v78 = sub_F0C0(v122, "%d.act", v92 + 46001);
    if ( *v93 )
    {
      v79 = sub_F0C0(v122, (const char *)8, 1);
      v80 = sub_F0C0(v79, &v2[v8], *v93);
      sub_F0BE(v79, HIDWORD(v80));
      v8 += *v93;
      sub_F0C0(v122, 0, 30, &unk_140329C);
      sub_F0C0(v122, "%d.fra", v91);
      v81 = v93 + 60;
      if ( v93[60] )
      {
        v82 = sub_F0C0(v122, (const char *)8, 1, &unk_14034CC);
        v83 = sub_F0C0(v82, &v2[v8], *v81, &unk_14034EC);
        sub_F0BE(v82, HIDWORD(v83));
        v8 += *v81;
      }
      sub_F0C0(v122, 0, 30, &unk_140329C);
      sub_F0C0(v122, "%d.dat", v91);
      v84 = v93 + 120;
      if ( v93[120] )
      {
        v85 = sub_F0C0(v122, (const char *)8, 1, &unk_14034CC);
        v86 = sub_F0C0(v85, &v2[v8], *v84, &unk_14034EC);
        sub_F0BE(v85, HIDWORD(v86));
        v8 += *v84;
      }
      sub_F0C0(v122, 0, 30, &unk_140329C);
      v78 = sub_F0C0(v122, "%d.dg", v91);
      if ( *v94 )
      {
        v87 = sub_F0C0(v122, (const char *)8, 1, &unk_14034CC);
        v88 = sub_F0C0(v87, &v2[v8], *v94, &unk_14034EC);
        sub_F0BE(v87, HIDWORD(v88));
        v8 += *v94;
      }
    }
    ++v92;
    ++v93;
    ++v94;
  }
  while ( v92 != 60 );
  v89 = sub_F0C0(v2, (const char *)HIDWORD(v78), 60, &unk_14032FC);
  return sub_9242(v89, HIDWORD(v89));
}
