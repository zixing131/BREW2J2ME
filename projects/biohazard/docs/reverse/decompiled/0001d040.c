int __fastcall sub_1D040(int a1, unsigned __int16 *a2)
{
  int result; // r0
  int v5; // r6
  __int16 v6[4]; // [sp+20h] [bp-8h] BYREF

  result = *(unsigned __int8 *)(a1 + 8);
  if ( result )
  {
    v5 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_1D160 + 0xFFFFFFFC + 118888) + 192))() + 40);
    v6[0] = *(_WORD *)a1;
    v6[1] = 50;
    v6[2] = 2000;
    v6[3] = 1000;
    sub_10C58((int)a2, 0, 50, (__int16)*a2, 0x14u, dword_1D168, dword_1D164, 0);
    sub_109D0((int)a2, 0, 50, (__int16)*a2, 0, dword_1D16C);
    sub_109D0((int)a2, 0, 70, (__int16)*a2, 0, dword_1D16C);
    return sub_98BC(*(_DWORD *)(v5 + 100), a2, 54, v6, *(_WORD **)(a1 + 12), 1, 2016, 0, v6[0], 0, 2, 0);
  }
  return result;
}

