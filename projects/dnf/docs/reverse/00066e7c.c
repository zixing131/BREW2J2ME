int __fastcall sub_66E7C(int a1)
{
  int result; // r0

  result = a1 << 24;
  if ( result )
    dword_1535C38 += dword_1535C3C;
  dword_1535C3C = dword_1535C38;
  dword_1535C38 = 0;
  return result;
}
