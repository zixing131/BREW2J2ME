int __fastcall sub_6EE78(int a1)
{
  int v1; // r1
  _BYTE *v2; // r0
  _BYTE *v3; // r4
  int v4; // r6
  _BYTE *v5; // r5
  int savedregs_12; // [sp+Ch] [bp+Ch]

  v1 = dword_1536348[a1];
  *(_BYTE *)(v1 + 604) = 0;
  *(_BYTE *)(v1 + 605) = 0;
  if ( *(unsigned __int16 *)(v1 + 40) == dword_153653C || (_UNKNOWN **)*(unsigned __int16 *)(v1 + 44) != &off_EA60 )
  {
    v2 = (_BYTE *)(v1 + 48);
    v3 = (_BYTE *)(v1 + 73);
    v4 = 0;
    v5 = (_BYTE *)(v1 + 94);
    while ( v4 < *(unsigned __int16 *)(v1 + 42) )
    {
      if ( *v2 == 23 )
      {
        *(_BYTE *)(v1 + 614) = 1;
        *(_BYTE *)(v1 + 610) = *v5;
        *(_BYTE *)(v1 + 611) = v5[1];
        *(_WORD *)(v1 + 612) = *(_WORD *)(v1 + 40);
      }
      if ( *v2 == 24 )
        *(_BYTE *)(v1 + 614) = 0;
      if ( *v2 == 15 )
      {
        *(_BYTE *)(v1 + 605) = 1;
        if ( *(v3 - 1) == 1 )
          *(_BYTE *)(v1 + 604) = 1;
      }
      if ( *v2 == 19 )
        *(_BYTE *)(v1 + 592) = 1;
      if ( *v2 == 20 )
        *(_BYTE *)(v1 + 592) = 0;
      if ( *v2 == 27 )
      {
        *(_BYTE *)(v1 + 606) = 1;
        *(_BYTE *)(v1 + 607) = *v3;
        *(_BYTE *)(v1 + 608) = v3[1];
        *(_BYTE *)(v1 + 609) = v3[2];
      }
      ++v4;
      v2 += 52;
      v5 += 52;
      v3 += 52;
    }
  }
  return savedregs_12;
}
