int sub_667C4()
{
  int savedregs; // [sp+0h] [bp+0h]

  if ( dword_1501DD4 == 1 )
  {
    if ( dword_1501C5C )
    {
      switch ( dword_1501C5C )
      {
        case 17:
          sub_63848();
          break;
        case 18:
          sub_62730();
          break;
        case 11:
          sub_63A2C();
          break;
        case 13:
          sub_3FBD8();
          break;
        case 14:
          sub_645BC();
          break;
        case 16:
          sub_34D28();
          break;
        case 15:
          sub_63BF0();
          break;
        case 1:
          sub_65F68();
          break;
        case 20:
          sub_4F350();
          break;
        case 19:
          sub_34214();
          break;
        case 21:
          sub_4F3CC();
          break;
        case 2:
          sub_59840();
          break;
        case 3:
          sub_5B584();
          break;
        case 4:
          sub_60D2C();
          break;
        case 5:
          sub_5C23C();
          break;
        case 6:
          sub_50804();
          break;
        case 7:
          sub_4F484();
          break;
        case 8:
          sub_550C8();
          break;
        default:
          if ( dword_1501C5C != 9 )
          {
            switch ( dword_1501C5C )
            {
              case 10:
                ((void (*)(void))loc_648B4)();
                break;
              case 22:
                sub_50E10();
                break;
              case 23:
                sub_50418();
                break;
              case 24:
                sub_50094();
                break;
              case 25:
                sub_54D18();
                break;
              case 26:
                sub_50C98();
                break;
              case 28:
                sub_50F10();
                break;
              case 29:
                sub_4FAAC();
                break;
              case 30:
                sub_4F5C0();
                break;
              case 31:
                sub_52608();
                break;
              case 32:
                sub_52334();
                break;
              case 33:
                sub_51D34();
                break;
              case 34:
                sub_51780();
                break;
              case 35:
                sub_51338();
                break;
              case 36:
                sub_547E8();
                break;
              case 37:
                sub_542E4();
                break;
              case 38:
                sub_541BC();
                break;
              case 39:
                ((void (*)(void))loc_52BD0)();
                break;
              case 1008:
                sub_4F45C();
                break;
            }
          }
          break;
      }
    }
    else if ( *(_BYTE *)(dword_1501D90 + 6893) != 7 || word_1402C5A <= 0 )
    {
      ((void (*)(void))loc_5617C)();
    }
  }
  return savedregs;
}
