int __fastcall sub_1F35C(int a1, int a2, int a3)
{
  int v4; // r0
  bool v5; // zf
  bool v6; // zf
  bool v7; // zf
  _DWORD **v8; // r5
  int (*v9)(); // r0
  int v10; // r0
  bool v11; // zf
  bool v12; // zf

  v4 = *(char *)(a1 + 5);
  if ( v4 == 4 )
  {
    if ( sub_10250(*(_WORD **)(a1 + 8), a2, a3) )
      return 1;
    sub_602C(*(_DWORD *)(a1 + 8));
    goto LABEL_32;
  }
  if ( v4 == 17 )
  {
    sub_101B4(*(_DWORD *)(a1 + 12), a2, a3);
    return 1;
  }
  if ( v4 != 18 )
  {
    v5 = v4 == 21;
    if ( v4 == 21 )
      v5 = a2 == 258;
    if ( !v5 )
      return 1;
    v6 = a3 == 57395;
    if ( a3 != 57395 )
      v6 = a3 == 57396;
    if ( !v6 )
    {
      v7 = a3 == 57377;
      if ( a3 != 57377 )
        v7 = a3 == 57399;
      if ( !v7 )
      {
        if ( a3 != 57398 )
          return 1;
        if ( *(_BYTE *)(a1 + 20) != 1 )
        {
          if ( !*(_BYTE *)(a1 + 20) )
          {
            v8 = *(_DWORD ***)(a1 + 64);
            *v8[201] = 32 * *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 48) + 8) + 16;
            *v8[202] = 32 * *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 48) + 12) + 16;
            *v8[203] = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 48) + 16);
            sub_5E14((int)v8, *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 48) + 4));
            sub_5DD4((int)v8, *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 48) + 4));
            *(_WORD *)(a1 + 72) = 0;
            *(_DWORD *)(a1 + 68) = 0;
            *(_WORD *)(a1 + 74) = 0;
            *(_WORD *)(a1 + 60) = 0;
            *(_BYTE *)(a1 + 80) = 0;
            *(_BYTE *)(a1 + 81) = 0;
            *(_WORD *)(a1 + 62) = 0;
            v9 = off_1F5A4;
            *(_BYTE *)(a1 + 5) = 0;
            *(_WORD *)(a1 + 40) = 0;
            v10 = (*(int (**)(void))(*(_DWORD *)((char *)v9 + 0xFFFFFFFC + 128184) + 192))();
            sub_59C4(*(_DWORD *)(v10 + 1888), 8, 0);
          }
          return 1;
        }
      }
LABEL_32:
      *(_BYTE *)(a1 + 5) = 0;
      --*(_WORD *)(a1 + 62);
      return 1;
    }
    goto LABEL_24;
  }
  if ( a2 != 258 )
    return 1;
  if ( *(_BYTE *)(a1 + 21) )
    goto LABEL_32;
  v11 = a3 == 57395;
  if ( a3 != 57395 )
    v11 = a3 == 57396;
  if ( v11 )
  {
LABEL_24:
    *(_BYTE *)(a1 + 20) = (*(_BYTE *)(a1 + 20) + 1) & 1;
    return 1;
  }
  v12 = a3 == 57377;
  if ( a3 != 57377 )
    v12 = a3 == 57399;
  if ( v12 )
    goto LABEL_32;
  if ( a3 != 57398 )
    return 1;
  if ( *(_BYTE *)(a1 + 20) == 1 )
    goto LABEL_32;
  if ( !*(_BYTE *)(a1 + 20) )
  {
    sub_11B3C(*(_DWORD *)(a1 + 64));
    *(_BYTE *)(a1 + 21) = 1;
  }
  return 1;
}

