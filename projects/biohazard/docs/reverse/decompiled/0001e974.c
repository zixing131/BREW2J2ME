int __fastcall sub_1E974(__int16 *a1, int a2, int a3)
{
  int v4; // r0
  bool v6; // zf
  bool v7; // cc
  bool v8; // zf
  unsigned int v9; // r1
  unsigned int v10; // r0
  __int16 v11; // r1
  int v12; // r0
  int v13; // r2
  int v14; // r0
  int v15; // r1
  int v16; // r0
  bool v17; // cc
  int v18; // r1
  int v19; // r0

  if ( a2 != 258 )
    return 1;
  v4 = (unsigned __int16)a1[145];
  if ( v4 == 1 && *(_DWORD *)(*((_DWORD *)a1 + 68) + 28) < a1[4 * a1[1] + 3] )
  {
    a1[145] = 0;
    *((_BYTE *)a1 + 268) = 4;
    return 0;
  }
  v6 = a3 == 57344;
  v7 = a3 <= 57344;
  if ( a3 >= 57344 )
  {
    v6 = a3 == 57395;
    v7 = a3 - 57344 <= 51;
  }
  if ( v6 )
    goto LABEL_23;
  if ( v7 )
  {
    if ( a3 != 57377 )
    {
      if ( a3 == 57393 )
      {
        if ( a1[145] )
          return 1;
        v10 = *a1;
        v9 = a1[1] + v10 - 1;
      }
      else
      {
        v8 = a3 == 57394;
        if ( a3 == 57394 )
          v8 = v4 == 0;
        if ( !v8 )
          return 1;
        v9 = a1[1] + 1;
        v10 = *a1;
      }
      sub_104(v10, v9);
      a1[1] = v11;
      sub_252A0(a1);
      *((_DWORD *)a1 + 80) = 0;
      return 1;
    }
    goto LABEL_20;
  }
  switch ( a3 )
  {
    case 57396:
LABEL_23:
      if ( v4 == 1 )
        a1[167] = (a1[167] + 1) % 2;
      return 1;
    case 57398:
      if ( !a1[145] )
      {
        a1[145] = 1;
        a1[167] = 0;
        v12 = a1[1];
        if ( *(_DWORD *)(*((_DWORD *)a1 + 68) + 28) >= a1[4 * v12 + 3] )
        {
          if ( v12 < 3 )
            v13 = dword_1EBAC;
          else
            v13 = dword_1EBA8;
          sub_E00(*((_DWORD *)a1 + 70), 0, v13, 0);
        }
        return 1;
      }
      if ( !a1[167] )
      {
        *(_DWORD *)(*((_DWORD *)a1 + 68) + 28) -= a1[4 * a1[1] + 3];
        v14 = a1[1];
        v15 = *((_DWORD *)a1 + 68);
        if ( v14 >= 3 )
        {
          *(_DWORD *)(v15 + 36) += a1[4 * v14 + 4];
          v18 = *((_DWORD *)a1 + 68);
          v19 = *(_DWORD *)(v18 + 36);
          if ( v19 >= dword_1EBB4 )
            v19 = dword_1EBB4;
          *(_DWORD *)(v18 + 36) = v19;
        }
        else
        {
          *(_WORD *)(v15 + 802) += a1[4 * v14 + 4];
          v16 = *(__int16 *)(*((_DWORD *)a1 + 68) + 802);
          v17 = v16 < 768;
          if ( v16 >= 768 )
            v17 = v16 - 768 < 231;
          if ( !v17 )
            LOWORD(v16) = dword_1EBB0;
          *(_WORD *)(*((_DWORD *)a1 + 68) + 802) = v16;
        }
        sub_E00(*((_DWORD *)a1 + 70), 0, dword_1EBB8, 0);
      }
      goto LABEL_46;
    case 57399:
LABEL_20:
      if ( !a1[145] )
      {
        a1[164] = 0;
        return 1;
      }
LABEL_46:
      a1[145] = 0;
      break;
  }
  return 1;
}

