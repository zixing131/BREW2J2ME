int __fastcall sub_70560(unsigned __int16 a1)
{
  int v1; // r0
  __int16 *v2; // r0
  const char *v3; // r1
  __int16 *v4; // r2
  int v5; // r0
  const char *v6; // r1
  int v7; // r0
  const char *v8; // r1
  int v9; // r0
  const char *v10; // r1
  const char *v11; // r1
  const char *v12; // r1
  int v13; // r7
  int v14; // r1
  int v15; // r2
  int v16; // r3
  int v17; // r1
  int v18; // r2
  int v19; // r3
  int v20; // r0
  const char *v21; // r1
  int v22; // r0
  int v23; // r0
  int v24; // r0
  const char *v25; // r1
  int v27; // [sp+0h] [bp-58h]
  int v28; // [sp+0h] [bp-58h]
  int v29; // [sp+0h] [bp-58h]
  int v30; // [sp+28h] [bp-30h]
  _BYTE v31[30]; // [sp+2Eh] [bp-2Ah] BYREF
  int v32; // [sp+4Ch] [bp-Ch] BYREF
  int v33; // [sp+50h] [bp-8h] BYREF
  __int16 v34; // [sp+56h] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+58h] [bp+0h]

  v34 = 0;
  word_15364E2 = a1;
  v33 = 0;
  v32 = 0;
  v1 = sub_71334(v31, "%d.ani", a1);
  v2 = (__int16 *)sub_702BC(v1);
  byte_15000BD = 0;
  byte_15000BC = 0;
  v3 = (const char *)dword_1501C04;
  if ( dword_1501C04 == 240 )
  {
    v4 = &word_15346FC;
    word_1534730 = 0;
    word_15346FC -= 40;
  }
  else
  {
    v4 = &word_1534730;
    v2 = &word_15346FC;
    if ( dword_1501C04 == 320 )
      word_1534730 -= 40;
    else
      word_1534730 = 0;
    word_15346FC = 0;
  }
  if ( !byte_15000B8 )
  {
    v4 = (__int16 *)dword_1501D90;
    byte_1500071 = *(_BYTE *)(dword_1501D90 + 6888);
    byte_1500072 = *(_BYTE *)(dword_1501D90 + 6889);
    byte_1500073 = *(_BYTE *)(dword_1501D90 + 6890);
    v3 = &byte_1500074;
    byte_1500074 = *(_BYTE *)(dword_1501D90 + 6893);
  }
  v5 = sub_71334(v2, v3, v4, sub_4EA44);
  v7 = sub_71334(v5, v6);
  v9 = sub_71334(v7, v8);
  sub_71334(v9, v10);
  v30 = sub_71334(v31, v11);
  if ( v30 )
  {
    sub_71338(&v34, v30, 2);
    sub_71338(&v33, v30 + 2, 4);
    sub_71338(&v32, v30 + 6, 4);
    v13 = sub_71334(v33 + 2, v12);
    sub_71336(v30 + 10, v13, v33, v32, 6);
    sub_70544(v13);
    sub_704E8(v13);
    sub_704AC(v13);
    sub_70470(v13);
    byte_1536345 = 0;
    word_1536764 = 0;
    word_1535F38 = 0;
    word_1536762 = 0;
    word_15364DE = 0;
    word_15364DC = 0;
    word_1535F3A = 0;
    word_15364E4 = 0;
    word_1536346 = 0;
    word_15364E0 = 0;
    word_15364E6 = 0;
    sub_71338(&byte_1536345, v13 + (unsigned __int16)word_1536506 + (unsigned __int16)word_1536502, 1);
    sub_71338(&word_15364E0, v13 + (unsigned __int16)word_1536506 + (unsigned __int16)word_1536502 + 1, 2);
    sub_71338(&word_1536764, v13 + (unsigned __int16)word_1536506 + (unsigned __int16)word_1536502 + 3, 2);
    sub_71338(&word_1535F38, v13 + (unsigned __int16)word_1536506 + (unsigned __int16)word_1536502 + 5, 2);
    sub_71338(&word_1536762, v13 + (unsigned __int16)word_1536506 + (unsigned __int16)word_1536502 + 7, 2);
    sub_71338(&word_15364DE, v13 + (unsigned __int16)word_1536506 + (unsigned __int16)word_1536502 + 9, 2);
    sub_71338(&word_15364DC, v13 + (unsigned __int16)word_1536506 + (unsigned __int16)word_1536502 + 11, 2);
    sub_71338(&word_1535F3A, v13 + (unsigned __int16)word_1536506 + (unsigned __int16)word_1536502 + 13, 2);
    sub_71338(&word_15364E4, v13 + (unsigned __int16)word_1536506 + (unsigned __int16)word_1536502 + 15, 2);
    sub_71338(&word_1536346, v13 + (unsigned __int16)word_1536506 + (unsigned __int16)word_1536502 + 17, 2);
    sub_71338(&word_15364E6, v13 + (unsigned __int16)word_1536506 + (unsigned __int16)word_1536502 + 19, 2);
    sub_71336(v30, v14, v15, v16, v27);
    if ( v13 )
      sub_71336(v13, v17, v18, v19, v28);
    v20 = sub_71336(1, 18, 0, 0, v28);
    sub_71334(v20, v21);
    byte_1535DD0 = 1;
    sub_71334(*(_DWORD *)(dword_1501D90 + 16) + 68, 0, 1, 483653);
    v22 = sub_71336(0, 0, dword_1501C04, dword_1501BF0, 0);
    v23 = sub_703D8(v22);
    v24 = sub_6FD98(v23);
    sub_71334(v24, v25);
    sub_71336(&dword_1501C30, &unk_15358E0, 68, 1, v29);
    byte_15358E6 = 68;
  }
  return savedregs[4];
}
