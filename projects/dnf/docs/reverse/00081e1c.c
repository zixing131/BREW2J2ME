int __fastcall sub_81E1C(int a1, unsigned __int8 a2, unsigned __int16 a3, unsigned __int16 a4)
{
  int v4; // r5
  __int16 v6; // r0
  __int16 v7; // r4
  char *v8; // r1
  int v9; // r2
  char *v10; // r1
  int v11; // r2
  int result; // r0
  int v13; // r2

  v4 = a3;
  if ( *((_BYTE *)&unk_1538F9C + 640 * a2 + 64) == 1 )
  {
    v6 = word_1534080;
    v7 = word_1534082;
  }
  else
  {
    v6 = *(_WORD *)(a1 + 58);
    v7 = *(_WORD *)(a1 + 60);
  }
  v8 = (char *)&unk_1538F9C + 640 * a2;
  v9 = *((__int16 *)v8 + 8);
  v10 = v8 + 16;
  v11 = v9 - v6;
  if ( v11 < 0 )
    v11 = -v11;
  if ( v11 > v4 )
    return 0;
  result = 0;
  v13 = *((__int16 *)v10 + 1) - v7;
  if ( v13 < 0 )
    v13 = v7 - *((__int16 *)v10 + 1);
  if ( v13 <= a4 )
    return 1;
  return result;
}
