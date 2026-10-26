int __fastcall sub_12108(_DWORD *a1, unsigned int *a2)
{
  unsigned int v2; // r7
  _DWORD *v4; // r1
  int result; // r0
  int v7; // r5
  char *v8; // r8
  int v9; // r0
  int v10; // r9
  int v11; // r9
  unsigned int i; // r9
  unsigned int v13; // r2
  int v14; // r5
  unsigned int j; // r1

  v2 = *a2;
  v4 = a1 + 8;
  result = a1[8];
  v7 = 4;
  v8 = (char *)off_12288 + 74036;
  if ( v4[1] - result < v2 )
  {
    v9 = result + v2 + 100;
    a1[9] = v9;
    v10 = (*(int (__fastcall **)(int))(*(_DWORD *)&v8[-4] + 104))(2 * v9);
    (**(void (__fastcall ***)(int, _DWORD, int))&v8[-4])(v10, a1[10], 2 * a1[8]);
    (*(void (__fastcall **)(_DWORD))(*(_DWORD *)&v8[-4] + 108))(a1[10]);
    a1[10] = v10;
    v11 = (*(int (__fastcall **)(int))(*(_DWORD *)&v8[-4] + 104))(24 * a1[9]);
    (**(void (__fastcall ***)(int, _DWORD, int))&v8[-4])(v11, a1[11], 24 * a1[8]);
    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)&v8[-4] + 108))(a1[11]);
    a1[11] = v11;
  }
  for ( i = 0; i < v2; ++i )
  {
    result = *(unsigned int *)((char *)a2 + v7);
    v13 = a1[8];
    v14 = v7 + 4;
    for ( j = 0; v13 > j && *(unsigned __int16 *)(a1[10] + 2 * j) != result; ++j )
      ;
    if ( v13 == j )
    {
      *(_WORD *)(a1[10] + 2 * v13) = result;
      (**(void (__fastcall ***)(int, int, int))&v8[-4])(a1[11] + 24 * a1[8], (int)a2 + v14, 24);
      result = a1[8] + 1;
      a1[8] = result;
    }
    v7 = v14 + 24;
  }
  return result;
}

