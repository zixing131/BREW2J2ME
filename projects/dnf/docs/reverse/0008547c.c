int __fastcall sub_8547C(unsigned __int8 a1, unsigned __int8 a2)
{
  int v2; // r7
  int v3; // r0
  _WORD *v4; // r4
  char *v5; // r2
  int v6; // r4
  __int16 v7; // r5
  __int16 v8; // r0
  int v9; // r1
  _WORD *v10; // r3
  __int16 v11; // r0
  __int16 v12; // r0
  __int16 v13; // r4
  int v14; // r5
  int v15; // r1
  int savedregs_16; // [sp+10h] [bp+10h]

  v2 = a1;
  v3 = (unsigned __int16)sub_829D4(a2);
  if ( v3 )
  {
    sub_8A950(v3, (unsigned __int8)byte_15386AD);
    v4 = &word_1534DE8[8 * (unsigned __int8)byte_15386AD];
    *((_BYTE *)v4 + 1) = 0;
    v4[3] = 0;
    *(_BYTE *)v4 = 1;
    *((_BYTE *)v4 + 2) = sub_8A950(*((unsigned __int8 *)v4 + 4), *((unsigned __int8 *)v4 + 5));
    v5 = (char *)&unk_1538F9C + 640 * v2;
    v6 = (unsigned __int8)byte_15386AD;
    v7 = *((_WORD *)v5 + 8);
    if ( (unsigned __int16)(*((_WORD *)v5 + 1) - 228) > 1u )
    {
      v12 = sub_8A94E(50);
      v10 = &word_1534DE8[8 * v6];
      v11 = v7 + v12 - 25;
    }
    else
    {
      v8 = sub_8A94E(40);
      v10 = &word_1534DE8[8 * v6];
      v11 = v8 + v7 + 100;
    }
    v10[4] = v11;
    v13 = *((_WORD *)&unk_1538F9C + 320 * v2 + 9);
    v14 = (unsigned __int8)byte_15386AD;
    word_1534DE8[8 * v14 + 5] = v13 + sub_8A950(50, v9) - 25;
    sub_8A950((unsigned __int8)byte_15386AD, v15);
    if ( (unsigned __int8)++byte_15386AD > 0x77u )
      byte_15386AD = 0;
  }
  return savedregs_16;
}
