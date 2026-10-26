int __fastcall sub_13A8C(int a1, int a2, int a3, int a4, int a5)
{
  unsigned __int16 *v6; // r8
  int v8; // r4
  int v9; // r12
  int v10; // r0
  bool v11; // zf
  int v12; // r0
  int v13; // r0
  int v14; // r2
  int v16; // r0
  bool v17; // zf
  bool v18; // zf
  bool v19; // cc
  int v20; // r10
  int v21; // r2
  int v22; // r1
  unsigned int v23; // r1
  unsigned int v24; // r0
  unsigned int v25; // r0

  v6 = *(unsigned __int16 **)(a2 + 32);
  if ( *(_DWORD *)(a1 + 316) != 4 )
    return 0;
  v8 = a1 + 256;
  v9 = *(unsigned __int16 *)(a1 + 386);
  v10 = *(_DWORD *)((char *)off_13ED4 + 0xFFFFFFFC + 80584);
  if ( !*(_WORD *)(a1 + 386) )
  {
    if ( a3 == 258 )
    {
      if ( a4 == 57393 )
      {
        v12 = (__int16)(*(_WORD *)(a1 + 382) - 1);
        *(_WORD *)(a1 + 382) = v12;
        if ( v12 < 0 )
        {
          *(_WORD *)(a1 + 382) = 5;
          return 0;
        }
      }
      else
      {
        if ( a4 != 57394 )
        {
          if ( a4 == 57398 )
          {
            switch ( *(_WORD *)(a1 + 382) )
            {
              case 0:
                if ( !*(_BYTE *)((*(int (**)(void))(v10 + 192))() + 884) )
                  goto LABEL_31;
                *(_WORD *)(a1 + 380) = 0;
                *(_WORD *)(a1 + 386) = 1;
                return 1;
              case 1:
                if ( !*(_BYTE *)((*(int (**)(void))(v10 + 192))() + 884) )
                  goto LABEL_31;
                v14 = 0;
                goto LABEL_34;
              case 2:
                *(_WORD *)(a1 + 386) = 1;
                *(_WORD *)(a1 + 388) = *(unsigned __int8 *)(a2 + 89) == 1;
                return 0;
              case 3:
                *(_WORD *)(a1 + 386) = 1;
                sub_15AE0(a1);
                goto LABEL_39;
              case 4:
                *(_WORD *)(a1 + 386) = 1;
                sub_153D0(a1);
LABEL_39:
                *(_BYTE *)(a1 + 300) = 1;
                break;
              case 5:
                (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a2 + 12) + 24))(*(_DWORD *)(a2 + 12), 0);
                return 0;
              default:
                return 0;
            }
          }
          else if ( a4 == 57399 )
          {
            (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a2 + 12) + 24))(*(_DWORD *)(a2 + 12), 0);
          }
          return 0;
        }
        v13 = (__int16)(*(_WORD *)(a1 + 382) + 1);
        *(_WORD *)(a1 + 382) = v13;
        if ( v13 >= 6 )
        {
          *(_WORD *)(a1 + 382) = 0;
          return 0;
        }
      }
      sub_103B4(a1, 1, 3, 0, 0, -1);
    }
    return 0;
  }
  if ( v9 != 1 )
  {
    v11 = v9 == 2;
    if ( v9 == 2 )
      v11 = a3 == 257;
    if ( v11 )
    {
      if ( a4 == 57398 )
      {
        if ( *(_BYTE *)((*(int (__fastcall **)(_DWORD, int, int, int))(v10 + 192))(
                          *(_DWORD *)(v10 + 192),
                          a3,
                          57398,
                          a5)
                      + 884) )
          *(_WORD *)(a1 + 382) = 1;
        *(_WORD *)(a1 + 386) = 0;
        sub_103B4(a1, 1, 6, 0, 0, -1);
      }
      else if ( a4 == 57399 )
      {
        (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a2 + 12) + 24))(*(_DWORD *)(a2 + 12), 0);
      }
    }
    return 0;
  }
  v16 = *(__int16 *)(a1 + 382);
  if ( *(_WORD *)(a1 + 382) )
  {
    if ( v16 != 2 )
    {
      v17 = v16 == 3;
      if ( v16 != 3 )
        v17 = v16 == 4;
      if ( !v17 || sub_10250((_WORD *)a1, a3, a4) )
        return 0;
      sub_602C(a1);
      goto LABEL_89;
    }
    v20 = dword_13ED8;
    if ( a3 == 258 )
    {
      if ( a4 == 57395 )
      {
        *(_WORD *)(a1 + 388) = 0;
        return 0;
      }
      if ( a4 != 57396 )
      {
        if ( a4 != 57398 )
        {
          if ( a4 != 57399 )
            return 0;
LABEL_89:
          *(_WORD *)(v8 + 130) = 0;
          return 0;
        }
        if ( !*(_WORD *)(a1 + 388) )
        {
          v21 = dword_13ED8;
          v22 = 1;
LABEL_88:
          sub_24C64(a2, v22, v21);
          goto LABEL_89;
        }
LABEL_87:
        v21 = v20;
        v22 = 0;
        goto LABEL_88;
      }
    }
    else
    {
      if ( a3 != 1284 )
        return 0;
      v23 = v6[1];
      if ( (int)((v23 >> 1) + 12) > (__int16)a5 || (int)((v23 >> 1) + 24) < (__int16)a5 )
        return 0;
      v24 = *v6;
      if ( (int)((v24 >> 1) - 24) <= SHIWORD(a5) && (int)((v24 >> 1) - 12) >= SHIWORD(a5) )
      {
        if ( *(_WORD *)(v8 + 132) == 1 )
        {
          *(_WORD *)(v8 + 132) = 0;
        }
        else
        {
          sub_24C64(a2, 1, dword_13ED8);
          *(_WORD *)(v8 + 130) = 0;
        }
      }
      v25 = *v6;
      if ( (int)((v25 >> 1) + 12) > SHIWORD(a5) || (int)((v25 >> 1) + 24) < SHIWORD(a5) )
        return 0;
      if ( *(_WORD *)(v8 + 132) )
        goto LABEL_87;
    }
    *(_WORD *)(v8 + 132) = 1;
    return 0;
  }
  if ( a3 != 258 )
    return 0;
  v18 = a4 == 57344;
  v19 = a4 <= 57344;
  if ( a4 >= 57344 )
  {
    v18 = a4 == 57396;
    v19 = a4 - 57344 <= 52;
  }
  if ( v18 )
  {
    *(_WORD *)(a1 + 380) = 1;
    return 0;
  }
  if ( v19 )
  {
    if ( a4 != 57377 )
    {
      if ( a4 == 57395 )
        *(_WORD *)(a1 + 380) = 0;
      return 0;
    }
    goto LABEL_89;
  }
  if ( a4 != 57398 )
  {
    if ( a4 == 57399 )
      goto LABEL_89;
    return 0;
  }
  if ( *(_WORD *)(a1 + 380) )
    goto LABEL_89;
LABEL_31:
  v14 = -1;
LABEL_34:
  sub_18288(a1, a2, v14);
  return 1;
}

