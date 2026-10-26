int __fastcall sub_B5F8(int a1, int a2, int a3, int a4, int a5, int a6)
{
  int result; // r0
  bool v9; // zf

  result = *(_DWORD *)(a1 + 20);
  v9 = result == 0;
  if ( !result )
    result = 7;
  if ( !v9 )
  {
    sub_10C58(a1, a2, a3, a4, 1, 0, a6, 0);
    sub_10C58(a1, a2, a3, 1, a5, 0, a6, 0);
    sub_10C58(a1, (__int16)(a2 + a4 - 1), a3, 1, a5, 0, a6, 0);
    sub_10C58(a1, a2, (__int16)(a3 + a5 - 1), a4, 1, 0, a6, 0);
    return 0;
  }
  return result;
}

