int __fastcall sub_1712C(int result, int a2)
{
  int i; // r1
  int v3; // r3

  *(_DWORD *)(result + 8) = a2;
  *(_DWORD *)(result + 12) = 0;
  *(_WORD *)(result + 60) = 0;
  *(_BYTE *)(result + 62) = 0;
  *(_WORD *)(result + 64) = 0;
  *(_DWORD *)(result + 68) = 0;
  *(_WORD *)(result + 82) = 0;
  *(_WORD *)(result + 72) = 0;
  *(_WORD *)(result + 74) = 0;
  *(_WORD *)(result + 80) = 0;
  *(_WORD *)(result + 90) = 0;
  *(_DWORD *)(result + 56) = 0;
  for ( i = 0; i < 10; ++i )
  {
    v3 = result + 4 * i;
    *(_DWORD *)(v3 + 16) = 0;
  }
  *(_WORD *)result = 0;
  *(_WORD *)(result + 2) = 0;
  return result;
}

