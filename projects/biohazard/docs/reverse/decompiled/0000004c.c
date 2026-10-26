int __fastcall sub_4C(int result, char *a2, unsigned int a3, unsigned int a4)
{
  unsigned int v4; // r12
  char v5; // r3
  char v6; // t1
  bool v7; // cf
  bool v8; // cc
  unsigned int v9; // r2
  char v10; // t1
  char v11; // t1
  char *v12; // r1
  unsigned int v13; // t1
  unsigned int v14; // r3
  unsigned int v15; // t1
  unsigned int v16; // r3
  unsigned int v17; // t1
  unsigned int v18; // r3
  unsigned int v19; // t1
  bool v20; // cf
  bool v21; // nf
  int v22; // r2
  char v23; // t1
  _BYTE *v24; // r0

  if ( a3 > 3 )
  {
    v4 = result & 3;
    if ( (result & 3) != 0 )
    {
      v6 = *a2++;
      v5 = v6;
      v7 = v4 >= 2;
      v8 = (result & 3) == 3;
      v9 = a3 + v4;
      if ( (result & 3) != 3 )
      {
        v10 = *a2++;
        LOBYTE(v4) = v10;
      }
      *(_BYTE *)result++ = v5;
      if ( !v7 )
      {
        v11 = *a2++;
        v5 = v11;
      }
      a3 = v9 - 4;
      if ( !v8 )
        *(_BYTE *)result++ = v4;
      if ( !v7 )
        *(_BYTE *)result++ = v5;
    }
    a4 = (unsigned __int8)a2 & 3;
    if ( ((unsigned __int8)a2 & 3) == 0 )
      return sub_324(result);
    v7 = a3 >= 4;
    a3 -= 4;
    if ( v7 )
    {
      v13 = *(_DWORD *)&a2[-a4];
      v12 = &a2[-a4];
      v4 = v13;
      if ( a4 == 2 )
      {
        do
        {
          v16 = HIWORD(v4);
          v17 = *((_DWORD *)v12 + 1);
          v12 += 4;
          v4 = v17;
          v7 = a3 >= 4;
          a3 -= 4;
          a4 = v16 | (v17 << 16);
          *(_DWORD *)result = a4;
          result += 4;
        }
        while ( v7 );
        a2 = v12 + 2;
      }
      else if ( a4 > 2 )
      {
        do
        {
          v18 = HIBYTE(v4);
          v19 = *((_DWORD *)v12 + 1);
          v12 += 4;
          v4 = v19;
          v7 = a3 >= 4;
          a3 -= 4;
          a4 = v18 | (v19 << 8);
          *(_DWORD *)result = a4;
          result += 4;
        }
        while ( v7 );
        a2 = v12 + 3;
      }
      else
      {
        do
        {
          v14 = v4 >> 8;
          v15 = *((_DWORD *)v12 + 1);
          v12 += 4;
          v4 = v15;
          v7 = a3 >= 4;
          a3 -= 4;
          a4 = v14 | (v15 << 24);
          *(_DWORD *)result = a4;
          result += 4;
        }
        while ( v7 );
        a2 = v12 + 1;
      }
    }
  }
  v20 = __CFSHL__(a3, 31);
  v22 = a3 << 31;
  v21 = v22 < 0;
  if ( v22 < 0 )
  {
    v23 = *a2++;
    LOBYTE(v22) = v23;
  }
  if ( v20 )
  {
    LOBYTE(a4) = *a2;
    LOBYTE(v4) = a2[1];
  }
  if ( v21 )
    *(_BYTE *)result++ = v22;
  if ( v20 )
  {
    *(_BYTE *)result = a4;
    v24 = (_BYTE *)(result + 1);
    *v24 = v4;
    return (int)(v24 + 1);
  }
  return result;
}

