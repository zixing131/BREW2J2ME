int __fastcall sub_68DD4(_WORD *a1, _BYTE *a2, int a3)
{
  int savedregs_8; // [sp+8h] [bp+8h]

  while ( a3 > 0 )
  {
    *a1 = ((*a2 & 0xF8) << 8) | (8 * (a2[1] & 0xFC)) | ((unsigned __int8)a2[2] >> 3);
    a2 += 3;
    ++a1;
    --a3;
  }
  return savedregs_8;
}
