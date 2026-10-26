int __fastcall sub_22354(int a1, int a2, int a3, int a4)
{
  int v6; // r5
  int v7; // [sp+4h] [bp-8h] BYREF
  int v8; // [sp+8h] [bp-4h]

  v7 = a3;
  v8 = a4;
  if ( !*(_DWORD *)(a1 + 20) )
    return 7;
  v7 = 0;
  v8 = 65537;
  v6 = dword_223CC;
  sub_1453C(*(_DWORD *)(a1 + 32), (int)&v7, dword_223CC);
  LOWORD(v7) = *(_WORD *)a1 - 1;
  HIWORD(v7) = *(_WORD *)(a1 + 2) - 1;
  sub_1453C(*(_DWORD *)(a1 + 32), (int)&v7, v6);
  return 0;
}

