int __fastcall sub_1EEB0(__int16 *a1, int a2, int a3)
{
  int v4; // r1
  char v5; // r0
  bool v7; // zf
  bool v8; // cc
  unsigned int v9; // r1
  unsigned int v10; // r0
  __int16 v11; // r0
  __int16 v12; // r6
  unsigned int v13; // r0
  char *v14; // r0
  unsigned __int8 *v15; // r2
  unsigned int v16; // r0
  unsigned int v17; // r1
  unsigned int v18; // r0
  __int16 v19; // r1
  __int16 v20; // r1
  char *v21; // r12
  int v22; // r0
  char *v23; // r8
  _BYTE *v24; // r0
  int v25; // r2
  int v26; // r1
  int v27; // r1
  char v28; // r0
  char v29; // r0
  char v30; // r0
  char v31; // r0
  char v32; // r0
  _BYTE *v33; // [sp+10h] [bp-4h]

  if ( a2 != 258 )
    return 1;
  v4 = (unsigned __int16)a1[146];
  v5 = 1;
  if ( v4 == 2 && *(_DWORD *)(*((_DWORD *)a1 + 68) + 28) < *((_DWORD *)a1 + 74) )
  {
    a1[146] = 1;
    *((_BYTE *)a1 + 268) = 4;
    return 0;
  }
  v7 = a3 == 57344;
  v8 = a3 <= 57344;
  if ( a3 >= 57344 )
  {
    v7 = a3 == 57395;
    v8 = a3 - 57344 <= 51;
  }
  if ( v7 )
  {
    if ( v4 == 1 )
    {
      v13 = a1[167];
      if ( v13 >= 5 )
        return 1;
      v14 = (char *)a1 + v13;
      if ( v14[305] )
        --v14[305];
      v15 = (unsigned __int8 *)a1 + a1[167];
      v16 = v15[300];
      v17 = v15[305];
      if ( v16 > v17 )
      {
LABEL_38:
        v15[305] = v16;
        *((_DWORD *)a1 + 74) = sub_124A0(
                                 *((_DWORD *)a1 + 68),
                                 a1[147],
                                 *((unsigned __int8 *)a1 + 305),
                                 *((unsigned __int8 *)a1 + 306),
                                 *((unsigned __int8 *)a1 + 307),
                                 *((unsigned __int8 *)a1 + 308),
                                 *((unsigned __int8 *)a1 + 309));
        return 1;
      }
LABEL_30:
      LOBYTE(v16) = v17;
      goto LABEL_38;
    }
    if ( v4 != 2 )
      return 1;
    if ( !*((_BYTE *)a1 + 315) )
    {
LABEL_33:
      v5 = 1;
      goto LABEL_42;
    }
LABEL_34:
    v5 = 0;
    goto LABEL_42;
  }
  if ( v8 )
  {
    switch ( a3 )
    {
      case 57377:
LABEL_21:
        if ( !a1[146] )
        {
          a1[164] = 0;
          return 1;
        }
        if ( v4 == 1 )
        {
          v12 = a1[1];
          a1[146] = 0;
          sub_16444(a1, a1[158]);
          a1[1] = v12;
LABEL_46:
          sub_252A0(a1);
          *((_DWORD *)a1 + 80) = 0;
          return 1;
        }
        if ( v4 != 2 )
          return 1;
LABEL_60:
        a1[146] = 1;
        return 1;
      case 57393:
        if ( !a1[146] )
        {
          v10 = *a1;
          v9 = a1[1] + v10 - 1;
          goto LABEL_45;
        }
        if ( v4 != 1 )
          return 1;
        v11 = a1[167] - 1;
        break;
      case 57394:
        if ( !a1[146] )
        {
          v9 = a1[1] + 1;
          v10 = *a1;
LABEL_45:
          sub_104(v10, v9);
          a1[1] = v19;
          goto LABEL_46;
        }
        if ( v4 != 1 )
          return 1;
        v11 = a1[167] + 1;
        break;
      default:
        return 1;
    }
    sub_104(5u, v11 + 5);
    a1[167] = v20;
    return 1;
  }
  switch ( a3 )
  {
    case 57396:
      if ( v4 == 1 )
      {
        v18 = a1[167];
        if ( v18 >= 5 )
          return 1;
        ++*((_BYTE *)a1 + v18 + 305);
        v15 = (unsigned __int8 *)a1 + a1[167];
        v16 = v15[310];
        v17 = v15[305];
        if ( v16 < v17 )
          goto LABEL_38;
        goto LABEL_30;
      }
      if ( v4 != 2 )
        return 1;
      if ( !*((_BYTE *)a1 + 315) )
        goto LABEL_33;
      goto LABEL_34;
    case 57398:
      v21 = (char *)off_1F354 + 127296;
      v33 = (char *)a1 + 311;
      if ( !v4 )
      {
        a1[146] = 1;
        *((_DWORD *)a1 + 80) = 0;
        a1[167] = 0;
        v22 = a1[1];
        a1[147] = v22;
        *((_DWORD *)a1 + 74) = 0;
        v23 = v21;
        v24 = (_BYTE *)(*((_DWORD *)a1 + 68) + 8 * v22);
        *((_BYTE *)a1 + 300) = v24[544];
        *((_BYTE *)a1 + 301) = v24[545];
        *((_BYTE *)a1 + 302) = v24[546];
        *((_BYTE *)a1 + 303) = v24[547];
        *((_BYTE *)a1 + 304) = v24[548];
        (**(void (__fastcall ***)(int, int, int))&v21[-4])((int)a1 + 305, (int)(a1 + 150), 5);
        (**(void (__fastcall ***)(int, int, int))&v23[-4])((int)(a1 + 155), (int)(a1 + 150), 5);
        sub_12418(
          *((_DWORD *)a1 + 68),
          a1[147],
          (_BYTE *)a1 + 310,
          v33,
          (_BYTE *)a1 + 312,
          (_BYTE *)a1 + 313,
          (_BYTE *)a1 + 314);
        return 1;
      }
      if ( v4 != 1 )
      {
        if ( v4 != 2 )
          return 1;
        if ( *((_BYTE *)a1 + 315) )
        {
          v25 = *((_DWORD *)a1 + 68);
          v26 = *((_DWORD *)a1 + 74);
          if ( *(_DWORD *)(v25 + 28) >= v26 )
          {
            a1[146] = 1;
            *(_DWORD *)(v25 + 28) -= v26;
            *((_DWORD *)a1 + 80) = 0;
            v27 = a1[1];
            a1[147] = v27;
            *((_DWORD *)a1 + 74) = 0;
            v28 = *((_BYTE *)a1 + 305);
            *(_BYTE *)(*((_DWORD *)a1 + 68) + 8 * v27 + 544) = v28;
            *((_BYTE *)a1 + 300) = v28;
            v29 = *((_BYTE *)a1 + 306);
            *(_BYTE *)(*((_DWORD *)a1 + 68) + 8 * a1[147] + 545) = v29;
            *((_BYTE *)a1 + 301) = v29;
            v30 = *((_BYTE *)a1 + 307);
            *(_BYTE *)(*((_DWORD *)a1 + 68) + 8 * a1[147] + 546) = v30;
            *((_BYTE *)a1 + 302) = v30;
            v31 = *((_BYTE *)a1 + 308);
            *(_BYTE *)(*((_DWORD *)a1 + 68) + 8 * a1[147] + 547) = v31;
            *((_BYTE *)a1 + 303) = v31;
            v32 = *((_BYTE *)a1 + 309);
            *(_BYTE *)(*((_DWORD *)a1 + 68) + 8 * a1[147] + 548) = v32;
            *((_BYTE *)a1 + 304) = v32;
            (**(void (__fastcall ***)(int, int, int))&v21[-4])((int)(a1 + 155), (int)(a1 + 150), 5);
            sub_12418(
              *((_DWORD *)a1 + 68),
              a1[147],
              (_BYTE *)a1 + 310,
              v33,
              (_BYTE *)a1 + 312,
              (_BYTE *)a1 + 313,
              (_BYTE *)a1 + 314);
            sub_16444(a1, a1[158]);
            a1[1] = a1[147];
            sub_252A0(a1);
            sub_E00(*((_DWORD *)a1 + 70), 0, dword_1F358, 0);
          }
          return 1;
        }
        goto LABEL_60;
      }
      if ( *((int *)a1 + 74) <= 0 )
        return 1;
      a1[146] = 2;
LABEL_42:
      *((_BYTE *)a1 + 315) = v5;
      return 1;
    case 57399:
      goto LABEL_21;
  }
  return 1;
}

