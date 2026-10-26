int __fastcall sub_2D8AC(unsigned __int8 a1, unsigned __int8 a2, char a3)
{
  unsigned int v3; // r4
  char v4; // r5
  __int16 *v5; // r0
  int v6; // r3
  int v7; // r3
  int savedregs_8; // [sp+8h] [bp+8h]

  v3 = a1;
  if ( dword_1501DD4 == 1
    && (unsigned int)dword_1501C5C <= 1
    && *(_BYTE *)(dword_1501D90 + 6893)
    && *(_BYTE *)(dword_1501D90 + 6893) != 1
    && a1
    && a2 )
  {
    if ( a3 == 1 )
      v4 = -1;
    else
      v4 = 1;
    v5 = (__int16 *)(8 * a2 + dword_153472C);
    v6 = *v5;
    if ( v6 < 0 )
      v6 = -v6;
    if ( v6 <= 30 )
    {
      if ( (unsigned __int8)byte_1533BD9 <= v3 && word_1533BDA <= 30 )
      {
LABEL_20:
        byte_1533BD9 = v3;
        byte_1533BD8 = 1;
        byte_1533BDE = *((_BYTE *)v5 + 4);
        word_1533BDA = v4 * *v5;
        word_1533BDC = v5[1];
      }
    }
    else
    {
      v7 = word_1533BDA;
      if ( word_1533BDA < 0 )
        v7 = -word_1533BDA;
      if ( v7 <= 30 || (unsigned __int8)byte_1533BD9 <= v3 )
        goto LABEL_20;
    }
  }
  return savedregs_8;
}
