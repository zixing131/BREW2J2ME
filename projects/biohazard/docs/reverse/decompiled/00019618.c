int __fastcall sub_19618(int *a1, unsigned int a2, int a3, unsigned int a4)
{
  _DWORD *v4; // r6
  int v5; // r7
  int v6; // r12
  bool v7; // zf
  int v8; // r4
  int v9; // r5
  int v10; // lr
  unsigned int v11; // r8
  int v12; // r1
  unsigned int v13; // r4

  v6 = *a1;
  v7 = *a1 == 0;
  if ( *a1 )
  {
    v5 = a1[2];
    v7 = v5 == 0;
  }
  if ( !v7 )
  {
    v4 = (_DWORD *)a1[3];
    v7 = v4 == 0;
  }
  if ( !v7 )
  {
    v8 = 0;
    v9 = a1[7];
    while ( v8 <= v9 )
    {
      v10 = (v8 + v9) / 2;
      v11 = *(_DWORD *)(v5 + 4 * v10);
      if ( v11 == a2 )
      {
        if ( v10 )
        {
          a1 = (int *)v4[v10];
          v12 = v4[v10 - 1];
        }
        else
        {
          v12 = a1[1];
        }
        if ( v10 )
        {
          v13 = (unsigned int)a1 - v12;
          v12 += v6;
        }
        else
        {
          v13 = *v4 - (v12 - v6);
        }
        if ( a3 )
        {
          if ( a4 >= v13 )
            (*(void (__fastcall **)(int, int))(*(_DWORD *)((char *)off_196D4 + 0xFFFFFFFC + 104092) + 36))(a3, v12);
        }
        return (__int16)v13;
      }
      if ( v11 > a2 )
        v9 = v10 - 1;
      else
        v8 = v10 + 1;
    }
  }
  return -1;
}

