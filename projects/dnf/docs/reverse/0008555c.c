int __fastcall sub_8555C(unsigned __int8 a1, unsigned __int8 a2)
{
  int v2; // r7
  int v3; // r1
  unsigned int v4; // r5
  unsigned int v5; // r4
  int v6; // r6
  unsigned __int16 *v7; // r5
  int v8; // r4
  __int16 v9; // r5
  _BYTE *v10; // r4
  _WORD *v11; // r4
  char *v12; // r2
  __int16 v13; // r5
  __int16 v14; // r0
  __int16 v15; // r4
  int v16; // r5
  int v17; // r1
  int v19; // [sp+0h] [bp-4h]
  int savedregs_16; // [sp+14h] [bp+10h]

  v19 = a1;
  v2 = a2;
  v3 = (int)&unk_1538860;
  v4 = *(unsigned __int8 *)(*((_DWORD *)&unk_1538860 + 40 * (unsigned __int8)byte_1537CD9[a1]) + 6);
  if ( v4 <= 2 )
  {
    if ( byte_1500088 == 1 )
    {
      v5 = word_1401F16[18 * v2 + 2] + 2000;
    }
    else
    {
      v3 = 2000;
      v5 = word_1401E3E[18 * v2 + 2] + 2000;
    }
    if ( v5 > sub_8A950(10000, v3) )
    {
      v6 = word_1401FEE[v4] * **((unsigned __int8 **)&unk_1538860 + 40 * (unsigned __int8)byte_1537CD9[v19]);
      if ( byte_1500088 == 1 )
        v7 = word_1401F16;
      else
        v7 = word_1401E3E;
      v8 = sub_8A95A(v7[18 * v2] * v6, 10000) + v6 + v7[18 * v2 + 3];
      v9 = v8 + sub_8A950(*(unsigned __int16 *)(*(_DWORD *)(dword_1501D90 + 16) + 1164) * v8, 100);
      v10 = &word_1534DE8[8 * (unsigned __int8)byte_15386AD];
      v10[1] = 1;
      v10[4] = 0;
      v10[5] = 0;
      v10[2] = sub_8A950(0, 0);
      v11 = &word_1534DE8[8 * (unsigned __int8)byte_15386AD];
      *((_BYTE *)v11 + 3) = 12;
      *(_BYTE *)v11 = 1;
      v11[3] = v9;
      v12 = (char *)&unk_1538F9C + 640 * v19;
      v13 = *((_WORD *)v12 + 8);
      if ( (unsigned __int16)(*((_WORD *)v12 + 1) - 228) > 1u )
        v14 = v13 + sub_8A94C(50, sub_6C7D4) - 25;
      else
        v14 = sub_8A94C(40, sub_6C7D4) + v13 + 100;
      v11[4] = v14;
      v15 = *((_WORD *)&unk_1538F9C + 320 * v19 + 9);
      v16 = (unsigned __int8)byte_15386AD;
      word_1534DE8[8 * v16 + 5] = v15 + sub_8A950(50, v19) - 25;
      sub_8A950((unsigned __int8)byte_15386AD, v17);
      if ( (unsigned __int8)++byte_15386AD > 0x77u )
        byte_15386AD = 0;
    }
  }
  return savedregs_16;
}
