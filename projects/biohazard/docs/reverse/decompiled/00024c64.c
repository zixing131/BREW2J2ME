int __fastcall sub_24C64(__int64 a1, unsigned int a2, int a3)
{
  int v4; // r4
  int v5; // r0

  *(_BYTE *)(a1 + 89) = BYTE4(a1);
  v4 = a1;
  if ( HIDWORD(a1) )
  {
    HIDWORD(a1) = a1;
    sub_199AC(a1, a2, a3);
  }
  else
  {
    v5 = *(_DWORD *)(a1 + 68);
    if ( v5 )
    {
      sub_145C8(v5);
      sub_145BC(*(_DWORD *)(v4 + 68));
      *(_DWORD *)(v4 + 68) = 0;
      *(_BYTE *)(v4 + 80) = 0;
    }
    *(_DWORD *)(v4 + 84) = a2;
  }
  return sub_24190(v4, 1, a2, a3);
}

