int __fastcall sub_2623C(_DWORD *a1, _BYTE *a2)
{
  int v4; // r4
  char *v5; // r11
  int v6; // r0
  int result; // r0
  int v8; // r5
  _DWORD *v9; // r0
  int v10; // r0
  int v11; // r0
  __int16 *v12; // r5
  _DWORD *v13; // r7
  unsigned int v14; // r5
  unsigned int v15; // r9
  _BYTE v16[12]; // [sp+8h] [bp-Ch] BYREF

  v4 = sub_1058((int)a1, a1[56]);
  v5 = (char *)off_26634 + 156268;
  if ( !*(_DWORD *)(v4 + 16) )
  {
    v6 = (*(int (__fastcall **)(int))(*(_DWORD *)&v5[-4] + 104))(dword_26638);
    *(_DWORD *)(v4 + 16) = v6;
    if ( !v6 )
      return 1;
  }
  **(_DWORD **)(v4 + 16) = -1;
  *(_DWORD *)(*(_DWORD *)(v4 + 16) + 4) = -1;
  *(_DWORD *)(*(_DWORD *)(v4 + 16) + 1356) = 0;
  result = sub_17E2C((int *)(v4 + 24), 9);
  if ( result )
    return result;
  *(_DWORD *)(*(_DWORD *)(v4 + 16) + 68) = 60;
  *(_DWORD *)(*(_DWORD *)(v4 + 16) + 1096) = 1024;
  *(_DWORD *)(*(_DWORD *)(v4 + 16) + 1160) = 60;
  *(_DWORD *)(*(_DWORD *)(v4 + 16) + 1504) = 140;
  *(_DWORD *)(*(_DWORD *)(v4 + 16) + 1256) = 90;
  *(_DWORD *)(*(_DWORD *)(v4 + 16) + 1352) = 90;
  sub_17DB4(*(_DWORD *)(v4 + 24), 0, (int)(off_2663C[0] + 156452), 1, *(_DWORD *)(v4 + 16), 0);
  sub_17DB4(*(_DWORD *)(v4 + 24), 1, (int)(off_26640 + 156496), 1, *(_DWORD *)(v4 + 16) + 4, 0);
  sub_17DB4(
    *(_DWORD *)(v4 + 24),
    2,
    (int)(off_26644[0] + 156548),
    0,
    *(_DWORD *)(v4 + 16) + 1100,
    (_DWORD *)(*(_DWORD *)(v4 + 16) + 1160));
  sub_17DB4(
    *(_DWORD *)(v4 + 24),
    3,
    (int)(off_26648 + 156596),
    2,
    *(_DWORD *)(v4 + 16) + 72,
    (_DWORD *)(*(_DWORD *)(v4 + 16) + 1096));
  sub_17DB4(
    *(_DWORD *)(v4 + 24),
    4,
    (int)(off_2664C[0] + 156640),
    0,
    *(_DWORD *)(v4 + 16) + 8,
    (_DWORD *)(*(_DWORD *)(v4 + 16) + 68));
  sub_17DB4(
    *(_DWORD *)(v4 + 24),
    5,
    (int)(off_26650[0] + 156692),
    0,
    *(_DWORD *)(v4 + 16) + 1164,
    (_DWORD *)(*(_DWORD *)(v4 + 16) + 1256));
  sub_17DB4(
    *(_DWORD *)(v4 + 24),
    6,
    (int)(off_26654 + 156744),
    0,
    *(_DWORD *)(v4 + 16) + 1260,
    (_DWORD *)(*(_DWORD *)(v4 + 16) + 1352));
  sub_17DB4(*(_DWORD *)(v4 + 24), 7, (int)(off_26658 + 156792), 1, *(_DWORD *)(v4 + 16) + 1356, 0);
  sub_17DB4(
    *(_DWORD *)(v4 + 24),
    8,
    (int)(off_2665C + 156832),
    2,
    *(_DWORD *)(v4 + 16) + 1360,
    (_DWORD *)(*(_DWORD *)(v4 + 16) + 1504));
  v8 = sub_17E88(*(_DWORD *)(v4 + 24), 9u, a2);
  sub_17E68(*(_DWORD *)(v4 + 24));
  if ( v8 )
    return v8;
  v9 = *(_DWORD **)(v4 + 16);
  if ( *v9 != 1 )
  {
    if ( v9[1] == 5 )
    {
      v13 = v9 + 340;
      v14 = 0;
      v15 = v9[376] >> 1;
      while ( v14 < v15 )
      {
        *((_WORD *)v13 + v14) = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)&v5[-4] + 304))(*((unsigned __int16 *)v13
                                                                                           + v14));
        ++v14;
      }
      *((_WORD *)v13 + v14) = 0;
      sub_21CCC(a1, (int)off_2666C, 0, 0, 0, *(_DWORD *)(v4 + 16) + 1360);
      return 0;
    }
    return 1;
  }
  v10 = *(_DWORD *)(v4 + 68);
  if ( v10 )
  {
    if ( *(_BYTE *)(v4 + 72) )
    {
      (*(void (**)(void))(*(_DWORD *)&v5[-4] + 188))();
    }
    else
    {
      (*(void (__fastcall **)(int))(*(_DWORD *)v10 + 4))(v10);
      *(_DWORD *)(v4 + 68) = 0;
    }
  }
  v11 = (*(int (__fastcall **)(int, int, _BYTE *, int))(*(_DWORD *)&v5[-4] + 100))(
          dword_26660,
          *(_DWORD *)(v4 + 16) + 72,
          v16,
          v4 + 72);
  *(_DWORD *)(v4 + 68) = v11;
  if ( !v11 )
    return 1;
  (*(void (__fastcall **)(_DWORD, char *, _DWORD *))(*(_DWORD *)*a1 + 48))(*a1, (char *)off_26664 + 157024, a1);
  sub_15280(*(_DWORD *)v4);
  v12 = off_26668 + 78524;
  (*(void (__fastcall **)(__int16 *))(*(_DWORD *)&v5[-4] + 48))(off_26668 + 78524);
  sub_152D4(*(_DWORD *)v4, 1, (int)v12);
  *((_BYTE *)a1 + 213) = 3;
  sub_1532C(*(_DWORD *)v4, 1);
  sub_25608((int)a1);
  return 0;
}

