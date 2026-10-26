int __fastcall sub_104(unsigned int a1, unsigned int a2)
{
  unsigned int v2; // r2
  int v3; // r3
  char v4; // cf
  bool v6; // cf
  unsigned int v7; // r2
  bool v8; // cf
  unsigned int v9; // r2
  bool v10; // cf
  unsigned int v11; // r2
  bool v12; // cf
  bool v13; // cf
  bool v14; // cf
  unsigned int v15; // r2
  bool v16; // cf
  unsigned int v17; // r2
  bool v18; // cf
  unsigned int v19; // off

  v2 = a1 & 0x80000000;
  if ( (a1 & 0x80000000) != 0 )
    a1 = -a1;
  v3 = v2 ^ ((int)a2 >> 31);
  if ( (a2 & 0x80000000) != 0 )
    a2 = -a2;
  if ( a2 >> 3 < a1 )
    goto LABEL_28;
  if ( a2 >> 8 < a1 )
    goto LABEL_16;
  a1 <<= 8;
  v2 |= 0xFF000000;
  if ( a2 >> 4 < a1 )
    goto LABEL_25;
  if ( a2 >> 8 < a1 )
    goto LABEL_16;
  a1 <<= 8;
  v2 |= 0xFF0000u;
  if ( a2 >> 8 >= a1 )
  {
    a1 <<= 8;
    v2 |= 0xFF00u;
  }
  if ( a2 >> 4 < a1 )
    goto LABEL_25;
  v4 = a1 == 0;
  if ( !a1 )
    return sub_314();
  do
  {
    if ( v4 )
      a1 >>= 8;
LABEL_16:
    v6 = a2 >> 7 >= a1;
    if ( a2 >> 7 >= a1 )
      a2 -= a1 << 7;
    v7 = v2 + v6 + v2;
    v8 = a2 >> 6 >= a1;
    if ( a2 >> 6 >= a1 )
      a2 -= a1 << 6;
    v9 = v7 + v8 + v7;
    v10 = a2 >> 5 >= a1;
    if ( a2 >> 5 >= a1 )
      a2 -= 32 * a1;
    v11 = v9 + v10 + v9;
    v12 = a2 >> 4 >= a1;
    if ( a2 >> 4 >= a1 )
      a2 -= 16 * a1;
    v2 = v11 + v12 + v11;
LABEL_25:
    v13 = a2 >> 3 >= a1;
    if ( a2 >> 3 >= a1 )
      a2 -= 8 * a1;
    v2 += v13 + v2;
LABEL_28:
    v14 = a2 >> 2 >= a1;
    if ( a2 >> 2 >= a1 )
      a2 -= 4 * a1;
    v15 = v2 + v14 + v2;
    v16 = a2 >> 1 >= a1;
    if ( a2 >> 1 >= a1 )
      a2 -= 2 * a1;
    v17 = v15 + v16 + v15;
    v18 = a2 >= a1;
    if ( a2 >= a1 )
      a2 -= a1;
    v19 = v18 + v17;
    v4 = __CFADD__(v18, v17) | __CFADD__(v17, v19);
    v2 = v17 + v19;
  }
  while ( v4 );
  return (v2 ^ (v3 >> 31)) + ((unsigned int)v3 >> 31);
}

