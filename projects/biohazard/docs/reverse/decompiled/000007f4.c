int __fastcall sub_7F4(int a1)
{
  int result; // r0

  result = *(_DWORD *)(a1 + 4) + 1;
  *(_DWORD *)(a1 + 4) = result;
  return result;
}

