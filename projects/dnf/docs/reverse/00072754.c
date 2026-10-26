int __fastcall sub_72754(char *a1)
{
  int v2; // r6
  int v3; // r2
  unsigned __int8 *v4; // r3
  int v5; // r4
  void *v6; // r0
  int v7; // r2
  void *v8; // r0
  int v9; // r0
  int v10; // r2

  v2 = 0;
  while ( 1 )
  {
    v10 = (unsigned __int8)*a1;
    if ( !*a1 )
      return v2;
    if ( v10 == 36 )
    {
      v3 = (unsigned __int8)a1[1];
      v4 = (unsigned __int8 *)(a1 + 1);
      if ( v3 == 65 || v3 == 97 )
      {
        v5 = 4;
        while ( 1 )
        {
          v7 = (unsigned __int8)a1[v5];
          if ( !a1[v5] )
            break;
          if ( (v7 & 0x80) != 0 )
          {
            v5 += 2;
            v2 += sub_75958(&unk_15377C8);
          }
          else
          {
            if ( v7 == 36 )
            {
              ++v5;
              break;
            }
            if ( *a1 >= 0 )
            {
              if ( (unsigned int)(v7 - 32) > 0x5E )
                v6 = &unk_1536B60;
              else
                v6 = &unk_1536CBC;
              ++v5;
              v2 += sub_75956(v6);
            }
          }
        }
        v4 = (unsigned __int8 *)&a1[v5];
      }
    }
    else
    {
      if ( v10 == 13 || v10 == 10 || v10 == 64 )
        goto LABEL_26;
      if ( (v10 & 0x80) == 0 )
      {
        if ( (unsigned int)(v10 - 32) > 0x5E )
          v8 = &unk_1536B60;
        else
          v8 = &unk_1536CBC;
        v2 += sub_75956(v8);
LABEL_26:
        v4 = (unsigned __int8 *)(a1 + 1);
        goto LABEL_28;
      }
      sub_7271C(a1);
      v9 = sub_75958(&unk_15377C8);
      v4 = (unsigned __int8 *)(a1 + 2);
      v2 += v9;
    }
LABEL_28:
    a1 = (char *)v4;
  }
}
