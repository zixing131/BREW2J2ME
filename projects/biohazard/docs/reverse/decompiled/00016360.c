int __fastcall sub_16360(__int16 *a1, int a2)
{
  int i; // r2
  __int16 *v3; // r3
  int v4; // r12
  _WORD *v5; // r4
  int result; // r0

  *a1 = *(_WORD *)(*((_DWORD *)a1 + 68) + 4) - 7;
  a1[1] = 0;
  for ( i = 0; *a1 > i; i = (__int16)(i + 1) )
  {
    v3 = &a1[4 * i];
    v3[2] = *(_WORD *)(*(_DWORD *)(*((_DWORD *)a1 + 68) + 8) + 20 * i + 140);
    v3[3] = *(_WORD *)(*(_DWORD *)(*((_DWORD *)a1 + 68) + 8) + 20 * i + 142);
    v3[4] = i + 7;
    v3[5] = 0;
    v4 = *(unsigned __int8 *)(*((_DWORD *)a1 + 68) + 122);
    if ( v4 <= i )
    {
      if ( v4 == i )
        v3[5] = 2;
    }
    else
    {
      v3[5] = 1;
    }
  }
  v5 = a1 + 128;
  a1[130] = 0;
  a1[133] = 25;
  result = sub_104(0x19u, a2 - 146);
  if ( result > 2 )
  {
    if ( result >= 6 )
      result = 6;
  }
  else
  {
    result = 2;
  }
  v5[3] = result;
  v5[4] = 2;
  v5[16] = 1;
  return result;
}

