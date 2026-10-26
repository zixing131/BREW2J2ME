int __fastcall sub_28A4(int a1, int a2, int a3)
{
  int v3; // r1
  int v4; // r2
  int v5; // r5
  int v6; // r2
  int v7; // r3
  int v8; // r3
  BOOL v9; // r1
  int v10; // r4
  int v11; // r1
  int v12; // r2
  int v13; // r5
  int v14; // r4
  int v15; // r0
  int v16; // r5
  int v17; // r0
  int v18; // r2
  int v19; // r4
  int v20; // r2
  int v21; // r0
  int v22; // r5
  int v23; // r4
  int v24; // r2
  int v25; // r0
  int v26; // r0
  int v27; // r0
  int v28; // r0
  int v29; // r0
  int v30; // r0
  int v31; // r1
  int v32; // r2
  int v33; // r1
  int v34; // r2
  int v36; // [sp+0h] [bp-80h]
  int v37; // [sp+0h] [bp-80h]
  int v38; // [sp+0h] [bp-80h]
  int v39; // [sp+0h] [bp-80h]
  int v40; // [sp+4h] [bp-7Ch]
  int v41; // [sp+4h] [bp-7Ch]
  int v42; // [sp+4h] [bp-7Ch]
  int v43; // [sp+4h] [bp-7Ch]
  int v44; // [sp+8h] [bp-78h]
  int v45; // [sp+8h] [bp-78h]
  int v46; // [sp+8h] [bp-78h]
  int v47; // [sp+8h] [bp-78h]
  int v48; // [sp+Ch] [bp-74h]
  int v49; // [sp+Ch] [bp-74h]
  int v50; // [sp+Ch] [bp-74h]
  int v51; // [sp+10h] [bp-70h]
  int v52; // [sp+10h] [bp-70h]
  int v53; // [sp+4Ch] [bp-34h]
  int v54; // [sp+50h] [bp-30h]
  int v55; // [sp+54h] [bp-2Ch]
  _BYTE v56[30]; // [sp+5Ah] [bp-26h] BYREF
  _BYTE v57[8]; // [sp+78h] [bp-8h] BYREF
  _DWORD savedregs[5]; // [sp+80h] [bp+0h]

  sub_6D00(v57, a2, a3, 183577);
  sub_6D00(0, v3, v4, 436257);
  v5 = 0;
  v57[0] = 1;
  while ( v5 < dword_1501C04 )
  {
    sub_6D02(v5, (const char *)(dword_1501BFC - 90), 0, 0, *(_DWORD *)(dword_1501ECC + 820), 11, 0, v57, 0);
    v5 += 40;
  }
  v57[0] = 0;
  v6 = dword_1501BF8 % 2;
  if ( dword_1501BF8 % 2 <= 0 )
    sub_1BB4();
  if ( dword_1501DA0 )
  {
    if ( dword_1501DA0 == 3 )
    {
      if ( !sub_6D00(dword_1501BF8, 3, v6, 573889) )
      {
        sub_6D02(&unk_1501EB0, byte_1501E18, 0, v7, v36, v40, v44, v48, v51);
        sub_6D02(&unk_1501EB0, byte_1501F3C, 0, v8, v37, v41, v45, v49, v52);
      }
      sub_6D02(dword_1501C14, (const char *)(dword_1501BFC + 30), &unk_1501EB0, byte_1501E18, 0, 0, 0, 0, 0);
      sub_6D02(dword_1501C14, (const char *)(dword_1501BFC - 55), &unk_1501EB0, byte_1501F3C, 0, 0, 0, 0, 0);
      v9 = dword_1501BF8 > 5 && dword_1501BF8 <= 20;
      sub_2220(0, v9);
    }
  }
  else
  {
    sub_6D02(dword_1501C14, (const char *)(dword_1501BFC + 30), &unk_1501EB0, &unk_1501EA0, 0, 0, 0, 0, 0);
    sub_6D02(dword_1501C14, (const char *)(dword_1501BFC - 55), &unk_1501EB0, &unk_1501E2C, 0, 0, 0, 0, 0);
  }
  if ( (unsigned int)dword_1501DA0 <= 1 )
  {
    sub_2220(1, 0);
    if ( byte_1501E15 > 0 )
      sub_6D02(
        dword_1501C14 - 44,
        (const char *)(dword_1501BFC - 8),
        0,
        0,
        *(_DWORD *)(dword_1501ECC + 820),
        15,
        0,
        v57,
        1);
    if ( byte_1501E15 <= 2 )
      sub_6D02(
        dword_1501C14 + 44,
        (const char *)(dword_1501BFC - 8),
        0,
        0,
        *(_DWORD *)(dword_1501ECC + 820),
        15,
        0,
        v57,
        0);
    sub_6D00(v56, 0, 30, &unk_140329C);
    v10 = *((unsigned __int8 *)&unk_1501C8C + 12 * byte_1501E15 + 1);
    if ( v10 == 255 )
    {
      sub_6D02(dword_1501C14, (const char *)(dword_1501BFC + 70), dword_8CDEC, 1, 0, -256);
    }
    else
    {
      sub_6D02(
        v56,
        "%d  %s",
        *((char *)&unk_1501C8C + 12 * byte_1501E15 + 2),
        (const char *)*(&off_140014C + (char)v10));
      v13 = (char)(sub_6D00(v56, v11, v12, 423605) + 20) / 2;
      sub_6D02(
        dword_1501C14 - v13,
        (const char *)(dword_1501BFC + 61),
        0,
        0,
        *(_DWORD *)(dword_1501ECC + 820),
        21,
        0,
        v57,
        0);
      sub_6D02(dword_1501C14 - v13 + 20, (const char *)(dword_1501BFC + 60), v56, 0, 0, -256);
      v14 = *((_DWORD *)&unk_1501C8C + 3 * byte_1501E15 + 2);
      v53 = sub_6D04(v14, 3600);
      v15 = sub_6D04(v14, 60);
      v54 = sub_6D04(v15, 60);
      v55 = sub_6D04(v14, 60);
      sub_6D00(v56, 0, 30, &unk_140329C);
      if ( v53 <= 99 )
      {
        v22 = sub_6D08(v53, 10);
        v23 = sub_6CFE(v53, 10, 573889);
        v39 = sub_6D08(v54, 10);
        v43 = sub_6D00(v54, 10, v24, 573889);
        v47 = sub_6D08(v55, 10);
        v25 = sub_6CFE(v55, 10, 573889);
        sub_6D02(v56, "%d%d : %d%d : %d%d", v22, v23, v39, v43, v47, v25);
      }
      else
      {
        v16 = sub_6D08(v53, 100);
        v17 = sub_6D08(v53, 10);
        v19 = sub_6D00(v17, 10, v18, 573889);
        v38 = sub_6CFE(v53, 10, 573889);
        v42 = sub_6D08(v54, 10);
        v46 = sub_6D00(v54, 10, v20, 573889);
        v50 = sub_6D08(v55, 10);
        v21 = sub_6CFE(v55, 10, 573889);
        sub_6D02(v56, "%d%d%d : %d%d : %d%d", v16, v19, v38, v42, v46, v50, v21);
      }
      sub_6D02(dword_1501C14, (const char *)(dword_1501BFC + 77), v56, 1, 0, -256);
    }
    goto LABEL_58;
  }
  if ( dword_1501DA0 != 2 )
    goto LABEL_58;
  sub_6D02(dword_1501C14, (const char *)(dword_1501BFC - 55));
  sub_6D02(dword_1501C14, (const char *)(dword_1501BFC + 30), &unk_1501EB0, &unk_1501EA0, 0, 0, 0, 0, 0, 0);
  if ( dword_1501BF8 > 1 )
  {
    if ( dword_1501BF8 > 3 )
    {
      if ( dword_1501BF8 > 5 )
      {
        if ( dword_1501BF8 <= 7 )
        {
          if ( byte_1501ED4 == 1 )
          {
            sub_20D8(dword_1501C14 + 40, 3, 0, 25, 0);
            sub_20D8(dword_1501C14 + 60, 3, 0, 20, 0);
            sub_20D8(dword_1501C14 + 80, 0, 0, 5, 1);
          }
          else
          {
            sub_20D8(dword_1501C14 - 40, 3, 0, 25, 0);
            sub_20D8(dword_1501C14 - 60, 3, 0, 20, 0);
            sub_20D8(dword_1501C14 - 80, 0, 0, 5, 1);
          }
          if ( dword_1501BF8 == 7 )
            dword_1501DA0 = 0;
        }
      }
      else if ( byte_1501ED4 == 1 )
      {
        sub_20D8(dword_1501C14, 3, 0, 25, 0);
        sub_20D8(dword_1501C14 + 20, 3, 0, 20, 0);
        sub_20D8(dword_1501C14 + 40, 0, 0, 5, 1);
      }
      else
      {
        sub_20D8(dword_1501C14, 3, 0, 25, 0);
        sub_20D8(dword_1501C14 - 20, 3, 0, 20, 0);
        sub_20D8(dword_1501C14 - 40, 0, 0, 5, 1);
      }
    }
    else
    {
      sub_20D8(dword_1501C14, 0, 0, 0, 1);
      if ( byte_1501ED4 == 1 )
      {
        if ( byte_1501E15 <= -1 )
          goto LABEL_42;
        v26 = dword_1501C14 - 44;
LABEL_41:
        sub_6D02(v26, (const char *)(dword_1501BFC - 8), 0, 0, *(_DWORD *)(dword_1501ECC + 820), 16, 0, v57, 1);
LABEL_42:
        if ( byte_1501E15 <= 1 )
          sub_6D02(
            dword_1501C14 + 44,
            (const char *)(dword_1501BFC - 8),
            0,
            0,
            *(_DWORD *)(dword_1501ECC + 820),
            15,
            0,
            v57,
            0);
        goto LABEL_58;
      }
      if ( byte_1501E15 > 1 )
        sub_6D02(
          dword_1501C14 - 44,
          (const char *)(dword_1501BFC - 8),
          0,
          0,
          *(_DWORD *)(dword_1501ECC + 820),
          15,
          0,
          v57,
          1);
      if ( byte_1501E15 <= 3 )
      {
        v27 = dword_1501C14 + 44;
        goto LABEL_36;
      }
    }
  }
  else
  {
    sub_20D8(dword_1501C14, 4, 1, 0, 1);
    if ( byte_1501ED4 == 1 )
    {
      if ( byte_1501E15 <= -1 )
        goto LABEL_42;
      v26 = dword_1501C14 - 48;
      goto LABEL_41;
    }
    if ( byte_1501E15 > 1 )
      sub_6D02(
        dword_1501C14 - 44,
        (const char *)(dword_1501BFC - 8),
        0,
        0,
        *(_DWORD *)(dword_1501ECC + 820),
        15,
        0,
        v57,
        1);
    if ( byte_1501E15 <= 3 )
    {
      v27 = dword_1501C14 + 48;
LABEL_36:
      sub_6D02(v27, (const char *)(dword_1501BFC - 8), 0, 0, *(_DWORD *)(dword_1501ECC + 820), 16, 0, v57, 0);
    }
  }
LABEL_58:
  sub_6D02(dword_1501C14 - 76, (const char *)0x14, 0, 0, *(_DWORD *)(dword_1501ECC + 820), 22, 0, v57, 0);
  sub_6D02(dword_1501C14, (const char *)(dword_1501BF0 - 22), &dword_1501FF0, 0, 0, 0, 0, 0, 0, 0);
  sub_6D02(
    dword_1501C14 - 100,
    (const char *)(dword_1501BF0 - 35),
    0,
    0,
    *(_DWORD *)(dword_1501ECC + 820),
    12,
    0,
    v57,
    0);
  sub_6D02(
    dword_1501C14 - 19,
    (const char *)(dword_1501BF0 - 35),
    0,
    0,
    *(_DWORD *)(dword_1501ECC + 820),
    13,
    0,
    v57,
    0);
  v28 = sub_6D02(
          dword_1501C14 + 65,
          (const char *)(dword_1501BF0 - 36),
          0,
          0,
          *(_DWORD *)(dword_1501ECC + 820),
          14,
          0,
          v57,
          0);
  if ( dword_1501DA0 == 1 )
  {
    sub_2760(v28);
  }
  else if ( dword_1501DA0 == 3 )
  {
    if ( (unsigned int)(dword_1501BF8 - 15) > 1 )
    {
      if ( (unsigned int)(dword_1501BF8 - 17) > 1 )
      {
        switch ( dword_1501BF8 )
        {
          case 19:
            sub_6D02(0, 0, dword_1501C04, dword_1501BF0, 0, 1);
            break;
          case 20:
            sub_6D02(0, 0, dword_1501C04, dword_1501BF0, 0);
            break;
          case 21:
            v29 = sub_6D02(0, 0, dword_1501C04, dword_1501BF0, 0);
            v30 = sub_1F2C(v29);
            sub_6D00(v30, v31, v32, 234229);
            sub_6D00(dword_1501D90, v33, v34, sub_1700);
            break;
        }
      }
      else
      {
        sub_6D02(0, 0, dword_1501C04, dword_1501BF0, 0, 2);
      }
    }
    else
    {
      sub_6D02(0, 0, dword_1501C04, dword_1501BF0, 0, 3);
    }
  }
  return savedregs[4];
}
