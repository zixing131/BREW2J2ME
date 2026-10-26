int __fastcall sub_196D8(signed int a1)
{
  int v1; // r4
  signed int v2; // r1
  int v3; // r0
  bool v4; // cc
  int v5; // r0

  v1 = 1;
  if ( a1 >= 360 || a1 <= -360 )
  {
    sub_104(0x168u, a1);
    a1 = v2;
  }
  v3 = a1 + (a1 < 0 ? 0x168 : 0);
  if ( v3 > 180 )
    v3 = 360 - v3;
  v4 = v3 <= 90;
  if ( v3 > 90 )
    v3 = 180 - v3;
  v5 = 90 - v3;
  if ( !v4 )
    v1 = -1;
  return v1 * off_19738[v5 + 26059];
}

