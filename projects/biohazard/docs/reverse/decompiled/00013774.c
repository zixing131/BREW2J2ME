int __fastcall sub_13774(int a1, int a2, int a3, int a4, int a5)
{
  unsigned __int16 *v5; // r8
  int v9; // r0
  char *v10; // r11
  int v11; // r9
  bool v12; // zf
  int v13; // r2
  int v14; // r1
  unsigned int v15; // r2
  unsigned int v16; // r1
  unsigned int v17; // r0

  v5 = *(unsigned __int16 **)(a2 + 32);
  if ( *(_DWORD *)(a1 + 316) != 7 )
    return 0;
  v9 = *(unsigned __int16 *)(a1 + 380);
  if ( !*(_WORD *)(a1 + 380) )
  {
    v12 = a3 == 258;
    if ( a3 != 258 )
      v12 = a3 == 1284;
    if ( v12 )
      *(_WORD *)(a1 + 380) = 1;
    return 1;
  }
  if ( v9 == 1 )
  {
    v10 = (char *)off_1396C + 79812;
    v11 = dword_13970;
    if ( a3 == 258 )
    {
      if ( a4 == 57395 )
      {
        *(_WORD *)(a1 + 382) = 0;
        return 1;
      }
      if ( a4 != 57396 )
      {
        if ( a4 != 57398 )
        {
          if ( a4 == 57399 )
            (*(void (__fastcall **)(_DWORD, _DWORD))(**(_DWORD **)(a2 + 12) + 24))(*(_DWORD *)(a2 + 12), 0);
          return 1;
        }
        if ( !*(_WORD *)(a1 + 382) )
        {
          v13 = dword_13970;
          v14 = 1;
LABEL_35:
          sub_24C64(a2, v14, v13);
          sub_103B4(a1, 5, 4, (int)v10, 0, -1);
          return 1;
        }
LABEL_34:
        v13 = v11;
        v14 = 0;
        goto LABEL_35;
      }
    }
    else
    {
      if ( a3 != 1284 )
        return 1;
      v15 = v5[1];
      if ( (int)((v15 >> 1) + 5) > (__int16)a5 || (int)((v15 >> 1) + 30) < (__int16)a5 )
        return 1;
      v16 = *v5;
      if ( (int)((v16 >> 1) - 30) <= SHIWORD(a5) && (int)((v16 >> 1) - 5) >= SHIWORD(a5) )
      {
        if ( *(_WORD *)(a1 + 382) == 1 )
        {
          *(_WORD *)(a1 + 382) = 0;
        }
        else
        {
          sub_24C64(a2, 1, dword_13970);
          sub_103B4(a1, 5, 4, (int)v10, 0, -1);
        }
      }
      v17 = *v5;
      if ( (int)((v17 >> 1) + 5) > SHIWORD(a5) || (int)((v17 >> 1) + 30) < SHIWORD(a5) )
        return 1;
      if ( *(_WORD *)(a1 + 382) )
        goto LABEL_34;
    }
    *(_WORD *)(a1 + 382) = 1;
  }
  return 1;
}

