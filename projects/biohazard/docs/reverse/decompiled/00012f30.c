int __fastcall sub_12F30(int a1, int a2, int a3)
{
  unsigned int v6; // r3
  unsigned __int8 *v7; // r1
  int v8; // r0
  int v9; // r3
  int v10; // r3
  __int16 v11; // r2
  _WORD v13[6]; // [sp+4h] [bp-14h] BYREF
  char v14; // [sp+10h] [bp-8h]
  char v15; // [sp+11h] [bp-7h]
  unsigned __int8 v16; // [sp+12h] [bp-6h]
  char v17; // [sp+13h] [bp-5h]
  char v18; // [sp+14h] [bp-4h]
  char v19; // [sp+15h] [bp-3h]

  (*(void (__fastcall **)(_WORD *, _DWORD, int))(*(_DWORD *)((char *)off_130A0 + 0xFFFFFFFC + 77648) + 4))(v13, 0, 18);
  if ( *(__int16 *)(a2 + 540) > a3 )
  {
    v7 = (unsigned __int8 *)(a2 + 8 * a3);
    v8 = 9 * v7[543];
    v9 = *(_DWORD *)(a2 + 16) + 72 * v7[543];
    v13[0] = *(_WORD *)(v9 + 54) + *(_WORD *)(v9 + 4) * v7[544];
    v13[1] = *(_WORD *)(*(_DWORD *)(a2 + 16) + 8 * v8 + 56) + *(_WORD *)(*(_DWORD *)(a2 + 16) + 8 * v8 + 12) * v7[546];
    v13[2] = *(_WORD *)(*(_DWORD *)(a2 + 16) + 8 * v8 + 58) + *(_WORD *)(*(_DWORD *)(a2 + 16) + 8 * v8 + 20) * v7[545];
    v13[3] = *(_WORD *)(*(_DWORD *)(a2 + 16) + 8 * v8 + 60) + *(_WORD *)(*(_DWORD *)(a2 + 16) + 8 * v8 + 28) * v7[545];
    v13[4] = *(_WORD *)(*(_DWORD *)(a2 + 16) + 8 * v8 + 62) + *(_WORD *)(*(_DWORD *)(a2 + 16) + 8 * v8 + 36) * v7[547];
    v10 = *(_DWORD *)(a2 + 16) + 8 * v8;
    v11 = *(_WORD *)(v10 + 64);
    v6 = *(unsigned __int16 *)(v10 + 44);
    v13[5] = v11 + v6 * v7[548];
    v14 = *(_BYTE *)(*(_DWORD *)(a2 + 16) + 8 * v8 + 66);
    v15 = *(_BYTE *)(*(_DWORD *)(a2 + 16) + 8 * v8 + 67);
    v16 = v7[549];
    v17 = *(_BYTE *)(*(_DWORD *)(a2 + 16) + 8 * v8 + 68);
    v18 = *(_BYTE *)(*(_DWORD *)(a2 + 16) + 8 * v8 + 69);
    v19 = *(_WORD *)(*(_DWORD *)(a2 + 16) + 8 * v8 + 70);
  }
  return sub_4C(a1, (char *)v13, 0x12u, v6);
}

