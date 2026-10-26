int __fastcall sub_6EAD8(int a1)
{
  unsigned __int16 *v1; // r0
  unsigned __int16 *v2; // r1
  int i; // r4
  int v4; // r2
  int savedregs_4; // [sp+4h] [bp+4h]

  v1 = (unsigned __int16 *)dword_1536348[a1];
  v2 = v1 + 26;
  for ( i = 0; i < v1[21]; ++i )
  {
    v1[288] = *(_DWORD *)v2;
    v1[289] = *((_DWORD *)v2 + 1);
    v4 = *((char *)v2 + 9);
    if ( v4 >= 0 )
      v1[292] = v4;
    v2 += 26;
  }
  return savedregs_4;
}
