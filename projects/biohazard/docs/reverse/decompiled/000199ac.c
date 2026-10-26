__int64 __fastcall sub_199AC(__int64 a1, unsigned int a2, int a3)
{
  int v3; // r4
  bool v5; // zf
  int v6; // r0
  int v7; // r0
  int v8; // r3
  int v9; // r0
  __int64 v11; // [sp+0h] [bp-10h] BYREF
  unsigned int v12; // [sp+8h] [bp-8h]
  int v13; // [sp+Ch] [bp-4h] BYREF

  v11 = a1;
  v12 = a2;
  v13 = a3;
  v3 = HIDWORD(a1);
  v5 = *(_BYTE *)(HIDWORD(a1) + 89) == 0;
  if ( *(_BYTE *)(HIDWORD(a1) + 89) )
    v5 = *(_BYTE *)(HIDWORD(a1) + 62) == 1;
  if ( !v5 && (*(_DWORD *)(HIDWORD(a1) + 84) != a2 || !*(_BYTE *)(HIDWORD(a1) + 80)) )
  {
    v6 = *(_DWORD *)(HIDWORD(a1) + 68);
    if ( v6 )
      sub_145C8(v6);
    *(_BYTE *)(v3 + 80) = 0;
    v7 = *(_DWORD *)(v3 + 68);
    if ( v7 )
    {
      sub_145BC(v7);
      *(_DWORD *)(v3 + 68) = 0;
    }
    if ( *(_DWORD *)(v3 + 72) )
    {
      (*(void (**)(void))(*(_DWORD *)((char *)off_19AF0 + 0xFFFFFFFC + 104996) + 108))();
      *(_DWORD *)(v3 + 72) = 0;
    }
    if ( (*(int (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(v3 + 12) + 8))(
           *(_DWORD *)(v3 + 12),
           dword_19AF4,
           v3 + 68) )
    {
      goto LABEL_15;
    }
    v9 = sub_18818(*(_DWORD **)(v3 + 40), a2, (int)&v13, v8);
    *(_DWORD *)(v3 + 72) = v9;
    if ( v9 )
    {
      HIDWORD(v11) = 1;
      v12 = *(_DWORD *)(v3 + 72);
      (*(void (__fastcall **)(_DWORD, int, char *, _DWORD))(**(_DWORD **)(v3 + 68) + 16))(
        *(_DWORD *)(v3 + 68),
        1,
        (char *)&v11 + 4,
        0);
      (*(void (__fastcall **)(_DWORD, char *, int))(**(_DWORD **)(v3 + 68) + 12))(
        *(_DWORD *)(v3 + 68),
        (char *)off_19AF8 + 105152,
        v3);
      (*(void (__fastcall **)(_DWORD, int, int, _DWORD))(**(_DWORD **)(v3 + 68) + 16))(*(_DWORD *)(v3 + 68), 4, 100, 0);
LABEL_15:
      *(_DWORD *)(v3 + 84) = a2;
    }
  }
  return v11;
}

