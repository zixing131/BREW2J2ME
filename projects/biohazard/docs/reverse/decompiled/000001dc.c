int __fastcall sub_1DC(unsigned int a1, unsigned int a2)
{
  int v2; // r2
  char v3; // cf
  bool v5; // cf
  int v6; // r2
  bool v7; // cf
  int v8; // r2
  bool v9; // cf
  int v10; // r2
  bool v11; // cf
  bool v12; // cf
  bool v13; // cf
  int v14; // r2
  bool v15; // cf
  int v16; // r2
  bool v17; // cf
  int v18; // off

  v2 = 0;
  if ( a2 >> 3 < a1 )
    goto LABEL_24;
  if ( a2 >> 8 < a1 )
    goto LABEL_12;
  a1 <<= 8;
  v2 = -16777216;
  if ( a2 >> 4 < a1 )
    goto LABEL_21;
  if ( a2 >> 8 < a1 )
    goto LABEL_12;
  a1 <<= 8;
  v2 = -65536;
  if ( a2 >> 8 >= a1 )
  {
    a1 <<= 8;
    v2 = -256;
  }
  if ( a2 >> 4 < a1 )
    goto LABEL_21;
  v3 = a1 == 0;
  if ( !a1 )
    return sub_314();
  do
  {
    if ( v3 )
      a1 >>= 8;
LABEL_12:
    v5 = a2 >> 7 >= a1;
    if ( a2 >> 7 >= a1 )
      a2 -= a1 << 7;
    v6 = v2 + v5 + v2;
    v7 = a2 >> 6 >= a1;
    if ( a2 >> 6 >= a1 )
      a2 -= a1 << 6;
    v8 = v6 + v7 + v6;
    v9 = a2 >> 5 >= a1;
    if ( a2 >> 5 >= a1 )
      a2 -= 32 * a1;
    v10 = v8 + v9 + v8;
    v11 = a2 >> 4 >= a1;
    if ( a2 >> 4 >= a1 )
      a2 -= 16 * a1;
    v2 = v10 + v11 + v10;
LABEL_21:
    v12 = a2 >> 3 >= a1;
    if ( a2 >> 3 >= a1 )
      a2 -= 8 * a1;
    v2 += v12 + v2;
LABEL_24:
    v13 = a2 >> 2 >= a1;
    if ( a2 >> 2 >= a1 )
      a2 -= 4 * a1;
    v14 = v2 + v13 + v2;
    v15 = a2 >> 1 >= a1;
    if ( a2 >> 1 >= a1 )
      a2 -= 2 * a1;
    v16 = v14 + v15 + v14;
    v17 = a2 >= a1;
    if ( a2 >= a1 )
      a2 -= a1;
    v18 = v17 + v16;
    v3 = __CFADD__(v17, v16) | __CFADD__(v16, v18);
    v2 = v16 + v18;
  }
  while ( v3 );
  return v2;
}

