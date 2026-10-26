int __fastcall sub_21E14(__int16 *a1, _WORD *a2, _WORD *a3, int *a4)
{
  int result; // r0
  int v9; // r6
  int v10; // r1
  int v11; // r3
  int v12; // r0
  __int16 v13; // r0
  int v14; // [sp+4h] [bp-4h]
  int v15; // [sp+4h] [bp-4h]

  result = (unsigned __int16)*a2;
  if ( result == 1291 )
  {
    v9 = *a4;
    v14 = sub_9D8((unsigned __int8 *)(*a4 + 2), 8);
    result = sub_9D8((unsigned __int8 *)(v9 + 13), 8);
    v10 = a1[63];
    if ( v10 <= v14 && v10 + a1[65] > v14 )
    {
      v11 = a1[64];
      if ( v11 <= result && v11 + a1[66] > result )
      {
        v15 = v14 - v10;
        v12 = result - a1[64];
        if ( v12 >= 29 )
        {
          if ( v12 >= 58 )
          {
            if ( v15 >= 42 )
            {
              if ( v15 >= 76 )
              {
                if ( v15 >= 110 )
                {
                  if ( v15 < 171 )
                    v13 = dword_21FB0;
                  else
                    v13 = dword_21FAC;
                }
                else
                {
                  v13 = dword_21FA8;
                }
              }
              else
              {
                v13 = dword_21FA4;
              }
            }
            else
            {
              v13 = dword_21FA0;
            }
          }
          else if ( v15 >= 53 )
          {
            if ( v15 >= 98 )
            {
              if ( v15 >= 143 )
              {
                if ( v15 < 188 )
                  v13 = dword_21F9C;
                else
                  v13 = dword_21F98;
              }
              else
              {
                v13 = dword_21F94;
              }
            }
            else
            {
              v13 = dword_21F90;
            }
          }
          else
          {
            v13 = dword_21F8C;
          }
        }
        else if ( v15 >= 53 )
        {
          if ( v15 >= 98 )
          {
            if ( v15 >= 143 )
            {
              if ( v15 < 188 )
                v13 = dword_21F88;
              else
                v13 = dword_21F84;
            }
            else
            {
              v13 = dword_21F80;
            }
          }
          else
          {
            v13 = dword_21F7C;
          }
        }
        else
        {
          v13 = dword_21F78;
        }
        *a3 = v13;
        *a2 = 256;
        *a4 = 0;
        return 256;
      }
    }
  }
  return result;
}

