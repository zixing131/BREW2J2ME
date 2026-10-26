BOOL __fastcall sub_66C90(_DWORD *a1)
{
  int v1; // r2

  if ( *a1 >= dword_1535B98 + dword_1535BA0 )
    return 1;
  v1 = a1[1];
  return v1 >= dword_1535B9C + dword_1535BA4 || *a1 + a1[2] <= dword_1535B98 || v1 + a1[3] <= dword_1535B9C;
}
