int __fastcall sub_24F9C(_DWORD *a1, int a2)
{
  bool v2; // zf

  v2 = a1 == 0;
  if ( a1 )
    v2 = a2 == 0;
  if ( v2 )
    return 1;
  (*(void (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)*a1 + 48))(*a1, *(_DWORD *)(a2 + 52));
  return 0;
}

