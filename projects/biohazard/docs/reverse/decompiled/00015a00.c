int __fastcall sub_15A00(int a1)
{
  __int16 *v2; // r5
  int v3; // r0
  int v4; // r1
  int result; // r0

  v2 = *(__int16 **)((*(int (**)(void))(*(_DWORD *)((char *)off_15AD8 + 0xFFFFFFFC + 88596) + 192))() + 32);
  sub_602C(a1);
  sub_16580(a1);
  *(_WORD *)(a1 + 158) = 1;
  *(_DWORD *)(a1 + 16) = -1;
  *(_DWORD *)(a1 + 128) = -1;
  *(_WORD *)(a1 + 144) = 32;
  *(_WORD *)(a1 + 288) = 16;
  *(_WORD *)(a1 + 118) = 0;
  *(_WORD *)(a1 + 120) = 0;
  *(_WORD *)(a1 + 146) = 0;
  *(_WORD *)(a1 + 148) = 58;
  v3 = *v2;
  *(_WORD *)(a1 + 150) = v3;
  *(_WORD *)(a1 + 152) = 16 * (((unsigned __int16)v2[1] - 85) / 16) + 2;
  sub_104(0xEu, v3 - 32);
  *(_WORD *)(a1 + 154) = v4 / 2 + 16;
  *(_WORD *)(a1 + 156) = 1;
  *(_WORD *)(a1 + 290) = 0;
  result = dword_15ADC;
  *(_BYTE *)(a1 + 292) = 1;
  *(_WORD *)(a1 + 142) = result;
  *(_WORD *)(a1 + 302) = 0;
  return result;
}

