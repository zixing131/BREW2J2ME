int sub_711C8()
{
  int v0; // r7
  _BYTE *v1; // r4
  int *v2; // r0
  _BYTE **v4; // [sp+4h] [bp-4h]
  int savedregs_16; // [sp+18h] [bp+10h]

  if ( *(_BYTE *)dword_1536348[(unsigned __int8)byte_1535F30] == 4 )
    sub_703B4((unsigned __int8)byte_1535F30, dword_153653C);
  v0 = 0;
  v4 = (_BYTE **)dword_1536348;
  while ( v0 < (unsigned __int8)byte_15364FD )
  {
    v1 = *v4;
    sub_703B4(v0, dword_153653C);
    sub_6EAD8(v0);
    switch ( *v1 )
    {
      case 0:
        sub_6EB20(v0);
        sub_6FB64(v0);
        sub_6F278(v0);
        break;
      case 2:
        sub_6EE78(v0);
        sub_6F48C(v0);
        break;
      case 3:
        sub_70184(v0);
        break;
      case 4:
        sub_6ECC0((unsigned __int8)byte_1535F30);
        sub_6F870((unsigned __int8)byte_1535F30);
        if ( dword_1501C04 == 240 )
        {
          sub_71336(0, 0, 240, 40, 0);
          sub_71336(0, dword_1501BF0 - 40, dword_1501C04, 40, 0);
        }
        else if ( dword_1501C04 == 320 )
        {
          sub_71336(0, 0, 40, dword_1501BF0, 0);
          sub_71336(dword_1501C04 - 40, 0, 40, dword_1501BF0, 0);
        }
        break;
      case 6:
        sub_6EF60(v0);
        sub_6F1D0(v0);
        break;
      case 7:
        sub_6EFA0(v0);
        sub_6F004(v0);
        break;
      default:
        break;
    }
    ++v4;
    ++v0;
  }
  if ( byte_1536760 == 7 )
    byte_1536760 = 1;
  v2 = &dword_153653C;
  if ( dword_153653C == (unsigned __int16)word_15364FE )
  {
    v2 = (int *)sub_711B4();
  }
  else if ( byte_1536760 == 1 )
  {
    ++dword_153653C;
    goto LABEL_27;
  }
  if ( byte_1536760 == 4 )
  {
    byte_1536760 = 3;
  }
  else if ( byte_1536760 == 6 )
  {
    sub_71184(v2);
  }
LABEL_27:
  sub_6F06C();
  return savedregs_16;
}
