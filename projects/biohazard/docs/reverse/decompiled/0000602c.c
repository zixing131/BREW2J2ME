int __fastcall sub_602C(int a1)
{
  unsigned int v1; // r5
  char *v3; // r7
  int v4; // r6

  v1 = 0;
  v3 = (char *)off_60FC + 24644;
  do
  {
    v4 = a1 + 4 * v1;
    if ( *(_DWORD *)(v4 + 160) )
    {
      (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
      *(_DWORD *)(v4 + 160) = 0;
    }
    v1 = (v1 + 1) & 0xFFFEFFFF;
  }
  while ( v1 < 0x20 );
  (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)&v3[-4] + 4))(a1 + 84, 0, 32);
  *(_WORD *)(a1 + 294) = 0;
  *(_WORD *)(a1 + 296) = 0;
  *(_WORD *)(a1 + 298) = 0;
  *(_WORD *)(a1 + 290) = 0;
  *(_WORD *)(a1 + 152) = 0;
  *(_WORD *)(a1 + 150) = 0;
  *(_WORD *)(a1 + 154) = 0;
  *(_WORD *)(a1 + 156) = 0;
  *(_DWORD *)(a1 + 128) = -1;
  *(_WORD *)(a1 + 120) = 0;
  *(_WORD *)(a1 + 118) = 0;
  *(_DWORD *)(a1 + 16) = -1;
  *(_DWORD *)(a1 + 124) = -1;
  *(_DWORD *)(a1 + 132) = -1;
  *(_BYTE *)(a1 + 12) = 0;
  *(_BYTE *)(a1 + 300) = 0;
  *(_BYTE *)(a1 + 292) = 1;
  *(_WORD *)(a1 + 14) = 0;
  *(_BYTE *)(a1 + 308) = 0;
  *(_BYTE *)a1 = 0;
  *(_WORD *)(a1 + 306) = -1;
  return a1 + 256;
}

