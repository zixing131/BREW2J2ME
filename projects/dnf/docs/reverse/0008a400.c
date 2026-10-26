int __fastcall sub_8A400(int a1, unsigned __int8 a2)
{
  __int64 v2; // r0
  _BYTE *v3; // r5
  __int64 v4; // r0
  int v5; // r2
  _BYTE *v6; // r4
  int v7; // r0
  __int64 v8; // r0
  int v9; // r2
  int v10; // r4
  unsigned __int8 *v11; // r6
  unsigned int v12; // r5
  int v13; // r5
  unsigned __int16 *v14; // r3
  unsigned __int16 *v15; // r4
  int v16; // r0
  unsigned int v17; // r2
  unsigned int v18; // r3
  int v19; // r0
  int v20; // r3
  unsigned __int16 *v21; // r6
  int v22; // r7
  int v23; // r4
  int v24; // r2
  int v25; // r4
  int v26; // r2
  const char *v27; // r4
  int v28; // r0
  const char *v29; // r1
  __int64 v30; // r0
  __int64 v31; // r0
  int v32; // r2
  __int64 v33; // r0
  __int64 v34; // r0
  __int64 v35; // r0
  __int64 v36; // r0
  __int64 v37; // r0
  __int64 v38; // r0
  int v39; // r5
  int v40; // r4
  int v41; // r3
  __int64 v42; // r0
  __int64 v43; // r0
  bool *v44; // r1
  int v45; // r5
  int v46; // r3
  unsigned __int8 *v47; // r4
  int v48; // r1
  int v49; // r2
  const char *v50; // r1
  int v51; // r2
  int v53; // [sp+0h] [bp-10h]
  int v55; // [sp+8h] [bp-8h]
  _BYTE v56[3]; // [sp+Dh] [bp-3h] BYREF
  _DWORD savedregs[5]; // [sp+10h] [bp+0h]

  v53 = a2;
  v2 = sub_8A950(v56, (const char *)&dword_9D0F8, 3, sub_8C9DC);
  if ( dword_1501DD4 == 1 && dword_1501C5C == 17 )
    return savedregs[4];
  if ( (unsigned __int8)byte_1533C5A <= 9u )
    return savedregs[4];
  v3 = &byte_1538F9C[640 * v53];
  if ( !v3[34] )
    return savedregs[4];
  v4 = sub_8A950(v53, (const char *)HIDWORD(v2));
  if ( (_DWORD)v4 )
  {
    v3[56] = 0;
    v5 = (unsigned __int8)v3[84];
    if ( v5 != 19 )
    {
      if ( *((int *)v3 + 3) > 0 )
      {
        if ( v5 == 20 )
        {
          if ( (unsigned int)sub_8A950(v53, (const char *)HIDWORD(v4), 20, sub_39E24) )
            return savedregs[4];
          sub_88090(0, v53, 0);
        }
        else if ( (unsigned __int8)(v5 - 10) > 7u )
        {
          if ( (unsigned __int8)(v5 - 4) > 1u )
          {
            if ( v5 == 26 )
            {
              if ( sub_82500(v53, *((__int16 *)v3 + 34), *((__int16 *)v3 + 35)) )
              {
                *((_WORD *)v3 + 8) = *((_WORD *)v3 + 34);
                *((_WORD *)v3 + 9) = *((_WORD *)v3 + 35);
              }
              sub_8343C(v53, 25, 1u);
              v44 = v3 + 48;
              *v44 = *(__int16 *)(*(_DWORD *)(dword_1501D90 + 16) + 58) <= *((__int16 *)v3 + 8);
            }
          }
          else
          {
            sub_8343C(v53, 6, 1u);
            v3[83] = v3[62];
            v3[62] = 0;
          }
        }
        else
        {
          sub_8343C(v53, 20, 1u);
        }
      }
      else
      {
        sub_8343C(v53, 19, 1u);
        if ( *(unsigned __int8 *)(dword_1538860[40 * (unsigned __int8)byte_1537CD9[v53]] + 6) > 1u )
        {
          v42 = sub_8A950(v53, (const char *)dword_1538860);
          v43 = sub_8A950(0, (const char *)HIDWORD(v42));
          if ( byte_1535594 )
          {
            byte_1535596 = 1;
            byte_1535594 = 0;
            sub_8A950(v43, (const char *)HIDWORD(v43));
          }
        }
      }
      goto LABEL_56;
    }
    sub_8A950(v53, (const char *)HIDWORD(v4), 19, sub_7D210);
    if ( !byte_150D90C && *(unsigned __int8 *)(dword_1538860[40 * (unsigned __int8)byte_1537CD9[v53]] + 6) <= 2u )
    {
      sub_88090(1u, v53, 0);
      sub_88090(7u, v53, 0);
    }
    v6 = &byte_1538F9C[640 * v53];
    v6[34] = 0;
    v6[80] = 0;
    sub_8A950(*((unsigned __int16 *)v6 + 1), (const char *)*(char *)(dword_1501D90 + 6892));
    if ( dword_1501C5C != 19 )
    {
      v7 = (unsigned __int8)sub_8A952(2, *(char *)(dword_1501D90 + 6892), *((__int16 *)v6 + 1), 1);
      byte_1402C5C = v7;
      if ( v7 != 255 )
      {
        dword_1501BF8 = 0;
        sub_8A952(1, 19, 0, 0);
      }
    }
    sub_859CC(v53, *(_BYTE *)(dword_1501D90 + 6892));
    if ( !byte_150D770 )
    {
      v9 = (int)&byte_1538F9C[640 * v53 + 48];
      if ( !byte_1538F9C[640 * v53 + 50] )
      {
        v55 = dword_1501D90;
        v10 = *(char *)(dword_1501D90 + 6892);
        if ( v10 <= 5 )
        {
          v9 = (unsigned __int8)byte_1537CD9[v53];
          HIDWORD(v8) = dword_1538860;
          v11 = (unsigned __int8 *)dword_1538860[40 * v9];
          v12 = v11[6];
          if ( v12 <= 2 )
          {
            v13 = *v11 * (unsigned __int8)v56[v12];
            if ( byte_1500088 == 1 )
              v14 = word_1401F16;
            else
              v14 = word_1401E3E;
            v15 = &v14[18 * v10];
            v16 = sub_8A958(v13 * v15[1], 10000);
            v17 = *(unsigned __int8 *)(a1 + 6597);
            v18 = *v11;
            v19 = v16 + v13 + v15[3];
            if ( v17 > v18 )
            {
              v20 = v17 - v18;
              if ( v20 < 0 )
                v20 = -v20;
              if ( v20 > 10 )
                v19 = sub_8A950(v19, (const char *)5, v17, 573541);
            }
            v21 = *(unsigned __int16 **)(v55 + 16);
            v22 = v19;
            v23 = v19 + sub_8A954(v21[576] * v19, 100, v55, v21[576]);
            v25 = v23 + sub_8A954(v21[638] * v22, 100, v24, v21[638]);
            v27 = (const char *)(v25 + sub_8A954(v21[675] * v22, 100, v26, v21[675]));
            v8 = sub_8A950(a1, v27);
            if ( *(unsigned __int8 *)(a1 + 6597) <= 0x3Bu )
            {
              v9 = (int)&word_1535568;
              dword_153558C += (int)v27;
            }
          }
        }
      }
    }
    v28 = sub_830C8(v53, SHIDWORD(v8), v9);
    v30 = sub_8A950(v28, v29);
    if ( (_DWORD)v30 )
    {
      v31 = sub_8A950(v30, (const char *)HIDWORD(v30));
      v32 = dword_1501D90;
      if ( *(_BYTE *)(dword_1501D90 + 6893) == 7 )
      {
        v33 = sub_8A950(v31, (const char *)HIDWORD(v31), dword_1501D90, sub_2E3BC);
        v31 = sub_8A950(v33, (const char *)HIDWORD(v33));
      }
      if ( !byte_150D90C )
      {
        v34 = sub_8A950(v31, (const char *)HIDWORD(v31), v32, sub_800E4);
        LODWORD(v34) = 1;
LABEL_38:
        sub_8A950(v34, (const char *)HIDWORD(v34));
        goto LABEL_56;
      }
      if ( byte_150D90C == 1 )
      {
        v35 = sub_8A950(1, (const char *)HIDWORD(v31), v32, sub_7575C);
        v36 = sub_8A950(v35, (const char *)HIDWORD(v35));
        v37 = sub_8A950(v36, (const char *)HIDWORD(v36));
        v38 = sub_8A950(v37, (const char *)HIDWORD(v37));
        v39 = 0;
        v40 = 0;
        do
        {
          v38 = sub_8A950(v40, (const char *)HIDWORD(v38));
          if ( (_DWORD)v38 )
            break;
          v41 = (v39 + 1) << 24;
          v39 = (unsigned __int8)(v39 + 1);
          ++v40;
        }
        while ( v41 >> 24 != 12 );
        v34 = sub_8A950(2, (const char *)*(unsigned __int16 *)&byte_1538F9C[640 * (char)v39 + 2], (char)v39, sub_2FB10);
        if ( (char)v34 > 0 )
        {
          byte_150C714 = 2;
          LODWORD(v34) = (char)v34 & 0xFFFF;
          goto LABEL_38;
        }
      }
    }
  }
LABEL_56:
  v45 = 640 * v53;
  if ( sub_8A338((int)&byte_1538F9C[640 * v53 + 80], v53) )
  {
    v46 = (unsigned __int8)byte_1538F9C[v45 + 65];
    if ( v46 == 1 )
    {
      if ( sub_81B94((int)&byte_1538F9C[v45]) )
        sub_89CD4(a1, v53);
      else
        sub_89FB4(a1, v53);
      ++*(_WORD *)&byte_1538F9C[640 * v53 + 30];
    }
    else if ( v46 == 2 )
    {
      sub_89F24(a1, v53);
    }
    else
    {
      v47 = (unsigned __int8 *)dword_1538860[40 * (unsigned __int8)byte_1537CD9[v53]];
      if ( sub_81E1C(a1, v53, v47[46], v47[47]) && sub_830A4(v47[52], v48, v49) )
        sub_89E18(v53, v50, v51);
      else
        sub_89D84(a1, v53);
    }
  }
  return savedregs[4];
}
