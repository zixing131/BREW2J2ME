int __fastcall sub_18170(int a1, int a2)
{
  char *v3; // r5
  int v5; // r0
  int v6; // r0

  v3 = (char *)off_18228 + 98696;
  if ( *(_BYTE *)(a1 + 390) == 1 )
  {
    sub_11A24(a2);
    *(_DWORD *)(a2 + 1884) = 5;
    v5 = (*(int (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 104))(568);
    *(_DWORD *)(a2 + 1888) = v5;
    sub_16B18(v5);
    sub_17200(*(_DWORD *)(a2 + 1888), a2, 0);
  }
  else if ( *(_WORD *)(a1 + 562) == 4 )
  {
    sub_11A24(a2);
    *(_DWORD *)(a2 + 1884) = 4;
    v6 = (*(int (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 104))(404);
    *(_DWORD *)(a2 + 1888) = v6;
    sub_16B18(v6);
    sub_17790(*(_DWORD *)(a2 + 1888), a2);
  }
  return 1;
}

