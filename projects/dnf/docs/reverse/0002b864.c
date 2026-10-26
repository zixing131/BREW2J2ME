int __fastcall sub_2B864(unsigned __int8 a1)
{
  int v1; // r4
  int v2; // r0
  int v3; // r0
  int v4; // r0
  int v5; // r0
  int v6; // r0
  char v7; // r0
  int v8; // r0
  int savedregs_4; // [sp+4h] [bp+4h]

  v1 = a1;
  sub_2B750(0);
  v2 = sub_2BCB6(v1);
  v3 = sub_28CBC(v2);
  v4 = sub_2BCB6(v3);
  v5 = sub_2B6B4(v4);
  if ( !sub_2BCB6(v5) )
  {
    v6 = sub_2BCB6(0);
    v7 = sub_2BCB6(v6);
    if ( v7 >= 0 )
    {
      v8 = sub_2BCB6(*(unsigned __int16 *)(16 * v7 + dword_150D168 + 6));
      sub_2BCB6(v8);
    }
  }
  return savedregs_4;
}
