int __fastcall sub_1D710(int a1)
{
  char *v3; // r6
  int v4; // r5
  int v5; // r0

  if ( *(_DWORD *)(a1 + 316) != 5 )
    return 0;
  v3 = (char *)off_1D770 + 120628;
  v4 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_1D770 + 0xFFFFFFFC + 120628) + 192))() + 36);
  v5 = (*(int (**)(void))(*(_DWORD *)&v3[-4] + 192))();
  sub_1AD24(a1, *(unsigned __int16 **)(v5 + 32), v4);
  return 1;
}

