int __fastcall sub_14AA0(_DWORD *a1)
{
  char *v2; // r7
  char *v3; // r8
  char *v4; // r9
  int v6; // r5
  void (__fastcall *v7)(int); // r1

  v2 = (char *)off_14BA8 + 84660;
  v3 = off_14BB0 + 84680;
  v4 = off_14BB4[0] + 84696;
  (*(void (__fastcall **)(char *, int, char *, int))(*(_DWORD *)((char *)off_14BA8 + 0xFFFFFFFC + 84660) + 156))(
    off_14BB4[0] + 84696,
    4,
    off_14BB0 + 84680,
    dword_14BAC);
  (*(void (__fastcall **)(char *))(*(_DWORD *)&v2[-4] + 156))(off_14BB8 + 84720);
  if ( !a1 )
    return 1;
  v6 = sub_1058((int)a1, a1[56]);
  sub_24F9C(a1);
  sub_24E5C(a1, v6 + 76);
  (*(void (__fastcall **)(_DWORD, char *, _DWORD *))(*(_DWORD *)*a1 + 48))(*a1, (char *)off_14BBC + 84804, a1);
  v7 = *(void (__fastcall **)(int))(v6 + 44);
  if ( v7 )
    v7(v6 + 36);
  sub_2408C(a1);
  sub_25F94(a1);
  *((_BYTE *)a1 + 212) = 0;
  *((_BYTE *)a1 + 213) = 0;
  (*(void (__fastcall **)(char *, int, char *, int))(*(_DWORD *)&v2[-4] + 156))(v4, 4, v3, dword_14BC0);
  (*(void (__fastcall **)(char *))(*(_DWORD *)&v2[-4] + 156))(off_14BC4 + 84896);
  return 0;
}

