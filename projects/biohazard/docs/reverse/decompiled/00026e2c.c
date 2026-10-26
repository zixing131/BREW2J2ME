int __fastcall sub_26E2C(int a1, int a2, char a3)
{
  int v5; // r4
  char *v7; // r6
  int v8; // r0
  int (*v9)(); // r0
  int v10; // r1

  v5 = sub_1058(a1, *(_DWORD *)(a1 + 224));
  if ( !*(_DWORD *)(v5 + 140) )
    return 3;
  v7 = (char *)off_26F30 + 159332;
  if ( !*(_DWORD *)(v5 + 380) )
  {
    v8 = (*(int (__fastcall **)(int))(*(_DWORD *)&v7[-4] + 104))(2000);
    *(_DWORD *)(v5 + 380) = v8;
    if ( !v8 )
      return 2;
  }
  (*(void (**)(void))(*(_DWORD *)&v7[-4] + 324))();
  *(_DWORD *)(v5 + 164) = (char *)off_26F38 + 159416;
  *(_DWORD *)(v5 + 168) = a1;
  v9 = off_26F40;
  v10 = dword_26F3C;
  *(_BYTE *)(v5 + 208) = a3;
  (*(void (__fastcall **)(_DWORD, int, int, _DWORD, int, int, int, int, int, char *, int, int, int, int, _DWORD))(**(_DWORD **)(v5 + 140) + 24))(
    *(_DWORD *)(v5 + 140),
    v5 + 144,
    v5 + 148,
    *(_DWORD *)(v5 + 212),
    dword_26F48 + 0x10000,
    a1,
    dword_26F48,
    v5 + 216,
    v10 + 3,
    (char *)off_26F44 + 159468,
    v10 + 2,
    (int)v9 + 159448,
    v10,
    16,
    0);
  return 0;
}

