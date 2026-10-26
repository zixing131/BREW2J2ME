int __fastcall sub_19868(signed int a1, int a2)
{
  int v2; // r5
  int v3; // r4
  int result; // r0
  int v5; // r2

  v2 = 0;
  if ( a1 < 0 )
  {
    v2 = 1;
    a1 = -a1;
  }
  v3 = 0;
  if ( a2 < 0 )
  {
    v3 = 1;
    a2 = -a2;
  }
  if ( a1 )
  {
    if ( a2 )
    {
      v5 = sub_104(a1, a2 << 16);
      for ( result = 1; result < 90; result = (__int16)(result + 1) )
      {
        if ( off_1992C[result + 26166] > v5 )
          break;
      }
      if ( v2 )
      {
        if ( v3 )
          LOWORD(result) = result + 180;
        else
          LOWORD(result) = 180 - result;
      }
      else
      {
        if ( !v3 )
          return result;
        LOWORD(result) = 360 - result;
      }
    }
    else if ( v2 == 1 )
    {
      LOWORD(result) = 180;
    }
    else
    {
      LOWORD(result) = 0;
    }
  }
  else if ( v3 == 1 )
  {
    LOWORD(result) = dword_19928;
  }
  else
  {
    LOWORD(result) = 90;
  }
  return (__int16)result;
}

