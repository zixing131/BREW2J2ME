int __fastcall sub_12BC8(int a1, unsigned __int16 *a2, int a3, unsigned int a4)
{
  int v6; // r5
  int v8; // r0
  bool v9; // zf
  bool v10; // zf
  bool v11; // cf
  unsigned int v12; // r0
  int v13; // r0
  unsigned int v14; // r0
  unsigned int v16; // [sp+0h] [bp-4h] BYREF

  v16 = a4;
  v6 = 0;
  while ( 1 )
  {
    v14 = *a2;
    if ( !*a2 )
      break;
    if ( v14 == 36 )
    {
      v8 = a2[1];
      v9 = v8 == 110;
      if ( v8 != 110 )
        v9 = v8 == 78;
      if ( v9 )
      {
        a2 += 2;
      }
      else
      {
        v10 = v8 == 116;
        if ( v8 != 116 )
          v10 = v8 == 84;
        if ( v10 )
          a2 += 6;
        else
          a2 += sub_11E30((int)(a2 + 2), &v16, a3, a4) + 2;
      }
    }
    else
    {
      v11 = v14 >= 0x100;
      v12 = *(unsigned __int16 *)(a1 + 50);
      ++a2;
      if ( v11 )
        v13 = v12 + v6;
      else
        v13 = v6 + (v12 >> 1);
      v6 = v13 + a3;
    }
  }
  return v6;
}

