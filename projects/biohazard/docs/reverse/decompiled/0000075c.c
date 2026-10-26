int __fastcall sub_75C(int a1, int a2, void (__fastcall ***a3)(_DWORD), _DWORD *a4)
{
  int v5; // r5

  *a4 = 0;
  if ( sub_570((int)off_7F0, a1, a2, a3, a4, (int)off_7EC + 1928, (int)off_7E8 + 1920) == 1 )
  {
    v5 = *a4;
    if ( sub_15570(*a4) )
      return 0;
    (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 4))(v5);
    *a4 = 0;
  }
  return 1;
}

