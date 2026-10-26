int __fastcall sub_708BC(int a1, int a2)
{
  char *v2; // r2
  _DWORD *v3; // r6
  unsigned int v4; // r7
  int v5; // r4
  int v6; // r0
  int v7; // r0
  _DWORD *v8; // r4
  int v9; // r0
  _DWORD *v10; // r4
  unsigned int i; // r4
  int v12; // r0
  int v13; // r1
  int v14; // r2
  int v15; // r1
  int v16; // r0
  __int64 v17; // r0
  int v18; // r2
  int v19; // r0
  int v20; // r1
  int v21; // r2
  int v22; // r0
  int v23; // r1
  int v24; // r0
  __int64 v25; // r0
  int v26; // r2
  int v27; // r0
  __int64 v28; // r0
  int v29; // r2
  int v30; // r1
  int v31; // r2
  int v32; // r1
  int v33; // r2
  int v34; // r2
  unsigned int v35; // r4
  int v36; // r0
  __int64 v37; // r0
  int v38; // r2
  __int64 v39; // r0
  int v40; // r2
  int v41; // r0
  int v42; // r0
  int v43; // r0
  int v44; // r0
  int v45; // r1
  int v46; // r2
  int v47; // r0
  int v48; // r0
  int v49; // r1
  int v50; // r2
  int v51; // r0
  int v52; // r1
  int v53; // r2
  int v54; // r0
  __int64 v55; // r0
  int v56; // r2
  int v57; // r0
  int v58; // r0
  int v59; // r1
  int v60; // r2
  int v61; // r0
  __int64 v62; // r0
  int v63; // r2
  int v64; // r0
  __int64 v65; // r0
  int v66; // r2
  int v67; // r0
  __int64 v68; // r0
  _BYTE *v69; // r2
  int (*v70)(); // r3
  __int64 v71; // r0
  int v72; // r0
  __int64 v73; // r0
  int v74; // r2
  int v75; // r0
  int v76; // r0
  int v77; // r2
  __int64 v78; // r0
  int v79; // r2
  int v80; // r1
  int v81; // r2
  unsigned int v82; // r4
  int v83; // r0
  int v84; // r2
  int v85; // r1
  int v86; // r0
  __int64 v87; // r0
  int v88; // r2
  int v89; // r0
  __int64 v90; // r0
  int v91; // r2
  int (*v92)(); // r3
  int v93; // r0
  int v94; // r1
  int v95; // r2
  int v96; // r1
  int v97; // r2
  int v98; // r0
  int v99; // r1
  int v100; // r0
  __int64 v101; // r0
  int v102; // r2
  int v103; // r1
  int v104; // r0
  int v105; // r1
  int v106; // r2
  int v107; // r0
  __int64 v108; // r0
  int v109; // r0
  int v110; // r0
  int v111; // r0
  __int64 v112; // r0
  __int64 v113; // r0
  int v114; // r0
  int v115; // r0
  int v116; // r0
  __int64 v117; // r0
  int v118; // r0
  int v119; // r0
  int v120; // r1
  int v121; // r2
  int v122; // r0
  int v123; // r0
  int v124; // r1
  int v125; // r2
  int v126; // r0
  int v127; // r1
  int v128; // r2
  int v129; // r0
  int v130; // r1
  int v131; // r2
  int v132; // r0
  __int64 v133; // r0
  int v134; // r2
  int v135; // r1
  int v136; // r2
  int v137; // r0
  __int64 v138; // r0
  __int64 v139; // r0
  int v140; // r2
  int v141; // r0
  __int64 v142; // r0
  int v143; // r2
  int v144; // r0
  int v145; // r0
  __int64 v146; // r0
  int v147; // r2
  int v148; // r0
  int v149; // r0
  int v150; // r1
  int savedregs_16; // [sp+18h] [bp+10h]

  v2 = &byte_15000B8;
  v3 = &unk_1536348;
  v4 = 0;
  byte_15000B8 = 0;
  while ( v4 < (unsigned __int8)byte_15364FD )
  {
    v5 = *v3;
    if ( *v3 )
    {
      v6 = *(_DWORD *)(v5 + 572);
      if ( v6 )
      {
        sub_71334(v6, a2, v2, &unk_14032FC);
        *(_DWORD *)(v5 + 572) = 0;
      }
      v7 = *(_DWORD *)(v5 + 568);
      if ( v7 )
      {
        sub_71334(v7, a2, v2, &unk_14032FC);
        *(_DWORD *)(v5 + 568) = 0;
      }
      if ( *v3 )
      {
        sub_71334(*v3, a2, v2, &unk_14032FC);
        *v3 = 0;
      }
      *v3 = 0;
    }
    ++v4;
    ++v3;
  }
  v8 = &unk_1535F68;
  do
  {
    v9 = *v8;
    if ( *v8 )
    {
      v8[1] = v9;
      sub_71334(v9, a2, v2, sub_6E284);
      if ( *v8 )
      {
        sub_71334(*v8, a2, v2, &unk_14032FC);
        *v8 = 0;
      }
      *v8 = 0;
    }
    v8 += 5;
  }
  while ( v8 != (_DWORD *)&unk_1536350 );
  v10 = &unk_15364E8;
  do
  {
    if ( *v10 )
    {
      sub_71334(*v10, a2, v2, sub_6E284);
      if ( *v10 )
      {
        sub_71334(*v10, a2, v2, &unk_14032FC);
        *v10 = 0;
      }
      *v10 = 0;
    }
    ++v10;
  }
  while ( v10 != (_DWORD *)&unk_15364FC );
  if ( dword_1535F54 )
  {
    sub_71334(dword_1535F54, a2, v2, &unk_14032FC);
    dword_1535F54 = 0;
  }
  if ( dword_1535F34 )
  {
    sub_71334(dword_1535F34, a2, v2, &unk_14032FC);
    dword_1535F34 = 0;
  }
  for ( i = 0; i < dword_15364D8; ++i )
    sub_71334((unsigned __int8)i, a2, v2, 474325);
  v12 = sub_71334(&unk_1535F3C, a2, v2, sub_67BC8);
  sub_71334(v12, v13, v14, sub_2A0E4);
  byte_15000BA = 0;
  v16 = sub_71334(0, v15, &byte_15000BA, 467441);
  LODWORD(v17) = sub_71336(v16);
  switch ( byte_1536345 )
  {
    case 0:
      v19 = sub_71334(v17, HIDWORD(v17), v18, sub_39388);
      sub_71334(v19, v20, v21, sub_4EA44);
      byte_15000BB = 0;
      byte_1536760 = 5;
      *(_BYTE *)(dword_1501D90 + 6888) = byte_1500071;
      *(_BYTE *)(dword_1501D90 + 6889) = byte_1500072;
      v22 = dword_1501D90;
      *(_BYTE *)(dword_1501D90 + 6890) = byte_1500073;
      v23 = dword_1501D90;
      *(_BYTE *)(dword_1501D90 + 6893) = byte_1500074;
      if ( byte_150C714 == 2 )
      {
        byte_150D90D = 0;
        byte_150D90E = 1;
        byte_15340C0 = -1;
        v24 = sub_71334(0, v23, 1, sub_2B750);
        v25 = sub_7133A(v24);
        v27 = sub_71334(v25, HIDWORD(v25), v26, sub_65658);
        v28 = sub_7133A(v27);
        byte_150C714 = -1;
        sub_71334(v28, HIDWORD(v28), v29, sub_6C498);
        sub_71338(1, 13);
        sub_71334(1, v30, v31, 481117);
        sub_71334(9, v32, v33, 539405);
        v35 = 0;
        v36 = 0;
        while ( v35 < (unsigned __int8)byte_1533440 )
        {
          if ( dword_1533444 > 0 )
          {
            v34 = 0;
            *(_BYTE *)(dword_1533448 + v36 + 8) = 0;
          }
          ++v35;
          v36 += 12;
        }
        LODWORD(v37) = sub_71334(v36, &word_15332A0, v34, sub_62B00);
      }
      else
      {
        v39 = sub_7133A(v22);
        sub_71334(0, HIDWORD(v39), v40, sub_2B864);
        v41 = sub_71338(1, 0);
        sub_7133A(v41);
        v42 = (unsigned __int8)sub_71336(6);
        byte_1402C5C = v42;
        if ( v42 != 255 )
        {
          dword_1501BF8 = 0;
          v42 = sub_71338(1, 19);
        }
        v43 = sub_71336(v42);
        v37 = sub_71336(v43);
      }
      goto LABEL_56;
    case 1:
      v44 = sub_71334(v17, HIDWORD(v17), v18, sub_39388);
      v47 = sub_71334(v44, v45, v46, sub_4EA44);
      v48 = sub_7133A(v47);
      byte_15000BB = 0;
      byte_1536760 = 5;
      *(_BYTE *)(dword_1501D90 + 6888) = word_1535F38;
      *(_BYTE *)(dword_1501D90 + 6889) = word_15364E0;
      *(_BYTE *)(dword_1501D90 + 6890) = word_1536764;
      v49 = dword_1501D90;
      v50 = (unsigned __int16)word_1536762;
      *(_BYTE *)(dword_1501D90 + 6893) = word_1536762;
      if ( word_15364E2 == 5 || word_15364E2 == 7 )
      {
        v51 = sub_71334(v48, v49, v50, sub_28BE4);
        v54 = sub_71334(v51, v52, v53, sub_658C0);
        v55 = sub_7133A(v54);
        sub_71334(0, HIDWORD(v55), v56, sub_2B864);
        sub_71336(1);
        v57 = sub_71336(*(_DWORD *)(dword_1501D90 + 16));
        sub_7133A(v57);
        v17 = sub_71336(6);
        LODWORD(v17) = (unsigned __int8)v17;
        byte_1402C5C = v17;
        if ( (unsigned __int8)v17 != 255 )
        {
          dword_1501BF8 = 0;
          v17 = sub_71336(1);
        }
        goto LABEL_89;
      }
      if ( word_15364E2 == 11 )
      {
        v58 = sub_71334(v48, v49, v50, sub_28BE4);
        v61 = sub_71334(v58, v59, v60, sub_658C0);
        v62 = sub_7133A(v61);
        sub_71334(0, HIDWORD(v62), v63, sub_2B864);
        v64 = sub_71336(1);
        sub_7133A(v64);
        v65 = sub_71336(*(_DWORD *)(dword_1501D90 + 16));
        v67 = sub_71334(v65, HIDWORD(v65), v66, sub_39578);
        v68 = sub_7133A(v67);
        if ( word_15364E2 == 11 )
        {
          v69 = *(_BYTE **)(dword_1501D90 + 16);
          *v69 = 1;
          LODWORD(v68) = sub_71334(v68, HIDWORD(v68), v69, sub_23118);
        }
        v37 = sub_7133A(v68);
        v70 = sub_2BCC0;
LABEL_88:
        LODWORD(v17) = sub_71334(v37, HIDWORD(v37), v38, v70);
        goto LABEL_89;
      }
      if ( byte_150C714 == 2 )
      {
        v71 = sub_7133A(v48);
        byte_150D90D = 0;
        byte_150D90E = 1;
        byte_15340C0 = -1;
        v72 = sub_71334(0, HIDWORD(v71), 1, sub_2B750);
        v73 = sub_7133A(v72);
        v75 = sub_71334(v73, HIDWORD(v73), v74, sub_65658);
        v76 = sub_7133A(v75);
        byte_150C714 = -1;
        sub_71334(v76, &byte_150C714, v77, sub_6C498);
        v78 = sub_71336(1);
        sub_71334(1, HIDWORD(v78), v79, 481117);
        sub_71334(9, v80, v81, 539405);
        HIDWORD(v37) = &word_15332A0;
        v82 = 0;
        LODWORD(v37) = 0;
        while ( v82 < (unsigned __int8)byte_1533440 )
        {
          if ( dword_1533444 > 0 )
          {
            v38 = 0;
            *(_BYTE *)(dword_1533448 + v37 + 8) = 0;
          }
          ++v82;
          LODWORD(v37) = v37 + 12;
        }
LABEL_56:
        v70 = sub_62B00;
        goto LABEL_88;
      }
      v83 = sub_7133A(v48);
      v85 = *(unsigned __int8 *)(dword_1501D90 + 6888);
      if ( !*(_BYTE *)(dword_1501D90 + 6888) || v85 == 20 )
      {
        v86 = sub_71334(v83, v85, v84, sub_28BE4);
        v87 = sub_7133A(v86);
        v89 = sub_71334(0, HIDWORD(v87), v88, sub_2B864);
        v90 = sub_7133A(v89);
        v92 = sub_39578;
LABEL_72:
        v98 = sub_71334(v90, HIDWORD(v90), v91, v92);
        goto LABEL_76;
      }
      if ( (unsigned __int16)(word_15364E2 - 19) <= 1u
        || word_15364E2 == 35
        || word_15364E2 == 36
        || word_15364E2 == 42
        || word_15364E2 == 46 )
      {
        v93 = sub_71334(v83, v85, (unsigned __int16)word_15364E2, sub_658C0);
        sub_71334(v93, v94, v95, sub_62B00);
        v98 = sub_71334(0, v96, v97, sub_2B864);
        goto LABEL_76;
      }
      if ( word_15364E2 == 26 )
      {
        v100 = sub_71334(v83, v85, 26, sub_658C0);
        v101 = sub_7133A(v100);
        sub_71334(0, HIDWORD(v101), v102, sub_2B864);
        byte_153407D = 1;
        byte_153407E = 0;
        v104 = (char)sub_71334(130, v103, &byte_153407C, sub_1F2F0);
        if ( (char)v104 == 1 )
        {
          v104 = sub_71334(130, v105, v106, sub_1F6AC);
          if ( !v104 )
            v104 = sub_71334(130, v105, v106, sub_3505C);
        }
        LODWORD(v90) = sub_71334(v104, v105, v106, sub_62B00);
        goto LABEL_71;
      }
      if ( (unsigned __int16)(word_15364E2 - 30) <= 1u )
      {
        v107 = sub_71336(v83);
        v108 = sub_7133A(v107);
        v109 = sub_71338(0, HIDWORD(v108));
        v90 = sub_7133A(v109);
LABEL_71:
        v92 = sub_761A4 + 1;
        goto LABEL_72;
      }
      v110 = sub_71334(v83, v85, (unsigned __int16)word_15364E2, sub_28BE4);
      v111 = sub_71336(v110);
      v112 = sub_7133A(v111);
      v98 = sub_71338(0, HIDWORD(v112));
LABEL_76:
      sub_71338(v98, v99);
      sub_7133A(1);
      v113 = sub_71336(*(_DWORD *)(dword_1501D90 + 16));
      sub_71338(v113, HIDWORD(v113));
      v17 = sub_71336(6);
      LODWORD(v17) = (unsigned __int8)v17;
      byte_1402C5C = v17;
      if ( (unsigned __int8)v17 != 255 )
      {
        dword_1501BF8 = 0;
        v17 = sub_7133A(1);
      }
LABEL_89:
      dword_15377C4 = 10;
      v149 = sub_71334(v17, HIDWORD(v17), &dword_15377C4, sub_62B00);
      byte_150006F = 0;
      sub_71334(v149, v150, &byte_150006F, sub_6BBD0);
      return savedregs_16;
    case 2:
      v114 = sub_7133A(v17);
      if ( word_1535F3A == 1 )
        word_1535F3A = 999;
      v115 = sub_7133A(v114);
      v116 = sub_7133A(v115);
      if ( byte_1536760 != 6 )
        byte_1536760 = 5;
      byte_15000B8 = 1;
      v117 = sub_7133A(v116);
      v118 = sub_70560((unsigned __int16)word_1535F3A, HIDWORD(v117));
      goto LABEL_86;
    case 3:
      v119 = sub_71334(v17, HIDWORD(v17), v18, sub_39388);
      v122 = sub_71334(v119, v120, v121, sub_4EA44);
      byte_15000BB = 0;
      v123 = sub_7133A(v122);
      byte_1536760 = 5;
      *(_BYTE *)(dword_1501D90 + 6888) = word_1535F38;
      *(_BYTE *)(dword_1501D90 + 6889) = word_15364E0;
      *(_BYTE *)(dword_1501D90 + 6890) = word_1536764;
      v124 = dword_1501D90;
      v125 = (unsigned __int16)word_1536762;
      *(_BYTE *)(dword_1501D90 + 6893) = word_1536762;
      v126 = sub_71334(v123, v124, v125, sub_2A0E4);
      v129 = sub_71334(v126, v127, v128, sub_28BE4);
      v132 = sub_71334(v129, v130, v131, sub_658C0);
      v133 = sub_7133A(v132);
      sub_71334(0, HIDWORD(v133), v134, sub_2B864);
      v137 = sub_71334(word_1535F3A, v135, v136, sub_4572C);
      v138 = sub_7133A(v137);
      if ( word_1535F3A == 463 )
        sub_71334(v138, HIDWORD(v138), 463, sub_346D0);
      v139 = sub_71336(*(_DWORD *)(dword_1501D90 + 16));
      v118 = sub_71334(v139, HIDWORD(v139), v140, sub_39578);
LABEL_86:
      v17 = sub_7133A(v118);
      goto LABEL_89;
    case 4:
      v141 = sub_71334(v17, HIDWORD(v17), v18, sub_39388);
      v142 = sub_7133A(v141);
      v144 = sub_71334(v142, HIDWORD(v142), v143, sub_4EA44);
      byte_15000BB = 0;
      sub_7133A(v144);
      byte_1536760 = 5;
      *(_BYTE *)(dword_1501D90 + 6888) = word_1535F38;
      *(_BYTE *)(dword_1501D90 + 6889) = word_15364E0;
      v145 = dword_1501D90;
      *(_BYTE *)(dword_1501D90 + 6890) = word_1536764;
      *(_BYTE *)(dword_1501D90 + 6893) = word_1536762;
      v146 = sub_7133A(v145);
      sub_71334(0, HIDWORD(v146), v147, sub_2B864);
      v148 = sub_71336(1);
      v37 = sub_7133A(v148);
      v70 = sub_39578;
      goto LABEL_88;
    default:
      goto LABEL_89;
  }
}
