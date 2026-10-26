int __fastcall sub_554(int a1)
{
  int result; // r0

  result = *(_DWORD *)(a1 + 8) + 1;
  *(_DWORD *)(a1 + 8) = result;
  return result;
}

