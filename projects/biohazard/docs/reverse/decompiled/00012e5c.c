int __fastcall sub_12E5C(int a1, int a2)
{
  bool v2; // cc
  unsigned __int8 *v3; // r1
  _WORD *v4; // r0
  __int16 v7; // [sp+0h] [bp-4h]
  __int16 v8; // [sp+0h] [bp-4h]
  __int16 v9; // [sp+0h] [bp-4h]

  v7 = 0;
  v2 = a2 <= 0;
  if ( a2 >= 0 )
    v2 = *(__int16 *)(a1 + 540) <= a2;
  if ( !v2 )
  {
    v3 = (unsigned __int8 *)(a1 + 8 * a2);
    v4 = (_WORD *)(*(_DWORD *)(a1 + 16) + 72 * v3[543]);
    v8 = v4[3] + v4[7] + v4[11] + v4[19] + v4[23];
    if ( v8 <= 0 )
      return -1;
    v9 = sub_104(v8, 100 * (v3[544] + v3[545] + v3[546] + v3[547] + v3[548]));
    if ( v9 < 100 )
    {
      if ( v9 <= 0 )
        return 0;
      else
        return v9;
    }
    else
    {
      return 100;
    }
  }
  return v7;
}

