int __fastcall sub_3A8F4(int a1)
{
  int savedregs_8; // [sp+8h] [bp+8h]

  if ( byte_153378C )
  {
    if ( !dword_1533784 )
      dword_1533784 = 1;
    ++dword_1533788;
    if ( (*(_DWORD *)(dword_1501D90 + 6888) & 0xFFFFFF) == 0x4290B && !dword_1500058 )
    {
      sub_3A890(463);
      a1 = sub_3592C(8);
      byte_153378C = 0;
    }
    if ( byte_1535594 && !dword_1500058 )
      sub_2E238(a1);
  }
  return savedregs_8;
}
