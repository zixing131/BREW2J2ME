int __fastcall sub_10A0(int a1, int a2)
{
  int v3; // r0
  int savedregs; // [sp+0h] [bp+0h]

  v3 = a2;
  if ( a1 == 502 )
  {
    sub_1400(a2, a2, 502, 441153);
  }
  else if ( a1 == 503 )
  {
    if ( a2 == 52 || a2 == 54 || a2 == -3 || a2 == -4 || a2 == 50 || a2 == 56 || a2 == -1 || (v3 = a2 + 2, a2 == -2) )
      sub_1400(v3, a2, 503, 441297);
    byte_1535DD0 = 1;
    byte_1537B24 = 2;
  }
  return savedregs;
}
