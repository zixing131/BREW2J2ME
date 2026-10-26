int __fastcall sub_11E30(int a1, unsigned int *a2, int a3, unsigned int a4)
{
  int i; // r0
  int v8; // r0
  int j; // r2
  int v10; // r1
  _DWORD v11[2]; // [sp+4h] [bp-8h] BYREF

  v11[0] = a3;
  v11[1] = a4;
  sub_4C((int)v11, (char *)off_11F0C + 73292, 8u, a4);
  for ( i = 0; i < 3; ++i )
  {
    if ( *(unsigned __int16 *)(a1 + 2 * i) != *((unsigned __int16 *)v11 + i) )
      break;
  }
  if ( i == 3 )
  {
    *a2 = 1;
    return 3;
  }
  else
  {
    v8 = 0;
    for ( j = 0; j < 6; ++j )
    {
      v10 = *(unsigned __int16 *)(a1 + 2 * j);
      if ( (unsigned int)(v10 - 48) > 9 )
      {
        if ( (unsigned int)(v10 - 65) > 5 )
        {
          if ( (unsigned int)(v10 - 97) <= 5 )
            v8 = v10 + 16 * v8 - 87;
        }
        else
        {
          v8 = v10 + 16 * v8 - 55;
        }
      }
      else
      {
        v8 = v10 + 16 * v8 - 48;
      }
    }
    *a2 = ((v8 & 0xF80000u) >> 8) | ((unsigned __int16)(v8 & 0xFC00) >> 5) | ((unsigned __int8)v8 >> 3);
    return 6;
  }
}

