int __fastcall sub_17E88(int result, unsigned int a2, _BYTE *a3)
{
  bool v3; // zf
  int v4; // r7
  unsigned int i; // r0
  int v7; // r1
  _DWORD *v8; // r1
  _BYTE *v9; // r5
  char *v10; // r10
  int v11; // r0
  bool v12; // zf
  unsigned int j; // r6
  _BYTE *v14; // r0
  int v15; // r3
  _BYTE *v16; // r1
  bool v17; // zf
  int v18; // r2
  int v19; // r1
  bool v20; // zf
  int v21; // r0
  unsigned __int8 *k; // r4
  int v23; // r0
  bool v24; // zf
  int v25; // r0
  int *v26; // r0
  int v27; // r6
  int v28; // r1
  int v29; // r2
  int v30; // r12
  int m; // r1
  int v32; // r1
  int *v33; // r2
  int n; // r0
  int v35; // r3
  bool v36; // zf

  v4 = result;
  v3 = result == 0;
  if ( result )
    v3 = a3 == 0;
  if ( v3 )
    result = 1;
  if ( !v3 )
  {
    for ( i = 0; i < a2; ++i )
    {
      v7 = 11 * i;
      v8 = *(_DWORD **)(v4 + 4 * v7 + 40);
      if ( v8 )
        *v8 = 0;
    }
    v9 = a3;
    v10 = (char *)off_18110 + 98016;
    do
    {
      if ( !*v9 )
        break;
      while ( 1 )
      {
        v11 = (unsigned __int8)*v9;
        v12 = v11 == 32;
        if ( v11 != 32 )
          v12 = v11 == 9;
        if ( !v12 )
        {
          v12 = v11 == 10;
          if ( v11 != 10 )
            v12 = v11 == 13;
        }
        if ( !v12 )
          break;
        ++v9;
      }
      if ( !*v9 )
        break;
      for ( j = 0; j < a2; ++j )
      {
        v14 = v9;
        v15 = 0;
        v16 = (_BYTE *)(v4 + 44 * j);
        while ( 1 )
        {
          v18 = (unsigned __int8)*v16;
          if ( !*v16 )
            break;
          v15 = (unsigned __int8)*v14;
          if ( !*v14 )
            return 0;
          v17 = v18 == v15;
          if ( v18 == v15 )
            v15 = 1;
          ++v16;
          ++v14;
          if ( !v17 )
          {
            v15 = 0;
            break;
          }
        }
        v19 = (unsigned __int8)*v14;
        if ( !*v14 )
          return 0;
        if ( v15 )
        {
          v20 = v19 == 32;
          if ( v19 != 32 )
            v20 = v19 == 9;
          if ( v20 || v19 == 58 )
          {
            v21 = (*(int (**)(void))(*(_DWORD *)&v10[-4] + 24))();
            if ( v21 )
            {
              for ( k = (unsigned __int8 *)(v21 + 1); ; ++k )
              {
                v23 = *k;
                v24 = v23 == 32;
                if ( v23 != 32 )
                  v24 = v23 == 9;
                if ( !v24 )
                  break;
              }
              if ( !*k )
                return 0;
              v25 = (*(int (__fastcall **)(unsigned __int8 *, int))(*(_DWORD *)&v10[-4] + 24))(k, 10);
              if ( v25 )
              {
                v26 = (int *)(v25 - (_DWORD)k);
                if ( (int)v26 > 0 && *((_BYTE *)v26 + (_DWORD)k - 1) == 13 )
                  v26 = (int *)((char *)v26 - 1);
              }
              else
              {
                v26 = (int *)(*(int (__fastcall **)(unsigned __int8 *))(*(_DWORD *)&v10[-4] + 20))(k);
              }
              v27 = v4 + 44 * j;
              v28 = *(unsigned __int8 *)(v27 + 30);
              if ( *(_BYTE *)(v27 + 30) )
              {
                if ( v28 == 1 )
                {
                  v29 = 0;
                  v30 = 0;
                  for ( m = 0; m < (int)v26; ++m )
                  {
                    v35 = k[m];
                    if ( (unsigned int)(v35 - 48) <= 9 )
                    {
                      v29 = v35 + 10 * v29 - 48;
                      v30 = 1;
                    }
                  }
                  v36 = v30 == 0;
                  if ( v30 )
                  {
                    v26 = *(int **)(v27 + 32);
                    v36 = v26 == 0;
                  }
                  if ( !v36 )
                    *v26 = v29;
                }
                else if ( v28 == 2 )
                {
                  **(_DWORD **)(v27 + 40) = sub_132C(k, (int)v26, *(_BYTE **)(v27 + 32));
                }
              }
              else
              {
                v32 = *(_DWORD *)(v27 + 32);
                if ( *(_DWORD *)(v27 + 36) - 1 <= (int)v26 )
                  v26 = (int *)(*(_DWORD *)(v27 + 36) - 1);
                v33 = v26;
                for ( n = 0; n < (int)v33; ++n )
                  *(_BYTE *)(v32 + n) = k[n];
                *(_BYTE *)(v32 + n) = 0;
                **(_DWORD **)(v27 + 40) = v33;
              }
            }
            break;
          }
        }
      }
      v9 = (_BYTE *)(*(int (__fastcall **)(_BYTE *, int))(*(_DWORD *)&v10[-4] + 24))(v9, 10);
    }
    while ( v9 );
    return 0;
  }
  return result;
}

