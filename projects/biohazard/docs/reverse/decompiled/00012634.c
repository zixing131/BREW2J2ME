int __fastcall sub_12634(int *a1, int a2, int a3, int a4)
{
  _DWORD *v8; // r4
  char *v9; // r0
  char *v10; // r7
  int v11; // r0
  unsigned int v12; // r5
  int v13; // r0
  unsigned int v14; // r5
  char *v15; // r5
  void (__fastcall *v16)(_DWORD *); // r1

  v8 = (_DWORD *)sub_1058((int)a1, a1[56]);
  v9 = (char *)off_12900 + 75360;
  if ( a2 )
  {
    if ( a2 == 2 )
    {
      v15 = (char *)off_12900 + 75360;
      (*(void (__fastcall **)(char *, int, char *, int))(*(_DWORD *)&v9[-4] + 156))(
        off_12928 + 75952,
        4,
        off_12924 + 75940,
        dword_12920);
      (*(void (__fastcall **)(char *))(*(_DWORD *)&v15[-4] + 156))(off_1292C + 75972);
      v16 = (void (__fastcall *)(_DWORD *))v8[11];
      if ( v16 )
        v16(v8 + 9);
      v8[13] = (char *)off_12930 + 76000;
      v8[14] = a1;
      (*(void (__fastcall **)(int, _DWORD *))(*(_DWORD *)*a1 + 144))(*a1, v8 + 9);
    }
  }
  else
  {
    v10 = (char *)off_12900 + 75360;
    if ( (*(int (__fastcall **)(int, char *))(*(_DWORD *)&v9[-4] + 16))(a3, off_12904 + 75384) )
    {
      if ( (*(int (__fastcall **)(int, char *))(*(_DWORD *)&v10[-4] + 16))(a3, off_12908 + 75444) )
      {
        if ( (*(int (__fastcall **)(int, char *))(*(_DWORD *)&v10[-4] + 16))(a3, off_1290C + 75504) )
        {
          if ( (*(int (__fastcall **)(int, char *))(*(_DWORD *)&v10[-4] + 16))(a3, off_12910 + 75576) )
          {
            if ( (*(int (__fastcall **)(int, char *))(*(_DWORD *)&v10[-4] + 16))(a3, off_12914 + 75648) )
            {
              if ( (*(int (__fastcall **)(int, char *))(*(_DWORD *)&v10[-4] + 16))(a3, off_12918 + 75708) )
              {
                if ( !(*(int (__fastcall **)(int, char *))(*(_DWORD *)&v10[-4] + 16))(a3, off_1291C + 75812) )
                {
                  v13 = v8[8];
                  v14 = *(_DWORD *)(v13 + 2156);
                  if ( v14 < 0xA )
                    *(_DWORD *)(v8[8] + 4 * v14 + 2116) = (*(int (__fastcall **)(unsigned int, int, int))(*(_DWORD *)&v10[-4] + 332))(
                                                            v13 + 161 * v14 + 504,
                                                            a4,
                                                            161);
                  *(_DWORD *)(v8[8] + 2156) = v14 + 1;
                }
              }
              else
              {
                v11 = v8[8];
                v12 = *(_DWORD *)(v11 + 500);
                if ( v12 < 0xA )
                  *(_DWORD *)(v8[8] + 4 * v12 + 460) = (*(int (__fastcall **)(unsigned int, int, int))(*(_DWORD *)&v10[-4] + 332))(
                                                         v11 + 32 * v12 + 140,
                                                         a4,
                                                         32);
                *(_DWORD *)(v8[8] + 500) = v12 + 1;
              }
            }
            else
            {
              *(_DWORD *)(v8[8] + 136) = (*(int (__fastcall **)(int))(*(_DWORD *)&v10[-4] + 144))(a4);
            }
          }
          else
          {
            *(_DWORD *)(v8[8] + 132) = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)&v10[-4] + 332))(
                                         v8[8] + 72,
                                         a4,
                                         60);
          }
        }
        else
        {
          *(_DWORD *)(v8[8] + 68) = (*(int (__fastcall **)(int, int, int))(*(_DWORD *)&v10[-4] + 332))(
                                      v8[8] + 8,
                                      a4,
                                      60);
        }
      }
      else
      {
        *(_DWORD *)(v8[8] + 4) = (*(int (__fastcall **)(int))(*(_DWORD *)&v10[-4] + 144))(a4);
      }
    }
    else
    {
      *(_DWORD *)v8[8] = (*(int (__fastcall **)(int))(*(_DWORD *)&v10[-4] + 144))(a4);
    }
  }
  return 0;
}

