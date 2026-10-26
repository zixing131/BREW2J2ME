int __fastcall sub_2B750(int a1)
{
  unsigned int v1; // r4
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r1
  int v6; // r0
  int v7; // r1
  int v8; // r0
  int v9; // r0
  int v10; // r0
  int v11; // r0
  int v12; // r5
  int v13; // r6
  int savedregs_16; // [sp+10h] [bp+10h]

  v1 = a1 << 24;
  sub_2A0E4();
  v2 = sub_28838(*(unsigned __int8 *)(dword_1501D90 + 6889));
  v3 = sub_2ABD4(v2);
  v4 = sub_2BCBC(v3);
  if ( HIBYTE(v1) == 1 )
  {
    v5 = *(char *)(dword_1501D90 + 6890);
    if ( v5 > 0 )
    {
      v6 = sub_28258((unsigned __int16)(v5 + 100 * *(unsigned __int8 *)(dword_1501D90 + 6889)));
      sub_2ACE8(v6);
    }
  }
  else
  {
    v7 = *(char *)(dword_1501D90 + 6890);
    if ( v7 > 0 )
    {
      v8 = sub_28258((unsigned __int16)(v7 + 100 * *(unsigned __int8 *)(dword_1501D90 + 6889)));
      v9 = sub_2BCBC(v8);
      v10 = sub_2ACE8(v9);
      v11 = sub_2B59C(v10);
      v4 = sub_2BCBC(v11);
      if ( byte_1533440 )
      {
        dword_153344C = sub_2BCB6(16 * (unsigned __int8)byte_1533440 + 2);
        dword_1533450 = dword_153344C;
        v4 = sub_2BCB6(dword_153344C);
        v12 = 0;
        v13 = 0;
        while ( v12 < (unsigned __int8)byte_1533440 )
        {
          v4 = sub_2BCB8(
                 *(_DWORD *)(8 * *(unsigned __int8 *)(dword_1533448 + v13) + dword_1533458 + 4),
                 16 * v12++ + dword_1533450,
                 0,
                 1);
          v13 += 12;
        }
      }
    }
    sub_2BCB6(v4);
  }
  return savedregs_16;
}
