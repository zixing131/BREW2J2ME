int __fastcall sub_39724(int a1, const char *a2, int a3)
{
  int v3; // r0
  const char *v4; // r1
  int v5; // r2
  int v6; // r2
  int v7; // r2
  unsigned int v8; // r0
  int v9; // r2
  int v10; // r0
  unsigned int v11; // r0
  int savedregs; // [sp+4h] [bp+0h]
  int savedregs_8; // [sp+Ch] [bp+8h]

  v3 = sub_39388(a1, a2, a3);
  sub_39360(v3, v4, v5);
  if ( byte_1501CC1 != 1 )
  {
    v6 = *(_DWORD *)(dword_1501D90 + 6888) & 0xFFFF00;
    switch ( v6 )
    {
      case 66560:
      case 66816:
        sub_66A76(14, byte_1535E9C);
LABEL_7:
        sub_30AF4();
        return savedregs_8;
      case 85760:
        sub_66A76(15, byte_1535E9C);
        goto LABEL_7;
      case 65536:
      case 65792:
      case 66048:
      case 66304:
        sub_66A76(13, byte_1535E9C);
        goto LABEL_7;
    }
    if ( dword_150D8A0 && *(unsigned __int8 *)(dword_1501D90 + 6893) > 1u )
    {
      if ( *(char *)(dword_150D89C + 8) == (unsigned __int8)byte_150D898
        && *(char *)(dword_150D89C + 9) == (unsigned __int8)byte_150D899 )
      {
        if ( dword_1535E2C )
          return savedregs_8;
        sub_66A76(byte_1535E28, 0, 12, &unk_140329C);
        v8 = 27;
LABEL_28:
        sub_66A76(v8, byte_1535E28, v7, 443061);
        sub_66A78(byte_1535E28, 0, 0, 1, 1, savedregs);
        return savedregs_8;
      }
      if ( *(char *)(dword_150D89C + 4) != (unsigned __int8)byte_150D898
        || *(char *)(dword_150D89C + 5) != (unsigned __int8)byte_150D899 )
      {
        if ( dword_1535E2C )
          return savedregs_8;
        sub_66A76(byte_1535E28, 0, 12, &unk_140329C);
        v7 = dword_1501D90;
        v8 = (unsigned int)((*(char *)(dword_1501D90 + 6893) << 25) + 234881024) >> 24;
        goto LABEL_28;
      }
      if ( !dword_1535E2C )
      {
        sub_66A76(byte_1535E28, 0, 12, &unk_140329C);
        v9 = dword_1501D90;
        v10 = *(char *)(dword_1501D90 + 6893);
        if ( v10 == 7 )
        {
          v11 = 26;
        }
        else
        {
          v9 = 251658240;
          v11 = (unsigned int)((v10 << 25) + 251658240) >> 24;
        }
        sub_66A76(v11, byte_1535E28, v9, 443061);
        sub_66A7A(byte_1535E28, 0, 0, 1);
      }
    }
  }
  return savedregs_8;
}
