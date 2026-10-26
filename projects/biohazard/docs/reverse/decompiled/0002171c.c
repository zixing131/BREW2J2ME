int __fastcall sub_2171C(__int16 *a1, int a2, int a3, int a4)
{
  int v5; // r5
  char *v6; // r6
  bool v7; // zf
  void (__fastcall *v8)(int); // r1
  void (__fastcall *v9)(int); // r1
  int v11; // [sp+14h] [bp-Ch] BYREF
  int v12; // [sp+18h] [bp-8h] BYREF
  int v13; // [sp+1Ch] [bp-4h] BYREF

  v11 = a2;
  v12 = a3;
  v13 = a4;
  v5 = sub_1058((int)a1, *((_DWORD *)a1 + 56));
  sub_615C((int)a1, dword_21874, a1 + 118, &v11, &v12, &v13, dword_21870);
  v6 = (char *)off_21878 + 137064;
  switch ( (unsigned __int16)v11 )
  {
    case 2u:
      sub_1837C((int)a1, (_DWORD *)a1 + 54);
      (*(void (__fastcall **)(_DWORD, char *, __int16 *))(**(_DWORD **)a1 + 48))(*(_DWORD *)a1, v6, a1);
      break;
    case 3u:
      sub_182E8((int)a1, *((_DWORD *)a1 + 54));
      (*(void (__fastcall **)(_DWORD, int, char *, __int16 *))(**(_DWORD **)a1 + 44))(*(_DWORD *)a1, 250, v6, a1);
      break;
    case 0x100u:
      v7 = (unsigned __int16)v12 == 57392;
      if ( (unsigned __int16)v12 != 57392 )
        v7 = (unsigned __int16)v12 == 57399;
      if ( !v7 )
        return 0;
      sub_21CCC(a1, off_2187C, 0);
      v8 = *(void (__fastcall **)(int))(v5 + 156);
      if ( v8 )
        v8(v5 + 148);
      v9 = *(void (__fastcall **)(int))(v5 + 184);
      if ( v9 )
        v9(v5 + 176);
      (*(void (__fastcall **)(_DWORD, char *, __int16 *, _DWORD, _DWORD, _DWORD))(**(_DWORD **)a1 + 48))(
        *(_DWORD *)a1,
        (char *)off_21880 + 137200,
        a1,
        *(_DWORD *)(**(_DWORD **)a1 + 48),
        0,
        0);
      (*(void (__fastcall **)(_DWORD, char *, __int16 *))(**(_DWORD **)a1 + 48))(*(_DWORD *)a1, v6, a1);
      break;
    default:
      return 0;
  }
  return 1;
}

