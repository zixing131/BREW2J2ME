int __fastcall sub_11B3C(int a1)
{
  char *v2; // r6
  int v3; // r0
  _BYTE *v4; // r4
  int v5; // r0

  v2 = (char *)off_11C54 + 72528;
  v3 = (*(int (**)(void))(*(_DWORD *)((char *)off_11C54 + 0xFFFFFFFC + 72528) + 192))();
  v4 = (_BYTE *)(v3 + 100);
  *(_WORD *)(v3 + 100) = **(_WORD **)(a1 + 820) + 1;
  *(_WORD *)(v3 + 102) = **(_DWORD **)(a1 + 804);
  *(_WORD *)(v3 + 104) = **(_DWORD **)(a1 + 808);
  *(_WORD *)(v3 + 106) = **(_DWORD **)(a1 + 812);
  *(_DWORD *)(v3 + 108) = *(_DWORD *)(a1 + 28);
  *(_DWORD *)(v3 + 112) = **(_DWORD **)(a1 + 24);
  *(_DWORD *)(v3 + 116) = *(_DWORD *)(a1 + 36);
  v3 += 612;
  *(_WORD *)(v3 + 8) = *(_WORD *)(a1 + 802);
  *(_WORD *)(v3 + 10) = *(_WORD *)(a1 + 798);
  *(_WORD *)(v3 + 12) = *(_WORD *)(a1 + 540);
  *(_WORD *)(v3 + 14) = *(_WORD *)(a1 + 800);
  (**(void (__fastcall ***)(int, int, int))&v2[-4])((int)(v4 + 20), a1 + 40, 500);
  (**(void (__fastcall ***)(int, int, int))&v2[-4])((int)(v4 + 528), a1 + 542, 256);
  v4[784] = 1;
  v4[785] = *(_BYTE *)(a1 + 832);
  v4[786] = *(_BYTE *)(a1 + 833);
  v4[787] = *(_BYTE *)(a1 + 834);
  v5 = (*(int (**)(void))(*(_DWORD *)&v2[-4] + 192))();
  return sub_24190(v5, 2);
}

