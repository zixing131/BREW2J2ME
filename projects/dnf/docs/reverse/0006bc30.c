int __fastcall sub_6BC30(_DWORD *a1, unsigned __int8 *a2, int a3)
{
  int v5; // r1
  int v6; // r0
  unsigned int v7; // r1
  char **v8; // r1
  char *v9; // r3
  int v10; // r2

  v5 = *a2 ^ 0x80;
  if ( (unsigned __int8)(v5 - 33) > 0xBu && (unsigned __int8)(v5 - 48) > 0x18u && (unsigned __int8)(v5 - 74) > 0x33u )
    goto LABEL_18;
  if ( a3 > 1 )
  {
    if ( (unsigned __int8)((a2[1] ^ 0x80) - 33) <= 0x5Du )
    {
      v7 = 94 * v5 + (a2[1] ^ 0x80) - 3135;
      if ( v7 > 0x581 )
      {
        if ( v7 > 0xF0D )
        {
          if ( v7 > 0x2225 )
            goto LABEL_18;
          v9 = (char *)dword_9A06C + 2 * v7;
          v10 = -7708;
        }
        else
        {
          if ( v7 > 0xEAF )
            goto LABEL_18;
          v9 = (char *)dword_98E10 + 2 * v7;
          v10 = -2820;
        }
        v8 = (char **)*(unsigned __int16 *)&v9[v10];
LABEL_16:
        if ( v8 != (char **)((char *)off_FFFC + 1) )
        {
          *a1 = v8;
          return 2;
        }
        goto LABEL_18;
      }
      if ( v7 <= 0x45A )
      {
        v8 = (char **)*((unsigned __int16 *)&dword_9854C[3] + v7 + 1);
        goto LABEL_16;
      }
    }
LABEL_18:
    v6 = 1;
    return -v6;
  }
  v6 = 2;
  return -v6;
}
