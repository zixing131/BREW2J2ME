int __fastcall sub_1627C(__int16 *a1, int a2)
{
  __int16 v2; // r4
  int v3; // r2
  __int16 *v4; // r3
  int v5; // r2
  _WORD *v6; // r4
  unsigned int v7; // r1
  int result; // r0

  *a1 = 6;
  v2 = dword_1635C;
  a1[1] = 0;
  v3 = 0;
  do
  {
    v4 = &a1[4 * v3];
    v4[2] = v3 + 9010;
    if ( v3 )
      v4[3] = *(_WORD *)(*(_DWORD *)(*((_DWORD *)a1 + 68) + 8) + 20 * v3 - 18);
    else
      a1[3] = v2;
    v4[4] = v3 - 1;
    v4[5] = 0;
    v3 = (__int16)(v3 + 1);
  }
  while ( *a1 > v3 );
  v5 = *((_DWORD *)a1 + 68);
  v6 = a1 + 128;
  v7 = a2 - 146;
  if ( *(_BYTE *)(*(_DWORD *)v5 + 47) )
    a1[9] = 1;
  if ( *(_BYTE *)(*(_DWORD *)v5 + 46) )
    a1[21] = 1;
  a1[130] = 0;
  a1[133] = 25;
  result = sub_104(0x19u, v7);
  if ( result > 2 )
  {
    if ( result >= 6 )
      result = 6;
  }
  else
  {
    result = 2;
  }
  v6[3] = result;
  v6[4] = 0;
  v6[16] = 0;
  return result;
}

