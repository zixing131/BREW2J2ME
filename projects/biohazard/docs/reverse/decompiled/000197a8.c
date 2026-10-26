int __fastcall sub_197A8(signed int a1)
{
  int v1; // r4
  signed int v2; // r1
  int v3; // r0

  v1 = 1;
  if ( a1 >= 360 || a1 <= -360 )
  {
    sub_104(0x168u, a1);
    a1 = v2;
  }
  v3 = a1 + (a1 < 0 ? 0x168 : 0);
  if ( v3 > 180 )
  {
    v3 -= 180;
    v1 = -1;
  }
  if ( v3 > 90 )
    v3 = 180 - v3;
  return v1 * off_19804[v3 + 26110];
}

