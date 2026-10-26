int __fastcall sub_1650C(int a1)
{
  int (*v2)(); // r0
  int result; // r0

  *(_WORD *)a1 = -1;
  *(_WORD *)(a1 + 2) = 0;
  *(_WORD *)(a1 + 4) = -1;
  *(_WORD *)(a1 + 6) = -1;
  *(_WORD *)(a1 + 8) = 0;
  *(_WORD *)(a1 + 10) = 8;
  *(_DWORD *)(a1 + 28) = 0;
  *(_WORD *)(a1 + 32) = 0;
  v2 = off_1657C;
  *(_WORD *)(a1 + 34) = 0;
  *(_BYTE *)(a1 + 12) = 0;
  result = (*(int (__fastcall **)(int, _DWORD, int))(*(_DWORD *)((char *)v2 + 0xFFFFFFFC + 91476) + 4))(a1 + 14, 0, 6);
  *(_WORD *)(a1 + 22) = 0;
  *(_WORD *)(a1 + 20) = 0;
  return result;
}

