int sub_741D0()
{
  int v0; // r1
  __int16 v1; // r3
  int savedregs; // [sp+0h] [bp+0h]

  if ( dword_1536D84 )
  {
    v0 = *(_DWORD *)(dword_1501D90 + 16);
    v1 = *(_WORD *)(v0 + 58);
    if ( *(_BYTE *)(v0 + 64) == 1 )
    {
      word_1537B1C = v1 + 35;
      word_1537B1E = *(_WORD *)(v0 + 60) - 10;
      byte_1537B20 = 1;
    }
    else
    {
      word_1537B1C = v1 - 35;
      word_1537B1E = *(_WORD *)(v0 + 60) - 10;
      byte_1537B20 = 0;
    }
    sub_75958(&unk_1536D74, &byte_1537B14, 0, sub_6E16C);
  }
  return savedregs;
}
