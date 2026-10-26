int __fastcall sub_26D18(int *a1)
{
  int v2; // r4
  int v3; // r1
  int result; // r0
  int (*v5)(); // r0
  int v6; // r1

  v2 = sub_1058((int)a1, a1[56]);
  v3 = *(_DWORD *)(v2 + 392) + 1;
  *(_DWORD *)(v2 + 392) = v3;
  if ( *(_BYTE *)(v2 + 396) )
  {
    *(_BYTE *)(v2 + 396) = 0;
  }
  else if ( v3 >= 4 )
  {
    sub_25F94(a1);
    return sub_21CCC(a1, (int)off_26E14, 0, 0, 0, 0);
  }
  sub_26C90(a1);
  result = sub_26170(a1);
  if ( !result )
  {
    *(_DWORD *)(v2 + 164) = (char *)off_26E18 + 159144;
    v5 = off_26E20;
    v6 = dword_26E1C;
    *(_DWORD *)(v2 + 168) = a1;
    return (*(int (__fastcall **)(_DWORD, int, int, _DWORD, int, int *, int, int, int, char *, int, int, int, int, _DWORD))(**(_DWORD **)(v2 + 140) + 24))(
             *(_DWORD *)(v2 + 140),
             v2 + 144,
             v2 + 148,
             *(_DWORD *)(v2 + 212),
             dword_26E28 + 0x10000,
             a1,
             dword_26E28,
             v2 + 216,
             v6 + 3,
             (char *)off_26E24 + 159192,
             v6 + 2,
             (int)v5 + 159172,
             v6,
             16,
             0);
  }
  return result;
}

