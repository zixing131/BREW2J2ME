int sub_63434()
{
  int v0; // r0
  int v1; // r1
  int v2; // r2
  int v3; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r2
  int *v7; // r0
  int v8; // r1
  int v9; // r3
  int v10; // r1
  char v11; // r2
  int v12; // r0
  int v13; // r0
  int v14; // r0
  int v15; // r0
  int v16; // r0
  __int64 v17; // r0
  int v18; // r2
  int v19; // r0
  int v20; // r1
  int v21; // r2
  int v22; // r0
  int v23; // r1
  int v24; // r2
  int v25; // r0
  int v26; // r0
  int v27; // r0
  int v28; // r1
  int v29; // r1
  unsigned int v30; // r2
  int v31; // r0
  int v32; // r2
  int v33; // r1
  unsigned __int16 v34; // r0
  int v35; // r1
  int v36; // r2
  int v37; // r2
  int v38; // r1
  int v39; // r2
  int v40; // r0
  int v41; // r3
  int v42; // r0
  int v43; // r1
  int v44; // r2
  int savedregs_12; // [sp+Ch] [bp+Ch]

  byte_153407D = -1;
  byte_15340F5 = 0;
  byte_153407E = 0;
  v0 = sub_30ADC();
  byte_153406D = 0;
  byte_1534058 = 0;
  dword_1501C58 = 0;
  if ( byte_150D770 == 1 )
    v0 = sub_2F6A0(v0);
  byte_150007C = 0;
  byte_1500089 = 0;
  sub_2C7E8(v0);
  v3 = sub_66A76(0, v1, v2, 467441);
  sub_62B00(v3);
  sub_66A76(1, v4, v5, 481117);
  v7 = &dword_1501D90;
  v8 = dword_1501D90;
  v9 = *(char *)(dword_1501D90 + 6893);
  switch ( v9 )
  {
    case 2:
      *(_BYTE *)(dword_1501D90 + 6888) = 0;
      *(_BYTE *)(dword_1501D90 + 6889) = 0;
LABEL_8:
      v8 = dword_1501D90;
      v6 = 1;
      *(_BYTE *)(dword_1501D90 + 6890) = 1;
      break;
    case 3:
      *(_BYTE *)(dword_1501D90 + 6888) = 0;
      v10 = dword_1501D90;
      v11 = 4;
LABEL_7:
      *(_BYTE *)(v10 + 6889) = v11;
      goto LABEL_8;
    case 4:
      goto LABEL_13;
    case 5:
      *(_BYTE *)(dword_1501D90 + 6888) = 20;
      v10 = dword_1501D90;
      v11 = 79;
      goto LABEL_7;
    case 6:
LABEL_13:
      *(_BYTE *)(dword_1501D90 + 6888) = 0;
      v10 = dword_1501D90;
      v11 = 5;
      goto LABEL_7;
    case 7:
      *(_BYTE *)(dword_1501D90 + 6888) = 0;
      *(_BYTE *)(dword_1501D90 + 6889) = 5;
      *(_BYTE *)(dword_1501D90 + 6890) = 1;
      v12 = (unsigned __int16)sub_66A78(13, 30);
      if ( v12 )
        sub_66A76(13, 30, (__int16)v12, 528981);
      v13 = (unsigned __int16)sub_66A78(13, 31);
      if ( v13 )
        sub_66A76(13, 31, (__int16)v13, 528981);
      v14 = (unsigned __int16)sub_66A78(14, 20);
      if ( v14 )
        sub_66A76(14, 20, (__int16)v14, 528981);
      v15 = (unsigned __int16)sub_66A78(14, 21);
      if ( v15 )
        sub_66A76(14, 21, (__int16)v15, 528981);
      v7 = (int *)(unsigned __int16)sub_66A78(15, 1);
      if ( v7 )
        v7 = (int *)sub_66A76(15, 1, (__int16)v7, 528981);
      break;
  }
  v16 = sub_66A76(v7, v8, v6, 497809);
  v17 = sub_2EE98(v16);
  v19 = sub_66A76(v17, HIDWORD(v17), v18, sub_6C428);
  v22 = sub_66A76(v19, v20, v21, 443545);
  sub_4E9C8(v22);
  v25 = sub_66A76(&dword_1534D70, v23, v24, 424905);
  v26 = sub_2E2CC(v25);
  sub_36694(v26);
  v27 = 0;
  v28 = 0;
  do
  {
    *(_BYTE *)(v28 + *(_DWORD *)(dword_1501D90 + 16) + 116) = 0;
    ++v27;
    *(_BYTE *)(v28 + *(_DWORD *)(dword_1501D90 + 16) + 584) = 0;
    v28 += 36;
  }
  while ( v27 != 13 );
  v29 = 0;
  while ( 1 )
  {
    v30 = (unsigned __int8)v29++;
    if ( (unsigned __int8)byte_153AD9C <= v30 )
      break;
    byte_1537CD9[v30] = 0;
  }
  byte_1534DA8 = 0;
  byte_1534DB8 = 0;
  byte_1534DC8 = 0;
  byte_1534DD8 = 0;
  v31 = sub_66A76(&byte_153AD9C, v29, algn_1534DA9, 479633);
  byte_150006F = 0;
  *(_BYTE *)(*(_DWORD *)(dword_1501D90 + 16) + 6627) = 0;
  *((_BYTE *)&dword_19E4 + *(_DWORD *)(dword_1501D90 + 16)) = 0;
  *((_BYTE *)&dword_19E4 + *(_DWORD *)(dword_1501D90 + 16) + 1) = 0;
  v32 = *(_DWORD *)(dword_1501D90 + 16);
  *(_WORD *)(v32 + 6630) = 0;
  *(_WORD *)(v32 + 6632) = 0;
  sub_66A76(v31, v33, v32, 526765);
  v34 = (char)sub_2FB10(0, 0);
  if ( (char)v34 <= 0 )
  {
    sub_66A78(1, 0);
    v40 = sub_66A76(0, v38, v39, sub_14AC);
    sub_39578(v40);
    v37 = dword_1501D90;
    v41 = *(char *)(dword_1501D90 + 6893);
    switch ( v41 )
    {
      case 2:
        *(_BYTE *)(dword_1501D90 + 6893) = 0;
        v42 = *(_DWORD *)(dword_1501D90 + 16);
        v43 = 50;
        break;
      case 3:
        *(_BYTE *)(dword_1501D90 + 6893) = 0;
        v43 = 790;
        v42 = *(_DWORD *)(dword_1501D90 + 16);
        break;
      case 4:
        *(_BYTE *)(dword_1501D90 + 6893) = 0;
        v43 = 905;
        v42 = *(_DWORD *)(dword_1501D90 + 16);
        break;
      case 5:
        *(_BYTE *)(dword_1501D90 + 6893) = 0;
        v42 = *(_DWORD *)(dword_1501D90 + 16);
        v43 = 50;
        break;
      case 6:
        *(_BYTE *)(dword_1501D90 + 6893) = 0;
        v42 = *(_DWORD *)(dword_1501D90 + 16);
        v43 = 510;
        break;
      case 7:
        *(_BYTE *)(dword_1501D90 + 6893) = 0;
        v42 = *(_DWORD *)(dword_1501D90 + 16);
        v43 = 50;
        break;
      default:
        goto LABEL_45;
    }
    sub_66A78(v42, v43);
    goto LABEL_45;
  }
  byte_150C714 = 0;
  sub_66A76(v34, v35, v36, 460129);
LABEL_45:
  sub_66A76(*(_DWORD *)(dword_1501D90 + 16), *(_DWORD *)(*(_DWORD *)(dword_1501D90 + 16) + 6584), v37, 484965);
  sub_66A76(*(_DWORD *)(dword_1501D90 + 16), *(_DWORD *)(*(_DWORD *)(dword_1501D90 + 16) + 12), v44, 485041);
  sub_66A76(*(_DWORD *)(dword_1501D90 + 16) + 68, 0, 1, 483653);
  return savedregs_12;
}
