int __fastcall sub_11A24(int a1)
{
  int result; // r0

  result = *(_DWORD *)(a1 + 1888);
  if ( result )
  {
    sub_11A78(result, result, a1, 0);
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)((char *)off_11A74 + 0xFFFFFFFC + 72276) + 108))(*(_DWORD *)(a1 + 1888));
    *(_DWORD *)(a1 + 1888) = 0;
    return 0;
  }
  return result;
}

