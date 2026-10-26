int __fastcall sub_6EB20(int a1)
{
  int v1; // r1
  unsigned __int8 *v2; // r0
  int v3; // r5
  _BYTE *v4; // r4
  int v5; // r2
  int v6; // r3
  int savedregs_12; // [sp+Ch] [bp+Ch]

  v1 = dword_1536348[a1];
  *(_BYTE *)(v1 + 593) = 0;
  v2 = (unsigned __int8 *)(v1 + 48);
  v3 = 0;
  v4 = (_BYTE *)(v1 + 87);
  *(_WORD *)(v1 + 582) = 0;
  while ( v3 < *(unsigned __int16 *)(v1 + 42) )
  {
    if ( v2[1] && *v2 == 2 )
    {
      *(_WORD *)(v1 + 580) = *((_DWORD *)v2 + 12);
      *(_WORD *)(v1 + 582) = 1;
      v2[1] = 0;
    }
    if ( *v2 == 6 )
    {
      v5 = (char)v2[15];
      if ( v5 == 1 )
      {
        LOWORD(v5) = 23;
LABEL_15:
        *(_WORD *)(v1 + 586) = v5;
        goto LABEL_16;
      }
      if ( v5 > 1 )
      {
        if ( v5 == 2 )
        {
          LOWORD(v5) = 15;
        }
        else
        {
          if ( v5 != 3 )
            goto LABEL_16;
          LOWORD(v5) = 7;
        }
        goto LABEL_15;
      }
      if ( !v2[15] )
        goto LABEL_15;
    }
LABEL_16:
    if ( *v2 == 28 )
      *(_BYTE *)(v1 + 620) = v4[2];
    if ( *v2 == 25 )
    {
      *(_BYTE *)(v1 + 617) = 1;
      *(_BYTE *)(v1 + 615) = *v4;
      *(_BYTE *)(v1 + 616) = v4[1];
    }
    if ( *v2 == 26 )
    {
      *(_BYTE *)(v1 + 617) = 0;
      *(_BYTE *)(v1 + 615) = -1;
      *(_BYTE *)(v1 + 616) = -1;
    }
    if ( *v2 == 21 )
    {
      *(_BYTE *)(v1 + 618) = 1;
      *(_BYTE *)(v1 + 619) = v2[12];
    }
    if ( *v2 == 22 )
    {
      *(_BYTE *)(v1 + 618) = 0;
      *(_BYTE *)(v1 + 619) = -1;
    }
    if ( *v2 == 23 )
    {
      *(_BYTE *)(v1 + 614) = 1;
      *(_BYTE *)(v1 + 610) = v4[7];
      *(_BYTE *)(v1 + 611) = v4[8];
      *(_WORD *)(v1 + 612) = *(_WORD *)(v1 + 40);
    }
    if ( *v2 == 24 )
      *(_BYTE *)(v1 + 614) = 0;
    if ( !v2[1] )
      goto LABEL_38;
    v6 = *v2;
    if ( v6 == 18 )
    {
      *(_BYTE *)(v1 + 593) = 1;
      goto LABEL_35;
    }
    if ( v6 != 19 )
    {
      if ( v6 == 20 )
      {
        if ( *(unsigned __int16 *)(v1 + 40) > dword_153653C )
          goto LABEL_42;
        *(_BYTE *)(v1 + 592) = 0;
        v2[1] = 0;
      }
      goto LABEL_38;
    }
    if ( *(unsigned __int16 *)(v1 + 40) <= dword_153653C )
    {
      *(_BYTE *)(v1 + 592) = 1;
LABEL_35:
      v2[1] = 0;
LABEL_38:
      if ( *v2 == 29 )
        *(_BYTE *)(v1 + 594) = 1;
    }
    if ( *v2 == 30 )
      *(_BYTE *)(v1 + 594) = 0;
LABEL_42:
    ++v3;
    v2 += 52;
    v4 += 52;
  }
  return savedregs_12;
}
