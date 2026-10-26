int __fastcall sub_22CA4(_DWORD *a1)
{
  int v2; // r0
  char *v3; // r5
  int v4; // r0
  int v5; // r0

  v2 = a1[1];
  v3 = (char *)off_22D30 + 142524;
  if ( v2 )
    (*(void (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 108))(v2);
  v4 = a1[10];
  if ( v4 )
    (*(void (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 108))(v4);
  v5 = a1[11];
  if ( v5 )
    (*(void (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 108))(v5);
  (*(void (__fastcall **)(_DWORD *, _DWORD, int))(*(_DWORD *)&v3[-4] + 4))(a1, 0, 52);
  return (*(int (__fastcall **)(_DWORD *))(*(_DWORD *)&v3[-4] + 108))(a1);
}

