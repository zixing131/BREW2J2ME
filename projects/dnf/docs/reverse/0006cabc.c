int sub_6CABC()
{
  int v0; // r6
  int v1; // r5
  int v2; // r3
  int v3; // r6
  int v4; // r5
  _DWORD *v5; // r3
  int v6; // r6
  int v7; // r5
  _DWORD *v8; // r3
  _DWORD *v9; // r3
  int v10; // r3
  int savedregs_12; // [sp+Ch] [bp+Ch]

  v0 = 0;
  v1 = 0;
  do
  {
    if ( *(int *)(v1 + dword_1501D90 + 24) > 0 )
    {
      sub_6EACE();
      v2 = v1 + dword_1501D90;
      *(_DWORD *)(v2 + 24) = 0;
      *(_DWORD *)(v2 + 28) = 0;
    }
    ++v0;
    v1 += 12;
  }
  while ( v0 != 11 );
  v3 = 0;
  v4 = 0;
  do
  {
    if ( *(int *)(v4 + dword_1501D90 + 156) > 0 )
    {
      sub_6EACE();
      v5 = (_DWORD *)(v4 + dword_1501D90 + 160);
      *(_DWORD *)(v4 + dword_1501D90 + 156) = 0;
      *v5 = 0;
    }
    ++v3;
    v4 += 12;
  }
  while ( v3 != 2 );
  v6 = 0;
  v7 = 0;
  do
  {
    if ( *(int *)(v7 + dword_1501D90 + 180) > 0 )
    {
      sub_6EACE();
      v8 = (_DWORD *)(v7 + dword_1501D90 + 184);
      *(_DWORD *)(v7 + dword_1501D90 + 180) = 0;
      *v8 = 0;
    }
    ++v6;
    v7 += 12;
  }
  while ( v6 != 5 );
  if ( *(int *)(dword_1501D90 + 240) > 0 )
  {
    sub_6EACE();
    v9 = (_DWORD *)(dword_1501D90 + 244);
    *(_DWORD *)(dword_1501D90 + 240) = 0;
    *v9 = 0;
  }
  if ( *(int *)(dword_1501D90 + 252) > 0 )
  {
    sub_6EACE();
    v10 = dword_1501D90 + 252;
    *(_DWORD *)(dword_1501D90 + 252) = 0;
    *(_DWORD *)(v10 + 4) = 0;
  }
  return savedregs_12;
}
