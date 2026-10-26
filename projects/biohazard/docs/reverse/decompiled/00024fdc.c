int __fastcall sub_24FDC(__int16 *a1, int a2, unsigned int a3, unsigned int a4, int a5)
{
  int v6; // r0
  int v7; // r12
  int i; // r5
  int v9; // r0
  int v10; // r1
  int v11; // r2
  bool v12; // zf
  bool v13; // zf
  int v14; // r0
  bool v15; // zf
  int v16; // lr
  int j; // r0
  unsigned __int16 *v18; // r1
  int v19; // r2
  bool v20; // zf
  unsigned int v21; // r1
  int v22; // r2
  int k; // r5
  int v24; // r2
  int v26; // r0
  bool v27; // cc
  __int16 v28[2]; // [sp+0h] [bp-Ch] BYREF
  unsigned int v29; // [sp+4h] [bp-8h]
  unsigned int v30; // [sp+8h] [bp-4h] BYREF

  v29 = a3;
  v30 = a4;
  v6 = (unsigned __int16)a1[30];
  if ( !v6 )
  {
    switch ( a2 )
    {
      case 2:
        v7 = *((_DWORD *)a1 + 14);
        for ( i = 0; *(unsigned __int16 *)(v7 + 8) > i; i = (__int16)(i + 1) )
        {
          v9 = *(_DWORD *)v7 + 24 * i;
          if ( *(_DWORD *)(v9 + 4) == 2 )
          {
            v10 = *(char *)(v9 + 8);
            v11 = *(char *)(v9 + 9);
            if ( *(_BYTE *)(v9 + 20) != 1 )
            {
              v12 = v10 == 0;
              if ( v10 >= 0 )
                v12 = *(_BYTE *)(*((_DWORD *)a1 + 13) + v10) == 0;
              if ( !v12 )
              {
                v13 = v11 == 0;
                if ( v11 >= 0 )
                  v13 = *(_BYTE *)(*((_DWORD *)a1 + 13) + v11) == 0;
                if ( !v13 )
                {
                  sub_24D28((int)a1, (unsigned __int16)i, a5);
                  *(_BYTE *)(**((_DWORD **)a1 + 14) + 24 * i + 20) = 1;
                  return 1;
                }
              }
            }
          }
        }
        return -1;
      case 0:
        v14 = *a1;
        v15 = v14 == a3 >> 5;
        if ( v14 == a3 >> 5 )
          v15 = a1[1] == a4 >> 5;
        if ( !v15 )
        {
          *a1 = a3 >> 5;
          a1[1] = a4 >> 5;
          v16 = *((_DWORD *)a1 + 14);
          for ( j = 0; *(unsigned __int16 *)(v16 + 8) > j; j = (__int16)(j + 1) )
          {
            v18 = (unsigned __int16 *)(*(_DWORD *)v16 + 24 * j);
            v19 = *((_DWORD *)v18 + 1);
            v20 = v19 == 0;
            if ( !v19 )
              v20 = *v18 == (unsigned __int16)*a1;
            if ( v20 )
              v20 = v18[1] == (unsigned __int16)a1[1];
            if ( v20 )
            {
              v21 = (unsigned __int16)j;
              v22 = a5;
              goto LABEL_49;
            }
          }
        }
        return -1;
      case 1:
        LOWORD(v30) = a3;
        HIWORD(v30) = a4;
        for ( k = 0; ; k = (__int16)(k + 1) )
        {
          v26 = *((_DWORD *)a1 + 14);
          if ( *(unsigned __int16 *)(v26 + 8) <= k )
          {
            *((_BYTE *)a1 + 4) = 0;
            return -1;
          }
          if ( *(_DWORD *)(*(_DWORD *)v26 + 24 * k + 4) == 1 )
          {
            sub_4C((int)v28, (char *)(*(_DWORD *)(v26 + 4) + 8 * k), 8u, a4);
            LOWORD(v29) = v29 - v28[0];
            HIWORD(v29) -= v28[1];
            if ( sub_19C14((__int16 *)&v30, v28) )
              break;
          }
        }
        if ( a5 != -1 )
        {
          v21 = (unsigned __int16)k;
          v22 = a5;
          goto LABEL_49;
        }
        if ( !*((_BYTE *)a1 + 4) )
        {
          *((_BYTE *)a1 + 4) = 1;
          v24 = *(__int16 *)(**((_DWORD **)a1 + 14) + 24 * k + 10);
          if ( v24 > 0 )
            sub_E00(*((_DWORD *)a1 + 4), 0, v24, 0);
        }
        return 1;
      case 3:
        v27 = a5 <= 0;
        if ( a5 >= 0 )
        {
          v6 = *((_DWORD *)a1 + 14);
          v27 = *(unsigned __int16 *)(v6 + 8) <= a5;
        }
        if ( !v27 && *(_DWORD *)(*(_DWORD *)v6 + 24 * a5 + 4) == 3 )
        {
          v21 = (unsigned __int16)a5;
          v22 = a5;
LABEL_49:
          sub_24D28((int)a1, v21, v22);
          return 1;
        }
        break;
    }
  }
  return -1;
}

