int __fastcall sub_14BDC(int a1, _DWORD *a2, int a3, int a4)
{
  bool v5; // zf
  int v8; // r2
  int v9; // r3
  int (*v10)(); // r6
  char *v11; // r6

  v5 = a1 == 0;
  if ( a1 )
    v5 = a2 == 0;
  if ( !v5 )
  {
    v5 = a3 == 0;
    if ( a3 )
      v5 = a4 == 0;
  }
  if ( v5 )
    return 1;
  if ( sub_14A90(a1) )
    return 13;
  *(_DWORD *)(a1 + 268) = v8;
  v10 = off_14D54;
  *(_DWORD *)(a1 + 272) = v9;
  v11 = (char *)v10 + 85028;
  if ( a2[4] || sub_23F64(a1) != 2 )
  {
    if ( *a2 < 2u
      && (*(_DWORD *)(a1 + 276) = *a2,
          *(_DWORD *)(a1 + 280) = a2[1],
          (*(int (__fastcall **)(_DWORD))(*(_DWORD *)&v11[-4] + 48))(a2[2]) <= 40)
      && ((*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)&v11[-4] + 340))(a1 + 284, a2[2], 41),
          *(_DWORD *)(a1 + 368) = a2[3],
          *(_DWORD *)(a1 + 372) = a2[4],
          *(_DWORD *)(a1 + 376) = a2[5],
          (*(int (__fastcall **)(_DWORD))(*(_DWORD *)&v11[-4] + 48))(a2[6]) <= 60) )
    {
      (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)&v11[-4] + 340))(a1 + 380, a2[6], 61);
      *(_BYTE *)(a1 + 212) = 1;
      sub_21884(a1);
      *(_BYTE *)(a1 + 213) = 1;
      return sub_24574(a1);
    }
    else
    {
      return 14;
    }
  }
  else
  {
    (*(void (__fastcall **)(char *, int, char *, int))(*(_DWORD *)&v11[-4] + 156))(
      off_14D5C[0] + 85088,
      4,
      off_14D58 + 85072,
      296);
    (*(void (__fastcall **)(char *))(*(_DWORD *)&v11[-4] + 156))(off_14D60 + 85108);
    sub_21CCC(a1, dword_14D64, 0);
    return dword_14D64;
  }
}

