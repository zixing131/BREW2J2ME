BOOL __fastcall sub_10250(_WORD *a1, int a2, int a3)
{
  bool v3; // zf
  bool v4; // cc
  _WORD *v5; // r1
  unsigned int v6; // r0
  unsigned int v7; // r2
  __int16 v8; // r0
  int v9; // r3
  int v10; // r0
  unsigned int v11; // r2
  int v12; // r3
  int v13; // r12
  int v14; // r2
  unsigned int v15; // r3
  int v16; // r0
  int v17; // r12
  int v18; // r0

  if ( a2 != 258 )
    return 1;
  v3 = a3 == 57344;
  v4 = a3 <= 57344;
  if ( a3 >= 57344 )
  {
    v3 = a3 == 57394;
    v4 = a3 - 57344 <= 50;
  }
  v5 = a1 + 128;
  if ( v3 )
  {
    v9 = (unsigned __int16)a1[147];
    v10 = (unsigned __int16)a1[149];
    v11 = (unsigned __int16)v5[20];
    if ( v9 + v10 > v11 )
      return 1;
    v12 = (unsigned __int16)(v9 + v5[16]);
    v5[19] = v12;
    if ( v12 + v10 <= v11 )
      return 1;
    v8 = v11 - v10;
    goto LABEL_23;
  }
  if ( v4 )
  {
    if ( a3 != 57377 )
    {
      if ( a3 != 57393 )
        return 1;
      v6 = (unsigned __int16)a1[147];
      v7 = (unsigned __int16)v5[16];
      if ( v6 < v7 )
        v8 = 0;
      else
        v8 = v6 - v7;
LABEL_23:
      v5[19] = v8;
      return 1;
    }
  }
  else
  {
    if ( a3 != 57398 )
      return a3 != 57399;
    if ( a1[151] != 1 )
    {
      if ( a1[151] )
        return 1;
      v17 = (unsigned __int16)a1[147];
      v14 = (unsigned __int16)a1[149];
      v15 = (unsigned __int16)a1[148];
      if ( v17 + v14 >= v15 )
        return 1;
      v18 = (unsigned __int16)(a1[76] - 2 * a1[78] + v17);
      v5[19] = v18;
      if ( v18 + v14 <= v15 )
        return 1;
LABEL_22:
      v8 = v15 - v14;
      goto LABEL_23;
    }
    v13 = (unsigned __int16)a1[147];
    v14 = (unsigned __int16)a1[149];
    v15 = (unsigned __int16)a1[148];
    if ( v13 + v14 < v15 )
    {
      v16 = (unsigned __int16)(a1[76] - 2 * a1[78] + v13);
      v5[19] = v16;
      if ( v16 + v14 <= v15 )
        return 1;
      goto LABEL_22;
    }
  }
  return 0;
}

