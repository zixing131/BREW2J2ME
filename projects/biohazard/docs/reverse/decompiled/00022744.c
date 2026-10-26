int __fastcall sub_22744(int a1)
{
  int result; // r0
  char *v3; // r5

  sub_22700(a1);
  sub_22680(a1 + 2064);
  result = *(_DWORD *)(a1 + 2200);
  if ( result )
  {
    v3 = (char *)off_2286C + 141172;
    if ( *(_DWORD *)(result + 28) )
      (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
    if ( *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 32) )
      (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
    if ( *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 36) )
      (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
    if ( *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 40) )
      (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
    if ( *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 48) )
      (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
    if ( *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 56) )
      (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
    if ( *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 64) )
      (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
    if ( *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 72) )
      (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v3[-4] + 108))(*(_DWORD *)(a1 + 2200));
    *(_DWORD *)(a1 + 2200) = 0;
    return 0;
  }
  return result;
}

