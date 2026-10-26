int __fastcall sub_39578(int a1)
{
  int v1; // r2
  int v2; // r0
  int savedregs_4; // [sp+4h] [bp+4h]

  if ( byte_1501CC1 != 1 )
  {
    if ( dword_1535EA0 )
    {
LABEL_14:
      sub_30AF4(a1);
      return savedregs_4;
    }
    sub_66A76(&unk_1535E9C, 0, 12, &unk_140329C);
    v1 = *(_DWORD *)(dword_1501D90 + 6888) & 0xFFFF00;
    switch ( v1 )
    {
      case 66560:
      case 66816:
        v2 = 14;
LABEL_13:
        a1 = sub_66A76(v2, &unk_1535E9C, v1, 443061);
        goto LABEL_14;
      case 85760:
        v2 = 15;
        goto LABEL_13;
      case 65536:
      case 65792:
      case 66048:
      case 66304:
        v2 = 13;
        goto LABEL_13;
    }
  }
  return savedregs_4;
}
