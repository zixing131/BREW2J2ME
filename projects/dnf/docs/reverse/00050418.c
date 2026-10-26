int sub_50418()
{
  unsigned int v0; // r0
  int v1; // r1
  char v2; // r2
  char *v3; // r3
  char v4; // r3
  int v5; // r1
  int v6; // r2
  int v7; // r0
  int v8; // r1
  int v9; // r2
  int v10; // r3
  int *v11; // r2
  int v12; // r1
  int v13; // r2
  int v14; // r0
  int v15; // r1
  int v16; // r2
  int v17; // r0
  char *v18; // r2
  int v19; // r0
  int v20; // r0
  int v21; // r0
  int savedregs_16; // [sp+18h] [bp+10h]

  v0 = sub_4F154(dword_1501D90);
  if ( !v0 )
    return savedregs_16;
  if ( v0 == 56 )
    goto LABEL_21;
  if ( v0 <= 0x38 )
  {
    if ( v0 != 52 )
    {
      if ( v0 <= 0x34 )
      {
        if ( v0 != 50 )
          return savedregs_16;
        goto LABEL_21;
      }
      if ( v0 != 53 )
      {
        if ( v0 != 54 )
          return savedregs_16;
        goto LABEL_26;
      }
      goto LABEL_30;
    }
LABEL_23:
    if ( dword_1501C18 != 1 )
      return savedregs_16;
    if ( (--byte_1533C0B & 0x80) == 0 )
      return savedregs_16;
    v4 = 5;
LABEL_29:
    byte_1533C0B = v4;
    return savedregs_16;
  }
  if ( v0 == -3 )
    goto LABEL_23;
  if ( v0 <= 0xFFFFFFFD )
  {
    if ( v0 != -5 )
    {
      if ( v0 != -4 )
        return savedregs_16;
LABEL_26:
      if ( dword_1501C18 != 1 )
        return savedregs_16;
      if ( ++byte_1533C0B <= 5 )
        return savedregs_16;
      v4 = 0;
      goto LABEL_29;
    }
LABEL_30:
    if ( dword_1501C18 == 1 )
    {
      if ( byte_150C6C4 == 3 && byte_15340F4 && byte_1533C0B > 1 && *((_BYTE *)&unk_1535928 + 60 * byte_1533C0B - 119) )
      {
        byte_150C6CB = byte_1533C0B - 2;
        dword_1501C18 = 2;
      }
      return savedregs_16;
    }
    if ( dword_1501C18 != 2 )
      return savedregs_16;
    switch ( dword_1501DA0 )
    {
      case 0:
        if ( !byte_150C6C4 )
        {
          if ( !sub_66A76(word_150C6BE, v1, &dword_1501DA0, sub_1F5C8) )
          {
            v7 = sub_66A76((unsigned __int16)word_150C6BE, v5, v6, sub_222AC);
            if ( !v7 )
            {
              dword_1501DA0 = 2;
              return savedregs_16;
            }
            sub_66A76(v7, v8, v9, sub_22420);
            v10 = 1;
            goto LABEL_61;
          }
          goto LABEL_45;
        }
        if ( byte_150C6C4 != 3 )
          return savedregs_16;
        if ( sub_66A76(word_150C6BE, v1, &dword_1501DA0, sub_1F558) )
        {
LABEL_45:
          sub_66A78(1, 11, 0, 0);
          v11 = &dword_1501D7C;
LABEL_68:
          v10 = 6;
          goto LABEL_69;
        }
        if ( byte_15340F4 && (byte_150C6CB < 0 || !*((_BYTE *)&unk_1535928 + 60 * byte_150C6CB + 1)) )
        {
          dword_1501DA0 = 3;
          return savedregs_16;
        }
        sub_3587C((unsigned __int16)word_150C6BE);
        sub_3A264((unsigned __int16)word_150C6BE);
        v14 = sub_66A76((unsigned __int16)word_150C6BE, v12, v13, sub_221BC);
        sub_66A76(v14, v15, v16, sub_22420);
        v11 = &dword_1501DA0;
        v10 = 4;
LABEL_69:
        *v11 = v10;
        return savedregs_16;
      case 1:
        v17 = (unsigned __int8)sub_66A78(1, word_150C6BE, 1, 0);
        byte_1402C5C = v17;
        if ( v17 != 255 )
        {
          v11 = &dword_1501DA0;
          v10 = 5;
          goto LABEL_69;
        }
        dword_1501DA0 = 0;
        dword_1501DB4 = 0;
        dword_1501C80 = 0;
        dword_1501C18 = 1;
        dword_1501C58 = 0;
        v18 = &byte_150C6BC;
        v19 = (unsigned __int16)word_150C6C6 << 16;
        if ( v19 <= 0 )
        {
          if ( word_150C6BE == 463 )
            goto LABEL_73;
          goto LABEL_80;
        }
        goto LABEL_76;
      case 2:
        dword_1501C18 = 1;
        dword_1501DA0 = 0;
        dword_1501DB4 = 0;
        dword_1501C80 = 0;
        dword_1501C58 = 0;
        goto LABEL_80;
      case 3:
        v10 = 0;
LABEL_61:
        v11 = &dword_1501DA0;
        goto LABEL_69;
      case 4:
        v20 = (unsigned __int8)sub_66A78(1, word_150C6BE, 1, 0);
        byte_1402C5C = v20;
        if ( v20 != 255 )
        {
          v11 = &dword_1501DA0;
          goto LABEL_68;
        }
        dword_1501C18 = 1;
        v18 = 0;
        dword_1501DA0 = 0;
        dword_1501DB4 = 0;
        dword_1501C80 = 0;
        dword_1501C58 = 0;
        v19 = (unsigned __int16)word_150C6C6 << 16;
        if ( v19 > 0 )
          goto LABEL_76;
        if ( word_150C6C8 <= 0 )
          goto LABEL_80;
        v21 = byte_150C6BD;
        break;
      case 5:
        dword_1501DB4 = 0;
        dword_1501C80 = 0;
        dword_1501C18 = 1;
        dword_1501DA0 = 0;
        dword_1501C58 = 0;
        v18 = &byte_150C6BC;
        v19 = (unsigned __int16)word_150C6C6 << 16;
        if ( v19 <= 0 )
        {
          if ( word_150C6BE == 463 )
          {
LABEL_73:
            byte_153407D = 0;
            byte_153407E = 0;
            sub_34F90();
            byte_153378C = 1;
            dword_1533788 = 0;
            dword_1533790 = 0;
            dword_1533790 = word_1402774[17 * (unsigned __int8)byte_153407D + 16];
            dword_1500058 = dword_1533790;
          }
LABEL_80:
          sub_66A78(1, 0, 0, 0);
          return savedregs_16;
        }
LABEL_76:
        sub_66A76(HIWORD(v19), v1, v18, 460129);
        return savedregs_16;
      case 6:
        dword_1501C18 = 1;
        dword_1501DA0 = 0;
        dword_1501DB4 = 0;
        dword_1501C80 = 0;
        dword_1501C58 = 0;
        v18 = &byte_150C6BC;
        v19 = (unsigned __int16)word_150C6C6 << 16;
        if ( v19 > 0 )
          goto LABEL_76;
        if ( word_150C6C8 <= 0 )
          goto LABEL_80;
        v21 = byte_150C6BD;
        break;
      default:
        return savedregs_16;
    }
    sub_4EE2C(v21);
    return savedregs_16;
  }
LABEL_21:
  if ( dword_1501C18 == 1 )
  {
    dword_1501C18 = 2;
    v2 = 0;
    dword_1501DA0 = 0;
    v3 = &byte_15337C0;
    goto LABEL_20;
  }
  if ( dword_1501C18 == 2 )
  {
    v2 = dword_1501DA0;
    if ( !dword_1501DA0 )
    {
      dword_1501C18 = 1;
      v3 = &byte_1533C0B;
LABEL_20:
      *v3 = v2;
    }
  }
  return savedregs_16;
}
