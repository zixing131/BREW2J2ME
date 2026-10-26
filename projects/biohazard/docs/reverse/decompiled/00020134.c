int __fastcall sub_20134(int a1, int a2, int a3, int a4)
{
  bool v5; // zf
  int v7; // r6
  unsigned int v10; // r1
  bool v11; // cc
  unsigned int v12; // r1
  void (__fastcall *v13)(int, int, int); // r3
  int v14; // r8

  v5 = a2 == 0;
  if ( a2 )
    v5 = a3 == 0;
  v7 = a1;
  if ( !v5 )
    a1 = *(_DWORD *)(a1 + 368);
  if ( !v5 )
    v5 = a1 == 0;
  if ( v5 )
    return 0;
  if ( *(_BYTE *)(a2 + 336) )
  {
    v10 = ((unsigned __int16)(*(_WORD *)(a2 + 334))++ + 1) & 0xFFFEFFFF;
    if ( *(_BYTE *)(a2 + 336) == 1 && v10 > *(unsigned __int16 *)(a2 + 338) )
    {
      *(_BYTE *)(a2 + 336) = 0;
      *(_WORD *)(a2 + 334) = 0;
    }
    return 1;
  }
  v11 = *(_BYTE *)(a2 + 340) != 0;
  if ( *(_BYTE *)(a2 + 340) )
  {
    v12 = ((unsigned __int16)(*(_WORD *)(a2 + 342))++ + 1) & 0xFFFEFFFF;
    v11 = v12 > *(unsigned __int16 *)(a2 + 344);
  }
  if ( v11 )
  {
    *(_BYTE *)(a2 + 340) = 0;
    *(_WORD *)(a2 + 342) = 0;
    *(_DWORD *)(a2 + 356) = -1;
    v13 = *(void (__fastcall **)(int, int, int))(a2 + 348);
    if ( v13 )
    {
      v14 = *(_DWORD *)(a3 + 1888);
      v13(a2, a3, a4);
      if ( *(_DWORD *)(a3 + 1888) != v14 )
        return 1;
    }
  }
  return (*(int (__fastcall **)(int, int, int))(v7 + 368))(a2, a3, a4);
}

