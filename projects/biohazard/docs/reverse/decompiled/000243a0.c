int __fastcall sub_243A0(int a1)
{
  int *v2; // r4
  char *v3; // r8
  int v4; // r5
  int v6; // r0
  int v7; // r7
  _BYTE v8[8]; // [sp+Ch] [bp-8h] BYREF

  v2 = (int *)sub_1058(a1, *(_DWORD *)(a1 + 224));
  v3 = (char *)off_2455C + 148424;
  if ( !v2[53] )
    v2[53] = (*(int (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 104))(512);
  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 104))(512);
  if ( !v2[53] )
  {
    if ( v4 )
      (*(void (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 108))(v4);
    return 2;
  }
  if ( !v4 )
  {
    (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
    v2[53] = 0;
    return 2;
  }
  (*(void (**)(void))(*(_DWORD *)&v3[-4] + 332))();
  (*(void (__fastcall **)(int, char *, int))(*(_DWORD *)&v3[-4] + 336))(v2[53], off_24564 + 148596, 512);
  (*(void (__fastcall **)(int, char *, int))(*(_DWORD *)&v3[-4] + 336))(v2[53], off_24568[0] + 148624, 512);
  v8[0] = 0;
  (*(void (__fastcall **)(_BYTE *, _DWORD, int))(*(_DWORD *)&v3[-4] + 4))(v8, 0, 5);
  v6 = sub_14DE4(*v2);
  (*(void (__fastcall **)(int, _BYTE *, int))(*(_DWORD *)&v3[-4] + 68))(v6, v8, 5);
  (*(void (__fastcall **)(int, int, char *, char *, _BYTE *, int))(*(_DWORD *)&v3[-4] + 324))(
    v4,
    512,
    off_24570 + 148720,
    off_2456C[0] + 148712,
    v8,
    v2[4] + 8);
  (*(void (__fastcall **)(int, int, int))(*(_DWORD *)&v3[-4] + 336))(v2[53], v4, 512);
  v7 = sub_26170(a1);
  v2[98] = 0;
  if ( !v7 )
  {
    v7 = sub_26E2C(a1, v2[53], 0);
    if ( v7 )
      sub_26C90(a1);
  }
  (*(void (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 108))(v4);
  return v7;
}

