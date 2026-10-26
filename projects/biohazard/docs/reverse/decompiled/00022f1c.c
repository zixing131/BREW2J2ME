int __fastcall sub_22F1C(int a1)
{
  int result; // r0

  *(_BYTE *)(a1 + 8) = 0;
  result = *(_DWORD *)(a1 + 12);
  if ( result )
  {
    result = (*(int (**)(void))(*(_DWORD *)((char *)off_22F5C + 0xFFFFFFFC + 143172) + 108))();
    *(_DWORD *)(a1 + 12) = 0;
  }
  return result;
}

