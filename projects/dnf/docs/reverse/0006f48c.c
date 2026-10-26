int __fastcall sub_6F48C(int a1, int a2, int a3)
{
  int v3; // r5
  int v4; // r2
  int v5; // r3
  char *v6; // r3
  int v7; // r1
  int v8; // r0
  int v9; // r2
  int v10; // r7
  char *v11; // r3
  int v12; // r0
  int v13; // r1
  int v14; // r2
  int v15; // r4
  int v16; // r0
  int v17; // r1
  int v18; // r2
  int v20; // [sp+0h] [bp-2Ch]
  int v21; // [sp+0h] [bp-2Ch]
  int v22; // [sp+4h] [bp-28h]
  int v23; // [sp+4h] [bp-28h]
  int v24; // [sp+8h] [bp-24h]
  int v25; // [sp+8h] [bp-24h]
  int v26; // [sp+8h] [bp-24h]
  _BYTE *v27; // [sp+Ch] [bp-20h]
  int v28; // [sp+Ch] [bp-20h]
  int v29; // [sp+20h] [bp-Ch]
  _BYTE v30[8]; // [sp+24h] [bp-8h] BYREF
  _DWORD savedregs[5]; // [sp+2Ch] [bp+0h]

  v3 = dword_1536348[a1];
  if ( *(_BYTE *)(v3 + 614) == 1 )
  {
    v4 = dword_153653C - *(unsigned __int16 *)(v3 + 612);
    *(_WORD *)(v3 + 576) += *(char *)(v3 + 610) * (_WORD)v4;
    a3 = v4 * *(char *)(v3 + 611);
    a2 = 578;
    *(_WORD *)(v3 + 578) += a3;
  }
  if ( *(_BYTE *)(v3 + 592) == 1 )
    return savedregs[4];
  if ( *(_BYTE *)(v3 + 605) != 1 )
  {
    v15 = *(_DWORD *)(v3 + 572);
    v16 = word_1534730 + *(unsigned __int16 *)(v3 + 576);
    v17 = word_15346FC + *(unsigned __int16 *)(v3 + 578);
    if ( *(_BYTE *)(v3 + 606) == 1 )
      v26 = (*(unsigned __int8 *)(v3 + 607) << 8)
          + (*(unsigned __int8 *)(v3 + 608) << 16)
          + (*(unsigned __int8 *)(v3 + 609) << 24);
    else
      v26 = -256;
    v18 = 200;
    goto LABEL_41;
  }
  sub_71334(v30, a2, a3, sub_2CD18);
  v5 = *(unsigned __int16 *)(v3 + 16);
  if ( v5 == 1 || v5 == 3 )
  {
    if ( *(_WORD *)(v3 + 14) )
    {
      v6 = (char *)&unk_1535F5C + 20 * *(unsigned __int8 *)(v3 + 623);
      if ( dword_1501C04 == 320 )
      {
        *((_DWORD *)v6 + 4) = *((_DWORD *)v6 + 3);
        v20 = *((_DWORD *)&unk_1535F5C + 5 * *(unsigned __int8 *)(v3 + 623) + 4);
        v7 = dword_1501BF0 - 63;
        v22 = *(unsigned __int16 *)(v3 + 18);
        v8 = 40;
        v24 = 0;
        v27 = v30;
      }
      else
      {
        *((_DWORD *)v6 + 4) = *((_DWORD *)v6 + 3);
        v20 = *((_DWORD *)&unk_1535F5C + 5 * *(unsigned __int8 *)(v3 + 623) + 4);
        v22 = *(unsigned __int16 *)(v3 + 18);
        v24 = 0;
        v27 = v30;
        v7 = dword_1501BF0 - 63;
        v8 = 0;
      }
      sub_7133C(v8, v7, 0, 0);
    }
    sub_71336(&dword_1501C30, &unk_1536750, 61, 1, v20, v22, v24, v27);
    v29 = (unsigned __int16)(dword_1501C14 + 39);
    sub_71336(v29, dword_1501BF0 - 81, &dword_1501C30, &unk_1536750, (unsigned __int8)byte_153675C, 0, 0, 0);
    if ( *(_WORD *)(v3 + 16) == 3 )
      v9 = 63;
    else
      v9 = 62;
LABEL_26:
    sub_71336(&dword_1501C30, &unk_1536750, v9, 1, v21, v23, v25, v28);
    sub_71336(
      dword_1501C14 - 120,
      dword_1501BF0 - 63,
      &dword_1501C30,
      &unk_1536750,
      (unsigned __int8)byte_153675C,
      0,
      0,
      0);
    goto LABEL_27;
  }
  if ( v5 == 2 || v5 == 4 )
  {
    if ( *(_WORD *)(v3 + 14) )
    {
      v10 = dword_1501C04;
      v11 = (char *)&unk_1535F5C + 20 * *(unsigned __int8 *)(v3 + 623);
      if ( dword_1501C04 == 320 )
      {
        *((_DWORD *)v11 + 4) = *((_DWORD *)v11 + 3);
        v20 = *((_DWORD *)&unk_1535F5C + 5 * *(unsigned __int8 *)(v3 + 623) + 4);
        v22 = *(unsigned __int16 *)(v3 + 18);
        v24 = 1;
        v12 = 280;
        v13 = dword_1501BF0 - 63;
        v27 = v30;
      }
      else
      {
        *((_DWORD *)v11 + 4) = *((_DWORD *)v11 + 3);
        v20 = *((_DWORD *)&unk_1535F5C + 5 * *(unsigned __int8 *)(v3 + 623) + 4);
        v22 = *(unsigned __int16 *)(v3 + 18);
        v24 = 1;
        v27 = v30;
        v13 = dword_1501BF0 - 63;
        v12 = v10;
      }
      sub_7133C(v12, v13, 0, 0);
    }
    sub_71336(&dword_1501C30, &unk_1536750, 61, 1, v20, v22, v24, v27);
    v29 = (unsigned __int16)(dword_1501C14 - 118);
    sub_71336(v29, dword_1501BF0 - 81, &dword_1501C30, &unk_1536750, (unsigned __int8)byte_153675C, 0, 0, 0);
    if ( *(_WORD *)(v3 + 16) == 4 )
      v9 = 64;
    else
      v9 = 62;
    goto LABEL_26;
  }
  v29 = 0;
LABEL_27:
  if ( *(_BYTE *)(v3 + 604) == 1 && byte_1536760 == 1 )
    byte_1536760 = 4;
  v14 = *(_DWORD *)(v3 + 568);
  if ( v14 )
    sub_71336(v29 + 39, dword_1501BF0 - 79, v14, 1, -256, v22, v24, v27);
  v15 = *(_DWORD *)(v3 + 572);
  if ( v15 )
  {
    if ( *(_BYTE *)(v3 + 606) == 1 )
    {
      v16 = dword_1501C14 - 110;
      v17 = dword_1501BF0 - 53;
      v26 = (*(unsigned __int8 *)(v3 + 607) << 8)
          + (*(unsigned __int8 *)(v3 + 608) << 16)
          + (*(unsigned __int8 *)(v3 + 609) << 24);
    }
    else
    {
      v26 = -256;
      v16 = dword_1501C14 - 110;
      v17 = dword_1501BF0 - 53;
    }
    v18 = 220;
LABEL_41:
    sub_7133A(v16, v17, v18, v15, 17, 0, v26);
  }
  return savedregs[4];
}
