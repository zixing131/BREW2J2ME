int __fastcall sub_16EC8(int result)
{
  *(_DWORD *)(result + 12) = 0;
  *(_WORD *)result = 0;
  *(_WORD *)(result + 2) = 0;
  *(_BYTE *)(result + 8) = 0;
  return result;
}

