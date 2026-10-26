int __fastcall sub_145D4(int a1)
{
  int v3; // r4
  int v4; // r0
  char *v5; // r7
  int v6; // r0
  int v7; // r0

  if ( !a1 )
    return 1;
  v3 = sub_1058(a1, *(_DWORD *)(a1 + 224));
  sub_14AA0(a1);
  v4 = *(_DWORD *)(v3 + 12);
  if ( v4 )
  {
    sub_142FC(v4);
    *(_DWORD *)(v3 + 12) = 0;
  }
  sub_255C4(a1);
  v5 = (char *)off_14738 + 83496;
  if ( *(_DWORD *)(v3 + 16) )
  {
    (*(void (**)(void))(*(_DWORD *)&v5[-4] + 108))();
    *(_DWORD *)(v3 + 16) = 0;
  }
  if ( *(_DWORD *)(v3 + 32) )
  {
    (*(void (**)(void))(*(_DWORD *)&v5[-4] + 108))();
    *(_DWORD *)(v3 + 32) = 0;
  }
  if ( *(_DWORD *)(v3 + 132) )
  {
    (*(void (**)(void))(*(_DWORD *)&v5[-4] + 108))();
    *(_DWORD *)(v3 + 132) = 0;
  }
  v6 = *(_DWORD *)(v3 + 68);
  if ( v6 )
  {
    if ( *(_BYTE *)(v3 + 72) )
      (*(void (**)(void))(*(_DWORD *)&v5[-4] + 188))();
    else
      sub_142FC(v6);
    *(_DWORD *)(v3 + 68) = 0;
  }
  if ( *(_DWORD *)(v3 + 380) )
  {
    (*(void (**)(void))(*(_DWORD *)&v5[-4] + 108))();
    *(_DWORD *)(v3 + 380) = 0;
  }
  if ( *(_DWORD *)(v3 + 376) )
  {
    (*(void (**)(void))(*(_DWORD *)&v5[-4] + 108))();
    *(_DWORD *)(v3 + 376) = 0;
  }
  if ( *(_DWORD *)(v3 + 212) )
  {
    (*(void (**)(void))(*(_DWORD *)&v5[-4] + 108))();
    *(_DWORD *)(v3 + 212) = 0;
  }
  v7 = *(_DWORD *)(v3 + 136);
  if ( v7 )
  {
    sub_142FC(v7);
    *(_DWORD *)(v3 + 136) = 0;
  }
  (*(void (__fastcall **)(int))(*(_DWORD *)&v5[-4] + 108))(v3);
  (*(void (__fastcall **)(int))(*(_DWORD *)&v5[-4] + 108))(a1);
  return 0;
}

