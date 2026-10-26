int sub_9288()
{
  int v0; // r6
  __int64 v1; // r0
  int v2; // r2
  int v3; // r2
  int v4; // r2
  int v5; // r3
  const char *v6; // r7
  const char *v7; // r5
  char *v8; // r6
  int v9; // r5
  int v10; // r4
  int v11; // r4
  int v12; // r4
  int v13; // r4
  int v14; // r4
  int v15; // r4
  int v16; // r4
  int v17; // r4
  int v18; // r4
  int v19; // r4
  int v20; // r4
  int v21; // r4
  int v22; // r4
  int v23; // r4
  int v24; // r4
  int v25; // r4
  int v26; // r4
  int v27; // r4
  int v28; // r4
  int v29; // r4
  int v30; // r4
  int v31; // r4
  int v32; // r4
  int v33; // r4
  int v34; // r4
  int v35; // r4
  int v36; // r4
  int v37; // r4
  __int64 v38; // r0
  __int64 v39; // r0
  int v41; // [sp+28h] [bp-45Ch]
  int i; // [sp+2Ch] [bp-458h]
  int v43; // [sp+30h] [bp-454h]
  int *v44; // [sp+34h] [bp-450h]
  int v45; // [sp+38h] [bp-44Ch]
  int v46; // [sp+3Ch] [bp-448h] BYREF
  int v47; // [sp+40h] [bp-444h] BYREF
  int v48; // [sp+44h] [bp-440h] BYREF
  int v49; // [sp+48h] [bp-43Ch] BYREF
  int v50; // [sp+4Ch] [bp-438h] BYREF
  int v51; // [sp+50h] [bp-434h] BYREF
  int v52; // [sp+54h] [bp-430h] BYREF
  int v53; // [sp+58h] [bp-42Ch] BYREF
  int v54; // [sp+5Ch] [bp-428h] BYREF
  int v55; // [sp+60h] [bp-424h] BYREF
  int v56; // [sp+64h] [bp-420h] BYREF
  int v57; // [sp+68h] [bp-41Ch] BYREF
  int v58; // [sp+6Ch] [bp-418h] BYREF
  int v59; // [sp+70h] [bp-414h] BYREF
  int v60; // [sp+74h] [bp-410h] BYREF
  int v61; // [sp+78h] [bp-40Ch] BYREF
  int v62; // [sp+7Ch] [bp-408h] BYREF
  int v63; // [sp+80h] [bp-404h] BYREF
  int v64; // [sp+84h] [bp-400h] BYREF
  int v65; // [sp+88h] [bp-3FCh] BYREF
  int v66; // [sp+8Ch] [bp-3F8h] BYREF
  int v67; // [sp+90h] [bp-3F4h] BYREF
  int v68; // [sp+94h] [bp-3F0h] BYREF
  char v69; // [sp+98h] [bp-3ECh] BYREF
  char v70; // [sp+188h] [bp-2FCh] BYREF
  int v71; // [sp+368h] [bp-11Ch] BYREF
  _BYTE v72[30]; // [sp+45Ah] [bp-2Ah] BYREF
  char v73[8]; // [sp+478h] [bp-Ch] BYREF
  int v74; // [sp+480h] [bp-4h] BYREF

  sub_F0C0(v72, 0, 30, sub_8CA1C);
  sub_F0C2(&v46, 0, 1052);
  sub_F0C2(v73, 0, 12);
  if ( (unsigned int)sub_F0C0("DnfOpt", v73, 1, &unk_140350C) )
  {
    v0 = 1052;
  }
  else
  {
    v46 = v74;
    v0 = v74 + 1052;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfSlot", v73, 1) )
  {
    v47 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfHero0", v73, 1) )
  {
    v48 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfHero1", v73, 1) )
  {
    v49 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfHero2", v73, 1) )
  {
    v50 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfHero3", v73, 1) )
  {
    v51 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfQuest0", v73, 1) )
  {
    v52 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfQuest1", v73, 1) )
  {
    v53 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfQuest2", v73, 1) )
  {
    v54 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfQuest3", v73, 1) )
  {
    v55 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfNet_ET_info", v73, 1) )
  {
    v56 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfNet_CP", v73, 1) )
  {
    v57 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfNet_RK_1", v73, 1) )
  {
    v58 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfNet_RK_2", v73, 1) )
  {
    v59 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfNet_RK_3", v73, 1) )
  {
    v60 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfNet_RK_4", v73, 1) )
  {
    v61 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfLocal_RK_1", v73, 1) )
  {
    v62 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfLocal_RK_2", v73, 1) )
  {
    v63 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfLocal_RK_3", v73, 1) )
  {
    v64 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("DnfLocal_RK_4", v73, 1) )
  {
    v65 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("46000.act", v73, 1) )
  {
    v66 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("46000.fra", v73, 1) )
  {
    v67 = v74;
    v0 += v74;
  }
  sub_F0C8(v73, 0, 12);
  if ( !sub_F0C4("46000.dat", v73, 1) )
  {
    v68 = v74;
    v0 += v74;
  }
  v43 = 0;
  v44 = &v71;
  do
  {
    sub_F0C2(v72, 0, 30);
    v45 = v43 + 46001;
    sub_F0C0(v72, "%d.act", v43 + 46001);
    sub_F0C2(v73, 0, 12);
    v1 = sub_F0C0(v72, v73, 1);
    if ( !(_DWORD)v1 )
    {
      v2 = v74;
      *(v44 - 180) = v74;
      v0 += v2;
      sub_F0C2(v72, 0, 30);
      sub_F0C0(v72, "%d.fra", v45);
      sub_F0C2(v73, 0, 12);
      if ( !(unsigned int)sub_F0C0(v72, v73, 1, &unk_140350C) )
      {
        v3 = v74;
        *(v44 - 120) = v74;
        v0 += v3;
      }
      sub_F0C2(v72, 0, 30);
      sub_F0C0(v72, "%d.dat", v45);
      sub_F0C2(v73, 0, 12);
      if ( !(unsigned int)sub_F0C0(v72, v73, 1, &unk_140350C) )
      {
        v4 = v74;
        *(v44 - 60) = v74;
        v0 += v4;
      }
      sub_F0C2(v72, 0, 30);
      sub_F0C0(v72, "%d.dg", v45);
      sub_F0C2(v73, 0, 12);
      v1 = sub_F0C0(v72, v73, 1, &unk_140350C);
      if ( !(_DWORD)v1 )
      {
        v5 = v74;
        HIDWORD(v1) = v44;
        *v44 = v74;
        v0 += v5;
      }
    }
    ++v43;
    ++v44;
  }
  while ( v43 != 60 );
  v6 = (const char *)sub_F0C0(v0 + 2, (const char *)HIDWORD(v1), 60, &unk_14032EC);
  sub_F0C2(v6, &v46, 4);
  sub_F0C2(v6 + 4, &v47, 4);
  sub_F0C2(v6 + 8, &v48, 4);
  sub_F0C2(v6 + 12, &v49, 4);
  sub_F0C2(v6 + 16, &v50, 4);
  sub_F0C2(v6 + 20, &v51, 4);
  sub_F0C2(v6 + 24, &v52, 4);
  sub_F0C2(v6 + 28, &v53, 4);
  sub_F0C2(v6 + 32, &v54, 4);
  sub_F0C2(v6 + 36, &v55, 4);
  sub_F0C2(v6 + 40, &v56, 4);
  sub_F0C2(v6 + 44, &v57, 4);
  sub_F0C2(v6 + 48, &v58, 4);
  sub_F0C2(v6 + 52, &v59, 4);
  sub_F0C2(v6 + 56, &v60, 4);
  sub_F0C2(v6 + 60, &v61, 4);
  sub_F0C2(v6 + 64, &v62, 4);
  sub_F0C2(v6 + 68, &v63, 4);
  sub_F0C2(v6 + 72, &v64, 4);
  sub_F0C2(v6 + 76, &v65, 4);
  sub_F0C2(v6 + 80, &v66, 4);
  sub_F0C2(v6 + 84, &v67, 4);
  sub_F0C2(v6 + 88, &v68, 4);
  v7 = v6 + 92;
  v8 = &v69;
  do
  {
    sub_F0C2(v7, v8, 4);
    sub_F0C2(v7 + 4, v8 + 240, 4);
    sub_F0C2(v7 + 8, v8 + 480, 4);
    sub_F0C2(v7 + 12, v8 + 720, 4);
    v8 += 4;
    v7 += 16;
  }
  while ( v8 != &v70 );
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( (unsigned int)sub_F0C0("DnfOpt", v73, 1, &unk_140350C) )
  {
    v9 = 1052;
  }
  else
  {
    v10 = sub_F0C0("DnfOpt", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v10, v6 + 1052, v74, &unk_14034DC);
    v9 = v74 + 1052;
    sub_F0C0(v10, (const char *)0x41C);
  }
  sub_F0C0(v73, 0, 12);
  if ( !(unsigned int)sub_F0C0("DnfSlot", v73, 1) )
  {
    v11 = sub_F0C0("DnfSlot", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v11, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v11, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfHero0", v73, 1, &unk_140350C) )
  {
    v12 = sub_F0C0("DnfHero0", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v12, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v12, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfHero1", v73, 1, &unk_140350C) )
  {
    v13 = sub_F0C0("DnfHero1", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v13, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v13, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfHero2", v73, 1, &unk_140350C) )
  {
    v14 = sub_F0C0("DnfHero2", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v14, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v14, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfHero3", v73, 1, &unk_140350C) )
  {
    v15 = sub_F0C0("DnfHero3", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v15, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v15, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfQuest0", v73, 1, &unk_140350C) )
  {
    v16 = sub_F0C0("DnfQuest0", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v16, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v16, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfQuest1", v73, 1, &unk_140350C) )
  {
    v17 = sub_F0C0("DnfQuest1", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v17, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v17, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfQuest2", v73, 1, &unk_140350C) )
  {
    v18 = sub_F0C0("DnfQuest2", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v18, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v18, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfQuest3", v73, 1, &unk_140350C) )
  {
    v19 = sub_F0C0("DnfQuest3", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v19, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v19, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfNet_ET_info", v73, 1, &unk_140350C) )
  {
    v20 = sub_F0C0("DnfNet_ET_info", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v20, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v20, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfNet_CP", v73, 1, &unk_140350C) )
  {
    v21 = sub_F0C0("DnfNet_CP", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v21, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v21, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfNet_RK_1", v73, 1, &unk_140350C) )
  {
    v22 = sub_F0C0("DnfNet_RK_1", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v22, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v22, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfNet_RK_2", v73, 1, &unk_140350C) )
  {
    v23 = sub_F0C0("DnfNet_RK_2", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v23, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v23, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfNet_RK_3", v73, 1, &unk_140350C) )
  {
    v24 = sub_F0C0("DnfNet_RK_3", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v24, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v24, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfNet_RK_4", v73, 1, &unk_140350C) )
  {
    v25 = sub_F0C0("DnfNet_RK_4", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v25, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v25, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfLocal_RK_1", v73, 1, &unk_140350C) )
  {
    v26 = sub_F0C0("DnfLocal_RK_1", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v26, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v26, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfLocal_RK_2", v73, 1, &unk_140350C) )
  {
    v27 = sub_F0C0("DnfLocal_RK_2", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v27, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v27, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfLocal_RK_3", v73, 1, &unk_140350C) )
  {
    v28 = sub_F0C0("DnfLocal_RK_3", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v28, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v28, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("DnfLocal_RK_4", v73, 1, &unk_140350C) )
  {
    v29 = sub_F0C0("DnfLocal_RK_4", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v29, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v29, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("46000.act", v73, 1, &unk_140350C) )
  {
    v30 = sub_F0C0("46000.act", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v30, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v30, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("46000.fra", v73, 1, &unk_140350C) )
  {
    v31 = sub_F0C0("46000.fra", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v31, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v31, (const char *)&v74);
  }
  sub_F0C0(v73, 0, 12, &unk_140329C);
  if ( !(unsigned int)sub_F0C0("46000.dat", v73, 1, &unk_140350C) )
  {
    v32 = sub_F0C0("46000.dat", (const char *)1, 1, &unk_14034CC);
    sub_F0C0(v32, &v6[v9], v74, &unk_14034DC);
    v9 += v74;
    sub_F0C0(v32, (const char *)&v74);
  }
  for ( i = 0; i != 60; ++i )
  {
    sub_F0C0(v72, 0, 30);
    v41 = i + 46001;
    sub_F0C0(v72, "%d.act", i + 46001);
    sub_F0C0(v73, 0, 12, &unk_140329C);
    if ( !(unsigned int)sub_F0C0(v72, v73, 1) )
    {
      v33 = sub_F0C0(v72, (const char *)1, 1);
      sub_F0C0(v33, &v6[v9], v74);
      v9 += v74;
      sub_F0BC(v33);
      sub_F0C0(v72, 0, 30, &unk_140329C);
      sub_F0C0(v72, "%d.fra", v41);
      sub_F0C0(v73, 0, 12, &unk_140329C);
      if ( !(unsigned int)sub_F0C0(v72, v73, 1, &unk_140350C) )
      {
        v34 = sub_F0C0(v72, (const char *)1, 1, &unk_14034CC);
        sub_F0C0(v34, &v6[v9], v74, &unk_14034DC);
        v9 += v74;
        sub_F0BC(v34);
      }
      sub_F0C0(v72, 0, 30, &unk_140329C, &unk_14034FC);
      sub_F0C0(v72, "%d.dat", v41);
      sub_F0C0(v73, 0, 12, &unk_140329C);
      if ( !(unsigned int)sub_F0C0(v72, v73, 1, &unk_140350C) )
      {
        v35 = sub_F0C0(v72, (const char *)1, 1, &unk_14034CC);
        sub_F0C0(v35, &v6[v9], v74, &unk_14034DC);
        v9 += v74;
        sub_F0BC(v35);
      }
      sub_F0C0(v72, 0, 30, &unk_140329C);
      sub_F0C0(v72, "%d.dg", v41);
      sub_F0C0(v73, 0, 12, &unk_140329C);
      if ( !(unsigned int)sub_F0C0(v72, v73, 1, &unk_140350C) )
      {
        v36 = sub_F0C0(v72, (const char *)1, 1, &unk_14034CC);
        sub_F0C0(v36, &v6[v9], v74, &unk_14034DC);
        v9 += v74;
        sub_F0BC(v36);
      }
    }
  }
  sub_88E0("DnFSm.dat");
  v37 = sub_F0C0("DnFSm.dat", (const char *)2, 1, &unk_14034CC);
  v38 = sub_F0C0(v37, v6, v9, &unk_14034EC);
  v39 = sub_F0C0(v37, (const char *)HIDWORD(v38));
  if ( v6 )
    sub_F0C0(v6, (const char *)HIDWORD(v39));
  return 1;
}
