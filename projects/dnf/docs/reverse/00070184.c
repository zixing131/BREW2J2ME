int __fastcall sub_70184(int a1)
{
  int v1; // r7
  int v2; // r2
  unsigned __int8 v3; // r3
  int v4; // r2
  int i; // [sp+4h] [bp-8h]
  _BYTE *v7; // [sp+8h] [bp-4h]
  int savedregs_16; // [sp+1Ch] [bp+10h]

  v1 = dword_1536348[a1];
  v7 = (_BYTE *)(v1 + 48);
  for ( i = 0; i < *(unsigned __int16 *)(v1 + 42); ++i )
  {
    if ( *v7 != 17 )
      goto LABEL_23;
    if ( dword_1535E24 )
    {
      if ( byte_1536760 == 1 && byte_1501CC0 > 0 && (unsigned __int8)++byte_15000BD > 3u )
      {
        byte_15000BD = 0;
        v2 = (unsigned __int16)word_15364FE - 15;
        if ( v2 < dword_153653C )
        {
          if ( (unsigned __int8)byte_15000BC <= 1u )
          {
            byte_15000BC = 1;
            goto LABEL_15;
          }
          v3 = byte_15000BC - 1;
          goto LABEL_13;
        }
        if ( (unsigned __int8)byte_15000BC < byte_1501CC0 )
        {
          v3 = byte_15000BC + 1;
LABEL_13:
          byte_15000BC = v3;
          sub_71334(dword_1535E24, 20 * v3, v2, &unk_140333C);
          goto LABEL_15;
        }
        byte_15000BC = byte_1501CC0;
      }
    }
LABEL_15:
    if ( byte_15000BA )
      goto LABEL_23;
    byte_15000BA = 1;
    byte_15000BC = 0;
    if ( byte_1501CC0 )
    {
      byte_15000BC = 1;
      byte_15000BD = 0;
    }
    v4 = *(unsigned __int16 *)(v1 + 10) + 11;
    if ( (unsigned __int8)byte_15000BB != v4 )
    {
      if ( !byte_1501CC0 )
        goto LABEL_23;
      byte_15000BB = *(_WORD *)(v1 + 10) + 11;
      sub_71334((unsigned __int8)(*(_BYTE *)(v1 + 10) + 11), &unk_1535E28, v4, sub_6C2B4);
    }
    if ( byte_1501CC0 )
      sub_71336(&unk_1535E28, 0, 1);
LABEL_23:
    v7 += 52;
  }
  return savedregs_16;
}
