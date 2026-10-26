int __fastcall sub_24D28(int a1, unsigned int a2, int a3)
{
  int v3; // r3

  v3 = *(_DWORD *)(a1 + 56);
  if ( *(unsigned __int16 *)(v3 + 8) <= a2 )
    return 0;
  *(_WORD *)(a1 + 72) = a2;
  *(_DWORD *)(a1 + 68) = *(_DWORD *)v3 + 24 * a2;
  *(_WORD *)(a1 + 74) = 0;
  *(_WORD *)(a1 + 60) = 1;
  *(_DWORD *)(a1 + 76) = a3;
  *(_BYTE *)(a1 + 80) = 0;
  *(_BYTE *)(a1 + 81) = 0;
  *(_WORD *)(a1 + 62) = 0;
  *(_BYTE *)(a1 + 5) = 0;
  return 1;
}

