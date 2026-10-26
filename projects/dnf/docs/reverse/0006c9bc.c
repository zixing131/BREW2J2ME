int __fastcall sub_6C9BC(int a1, int a2, char a3, char a4)
{
  int v4; // r4
  char v5; // r3
  int savedregs_8; // [sp+8h] [bp+8h]

  *(_BYTE *)(a2 + 4) = a3;
  *(_BYTE *)a2 = a4;
  v4 = *(unsigned __int8 *)(a2 + 4);
  *(_BYTE *)(a2 + 5) = 0;
  *(_BYTE *)(a2 + 1) = 0;
  *(_WORD *)(a2 + 8) = 0;
  *(_WORD *)(a2 + 10) = 0;
  v5 = **(_BYTE **)(36 * v4 + *(_DWORD *)(a1 + 24) + 32);
  *(_BYTE *)(a2 + 2) = 0;
  *(_BYTE *)(a2 + 13) = 0;
  *(_BYTE *)(a2 + 3) = v5;
  *(_BYTE *)(a2 + 7) = *(_BYTE *)(36 * v4 + *(_DWORD *)(a1 + 24) + 1);
  *(_BYTE *)(a2 + 6) = *(_BYTE *)(36 * v4 + *(_DWORD *)(a1 + 24));
  return savedregs_8;
}
