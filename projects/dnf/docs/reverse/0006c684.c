int __fastcall sub_6C684(int a1, int a2)
{
  int v2; // r0
  int savedregs; // [sp+0h] [bp+0h]

  switch ( a2 )
  {
    case -1:
    case 8:
      goto LABEL_8;
    case 1:
    case 9:
      if ( !byte_1535E41 )
LABEL_8:
        sub_6C428();
      break;
    case 3:
      if ( dword_1535E44 )
      {
        if ( byte_1535E41 )
        {
          byte_1535E42 = 0;
        }
        else
        {
          byte_1535E40 &= ~1u;
          v2 = sub_6C428();
          sub_6C3F4(v2);
        }
        byte_1533BC9 = 0;
      }
      break;
    default:
      return savedregs;
  }
  return savedregs;
}
