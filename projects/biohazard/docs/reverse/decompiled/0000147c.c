int __fastcall sub_147C(unsigned __int8 *a1, int a2, _BYTE *a3)
{
  int v3; // r3
  char *v4; // r12
  _BYTE *v5; // r2
  _BYTE *v6; // r2
  _BYTE *v7; // r2

  v3 = 0;
  v4 = off_1538 + 5268;
  while ( a2 > 0 )
  {
    *a3 = v4[*a1 >> 2];
    v5 = a3 + 1;
    if ( a2 == 1 )
    {
      *v5 = v4[16 * (*a1 & 3)];
      v6 = v5 + 1;
      *v6 = 61;
    }
    else
    {
      *v5 = v4[(16 * *a1) & 0x3F | (a1[1] >> 4)];
      v6 = v5 + 1;
      *v6 = v4[(4 * a1[1]) & 0x3F | (a1[2] >> 6)];
      if ( a2 != 2 )
      {
        v6[1] = v4[a1[2] & 0x3F];
        v7 = v6 + 1;
        goto LABEL_7;
      }
    }
    v6[1] = 61;
    v7 = v6 + 1;
LABEL_7:
    a3 = v7 + 1;
    a1 += 3;
    a2 -= 3;
    v3 += 4;
  }
  *a3 = 0;
  return v3;
}

