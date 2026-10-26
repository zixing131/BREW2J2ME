__int64 __fastcall sub_223D0(__int64 a1, int a2, int a3)
{
  _DWORD *v3; // r4
  int v4; // r6
  unsigned int i; // r5
  __int16 v6; // r0
  unsigned int v7; // r0
  __int64 v9; // [sp+0h] [bp-10h] BYREF
  int v10; // [sp+8h] [bp-8h] BYREF
  int v11; // [sp+Ch] [bp-4h]

  v9 = a1;
  v10 = a2;
  v11 = a3;
  v3 = (_DWORD *)a1;
  v4 = sub_1058(a1, *(_DWORD *)(a1 + 224));
  if ( sub_14A90((int)v3) )
  {
    sub_144D0(*(_DWORD *)(v4 + 12), (int)(v3 + 61), -256);
    LOWORD(v10) = *((_WORD *)v3 + 122) + 1;
    HIWORD(v10) = *((_WORD *)v3 + 123) + 1;
    LOWORD(v11) = *((_WORD *)v3 + 124) - 2;
    HIWORD(v11) = *((_WORD *)v3 + 125) - 2;
    sub_144D0(*(_DWORD *)(v4 + 12), (int)&v10, dword_22500);
    for ( i = 0; v3[57] > i; ++i )
    {
      v6 = sub_1DC(v3[58], i * (__int16)v11);
      LOWORD(v9) = v6 + v10;
      WORD1(v9) = HIWORD(v10);
      WORD2(v9) = sub_1DC(v3[58], (__int16)v11) - 1;
      HIWORD(v9) = HIWORD(v11);
      sub_144D0(*(_DWORD *)(v4 + 12), (int)&v9, 0);
    }
    v7 = v3[57] + 1;
    v3[57] = v7;
    if ( v7 > v3[58] )
      v3[57] = 0;
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(v4 + 12) + 28))(*(_DWORD *)(v4 + 12), 1);
    (*(void (__fastcall **)(_DWORD, int, char *, _DWORD *))(*(_DWORD *)*v3 + 44))(
      *v3,
      250,
      (char *)off_22504 + 140532,
      v3);
  }
  return v9;
}

