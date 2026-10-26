int __fastcall sub_23E5C(int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  int result; // r0
  int v11; // r12
  int v12; // lr
  __int16 v13; // r1
  __int16 v14; // r10
  int i; // r6
  int v16; // r11
  int v17; // [sp+0h] [bp-14h]

  result = a7;
  if ( a7 == -1 )
  {
    sub_3C(a5 / 2);
    v11 = a3;
    v12 = a5 / 2 * (a5 / 2);
    v13 = a5 / 2 + a3;
    v17 = a3 + a5;
    result = a6;
    v14 = dword_23F60;
    while ( 1 )
    {
      if ( v17 <= v11 )
        return result;
      for ( i = a2; a2 + a4 > i; i = (__int16)(i + 1) )
      {
        if ( a2 + a6 + a5 / 2 >= i && a2 + a6 - a5 / 2 <= i )
        {
          v16 = (v11 - v13) * (v11 - v13) + (i - a2 - a6) * (i - a2 - a6);
          if ( v11 > v13 )
          {
            if ( v16 <= v12 )
              continue;
          }
          else if ( v16 <= v12 )
          {
            continue;
          }
        }
        *(_WORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 4 * v11) + 2 * i) = v14;
      }
      v11 = (__int16)(v11 + 1);
    }
  }
  return result;
}

