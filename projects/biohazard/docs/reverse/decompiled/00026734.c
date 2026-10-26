int __fastcall sub_26734(int *a1, _BYTE *a2)
{
  int v4; // r4
  char *v5; // r7
  int v6; // r0
  int result; // r0
  int v8; // r6
  _DWORD *v9; // r0
  char *v10; // r6
  int v11; // r1
  bool v12; // zf

  v4 = sub_1058((int)a1, a1[56]);
  v5 = (char *)off_26A04 + 157536;
  if ( !*(_DWORD *)(v4 + 132) )
  {
    v6 = (*(int (__fastcall **)(int))(*(_DWORD *)&v5[-4] + 104))(84);
    *(_DWORD *)(v4 + 132) = v6;
    if ( !v6 )
      return 1;
  }
  **(_DWORD **)(v4 + 132) = -1;
  *(_DWORD *)(*(_DWORD *)(v4 + 132) + 4) = -1;
  result = sub_17E2C((int *)(v4 + 24), 6);
  if ( result )
    return result;
  *(_DWORD *)(*(_DWORD *)(v4 + 132) + 68) = 60;
  sub_17DB4(*(_DWORD *)(v4 + 24), 0, (int)(off_26A08[0] + 157656), 1, *(_DWORD *)(v4 + 132), 0);
  sub_17DB4(*(_DWORD *)(v4 + 24), 1, (int)(off_26A0C + 157700), 1, *(_DWORD *)(v4 + 132) + 4, 0);
  sub_17DB4(
    *(_DWORD *)(v4 + 24),
    2,
    (int)(off_26A10 + 157744),
    0,
    *(_DWORD *)(v4 + 132) + 8,
    (_DWORD *)(*(_DWORD *)(v4 + 132) + 68));
  sub_17DB4(*(_DWORD *)(v4 + 24), 3, (int)(off_26A14 + 157788), 1, *(_DWORD *)(v4 + 132) + 72, 0);
  sub_17DB4(*(_DWORD *)(v4 + 24), 4, (int)(off_26A18 + 157832), 1, *(_DWORD *)(v4 + 132) + 76, 0);
  sub_17DB4(*(_DWORD *)(v4 + 24), 5, (int)(off_26A1C + 157872), 1, *(_DWORD *)(v4 + 132) + 80, 0);
  v8 = sub_17E88(*(_DWORD *)(v4 + 24), 6u, a2);
  sub_17E68(*(_DWORD *)(v4 + 24));
  if ( v8 )
    return v8;
  v9 = *(_DWORD **)(v4 + 132);
  v10 = (char *)off_26A20 + 157936;
  if ( *v9 != 1 )
  {
    if ( v9[1] != 20 )
      goto LABEL_22;
    if ( *(int *)(v4 + 392) >= 4 )
      goto LABEL_17;
    (*(void (__fastcall **)(int, int, char *, int *))(*(_DWORD *)*a1 + 44))(*a1, 2000, (char *)off_26A20 + 157936, a1);
    return 0;
  }
  if ( !(*(int (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)&v5[-4] + 204))(*(_DWORD *)(v4 + 32) + 72, v9 + 2, 60) )
  {
    v9 = *(_DWORD **)(v4 + 132);
    v11 = v9[20];
    v12 = v11 == 8;
    if ( v11 != 8 )
      v12 = v11 == 4;
    if ( v12 )
    {
      sub_21CCC(a1, dword_26A24, 0, v9[19], (int)(v9 + 2), 0);
    }
    else
    {
      if ( v11 != 2 )
      {
LABEL_22:
        sub_21CCC(a1, 1012, 0, v9[19], (int)(v9 + 2), 0);
        return 0;
      }
      if ( *(int *)(v4 + 392) >= 6 )
      {
LABEL_17:
        sub_25F94(a1);
        v9 = *(_DWORD **)(v4 + 132);
        goto LABEL_22;
      }
      *(_BYTE *)(v4 + 396) = 1;
      (*(void (__fastcall **)(int, int, char *, int *))(*(_DWORD *)*a1 + 44))(*a1, 2000, v10, a1);
    }
    return 0;
  }
  return 1;
}

