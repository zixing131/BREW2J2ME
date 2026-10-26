int __fastcall sub_167E4(int a1, int a2)
{
  int (*v3)(); // r0
  int result; // r0

  *(_DWORD *)(a1 + 64) = a2;
  *(_DWORD *)(a1 + 68) = 0;
  *(_DWORD *)(a1 + 56) = 0;
  *(_WORD *)(a1 + 72) = -1;
  *(_WORD *)(a1 + 74) = -1;
  *(_WORD *)(a1 + 60) = 0;
  v3 = off_1685C;
  *(_WORD *)(a1 + 62) = 0;
  *(_BYTE *)(a1 + 5) = 0;
  result = *(_DWORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)v3 + 0xFFFFFFFC + 92192) + 192))() + 1888)
                     + 400)
         + 40;
  *(_DWORD *)(a1 + 52) = result;
  *(_DWORD *)(a1 + 8) = 0;
  *(_DWORD *)(a1 + 12) = 0;
  *(_WORD *)(a1 + 40) = 0;
  *(_WORD *)a1 = 0;
  *(_WORD *)(a1 + 2) = 0;
  *(_BYTE *)(a1 + 4) = 0;
  return result;
}

