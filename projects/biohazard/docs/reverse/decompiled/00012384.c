int __fastcall sub_12384(int a1, unsigned int a2, unsigned int a3)
{
  __int16 *v3; // r3
  __int16 v4; // r3
  int v5; // r12
  unsigned int v6; // r3
  unsigned __int16 *v7; // r0
  int v8; // r2
  bool v9; // zf
  unsigned int v11; // r0
  unsigned int v12; // lr

  v3 = (__int16 *)(*(_DWORD *)(a1 + 12) + 2 * (unsigned __int8)a2);
  if ( (_BYTE)a2 )
    a3 = (unsigned __int16)*(v3 - 1);
  v4 = *v3;
  v5 = *(_DWORD *)(a1 + 16);
  if ( !(_BYTE)a2 )
    a3 = 0;
  v6 = (unsigned __int16)(v4 - 1);
  while ( a3 + 1 < v6 )
  {
    v11 = (a3 + v6) >> 1;
    v12 = *(unsigned __int16 *)(v5 + 4 * v11);
    if ( v12 == a2 )
    {
      v7 = (unsigned __int16 *)(v5 + 4 * v11);
      return v7[1];
    }
    if ( v12 < a2 )
      a3 = (a3 + v6) >> 1;
    else
      v6 = (a3 + v6) >> 1;
  }
  v7 = (unsigned __int16 *)(v5 + 4 * a3);
  v8 = *v7;
  v9 = v8 == a2;
  if ( v8 != a2 )
  {
    v7 = (unsigned __int16 *)(v5 + 4 * v6);
    v9 = *v7 == a2;
  }
  if ( !v9 )
    return dword_12414;
  return v7[1];
}

