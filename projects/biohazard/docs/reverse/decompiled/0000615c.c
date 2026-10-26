int __fastcall sub_615C(int a1, int a2, __int16 *a3, _WORD *a4, _WORD *a5, int *a6, __int16 a7)
{
  int v9; // r5
  int v10; // r0
  int v11; // r1
  int v12; // r1
  int v14; // [sp+8h] [bp-4h]

  if ( (unsigned __int16)*a4 != a2 )
    return -2;
  v9 = *a6;
  v14 = sub_9A0((unsigned __int8 *)(*a6 + 2), 8);
  v10 = sub_9A0((unsigned __int8 *)(v9 + 13), 8);
  v11 = *a3;
  if ( v11 > v14 )
    return -2;
  if ( v11 + a3[2] <= v14 )
    return -2;
  v12 = a3[1];
  if ( v12 > v10 || v12 + a3[3] <= v10 )
    return -2;
  *a4 = 256;
  *a5 = a7;
  *a6 = 0;
  return 0;
}

