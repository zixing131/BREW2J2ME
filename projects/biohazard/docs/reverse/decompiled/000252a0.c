__int16 *__fastcall sub_252A0(__int16 *result, int a2, int a3, int a4)
{
  int v4; // r1
  bool v5; // cc
  int v6; // r2
  int v7; // r1

  LOWORD(v4) = *result;
  v5 = 0;
  if ( *result )
  {
    v4 = result[1];
    a4 = *result;
    v5 = v4 < a4;
  }
  if ( v5 )
  {
    result += 128;
    result[2] = v4 - 1;
    v6 = result[3];
    while ( 1 )
    {
      v7 = result[2];
      if ( v7 + v6 <= a4 )
        break;
      result[2] = v7 - 1;
    }
    if ( result[2] < 0 )
      LOWORD(v7) = 0;
    result[2] = v7;
  }
  return result;
}

