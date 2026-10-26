int __fastcall sub_24574(_DWORD *a1)
{
  int v2; // r5
  char *v3; // r7
  int v4; // r4
  int v6; // r8
  int v7; // [sp+14h] [bp-8h] BYREF
  int v8; // [sp+18h] [bp-4h] BYREF

  v2 = sub_1058((int)a1, a1[56]);
  v3 = (char *)off_24984 + 148892;
  if ( !*(_DWORD *)(v2 + 212) )
    *(_DWORD *)(v2 + 212) = (*(int (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 104))(512);
  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 104))(512);
  if ( !*(_DWORD *)(v2 + 212) )
  {
    if ( v4 )
      (*(void (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 108))(v4);
    return 2;
  }
  if ( !v4 )
  {
    (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
    *(_DWORD *)(v2 + 212) = 0;
    return 2;
  }
  (*(void (**)(void))(*(_DWORD *)&v3[-4] + 332))();
  (*(void (__fastcall **)(_DWORD, char *, int))(*(_DWORD *)&v3[-4] + 336))(
    *(_DWORD *)(v2 + 212),
    off_2498C + 149064,
    512);
  (*(void (__fastcall **)(_DWORD, char *, int))(*(_DWORD *)&v3[-4] + 336))(
    *(_DWORD *)(v2 + 212),
    off_24990 + 149092,
    512);
  (*(void (__fastcall **)(int, int, char *, char *, _DWORD, _DWORD, _DWORD, int))(*(_DWORD *)&v3[-4] + 324))(
    v4,
    512,
    off_24998 + 149136,
    off_24994 + 149128,
    a1[69],
    a1[92],
    a1[93],
    1);
  (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)&v3[-4] + 336))(*(_DWORD *)(v2 + 212), v4, 512);
  (*(void (__fastcall **)(int, int, char *, _DWORD, _DWORD *))(*(_DWORD *)&v3[-4] + 324))(
    v4,
    512,
    off_2499C[0] + 149200,
    a1[16],
    a1 + 18);
  (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)&v3[-4] + 336))(*(_DWORD *)(v2 + 212), v4, 512);
  v8 = 2 * (*(int (**)(void))(*(_DWORD *)&v3[-4] + 48))();
  v7 = 512;
  (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)&v3[-4] + 4))(v4, 0, 512);
  (*(void (__fastcall **)(_DWORD, _DWORD *, int *, int, int *))(**(_DWORD **)(v2 + 136) + 20))(
    *(_DWORD *)(v2 + 136),
    a1 + 95,
    &v8,
    v4,
    &v7);
  (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)&v3[-4] + 336))(*(_DWORD *)(v2 + 212), v4, 512);
  (*(void (__fastcall **)(int, int, char *, _DWORD))(*(_DWORD *)&v3[-4] + 324))(v4, 512, off_249A0 + 149376, a1[70]);
  (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)&v3[-4] + 336))(*(_DWORD *)(v2 + 212), v4, 512);
  (*(void (__fastcall **)(_DWORD, char *, int))(*(_DWORD *)&v3[-4] + 336))(
    *(_DWORD *)(v2 + 212),
    off_249A4 + 149440,
    512);
  v8 = 2 * (*(int (**)(void))(*(_DWORD *)&v3[-4] + 48))();
  v7 = 512;
  (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)&v3[-4] + 4))(v4, 0, 512);
  (*(void (__fastcall **)(_DWORD, _DWORD *, int *, int, int *))(**(_DWORD **)(v2 + 136) + 20))(
    *(_DWORD *)(v2 + 136),
    a1 + 71,
    &v8,
    v4,
    &v7);
  (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)&v3[-4] + 336))(*(_DWORD *)(v2 + 212), v4, 512);
  (*(void (__fastcall **)(int, int, char *, _DWORD))(*(_DWORD *)&v3[-4] + 324))(v4, 512, off_249A8 + 149580, a1[94]);
  (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)&v3[-4] + 336))(*(_DWORD *)(v2 + 212), v4, 512);
  (*(void (__fastcall **)(int, int, char *, _DWORD))(*(_DWORD *)&v3[-4] + 324))(
    v4,
    512,
    off_249AC[0] + 149636,
    *(_DWORD *)(v2 + 28));
  (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)&v3[-4] + 336))(*(_DWORD *)(v2 + 212), v4, 512);
  (*(void (__fastcall **)(_DWORD, char *, int))(*(_DWORD *)&v3[-4] + 336))(
    *(_DWORD *)(v2 + 212),
    off_249B0 + 149700,
    512);
  v8 = 2 * (*(int (**)(void))(*(_DWORD *)&v3[-4] + 48))();
  v7 = 512;
  (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)&v3[-4] + 4))(v4, 0, 512);
  (*(void (__fastcall **)(_DWORD, _DWORD *, int *, int, int *))(**(_DWORD **)(v2 + 136) + 20))(
    *(_DWORD *)(v2 + 136),
    a1 + 23,
    &v8,
    v4,
    &v7);
  (*(void (__fastcall **)(_DWORD, int, int))(*(_DWORD *)&v3[-4] + 336))(*(_DWORD *)(v2 + 212), v4, 512);
  v6 = sub_26170(a1);
  *(_DWORD *)(v2 + 392) = 0;
  if ( !v6 )
  {
    v6 = sub_26E2C(a1, *(_DWORD *)(v2 + 212), 0);
    if ( v6 )
      sub_26C90(a1);
  }
  (*(void (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 108))(v4);
  return v6;
}

