int __fastcall sub_85708(unsigned __int8 a1, int a2)
{
  unsigned int v2; // r1
  unsigned int v3; // r4
  unsigned __int16 *v4; // r1
  int v5; // r7
  unsigned __int16 *v6; // r5
  int v7; // r4
  int v8; // r4
  int v9; // r1
  unsigned int v10; // r0
  unsigned int v11; // r1
  int v12; // r6
  unsigned int v13; // r12
  _BYTE *v14; // r1
  char v15; // r0
  _BYTE *v16; // r2
  unsigned int v17; // r4
  int v18; // r5
  char v19; // r3
  int v20; // r5
  int v21; // r6
  _BYTE *v22; // r3
  int v23; // r1
  int v24; // r4
  int v25; // r1
  char *v26; // r2
  unsigned int v27; // r3
  __int16 v28; // r5
  _WORD *v29; // r6
  __int16 v30; // r0
  int v31; // r1
  __int16 v32; // r4
  int v33; // r5
  int v34; // r1
  int v36; // [sp+0h] [bp-24h]
  int v37; // [sp+4h] [bp-20h]
  int v38; // [sp+8h] [bp-1Ch]
  int v39; // [sp+Ch] [bp-18h]
  int v40; // [sp+14h] [bp-10h]
  unsigned int v41; // [sp+18h] [bp-Ch]
  int v42; // [sp+1Ch] [bp-8h]
  int v43; // [sp+20h] [bp-4h] BYREF
  _DWORD savedregs[5]; // [sp+24h] [bp+0h]

  v40 = a1;
  v2 = a2 << 24;
  v3 = HIBYTE(v2);
  if ( *(_BYTE *)(dword_1501D90 + 6893) != 7 )
  {
    v41 = sub_8A950(10000, v2);
    v42 = (unsigned __int8)(byte_1401FFB + byte_1401FFC + byte_1401FFD);
    v4 = byte_1500088 == 1 ? word_1401F16 : word_1401E3E;
    v5 = 10 * (unsigned __int8)(byte_1401FFB + byte_1401FFC + byte_1401FFD) + v4[18 * v3 + 2];
    v6 = *(unsigned __int16 **)(dword_1501D90 + 16);
    v7 = v5 + sub_8A956(v6[577] * v5, 100);
    v8 = v7 + sub_8A956(v6[639] * v5, 100);
    if ( v41 < v8 + sub_8A956(v6[676] * v5, 100) )
    {
      v10 = (unsigned __int8)sub_8A950(v42, v9);
      v11 = byte_1401FFB;
      if ( v10 >= byte_1401FFB )
      {
        v11 = byte_1401FFB + byte_1401FFC;
        if ( v10 >= v11 )
        {
          if ( v10 >= v11 + byte_1401FFD )
            return savedregs[4];
          v12 = 2;
        }
        else
        {
          v12 = 1;
        }
      }
      else
      {
        v12 = 0;
      }
      v13 = (unsigned __int8)sub_8A950(10000, v11);
      v14 = &unk_140201E;
      v15 = *(_BYTE *)(dword_1501D90 + 6888);
      v16 = &unk_1402014;
      LOBYTE(v17) = 0;
      v18 = 0;
      while ( 1 )
      {
        v19 = v15 == 8 || v15 == 18 || v15 == 27 || v15 == 35 || v15 == 37 || v15 == 38 || v15 == 39 || v15 == 40
            ? *v14
            : *v16;
        v17 = (unsigned __int8)(v17 + v19);
        if ( v17 >= v13 )
          break;
        ++v18;
        v14 += 2;
        v16 += 2;
        if ( v18 == 5 )
          return savedregs[4];
      }
      sub_8A952(
        &v43,
        (unsigned __int8)(*((_BYTE *)&unk_1401FFA + v12 + 4) + 1),
        *((unsigned __int8 *)&unk_1401FFA + v12 + 5),
        (unsigned __int8)(byte_1402002[6 * v12 + (unsigned __int8)v18] + 1),
        byte_1402002[6 * v12 + 1 + (unsigned __int8)v18],
        **((unsigned __int8 **)&unk_1538860 + 40 * (unsigned __int8)byte_1537CD9[v40]),
        5);
      v20 = BYTE1(v43);
      v21 = (unsigned __int8)v43;
      if ( v20 )
      {
        v22 = &word_1534DE8[8 * (unsigned __int8)byte_15386AD];
        v23 = BYTE1(v43);
        v22[1] = 0;
        v22[4] = v21;
        v22[5] = v20;
        v39 = sub_8A950(v21, v23);
        v24 = (unsigned __int8)byte_15386AD;
        LOBYTE(word_1534DE8[8 * v24 + 1]) = sub_8A950(v21, v20);
        if ( v39 != 255 )
          HIBYTE(word_1534DE8[8 * (unsigned __int8)byte_15386AD + 1]) = v39;
        v25 = 8 * (unsigned __int8)byte_15386AD;
        LOBYTE(word_1534DE8[v25]) = 1;
        v26 = (char *)&unk_1538F9C + 640 * v40;
        v27 = (unsigned __int16)(*((_WORD *)v26 + 1) - 228);
        v28 = *((_WORD *)v26 + 8);
        v29 = &word_1534DE8[v25];
        if ( v27 > 1 )
          v30 = v28 + sub_8A952(40, v25 * 2, v26, v27, v36, v37, v38) - 20;
        else
          v30 = sub_8A952(40, v25 * 2, v26, v27, v36, v37, v38) + v28 + 100;
        v29[4] = v30;
        v32 = *((_WORD *)&unk_1538F9C + 320 * v40 + 9);
        v33 = (unsigned __int8)byte_15386AD;
        word_1534DE8[8 * v33 + 5] = v32 + sub_8A950(40, v31) - 20;
        sub_8A950((unsigned __int8)byte_15386AD, v34);
        if ( (unsigned __int8)++byte_15386AD > 0x77u )
          byte_15386AD = 0;
      }
    }
  }
  return savedregs[4];
}
