int __fastcall sub_1F8C4(__int16 *a1, int a2, int a3)
{
  int result; // r0

  switch ( a1[164] )
  {
    case 0:
      result = sub_1E780((int)a1, a2, a3);
      break;
    case 1:
      result = sub_1ECE8((int)a1, a2, a3);
      break;
    case 2:
      result = sub_1E974(a1, a2, a3);
      break;
    case 3:
      result = sub_1EBBC(a1, a2, a3);
      break;
    case 4:
      result = sub_1EEB0(a1, a2, a3);
      break;
    default:
      result = 1;
      break;
  }
  return result;
}

