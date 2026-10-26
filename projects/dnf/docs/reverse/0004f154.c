int __fastcall sub_4F154(int a1, int a2)
{
  int v2; // r2
  int v3; // r5
  int v4; // r4
  char *v5; // r2
  int *v6; // r5
  int v7; // r4
  int v8; // r3
  int v9; // r2
  int *v10; // r3
  int v11; // r3
  int v12; // r0
  int v13; // r3
  int v14; // r0
  int v15; // r1
  int v16; // r0

  v2 = *(_DWORD *)(dword_1501D90 + 16);
  v3 = a1;
  if ( *(_BYTE *)(v2 + 56) )
  {
    v4 = dword_1535DD8[0];
    if ( dword_1535DD8[0] == 49
      || dword_1535DD8[0] == 51
      || dword_1535DD8[0] == 55
      || dword_1535DD8[0] == 57
      || dword_1535DD8[0] == 48 )
    {
LABEL_16:
      sub_66A76(a1, a2, v2, 441297);
      return v4;
    }
  }
  v5 = (char *)*(unsigned __int8 *)(v2 + 74);
  if ( (unsigned __int8)((_BYTE)v5 - 20) <= 2u
    || (unsigned __int8)((_BYTE)v5 - 72) <= 2u
    || (unsigned __int8)((_BYTE)v5 - 75) <= 2u
    || (unsigned __int8)((_BYTE)v5 - 78) <= 2u
    || (unsigned __int8)((_BYTE)v5 - 83) <= 3u )
  {
    v6 = dword_1535DD8;
    v7 = 0;
    while ( 1 )
    {
      v8 = *v6;
      if ( *v6 == 49 )
      {
        v9 = *(_DWORD *)(dword_1501D90 + 16);
        v10 = (_DWORD *)sub_1468;
        goto LABEL_28;
      }
      switch ( v8 )
      {
        case '3':
          v9 = *(_DWORD *)(dword_1501D90 + 16);
          v10 = &dword_14D0;
          goto LABEL_28;
        case '7':
          v9 = *(_DWORD *)(dword_1501D90 + 16);
          v10 = (_DWORD *)&loc_1538;
          goto LABEL_28;
        case '9':
          v9 = *(_DWORD *)(dword_1501D90 + 16);
          v11 = 173;
          break;
        case '0':
          v9 = *(_DWORD *)(dword_1501D90 + 16);
          v10 = (_DWORD *)(&loc_1606 + 2);
          goto LABEL_28;
        case '*':
          v9 = *(_DWORD *)(dword_1501D90 + 16);
          v11 = 186;
          break;
        default:
          goto LABEL_29;
      }
      v10 = (int *)(32 * v11);
LABEL_28:
      a1 = sub_66A76(*((unsigned __int8 *)v10 + v9), a2, v9, 490725);
      if ( a1 )
      {
        v2 = 4 * v7;
        v4 = dword_1535DD8[v7];
        goto LABEL_16;
      }
LABEL_29:
      ++v7;
      ++v6;
      if ( v7 == 3 )
        return 0;
    }
  }
  v12 = *(_DWORD *)(a1 + 16);
  if ( byte_1535DD0 )
  {
    v13 = *(unsigned __int8 *)(v12 + 74);
    switch ( v13 )
    {
      case 3:
        v12 = sub_66A76(v12 + 68, 0, 1, 483653);
        if ( *(unsigned __int8 *)(*(_DWORD *)(v3 + 16) + 65) <= 1u )
        {
          v5 = &byte_15347E4;
          byte_15347E4 = 1;
        }
        goto LABEL_48;
      case 2:
        v14 = v12 + 68;
        v15 = 0;
        break;
      case 87:
        v14 = v12 + 68;
        v15 = 32;
        break;
      case 109:
        v14 = v12 + 68;
        v15 = 33;
        break;
      case 89:
        v14 = v12 + 68;
        v15 = 42;
        break;
      case 110:
        v14 = v12 + 68;
        v15 = 88;
        break;
      case 63:
        v14 = v12 + 68;
        v15 = 108;
        break;
      default:
LABEL_48:
        v4 = sub_66A76(v12, a2, v5, 441241);
        a1 = *(unsigned __int8 *)(*(_DWORD *)(v3 + 16) + 74);
        if ( ((unsigned __int8)(*(_BYTE *)(*(_DWORD *)(v3 + 16) + 74) - 25) <= 1u || a1 == 55)
          && v4 != 52
          && v4 != -3
          && v4 != 54
          && v4 != -4 )
        {
          v4 = 0;
        }
        goto LABEL_16;
    }
    v12 = sub_66A76(v14, v15, 1, 483653);
    goto LABEL_48;
  }
  v16 = *(unsigned __int8 *)(v12 + 74);
  if ( v16 != 87 && v16 != 109 && v16 != 89 && v16 != 110 && v16 != 63 )
    return sub_66A76(v16, a2, v5, 441241);
  sub_66A76(v16, a2, v5, 441297);
  return 0;
}
