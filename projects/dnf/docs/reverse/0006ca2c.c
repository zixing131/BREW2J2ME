int sub_6CA2C()
{
  int v0; // r6
  int i; // r7
  _DWORD *v2; // r3
  int v4; // [sp+0h] [bp-4h]
  int savedregs_16; // [sp+14h] [bp+10h]

  v4 = 0;
  v0 = 0;
  do
  {
    if ( *(int *)(v0 + dword_1501D90 + 264) > 0 )
    {
      for ( i = 0; i < *(unsigned __int8 *)(v0 + dword_1501D90 + 260); ++i )
      {
        if ( *(int *)(*(_DWORD *)(v0 + dword_1501D90 + 268) + 8 * i) > 0 )
        {
          sub_6EACE();
          v2 = (_DWORD *)(*(_DWORD *)(v0 + dword_1501D90 + 268) + 8 * i);
          *v2 = 0;
          v2[1] = 0;
        }
      }
      if ( *(int *)(v0 + dword_1501D90 + 264) > 0 )
      {
        sub_6EACE();
        *(_DWORD *)(v0 + dword_1501D90 + 264) = 0;
      }
      *(_DWORD *)(v0 + dword_1501D90 + 268) = 0;
    }
    ++v4;
    v0 += 12;
  }
  while ( v4 != 20 );
  return savedregs_16;
}
