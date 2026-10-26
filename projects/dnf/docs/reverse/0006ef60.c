int __fastcall sub_6EF60(int a1)
{
  int v1; // r0
  _BYTE *v2; // r1
  int i; // r4
  int savedregs_4; // [sp+4h] [bp+4h]

  v1 = dword_1536348[a1];
  v2 = (_BYTE *)(v1 + 48);
  for ( i = 0; i < *(unsigned __int16 *)(v1 + 42); ++i )
  {
    if ( *v2 == 19 )
      *(_BYTE *)(v1 + 592) = 1;
    if ( *v2 == 20 )
      *(_BYTE *)(v1 + 592) = 0;
    v2 += 52;
  }
  return savedregs_4;
}
