int __fastcall sub_249B4(int a1)
{
  int v2; // r4
  char *v3; // r8
  int v4; // r5
  int v6; // r7

  v2 = sub_1058(a1, *(_DWORD *)(a1 + 224));
  v3 = (char *)off_24B2C + 149976;
  if ( !*(_DWORD *)(v2 + 212) )
    *(_DWORD *)(v2 + 212) = (*(int (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 104))(512);
  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 104))(512);
  if ( !*(_DWORD *)(v2 + 212) )
  {
    if ( v4 )
      (*(void (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 108))(v4);
    return 2;
  }
  if ( !v4 )
  {
    (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
    *(_DWORD *)(v2 + 212) = 0;
    return 2;
  }
  (*(void (**)(void))(*(_DWORD *)&v3[-4] + 332))();
  (*(void (__fastcall **)(_DWORD, char *, int))(*(_DWORD *)&v3[-4] + 336))(
    *(_DWORD *)(v2 + 212),
    off_24B34 + 150144,
    512);
  (*(void (__fastcall **)(_DWORD, char *, int))(*(_DWORD *)&v3[-4] + 336))(
    *(_DWORD *)(v2 + 212),
    off_24B38 + 150172,
    512);
  (*(void (__fastcall **)(int, int, char *, char *))(*(_DWORD *)&v3[-4] + 324))(
    v4,
    512,
    off_24B40 + 150208,
    off_24B3C + 150200);
  (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)&v3[-4] + 336))(*(_DWORD *)(v2 + 212), v4, 512);
  v6 = sub_26170(a1);
  *(_DWORD *)(v2 + 392) = 0;
  if ( !v6 )
  {
    v6 = sub_26E2C(a1, *(_DWORD *)(v2 + 212), 0);
    if ( v6 )
      sub_26C90(a1);
  }
  (*(void (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 108))(v4);
  return v6;
}

