int __fastcall sub_6ECC0(int a1)
{
  int v1; // r0
  int v2; // r3
  _BYTE *v3; // r1
  int v4; // r5
  _BYTE *i; // r4
  int savedregs_12; // [sp+Ch] [bp+Ch]

  v1 = dword_1536348[a1];
  *(_BYTE *)(v1 + 595) = 0;
  *(_BYTE *)(v1 + 596) = 0;
  *(_BYTE *)(v1 + 597) = 0;
  *(_BYTE *)(v1 + 598) = 0;
  *(_BYTE *)(v1 + 599) = 0;
  *(_BYTE *)(v1 + 600) = 0;
  *(_BYTE *)(v1 + 601) = 0;
  *(_BYTE *)(v1 + 602) = 0;
  if ( dword_1501C04 == 240 )
  {
    word_1534730 = -*(_WORD *)(v1 + 576);
    word_15346FC = 40 - *(_WORD *)(v1 + 578);
  }
  else
  {
    if ( dword_1501C04 == 320 )
      LOWORD(v2) = 40 - *(_WORD *)(v1 + 576);
    else
      v2 = -*(unsigned __int16 *)(v1 + 576);
    word_1534730 = v2;
    word_15346FC = -*(_WORD *)(v1 + 578);
  }
  if ( *(unsigned __int16 *)(v1 + 40) == dword_153653C || (_UNKNOWN **)*(unsigned __int16 *)(v1 + 44) != &off_EA60 )
  {
    v3 = (_BYTE *)(v1 + 48);
    v4 = 0;
    for ( i = (_BYTE *)(v1 + 94); ; i += 52 )
    {
      if ( v4 >= *(unsigned __int16 *)(v1 + 42) )
        return savedregs_12;
      if ( *v3 == 23 )
      {
        *(_BYTE *)(v1 + 614) = 1;
        *(_BYTE *)(v1 + 610) = *i;
        *(_BYTE *)(v1 + 611) = i[1];
        *(_WORD *)(v1 + 612) = *(_WORD *)(v1 + 40);
      }
      if ( *v3 == 24 )
        *(_BYTE *)(v1 + 614) = 0;
      if ( *v3 == 10 )
      {
        if ( *(unsigned __int16 *)(v1 + 40) != dword_153653C )
          goto LABEL_22;
        *(_BYTE *)(v1 + 595) = 1;
        *(_BYTE *)(v1 + 596) = v4;
      }
      if ( *v3 == 11 )
      {
        if ( *(unsigned __int16 *)(v1 + 40) != dword_153653C )
          goto LABEL_24;
        *(_BYTE *)(v1 + 597) = 1;
        *(_BYTE *)(v1 + 598) = v4;
      }
      if ( *v3 == 13 )
      {
        *(_BYTE *)(v1 + 599) = 1;
        *(_BYTE *)(v1 + 600) = v4;
      }
LABEL_22:
      if ( *v3 == 14 )
      {
        *(_BYTE *)(v1 + 601) = 1;
        *(_BYTE *)(v1 + 602) = v4;
      }
LABEL_24:
      if ( *v3 == 19 )
        *(_BYTE *)(v1 + 592) = 1;
      if ( *v3 == 20 )
        *(_BYTE *)(v1 + 592) = 0;
      if ( *v3 == 29 )
        *(_BYTE *)(v1 + 592) = 2;
      if ( *v3 == 30 )
        *(_BYTE *)(v1 + 592) = 0;
      if ( *v3 == 31 )
        *(_BYTE *)(v1 + 592) = 3;
      if ( *v3 == 32 )
        *(_BYTE *)(v1 + 592) = 0;
      ++v4;
      v3 += 52;
    }
  }
  return savedregs_12;
}
