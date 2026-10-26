int __fastcall sub_420(int a1, char *a2)
{
  char *v2; // r4
  char *v3; // r5
  int v4; // r0
  int v5; // r0

  v2 = (char *)&dword_4B8;
  if ( (unsigned int)(a1 - 1) >= 0xD )
  {
    v3 = aUnknownSignal;
  }
  else
  {
    v3 = &off_4BC[23 * a1 + 1053];
    if ( a1 == 2 )
    {
      if ( ((unsigned int)a2 & 0x4000000) != 0 )
      {
        v2 = aInvalidOperati;
      }
      else if ( (dword_4D4 & (unsigned int)a2) != 0 )
      {
        v2 = aDivideByZero;
      }
      else if ( ((unsigned int)a2 & 0x10000000) != 0 )
      {
        v2 = aOverflow;
      }
      else if ( ((unsigned int)a2 & 0x20000000) != 0 )
      {
        v2 = aUnderflow;
      }
      else if ( ((unsigned int)a2 & 0x40000000) != 0 )
      {
        v2 = aInexactResult;
      }
    }
    else if ( a1 == 8 )
    {
      v2 = a2;
    }
    else if ( a1 == 9 && a2 == (_BYTE *)&dword_0 + 1 )
    {
      v3 = aHeapMemoryCorr;
    }
  }
  sub_540(10);
  while ( *v3 )
  {
    v4 = (unsigned __int8)*v3++;
    sub_540(v4);
  }
  while ( *v2 )
  {
    v5 = (unsigned __int8)*v2++;
    sub_540(v5);
  }
  sub_540(10);
  return 1;
}

