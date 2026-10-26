int __fastcall sub_17858(int a1, int a2)
{
  int result; // r0

  *(_DWORD *)(a1 + 76) = a2;
  *(_DWORD *)(a1 + 32) = 0;
  *(_BYTE *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_BYTE *)(a1 + 37) = 0;
  *(_BYTE *)(a1 + 36) = 0;
  *(_BYTE *)(a1 + 42) = 0;
  *(_BYTE *)(a1 + 41) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_BYTE *)(a1 + 52) = 0;
  *(_BYTE *)(a1 + 72) = 0;
  *(_BYTE *)(a1 + 73) = 0;
  *(_DWORD *)a1 = 0;
  *(_DWORD *)(a1 + 4) = 0;
  *(_DWORD *)(a1 + 8) = 210;
  *(_DWORD *)(a1 + 12) = 45;
  *(_DWORD *)(a1 + 16) = 170;
  *(_DWORD *)(a1 + 20) = 200 - (*(unsigned __int16 *)(a2 + 2206) >> 1);
  *(_DWORD *)(a1 + 24) = 1000;
  result = a1 + 24;
  *(_DWORD *)(result + 4) = 0;
  return result;
}

