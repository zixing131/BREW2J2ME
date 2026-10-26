int __fastcall sub_103F4(_WORD *a1, __int16 a2, __int16 a3)
{
  int result; // r0

  result = sub_118E0();
  if ( result )
  {
    a1[10] = 0;
    a1[4] = 0;
    a1[2] = -1;
    a1[1] = a2;
    a1[5] = a3;
    return -1;
  }
  return result;
}

