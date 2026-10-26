int __fastcall sub_24EB4(_DWORD *a1, int a2, int a3, int a4)
{
  bool v4; // zf
  int v8; // r6
  int v9; // r0
  int v10; // r1
  _DWORD *v11; // [sp+0h] [bp-10h]
  int v12; // [sp+4h] [bp-Ch]

  v11 = a1;
  v12 = a2;
  v4 = a1 == 0;
  if ( a1 )
    v4 = a2 == 0;
  if ( v4 )
    return 1;
  v8 = sub_1058((int)a1, a1[56]);
  v9 = sub_14568(*(_DWORD *)(v8 + 12), 0x8000, *(_DWORD *)(a2 + 36));
  v10 = *(__int16 *)(a2 + 44);
  if ( v10 < v9 )
  {
    *(_DWORD *)(a2 + 8) = v9 - v10;
    if ( !*(_DWORD *)(a2 + 48) )
      sub_D4F8(a1, 0x8000, dword_24F94, 65280, *(_DWORD *)(a2 + 36), (_DWORD *)(a2 + 48));
    (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD, _DWORD *, _DWORD *, int, int, int))(*(_DWORD *)*a1 + 44))(
      *a1,
      *(_DWORD *)(a2 + 12),
      *(_DWORD *)(a2 + 52),
      a1,
      v11,
      v12,
      a3,
      a4);
  }
  else
  {
    *(_DWORD *)(a2 + 8) = 0;
  }
  sub_14594(*(_DWORD *)(v8 + 12));
  sub_1441C(
    *(_DWORD *)(v8 + 12),
    0x8000,
    *(_DWORD *)(a2 + 36),
    -1,
    *(__int16 *)(a2 + 40),
    *(__int16 *)(a2 + 42),
    a2 + 40,
    dword_24F98);
  return 0;
}

