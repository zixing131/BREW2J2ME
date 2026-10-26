int __fastcall sub_1EBBC(__int16 *a1, int a2, int a3)
{
  bool v4; // zf
  bool v5; // cc
  __int16 *v6; // r0
  unsigned int v7; // r1
  unsigned int v8; // r0
  __int16 v9; // r1
  __int16 *v11; // r3
  int v12; // r1

  if ( a2 != 258 )
    return 1;
  v4 = a3 == 57344;
  v5 = a3 <= 57344;
  if ( a3 >= 57344 )
  {
    v4 = a3 == 57394;
    v5 = a3 - 57344 <= 50;
  }
  v6 = a1 + 128;
  if ( v4 )
  {
    v7 = a1[1] + 1;
    v8 = *a1;
LABEL_11:
    sub_104(v8, v7);
    a1[1] = v9;
    sub_252A0(a1);
    *((_DWORD *)a1 + 80) = 0;
    return 1;
  }
  if ( !v5 )
  {
    if ( a3 == 57398 )
    {
      v11 = &a1[4 * a1[1]];
      v12 = v11[4];
      if ( v12 < 0 )
      {
        if ( !v6[16] )
          sub_16360(a1, v6[30]);
        return 1;
      }
      if ( v6[16] )
      {
        if ( v6[16] != 1 )
          return 1;
        if ( v11[5] <= 0 )
        {
          sub_E00(*((_DWORD *)a1 + 70), 0, dword_1ECE4, 0);
          return 1;
        }
      }
      *((_BYTE *)v6 + 12) = v12;
      return 0;
    }
    if ( a3 != 57399 )
      return 1;
LABEL_14:
    if ( v6[16] == 1 )
    {
      sub_1627C(a1, v6[30]);
      return 1;
    }
    return 0;
  }
  if ( a3 == 57377 )
    goto LABEL_14;
  if ( a3 == 57393 )
  {
    v8 = *a1;
    v7 = a1[1] + v8 - 1;
    goto LABEL_11;
  }
  return 1;
}

