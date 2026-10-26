void *__fastcall sub_8AECC(int a1, int a2, int a3)
{
  int *v3; // r1

  switch ( a1 )
  {
    case 0:
      v3 = &dword_9D120;
      goto LABEL_4;
    case 1:
      v3 = &dword_9D1A4;
      goto LABEL_4;
    case 2:
      v3 = &dword_9D1A8;
      goto LABEL_4;
    case 3:
      v3 = &dword_9D1AC;
      goto LABEL_4;
    case 4:
      v3 = &dword_9D1B0;
      goto LABEL_4;
    case 5:
      v3 = &dword_9D1B4;
      goto LABEL_4;
    case 6:
      v3 = &dword_9D1B8;
      goto LABEL_4;
    case 7:
      v3 = &dword_9D1BC;
      goto LABEL_4;
    case 8:
      v3 = &dword_9D1C0;
      goto LABEL_4;
    case 9:
      v3 = &dword_9D1C4;
      goto LABEL_4;
    case 10:
      v3 = &dword_8FD04;
      goto LABEL_4;
    case 11:
      v3 = &dword_90C08;
      goto LABEL_4;
    case 12:
      v3 = (int *)"LEFT";
      goto LABEL_4;
    case 13:
      v3 = (int *)"RIGHT";
      goto LABEL_4;
    case 14:
      v3 = (int *)"SPACE";
      goto LABEL_4;
    case 15:
      v3 = (int *)"CLEAR";
      goto LABEL_4;
    case 16:
      v3 = (int *)"CHANGE";
      goto LABEL_4;
    case 17:
      v3 = (int *)&unk_8CE7C;
LABEL_4:
      sub_8B15C(&unk_153AD9D, v3, &unk_140323C);
      break;
    default:
      sub_8B15E(&unk_153AD9D, 598380, a3, &unk_140323C);
      break;
  }
  return &unk_153AD9D;
}
