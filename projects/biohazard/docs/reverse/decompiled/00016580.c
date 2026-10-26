int __fastcall sub_16580(int result)
{
  unsigned int v1; // r1
  int v2; // lr

  *(_WORD *)(result + 294) = 0;
  *(_WORD *)(result + 296) = 0;
  *(_WORD *)(result + 298) = 0;
  *(_WORD *)(result + 144) = 0;
  *(_WORD *)(result + 154) = 0;
  *(_WORD *)(result + 156) = 0;
  *(_WORD *)(result + 118) = 0;
  *(_WORD *)(result + 120) = 0;
  *(_DWORD *)(result + 128) = -1;
  *(_DWORD *)(result + 16) = -1;
  *(_DWORD *)(result + 124) = -1;
  *(_DWORD *)(result + 132) = -1;
  *(_BYTE *)(result + 12) = 0;
  *(_BYTE *)(result + 300) = 0;
  *(_WORD *)(result + 290) = 0;
  *(_BYTE *)(result + 292) = 1;
  *(_BYTE *)(result + 308) = 0;
  *(_WORD *)(result + 302) = 0;
  v1 = 0;
  do
  {
    v2 = result + 4 * v1;
    v1 = (v1 + 1) & 0xFFFEFFFF;
    *(_DWORD *)(v2 + 160) = 0;
  }
  while ( v1 < 0x20 );
  *(_WORD *)(result + 158) = 0;
  *(_WORD *)(result + 306) = -1;
  *(_BYTE *)result = 0;
  return result;
}

