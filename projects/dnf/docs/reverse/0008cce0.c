int __fastcall sub_8CCE0(int a1, int a2, int a3)
{
  int result; // r0

  dword_15000C0 = a1;
  dword_15000C4 = a2;
  *(_DWORD *)algn_15000C8 = a3;
  result = a1 + 512;
  *(_DWORD *)(result + 20) = &unk_1400000;
  return result;
}
