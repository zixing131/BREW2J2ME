int __fastcall sub_1837C(int a1, _DWORD *a2)
{
  int v4; // r0
  int result; // r0
  int v6; // [sp+18h] [bp-4h] BYREF

  v4 = sub_1058(a1, *(_DWORD *)(a1 + 224));
  v6 = 0;
  (*(void (__fastcall **)(_DWORD, int *))(**(_DWORD **)(v4 + 12) + 64))(*(_DWORD *)(v4 + 12), &v6);
  result = v6;
  if ( v6 )
  {
    (*(void (__fastcall **)(int, _DWORD *, _DWORD, _DWORD))(*(_DWORD *)v6 + 52))(
      v6,
      a2,
      *(unsigned __int16 *)(a1 + 4),
      *(unsigned __int16 *)(a1 + 6));
    if ( *a2 )
      (*(void (__fastcall **)(_DWORD))(*(_DWORD *)*a2 + 40))(*a2);
    return (*(int (__fastcall **)(int))(*(_DWORD *)v6 + 4))(v6);
  }
  return result;
}

