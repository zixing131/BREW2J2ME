int __fastcall sub_11A78(int a1, int a2, int a3, int a4)
{
  bool v5; // zf
  int v7; // r4

  v5 = a2 == 0;
  if ( a2 )
    v5 = a3 == 0;
  v7 = a1;
  if ( !v5 )
    a1 = *(_DWORD *)(a1 + 376);
  if ( !v5 )
    v5 = a1 == 0;
  if ( v5 )
    return 0;
  sub_602C(v7);
  return (*(int (__fastcall **)(int, int, int))(v7 + 376))(a2, a3, a4);
}

