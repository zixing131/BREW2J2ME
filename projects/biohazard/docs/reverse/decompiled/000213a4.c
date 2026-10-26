int __fastcall sub_213A4(int a1, int a2, int a3, int a4)
{
  int result; // r0
  int v6; // r0
  int v7; // r3
  int v8; // r0
  bool v9; // zf
  unsigned int v10; // r2
  int v11; // r0
  __int64 v12; // r0
  int v13; // r0
  int v14; // r3
  int v15; // r2
  int v16; // r3
  int v17; // r1
  int v18; // [sp+4h] [bp-4h] BYREF

  v18 = a4;
  result = *(unsigned __int8 *)(a1 + 62);
  if ( result != 1 )
  {
    if ( *(_BYTE *)(a1 + 1892) )
    {
      v6 = (__int16)(*(_WORD *)(a1 + 1894) - 1);
      *(_WORD *)(a1 + 1894) = v6;
      if ( v6 < 0 )
        *(_BYTE *)(a1 + 1892) = 0;
    }
    else
    {
      sub_20134(*(_DWORD *)(a1 + 1888), *(_DWORD *)(a1 + 1888), a1, 0);
      sub_1E458(a1);
      v8 = *(unsigned __int8 *)(a1 + 89);
      v9 = v8 == 1;
      if ( v8 == 1 )
        v9 = *(_BYTE *)(a1 + 62) == 0;
      if ( v9 )
        v9 = *(_BYTE *)(a1 + 80) == 0;
      if ( v9 )
      {
        v10 = *(_DWORD *)(a1 + 84);
        if ( v10 )
        {
          v11 = *(_DWORD *)(a1 + 68);
          if ( v11 )
          {
            (*(void (__fastcall **)(int, int *))(*(_DWORD *)v11 + 52))(v11, &v18);
            if ( !(_BYTE)v18 )
              (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 68) + 24))(*(_DWORD *)(a1 + 68));
          }
          else
          {
            HIDWORD(v12) = a1;
            LODWORD(v12) = a1;
            sub_199AC(v12, v10, v7);
          }
        }
      }
    }
    v13 = (*(int (**)(void))(*(_DWORD *)((char *)off_214E4 + 0xFFFFFFFC + 136328) + 176))();
    v14 = *(_DWORD *)(a1 + 48);
    v15 = v13 - *(_DWORD *)(a1 + 52);
    *(_DWORD *)(a1 + 52) = v13;
    *(_WORD *)(a1 + 60) = v15;
    v16 = v14 - v15;
    v17 = 30;
    if ( v16 > 30 )
      v17 = v16;
    return (*(int (__fastcall **)(_DWORD, int, char *, int))(**(_DWORD **)(a1 + 12) + 44))(
             *(_DWORD *)(a1 + 12),
             v17,
             (char *)off_214E8 + 136404,
             a1);
  }
  return result;
}

