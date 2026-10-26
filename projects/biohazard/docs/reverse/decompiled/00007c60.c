int __fastcall sub_7C60(int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  char *v10; // r8
  int v11; // r4
  int result; // r0
  int v13; // r6
  int v14; // r0
  int v15; // r0
  __int16 v16; // r1
  _WORD v17[4]; // [sp+24h] [bp-8h] BYREF

  v10 = (char *)off_7DE8 + 31872;
  v11 = a7;
  result = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_7DE8 + 0xFFFFFFFC + 31872) + 192))() + 40);
  v13 = *(_DWORD *)(result + 100);
  if ( a4 )
  {
    (*(void (__fastcall **)(_WORD *, _DWORD, int))(*(_DWORD *)&v10[-4] + 4))(v17, 0, 8);
    v17[2] = a6;
    v14 = (__int16)(((unsigned int)sub_98BC(v13, a2, v17[1], v17, a4, 0, 0, 0, v17[0], 0, 1, v11) >> 16) + 12);
    if ( SHIWORD(a6) <= v14 )
    {
      v15 = sub_104(v11 + 12, SHIWORD(a6) + v14);
      sub_1DC(v15 + 1, *(_DWORD *)(a1 + 320) >> 3);
      return sub_98BC(
               v13,
               a2,
               (__int16)(HIWORD(a5) + HIWORD(a6) - v11 - 12 - (v11 + 12) * v16 + 1),
               &a5,
               a4,
               0,
               0,
               0,
               (__int16)a5,
               0,
               1,
               v11);
    }
    else
    {
      return sub_98BC(v13, a2, (__int16)(HIWORD(a5) + 1), &a5, a4, 0, 0, 0, (__int16)a5, 0, 1, v11);
    }
  }
  return result;
}

