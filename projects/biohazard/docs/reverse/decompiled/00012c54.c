int __fastcall sub_12C54(unsigned __int16 *a1, int *a2, int *a3, unsigned int a4)
{
  int result; // r0
  int v6; // r1
  int v7; // t1
  bool v9; // zf
  bool v10; // zf
  bool v11; // zf
  bool v12; // zf
  unsigned int v13; // [sp+0h] [bp-4h] BYREF

  v13 = a4;
  v7 = *a1;
  result = (int)(a1 + 1);
  v6 = v7;
  v9 = v7 == 115;
  if ( v7 != 115 )
    v9 = v6 == 83;
  if ( !v9 )
  {
    v10 = v6 == 104;
    if ( v6 != 104 )
      v10 = v6 == 72;
    if ( v10 )
    {
      v13 = 0;
      result = sub_11E30(result, &v13, (int)a3, a4);
      if ( !result )
        return result;
      result = (HIWORD(*a2) << 16) | v13;
    }
    else
    {
      v11 = v6 == 108;
      if ( v6 != 108 )
        v11 = v6 == 76;
      if ( !v11 )
      {
        v12 = v6 == 98;
        if ( v6 != 98 )
          v12 = v6 == 66;
        if ( v12 )
        {
          v13 = 0;
          result = sub_11E30(result, &v13, (int)a3, a4);
          if ( result )
          {
            result = (unsigned __int16)*a3 | (v13 << 16);
            goto LABEL_27;
          }
        }
        return result;
      }
      v13 = 0;
      result = sub_11E30(result, &v13, (int)a3, a4);
      if ( !result )
        return result;
      result = (unsigned __int16)*a2 | (v13 << 16);
    }
    *a2 = result;
    return result;
  }
  v13 = 0;
  result = sub_11E30(result, &v13, (int)a3, a4);
  if ( result )
  {
    result = (HIWORD(*a3) << 16) | v13;
LABEL_27:
    *a3 = result;
  }
  return result;
}

