int __fastcall sub_21584(int a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, int a6, int a7, int a8, int a9)
{
  int v9; // r4
  int v10; // r5
  int v11; // r1
  signed int v12; // r10
  signed int v13; // r11
  int v14; // r1
  int v15; // r0
  int v16; // r3
  int v17; // r2
  int v19; // [sp+4h] [bp-18h] BYREF
  int v20; // [sp+8h] [bp-14h] BYREF
  int v21; // [sp+Ch] [bp-10h]
  _WORD *v22; // [sp+10h] [bp-Ch]
  _WORD *v23; // [sp+14h] [bp-8h]
  _WORD *v24; // [sp+18h] [bp-4h]

  v21 = a1;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = v11 - v9;
  v13 = *a5 - v10;
  v20 = 0;
  v19 = 0x10000;
  if ( !sub_21508(a1, v9 - v11, v9 - a6, &v20, &v19)
    || !sub_21508(v21, v12, a7 - v9, &v20, &v19)
    || !sub_21508(v21, -v13, v10 - a8, &v20, &v19)
    || !sub_21508(v21, v13, a9 - v10, &v20, &v19) )
  {
    return 0;
  }
  v14 = v10 + ((v19 * v13) >> 16);
  v15 = v9 + ((v19 * v12) >> 16);
  v16 = v9 + ((v20 * v12) >> 16);
  v17 = v10 + ((v20 * v13) >> 16);
  if ( v16 >= a6 )
  {
    if ( v16 >= a7 )
      LOWORD(v16) = a7 - 1;
  }
  else
  {
    LOWORD(v16) = a6;
  }
  if ( v15 >= a6 )
  {
    if ( v15 >= a7 )
      LOWORD(v15) = a7 - 1;
  }
  else
  {
    LOWORD(v15) = a6;
  }
  if ( v17 >= a8 )
  {
    if ( v17 >= a9 )
      LOWORD(v17) = a9 - 1;
  }
  else
  {
    LOWORD(v17) = a8;
  }
  if ( v14 >= a8 )
  {
    if ( v14 >= a9 )
      LOWORD(v14) = a9 - 1;
  }
  else
  {
    LOWORD(v14) = a8;
  }
  *v22 = v16;
  *v23 = v17;
  *v24 = v15;
  *a5 = v14;
  return 1;
}

