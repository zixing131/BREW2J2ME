int __fastcall sub_105D0(int a1, __int16 a2, __int16 a3, unsigned int a4, unsigned int a5, char a6, __int16 a7)
{
  int v8; // r0
  int v10; // r9
  signed int v11; // r4
  int v12; // r10
  int v13; // r0
  int v14; // r9
  int i; // r11
  int v16; // r0
  bool v17; // cc
  int v18; // [sp+10h] [bp-80h]
  int v19; // [sp+14h] [bp-7Ch]
  int v20; // [sp+14h] [bp-7Ch]
  int v21; // [sp+20h] [bp-70h]
  int v22; // [sp+24h] [bp-6Ch]
  int v23; // [sp+3Ch] [bp-54h]
  int v24; // [sp+50h] [bp-40h]
  unsigned int v25; // [sp+60h] [bp-30h]

  v25 = a4;
  v8 = a5;
  v18 = 0;
  if ( a4 == a5 )
    return sub_10434(a1, a2, a3, a4, a6, a7);
  if ( !*(_DWORD *)(a1 + 20) )
    return 7;
  v10 = 0;
  if ( a4 < a5 )
  {
    v25 = a5;
    v18 = 1;
    v8 = (unsigned __int16)a4;
  }
  if ( !v8 )
    v8 = 1;
  v21 = (__int16)v8;
  v11 = v8 * v8;
  v12 = v25 * v25;
  v19 = v25 * v25 + 2 * v8 * v8 - 2 * v8 * v25 * v25;
  v24 = 3 * v8 * v8;
  while ( 1 )
  {
    v23 = sub_104(v11, v12 * v21 + (v11 >> 1));
    if ( v23 < v10 )
      break;
    if ( v18 )
    {
      sub_109D0(a1);
      if ( v10 )
        sub_109D0(a1);
    }
    v13 = 4 * v10 * v11 + 2 * v24;
    if ( v19 >= 0 )
    {
      v19 += v13 + 4 * v12 * (1 - v21);
      if ( !v18 && v23 > v10 )
      {
        sub_109D0(a1);
        sub_109D0(a1);
      }
      v21 = (__int16)(v21 - 1);
    }
    else
    {
      v19 += v13;
    }
    v10 = (__int16)(v10 + 1);
  }
  v20 = v11 + 2 * v12 - 2 * v25 * v11;
  v14 = (__int16)v25;
  for ( i = 0; ; i = (__int16)(i + 1) )
  {
    v22 = sub_104(v11, v12 * i + (v11 >> 1));
    if ( v22 > v14 )
      break;
    if ( !v18 )
    {
      sub_109D0(a1);
      if ( i )
        sub_109D0(a1);
    }
    v16 = 4 * i * v12 + 6 * v12;
    if ( v20 >= 0 )
    {
      v20 += v16 + 4 * v11 * (1 - v14);
      v17 = v18 < 0;
      if ( v18 )
        v17 = v22 < v14;
      if ( v17 )
      {
        sub_109D0(a1);
        sub_109D0(a1);
      }
      v14 = (__int16)(v14 - 1);
    }
    else
    {
      v20 += v16;
    }
  }
  return 0;
}

