int sub_703D8()
{
  char *v0; // r5
  int i; // r6
  int v2; // r4
  __int16 v3; // r3
  int savedregs_12; // [sp+Ch] [bp+Ch]

  v0 = (char *)&unk_1536348;
  for ( i = 0; i < (unsigned __int8)byte_15364FD; ++i )
  {
    v2 = *(_DWORD *)v0;
    *(_WORD *)(v2 + 576) = *(_WORD *)(*(_DWORD *)v0 + 4);
    *(_WORD *)(v2 + 578) = *(_WORD *)(v2 + 6);
    *(_WORD *)(v2 + 580) = *(unsigned __int8 *)(v2 + 1);
    *(_WORD *)(v2 + 584) = 0;
    *(_WORD *)(v2 + 586) = 0;
    *(_BYTE *)(v2 + 606) = 0;
    if ( *(_WORD *)(v2 + 32) )
    {
      sub_7035C(i, *(unsigned __int16 *)(v2 + 30));
      v3 = *(_WORD *)(v2 + 40);
    }
    else
    {
      v3 = -5536;
    }
    *(_WORD *)(v2 + 36) = v3;
    if ( *(_BYTE *)v2 == 2 )
    {
      if ( *(_WORD *)(v2 + 20) )
        *(_DWORD *)(v2 + 568) = sub_70314();
      if ( *(_WORD *)(v2 + 22) )
        *(_DWORD *)(v2 + 572) = sub_70314();
    }
    v0 += 4;
  }
  return savedregs_12;
}
