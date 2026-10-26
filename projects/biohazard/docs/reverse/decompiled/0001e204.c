int __fastcall sub_1E204(int a1, int a2, int a3)
{
  int result; // r0
  int v7; // r2
  char v8; // r8
  int v9; // r1
  int v10; // r9
  int v11; // r10
  int v12; // r0
  bool v13; // cc
  int v14; // r0
  unsigned int v15; // r1
  bool v16; // cf
  int v17; // r0
  int v18; // r6
  __int16 v19; // r11
  _BYTE v20[20]; // [sp+0h] [bp-1Ch] BYREF
  int v21; // [sp+14h] [bp-8h]
  int v22; // [sp+18h] [bp-4h]

  result = *(_DWORD *)(a1 + 2200);
  if ( result )
  {
    v7 = *(_DWORD *)(a1 + 2104);
    v22 = v7;
    v21 = *(unsigned __int8 *)(result + 18);
    v8 = *(_BYTE *)(result + 19);
    if ( *(_BYTE *)(a1 + 2160) )
    {
      *(_DWORD *)(a1 + 2104) = 2 * v7;
      *(_BYTE *)(result + 18) >>= 1;
      *(_BYTE *)(*(_DWORD *)(a1 + 2200) + 19) *= 2;
    }
    v9 = *(_DWORD *)(a1 + 2224);
    v10 = *(_DWORD *)(a1 + 2088);
    v11 = *(_DWORD *)(a1 + 2092);
    v12 = *(__int16 *)(dword_1E454 + v9);
    v13 = v12 <= 0;
    if ( v12 >= 0 )
      v13 = *(__int16 *)(v9 + 540) <= v12;
    if ( !v13 )
    {
      sub_12F30((int)v20, v9, *(unsigned __int16 *)(dword_1E454 + v9));
      v14 = *(_DWORD *)(a1 + 2196) + 116 * v20[17];
      v15 = *(unsigned __int8 *)(a1 + 2130);
      v16 = 1;
      if ( *(_BYTE *)(a1 + 2130) )
      {
        v15 = *(unsigned __int8 *)(a1 + 2131);
        v16 = v15 >= *(_DWORD *)(v14 + 56);
      }
      if ( !v16 )
      {
        v17 = v14 + 6 * v15;
        v18 = *(__int16 *)(v17 + 64);
        if ( *(_WORD *)(v17 + 64) )
        {
          *(_DWORD *)(a1 + 2088) -= (v18 * sub_196D8(*(_DWORD *)(a1 + 2100))) >> 16;
          *(_DWORD *)(a1 + 2092) -= (v18 * sub_197A8(*(_DWORD *)(a1 + 2100))) >> 16;
        }
      }
    }
    v19 = *(_WORD *)(a2 + 6);
    *(_WORD *)(a2 + 6) = *(_WORD *)(a1 + 2210);
    sub_6E98(a1, a2, a3);
    if ( *(_BYTE *)(*(_DWORD *)(a1 + 2200) + 9) )
      sub_6640(a1, a2, 1);
    sub_6640(a1, a2, 0);
    *(_DWORD *)(a1 + 2256) = 0;
    *(_DWORD *)(a1 + 2260) = 0;
    sub_48A0(a1, 5);
    sub_48A0(a1, 6);
    sub_48A0(a1, 4);
    sub_48A0(a1, 2);
    sub_4F8C(a1);
    sub_9990(a1, a2, a3);
    *(_WORD *)(a2 + 6) = v19;
    *(_DWORD *)(a1 + 2088) = v10;
    *(_DWORD *)(a1 + 2092) = v11;
    *(_DWORD *)(a1 + 2104) = v22;
    *(_BYTE *)(*(_DWORD *)(a1 + 2200) + 18) = v21;
    *(_BYTE *)(*(_DWORD *)(a1 + 2200) + 19) = v8;
    sub_D7A8(a1, a2, a3);
    sub_A7E8((_DWORD *)a1, a2, *(unsigned __int16 *)(a1 + 2208) + *(unsigned __int16 *)(a1 + 2204) - 30, 23);
    result = *(unsigned __int8 *)(a1 + 2161);
    if ( *(_BYTE *)(a1 + 2161) )
      return sub_10C58(
               a2,
               *(_WORD *)(a1 + 2208),
               *(_WORD *)(a1 + 2210),
               *(__int16 *)(a1 + 2204),
               *(__int16 *)(a1 + 2206),
               (unsigned __int16)((_WORD)result << 11) | 2,
               0xF800u,
               0);
  }
  return result;
}

