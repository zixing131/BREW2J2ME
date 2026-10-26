int __fastcall sub_21D30(unsigned __int8 a1)
{
  int v1; // r4
  char v2; // r0
  int v3; // r7
  int v4; // r6
  int v5; // r4
  int v7; // [sp+0h] [bp-8h]
  int v8; // [sp+4h] [bp-4h]

  v1 = a1;
  v2 = sub_1F300();
  if ( v2 != -1 )
  {
    v3 = 24 * v1;
    v7 = 16 * v2;
    v4 = 0;
    v8 = *(unsigned __int8 *)(*(_DWORD *)(dword_150D168 + v7 + 12) + 24 * v1 + 1);
    while ( v8 << 24 > v4 << 24 )
    {
      v5 = *(unsigned __int16 *)(2 * v4 + *(_DWORD *)(*(_DWORD *)(dword_150D168 + v7 + 12) + v3 + 8));
      if ( *(_BYTE *)(252 * v5 + dword_150C9D8) == 1
        && !byte_150C7A8[v5]
        && !sub_1F234(*(unsigned __int16 *)(2 * v4 + *(_DWORD *)(*(_DWORD *)(dword_150D168 + v7 + 12) + v3 + 8)))
        && sub_1FA10(v5) )
      {
        return (__int16)v5;
      }
      ++v4;
    }
  }
  return -1;
}
