int __fastcall sub_6F278(int a1)
{
  int v1; // r7
  int v2; // r0
  unsigned int v3; // r1
  char *v4; // r3
  int v5; // r1
  int v6; // r2
  int v7; // r0
  char *v8; // r3
  char *v9; // r3
  char *v10; // r3
  char *v11; // r2
  int v13; // [sp+20h] [bp-8h]
  __int16 v14; // [sp+24h] [bp-4h]
  int savedregs_16; // [sp+38h] [bp+10h]

  v1 = dword_1536348[a1];
  v2 = *(unsigned __int8 *)(v1 + 621);
  if ( byte_1536DA4[20 * v2] )
  {
    if ( *(_WORD *)(v1 + 586) )
    {
      v14 = *(_WORD *)(v1 + 586);
      v13 = 3;
    }
    else
    {
      v13 = 0;
      LOBYTE(v14) = 0;
    }
    v3 = *(unsigned __int16 *)(v1 + 24);
    if ( v3 > 0x1770 )
    {
      if ( (unsigned __int16)(v3 - 8000) <= 0x3E7u )
      {
        v4 = &byte_1536DA4[20 * v2];
        v5 = (__int16)(word_1534730 + *((_WORD *)v4 + 4));
        v6 = (__int16)(word_15346FC + *((_WORD *)v4 + 5));
        v7 = 1;
LABEL_14:
        sub_71334(v7, v5, v6, sub_31704);
        goto LABEL_15;
      }
      if ( (unsigned __int16)(v3 - 10000) > 0x270Fu
        && (unsigned __int16)(v3 + 23536) > 0x17u
        && v3 != 42029
        && v3 != 42032
        && (unsigned __int16)(v3 - 20099) > 2u )
      {
LABEL_15:
        if ( *(unsigned __int16 *)(v1 + 24) == 41001 )
        {
          v9 = &byte_1536DA4[20 * *(unsigned __int8 *)(v1 + 621)];
          sub_71336(
            word_1534730 + *((unsigned __int16 *)v9 + 4),
            word_15346FC + *((unsigned __int16 *)v9 + 5),
            &dword_1501C30,
            v9,
            (unsigned __int8)v9[12],
            0,
            v13,
            0,
            (unsigned __int8)v14,
            0);
        }
        else
        {
          v10 = &byte_1536DA4[20 * *(unsigned __int8 *)(v1 + 621)];
          if ( *(_WORD *)(v1 + 24) )
            v11 = (char *)&unk_153718C + 36 * (unsigned __int8)v10[16];
          else
            v11 = (char *)(*(_DWORD *)(dword_1501D90 + 16) + 68);
          sub_71336(
            word_1534730 + *((unsigned __int16 *)v10 + 4),
            word_15346FC + *((unsigned __int16 *)v10 + 5),
            v11,
            v10,
            (unsigned __int8)v10[12],
            0,
            (unsigned __int8)v13,
            0,
            (unsigned __int8)v14,
            0);
        }
        goto LABEL_21;
      }
    }
    v8 = &byte_1536DA4[20 * v2];
    v5 = (__int16)(word_1534730 + *((_WORD *)v8 + 4));
    v6 = (__int16)(word_15346FC + *((_WORD *)v8 + 5));
    v7 = 2;
    goto LABEL_14;
  }
LABEL_21:
  if ( *(_BYTE *)(v1 + 594) == 1 && byte_1536760 == 1 )
    byte_1536760 = 4;
  return savedregs_16;
}
