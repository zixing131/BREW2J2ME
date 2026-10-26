int __fastcall sub_62730(int a1, int a2, int a3)
{
  int v3; // r0
  int v4; // r1
  int v5; // r2
  int v6; // r3
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int savedregs; // [sp+0h] [bp+0h]

  v3 = sub_66A76(a1, a2, a3, 441333);
  if ( v3 )
  {
    if ( v3 == 35 )
    {
      if ( word_15364E2 == 4 )
      {
        if ( dword_153653C == 84 )
          return savedregs;
      }
      else if ( word_15364E2 == 5 && dword_153653C == 172 )
      {
        return savedregs;
      }
      v6 = 463237;
      goto LABEL_12;
    }
    if ( v3 == 53 || (v3 += 5) == 0 )
    {
      v6 = 463257;
LABEL_12:
      v7 = sub_66A76(v3, v4, v5, v6);
      sub_66A76(v7, v8, v9, 441297);
    }
  }
  return savedregs;
}
