int __fastcall sub_859CC(unsigned __int8 a1, unsigned __int8 a2)
{
  int v3; // r2
  int v5; // r2
  int savedregs_8; // [sp+8h] [bp+8h]

  v3 = *(_DWORD *)(dword_1501D90 + 6888) & 0xFFFFFF;
  if ( v3 != 207115 && v3 != 272651 && byte_150D770 != 1 )
  {
    if ( *(_BYTE *)(dword_1501D90 + 6893) != 7 )
      sub_85708(a1, a2);
    sub_8555C(a1, a2);
    sub_8547C(a1, a2);
    sub_8539C(a1, a2, v5);
    if ( !byte_1500088 )
      sub_851B8(a1, a2);
  }
  return savedregs_8;
}
