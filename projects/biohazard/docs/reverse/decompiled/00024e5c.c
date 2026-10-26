int __fastcall sub_24E5C(int result, int a2)
{
  bool v3; // zf
  int v4; // r0

  v3 = result == 0;
  if ( result )
    v3 = a2 == 0;
  if ( !v3 )
  {
    v4 = *(_DWORD *)(a2 + 48);
    if ( v4 )
    {
      sub_14308(v4);
      *(_DWORD *)(a2 + 48) = 0;
    }
    result = *(_DWORD *)(a2 + 36);
    if ( result )
    {
      result = (*(int (**)(void))(*(_DWORD *)((char *)off_24EB0 + 0xFFFFFFFC + 151200) + 108))();
      *(_DWORD *)(a2 + 36) = 0;
    }
  }
  return result;
}

