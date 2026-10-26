int sub_800E4()
{
  int v0; // r2
  char v1; // r0
  int v2; // r1
  int v3; // r2
  int v4; // r0
  int v5; // r1
  int v6; // r2
  int savedregs_4; // [sp+4h] [bp+4h]

  sub_761A4();
  v0 = (unsigned __int8)byte_150D899;
  *((_BYTE *)&dword_150D88C + 10 * (unsigned __int8)byte_150D899 + (unsigned __int8)byte_150D898 + 24) = 1;
  v1 = sub_80706(1, 0, v0, sub_2FB10);
  if ( v1 > 0 )
  {
    v4 = v1 & 0xFFFF;
    byte_150C714 = 1;
LABEL_5:
    sub_80706(v4, v2, v3, sub_3592C);
    return savedregs_4;
  }
  v3 = *(_DWORD *)(dword_1501D90 + 6888) & 0xFFFFFF;
  if ( v3 == 207115 )
  {
    v4 = 6;
    goto LABEL_5;
  }
  if ( v3 == 272651 )
  {
    sub_80706(463, v2, 272651, sub_3A890);
    sub_80706(8, v5, v6, sub_3592C);
    byte_153378C = 0;
  }
  return savedregs_4;
}
