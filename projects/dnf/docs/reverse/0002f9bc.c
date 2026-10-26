int __fastcall sub_2F9BC(unsigned __int8 a1, int *a2, unsigned __int16 a3)
{
  int v3; // r7
  int i; // r6
  int v5; // r0
  int v6; // r3
  int v7; // r3
  int v8; // r0
  int v9; // r3
  int v10; // r5
  int v11; // r0
  int v12; // r3
  int v13; // r0
  int v14; // r3
  int v15; // r5
  int v16; // r0
  int v18; // [sp+0h] [bp-4h]

  a2 = (int *)(unsigned __int8)a2;
  v3 = 28 * (unsigned __int8)a2;
  v18 = a3;
  if ( *(unsigned __int8 *)(dword_150C798 + v3 + 1) != a1 )
    return 0;
  for ( i = 0; i != 3; ++i )
  {
    v5 = 8 * i + v3 + dword_150C798;
    v6 = *(unsigned __int8 *)(v5 + 4);
    switch ( v6 )
    {
      case 1:
        v7 = *(unsigned __int16 *)(v5 + 6);
        v8 = *(unsigned __int16 *)(v5 + 8);
        if ( (v7 == 3 || v7 == 1) && (char)sub_66A76(v8, a2, 8 * i, sub_1F2F0) != 1 )
          return 0;
        break;
      case 2:
        v9 = *(unsigned __int16 *)(v5 + 6);
        v10 = *(unsigned __int16 *)(v5 + 8);
        v11 = *(unsigned __int8 *)(v5 + 10);
        if ( *(unsigned __int8 *)(dword_1501D90 + 6889) != v9 )
          return 0;
        if ( *(char *)(dword_1501D90 + 6890) != v10 )
          return 0;
        if ( *(char *)(dword_1501D90 + 6892) < v11 )
          return 0;
        a2 = &dword_150D88C;
        if ( !*((_BYTE *)&dword_150D88C + 10 * (unsigned __int8)byte_150D899 + (unsigned __int8)byte_150D898 + 24) )
          return 0;
        break;
      case 3:
        a2 = (int *)dword_1501D90;
        v12 = *(unsigned __int16 *)(v5 + 6);
        v13 = *(unsigned __int16 *)(v5 + 8);
        if ( *(unsigned __int8 *)(dword_1501D90 + 6889) != v12 || *(char *)(dword_1501D90 + 6890) != v13 )
          return 0;
        break;
      case 4:
        v14 = *(unsigned __int16 *)(v5 + 6);
        v15 = *(unsigned __int16 *)(v5 + 8);
        v16 = *(unsigned __int8 *)(v5 + 10);
        if ( *(char *)(dword_1501D90 + 6888) != v14 )
          return 0;
        if ( *(char *)(dword_1501D90 + 6890) != v15 )
          return 0;
        if ( *(char *)(dword_1501D90 + 6892) < v16 )
          return 0;
        a2 = &dword_150D88C;
        if ( *(char *)(dword_150D89C + 4) != (unsigned __int8)byte_150D898
          || *(char *)(dword_150D89C + 5) != (unsigned __int8)byte_150D899 )
        {
          return 0;
        }
        break;
      case 6:
        a2 = (int *)dword_1501D90;
        if ( *(char *)(dword_1501D90 + 6890) != *(unsigned __int16 *)(v5 + 8)
          || *(char *)(dword_1501D90 + 6892) < (int)*(unsigned __int8 *)(v5 + 10)
          || v18 != *(unsigned __int16 *)(v5 + 6) )
        {
          return 0;
        }
        break;
    }
  }
  return 1;
}
