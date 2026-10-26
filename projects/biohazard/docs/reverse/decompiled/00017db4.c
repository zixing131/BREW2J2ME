int __fastcall sub_17DB4(int result, int a2, int a3, char a4, int a5, _DWORD *a6)
{
  bool v6; // zf
  int v8; // r4

  v6 = result == 0;
  if ( result )
    v6 = a3 == 0;
  if ( !v6 )
    v6 = a5 == 0;
  if ( v6 )
    result = 1;
  if ( !v6 )
  {
    v8 = result + 44 * a2;
    (*(void (__fastcall **)(int))(*(_DWORD *)((char *)off_17E28 + 0xFFFFFFFC + 97784) + 332))(v8);
    *(_BYTE *)(v8 + 30) = a4;
    *(_DWORD *)(v8 + 40) = a6;
    *(_DWORD *)(v8 + 32) = a5;
    if ( a6 )
      *(_DWORD *)(v8 + 36) = *a6;
    return 0;
  }
  return result;
}

