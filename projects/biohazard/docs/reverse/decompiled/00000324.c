int *__fastcall sub_324(int *result, int *a2, unsigned int a3)
{
  bool v3; // cf
  unsigned int i; // r2
  int *v5; // r1
  int v6; // r3
  int v7; // r4
  int v8; // r12
  int v9; // lr
  _DWORD *v10; // r0
  int v11; // r3
  int v12; // r4
  int v13; // r12
  int v14; // lr
  int v15; // r3
  int v16; // r4
  int v17; // r12
  int v18; // lr
  int v19; // r3
  int v20; // r4

  v3 = a3 >= 0x20;
  for ( i = a3 - 32; v3; i -= 32 )
  {
    if ( !v3 )
      break;
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = a2[3];
    v5 = a2 + 4;
    *result = v6;
    result[1] = v7;
    result[2] = v8;
    result[3] = v9;
    v10 = result + 4;
    v11 = *v5;
    v12 = v5[1];
    v13 = v5[2];
    v14 = v5[3];
    a2 = v5 + 4;
    *v10 = v11;
    v10[1] = v12;
    v10[2] = v13;
    v10[3] = v14;
    result = v10 + 4;
    v3 = i >= 0x20;
  }
  if ( __CFSHL__(i, 28) )
  {
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[2];
    v18 = a2[3];
    a2 += 4;
    *result = v15;
    result[1] = v16;
    result[2] = v17;
    result[3] = v18;
    result += 4;
  }
  if ( (i & 8) != 0 )
  {
    v19 = *a2;
    v20 = a2[1];
    a2 += 2;
    *result = v19;
    result[1] = v20;
    result += 2;
  }
  if ( __CFSHL__(i, 30) )
    *result++ = *a2;
  if ( i << 30 )
    JUMPOUT(0x370);
  return result;
}

