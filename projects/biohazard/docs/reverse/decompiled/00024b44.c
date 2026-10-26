int __fastcall sub_24B44(int *a1, int a2, int a3)
{
  int v6; // r4
  int result; // r0
  _DWORD v8[12]; // [sp+4h] [bp-30h] BYREF

  v6 = sub_1058((int)a1, a1[56]);
  if ( *(_DWORD *)(v6 + 404)
    || (result = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)*a1 + 8))(*a1, dword_24C24, v6 + 404)) == 0 )
  {
    v8[0] = 0x10000;
    v8[1] = a2;
    v8[2] = 65537;
    v8[3] = a3;
    v8[4] = dword_24C28;
    v8[5] = 3;
    v8[6] = dword_24C2C;
    v8[7] = 2;
    v8[8] = 0;
    (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(v6 + 404) + 12))(*(_DWORD *)(v6 + 404), v8);
    (*(void (__fastcall **)(_DWORD, _DWORD, int, int))(**(_DWORD **)(v6 + 400) + 12))(
      *(_DWORD *)(v6 + 400),
      *(_DWORD *)(v6 + 404),
      v6 + 412,
      v6 + 408);
    return (*(int (__fastcall **)(int, int, char *, int *))(*(_DWORD *)*a1 + 44))(
             *a1,
             dword_24C34,
             (char *)off_24C30 + 150548,
             a1);
  }
  return result;
}

