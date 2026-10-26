int __fastcall sub_21CCC(_DWORD *a1, int a2, char a3, int a4, int a5, int a6)
{
  char *v10; // r5

  v10 = (char *)off_21DE4 + 138476;
  (*(void (__fastcall **)(char *, int, char *, int))(*(_DWORD *)((char *)off_21DE4 + 0xFFFFFFFC + 138476) + 156))(
    off_21DF0 + 138516,
    4,
    off_21DEC[0] + 138504,
    dword_21DE8);
  (*(void (__fastcall **)(char *, int))(*(_DWORD *)&v10[-4] + 156))(off_21DF4 + 138540, a2);
  (*(void (__fastcall **)(char *, int, char *, int))(*(_DWORD *)&v10[-4] + 156))(
    off_21DFC + 138576,
    4,
    off_21DF8 + 138560,
    656);
  (*(void (__fastcall **)(char *, int))(*(_DWORD *)&v10[-4] + 156))(off_21E00 + 138600, a4);
  (*(void (__fastcall **)(char *, int, char *, int))(*(_DWORD *)&v10[-4] + 156))(
    off_21E0C + 138636,
    4,
    off_21E08[0] + 138624,
    dword_21E04);
  (*(void (__fastcall **)(char *, int))(*(_DWORD *)&v10[-4] + 156))(off_21E10 + 138660, a5);
  if ( a1 )
    *((_BYTE *)a1 + 212) = a3;
  *(_DWORD *)a1[68] = a2;
  *(_DWORD *)(a1[68] + 4) = a4;
  *(_DWORD *)(a1[68] + 8) = a5;
  *(_DWORD *)(a1[68] + 12) = a6;
  return (*(int (__fastcall **)(_DWORD, _DWORD))(*(_DWORD *)*a1 + 144))(*a1, a1[67]);
}

