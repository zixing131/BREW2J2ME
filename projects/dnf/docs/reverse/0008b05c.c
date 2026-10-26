int __fastcall sub_8B05C(int a1, int a2, int a3)
{
  int v3; // r2
  int v5; // [sp+0h] [bp-4h] BYREF
  int savedregs; // [sp+4h] [bp+0h]

  v5 = 0;
  switch ( a1 )
  {
    case 0:
      LOWORD(v5) = 30325;
      v3 = 0;
      goto LABEL_4;
    case 1:
      LOWORD(v5) = 25185;
      v3 = 1;
      goto LABEL_4;
    case 2:
      LOWORD(v5) = 25699;
      v3 = 2;
      goto LABEL_4;
    case 3:
      LOWORD(v5) = 26213;
      v3 = 3;
      goto LABEL_4;
    case 4:
      LOWORD(v5) = 26727;
      v3 = 4;
      goto LABEL_4;
    case 5:
      LOWORD(v5) = 27241;
      v3 = 5;
      goto LABEL_4;
    case 6:
      LOWORD(v5) = 27755;
      v3 = 6;
      goto LABEL_4;
    case 7:
      LOWORD(v5) = 28269;
      v3 = 7;
      goto LABEL_4;
    case 8:
      LOWORD(v5) = 28783;
      v3 = 8;
      goto LABEL_4;
    case 9:
      LOWORD(v5) = 29297;
      v3 = 9;
      goto LABEL_4;
    case 10:
      LOWORD(v5) = 29811;
      v3 = 10;
      goto LABEL_4;
    case 11:
      LOWORD(v5) = 30839;
      v3 = 11;
      goto LABEL_4;
    case 14:
      LOWORD(v5) = 31353;
      v3 = 14;
LABEL_4:
      sub_8AF94((unsigned int)&v5, 2, v3);
      break;
    case 15:
      sub_8B15E(15, a2, a3, sub_8AA3C);
      break;
    default:
      return savedregs;
  }
  return savedregs;
}
