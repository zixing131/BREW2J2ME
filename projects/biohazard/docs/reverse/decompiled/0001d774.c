int __fastcall sub_1D774(int a1, int a2)
{
  unsigned __int16 *v2; // r4
  int v3; // r5
  unsigned __int16 *v6; // r0
  int v7; // r5
  int v8; // r7
  int v9; // r9
  int v10; // r8
  int v11; // r0
  int v12; // r2
  bool v13; // cc

  v2 = *(unsigned __int16 **)(a2 + 32);
  v3 = *(_DWORD *)(a2 + 36);
  if ( *(_DWORD *)(a1 + 316) != 1 )
    return 0;
  sub_10C58((int)v2, 0, 0, (__int16)*v2, (__int16)v2[1], 0, dword_1D8B8, 0);
  if ( *(_WORD *)(a1 + 380) && *(_WORD *)(a1 + 380) == 1 )
  {
    v6 = (unsigned __int16 *)sub_11DD8(v3);
    v7 = (__int16)*v6;
    v8 = (__int16)v6[1];
    v9 = (__int16)((v2[1] >> 1) - (__int16)v6[1] / 2);
    v10 = (__int16)((*v2 >> 1) - (__int16)*v6 / 2);
    sub_3324((int)v2, (*v2 >> 1) - (__int16)*v6 / 2, (v2[1] >> 1) - (__int16)v6[1] / 2, v7, v8, v6, 0, 0, 0, 0, 0);
    v11 = 5 * *(_DWORD *)(a1 + 320);
    v12 = (__int16)(v7 - v11);
    v13 = v12 < 0;
    if ( v12 < 0 )
      v12 *= -65536;
    if ( v13 )
      v12 >>= 16;
    if ( (__int16)v11 <= 2 * v7 )
      sub_23E5C(v2, v10, v9, v7, v8, v12, -1);
  }
  return 1;
}

