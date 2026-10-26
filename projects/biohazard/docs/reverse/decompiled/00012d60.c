int __fastcall sub_12D60(int result, int *a2)
{
  int v2; // r2
  bool v3; // zf
  int v4; // r2
  bool v5; // zf
  int v6; // r2
  int v7; // t1
  bool v8; // zf
  int v9; // r2
  int v10; // t1
  bool v11; // zf
  bool v12; // zf

  *a2 = 0;
  v2 = *(unsigned __int16 *)result;
  v3 = v2 == 48;
  if ( v2 != 48 )
    v3 = v2 == 49;
  if ( v3 )
  {
    if ( v2 == 49 )
      *a2 = 16;
    v4 = result + 2;
    result = *(unsigned __int16 *)(result + 2);
    v5 = result == 48;
    if ( result != 48 )
      v5 = result == 49;
    if ( v5 )
    {
      if ( result == 49 )
        *a2 |= 0x40u;
      v7 = *(unsigned __int16 *)(v4 + 2);
      v6 = v4 + 2;
      result = v7;
      v8 = v7 == 48;
      if ( v7 != 48 )
        v8 = result == 49;
      if ( v8 )
      {
        if ( result == 49 )
          *a2 |= 2u;
        v10 = *(unsigned __int16 *)(v6 + 2);
        v9 = v6 + 2;
        result = v10;
        v11 = v10 == 48;
        if ( v10 != 48 )
          v11 = result == 49;
        if ( v11 )
        {
          if ( result == 49 )
            *a2 |= 0x20u;
          result = *(unsigned __int16 *)(v9 + 2);
          v12 = result == 48;
          if ( result != 48 )
            v12 = result == 49;
          if ( v12 && result == 49 )
          {
            result = *a2 | 1;
            *a2 = result;
          }
        }
      }
    }
  }
  return result;
}

