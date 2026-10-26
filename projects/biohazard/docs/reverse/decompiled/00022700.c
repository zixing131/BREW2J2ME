int __fastcall sub_22700(int a1)
{
  int result; // r0

  *(_DWORD *)(a1 + 8) = 0;
  result = *(_DWORD *)(a1 + 2060);
  if ( result )
  {
    result = (*(int (**)(void))(*(_DWORD *)((char *)off_22740 + 0xFFFFFFFC + 141096) + 108))();
    *(_DWORD *)(a1 + 2060) = 0;
  }
  return result;
}

