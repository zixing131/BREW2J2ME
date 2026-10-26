int __fastcall sub_80370(unsigned __int8 a1, unsigned __int8 a2, int a3, unsigned __int16 *a4, _BYTE *a5)
{
  unsigned int v5; // r4
  int v6; // r5
  int v7; // r2
  char v8; // r3
  unsigned __int16 *v10; // r0
  int v11; // r5
  int v12; // r3
  int i; // r6
  int v14; // r5
  int v15; // r4
  int v17; // [sp+4h] [bp-8h]
  int v18; // [sp+8h] [bp-4h]

  v5 = a1;
  v6 = dword_1501D90;
  v17 = a2;
  v18 = (unsigned __int8)sub_78D40(a1);
  if ( *a5 != 17 || (v7 = (unsigned __int8)a5[1], (unsigned __int8)(a5[1] - 19) > 1u) )
  {
    for ( i = 0; i != v18; ++i )
    {
      if ( v5 <= 6 )
      {
        if ( (unsigned __int8)i == 3 )
          v10 = (unsigned __int16 *)(a5 + 52);
        else
          v10 = &a4[4 * (unsigned __int8)i];
      }
      else
      {
        v10 = a4;
      }
      switch ( *(_BYTE *)v10 )
      {
        case 0x30:
          sub_78654((int)v10, v5);
          break;
        case 0x31:
          sub_78684((int)v10, v5);
          break;
        case 0x32:
          sub_786B4((int)v10, v5);
          break;
        case 0x33:
          sub_78700((int)v10, v5);
          break;
        case 0x34:
          sub_78748((int)v10, v5);
          break;
        case 0x35:
          sub_7D2AC(v5, 7);
          break;
        case 0x36:
          sub_787AC((int)v10, v5);
          break;
        case 0x3A:
          v11 = *(_DWORD *)(dword_1501D90 + 16);
          if ( v5 == 9 )
          {
            v12 = 6608;
            goto LABEL_37;
          }
          break;
        case 0x3B:
          v11 = *(_DWORD *)(dword_1501D90 + 16);
          if ( v5 == 9 )
          {
            v12 = 6610;
LABEL_37:
            *(_WORD *)(v11 + v12) += v10[1];
          }
          break;
        case 0x3C:
          sub_79F7C((int)v10, v5);
          break;
        case 0x3D:
          sub_79DE0((int)v10, v5);
          break;
        case 0x3E:
          sub_7B638((int)v10, v5);
          break;
        case 0x3F:
          sub_7B61C((int)v10, v5);
          break;
        case 0x40:
          sub_7B4B0((int)v10);
          break;
        case 0x41:
          sub_7B494((int)v10, v5);
          break;
        case 0x42:
          sub_7B478((int)v10, v5);
          break;
        case 0x43:
          sub_7B45C((int)v10, v5);
          break;
        case 0x44:
          sub_7B440((int)v10, v5);
          break;
        case 0x57:
          sub_7B398((int)v10, v5);
          break;
        case 0x59:
          sub_7B360((int)v10, v5);
          break;
        case 0x5A:
          sub_7B344((int)v10, v5);
          break;
        case 0x5B:
          sub_78830((int)v10, v5);
          break;
        case 0x5C:
          sub_78878((int)v10, v5);
          break;
        case 0x5D:
          sub_788BC((int)v10, v5);
          break;
        case 0x63:
          sub_7E304((int)v10, v5);
          break;
        case 0x64:
          sub_789A0((int)v10, v5);
          break;
        case 0x66:
          sub_7B30C((int)v10, v5);
          break;
        case 0x67:
          sub_7B2F0((int)v10, v5);
          break;
        case 0x68:
          sub_7B2D4((int)v10, v5);
          break;
        case 0x69:
          sub_7B2B8((int)v10, v5);
          break;
        case 0x6A:
          sub_7CEE0((int)v10, v17, v5);
          break;
        case 0x6B:
          sub_7CE64((int)v10, v17, v5);
          break;
        case 0x6C:
          sub_7B264(v10, v5);
          break;
        case 0x6D:
          sub_78A28((int)v10, v5);
          break;
        case 0x6E:
          sub_7B210(v10, v5);
          break;
        case 0x6F:
          sub_7CE14((int)v10, v5);
          break;
        case 0x70:
          sub_7CDC4((int)v10, v5);
          break;
        case 0x71:
          sub_7CD74((int)v10, v5);
          break;
        case 0x72:
          sub_7CD24((int)v10, v5);
          break;
        case 0x73:
          sub_7CCD4((int)v10, v5);
          break;
        case 0x74:
          sub_7B1D0(v10, v5);
          break;
        case 0x75:
          sub_7B190(v10, v5);
          break;
        case 0x76:
          sub_7CC4C(v10, v5);
          break;
        case 0x77:
          sub_7D128((int)v10, v5);
          break;
        case 0x97:
          sub_7B14C((int)v10);
          break;
        default:
          continue;
      }
    }
    v14 = *(_DWORD *)(dword_1501D90 + 16);
    *(_DWORD *)(v14 + 6584) = sub_79E14(0);
    v15 = *(_DWORD *)(dword_1501D90 + 16);
    *(_DWORD *)(v15 + 12) = sub_79C88(0);
    return 1;
  }
  if ( !*(_BYTE *)(v6 + 6888) || *(_BYTE *)(v6 + 6888) == 20 )
    goto LABEL_18;
  if ( v7 != 19 )
  {
    if ( v7 != 20 )
      return 2;
    if ( byte_150007C != 1 )
    {
LABEL_18:
      sub_80706(3, 8);
      return 2;
    }
    if ( byte_1500089 )
      goto LABEL_15;
    v8 = 2;
LABEL_17:
    byte_1500089 = v8;
    return 1;
  }
  if ( byte_150007C != 1 )
  {
    if ( byte_1500089 )
      goto LABEL_15;
    v8 = 1;
    goto LABEL_17;
  }
  if ( !byte_1500089 )
    goto LABEL_18;
  if ( byte_1500089 == 1 )
  {
LABEL_15:
    sub_80706(3, 9);
    return 3;
  }
  byte_1500089 = 1;
  return 1;
}
