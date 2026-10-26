int __fastcall sub_58EC(int a1, int a2, int a3, int a4, int a5)
{
  int v9; // r4
  int v10; // r8
  int v11; // r0
  int v12; // r2
  int v13; // r0
  int v14; // r1
  int v15; // r3
  int v16; // r6
  int v17; // r12
  int v18; // lr
  unsigned __int16 *v19; // r8

  v9 = 1;
  v10 = sub_197A8(a4);
  v11 = sub_196D8(a4);
  v12 = (char)(v10 >> 4);
  v13 = (char)(v11 >> 4);
  v14 = 0;
  v15 = a2 << 8;
  v16 = a3 << 8;
  while ( v14 < a5 )
  {
    v17 = (int)((v15 >> 8) + ((unsigned int)(v15 >> 31) >> 28)) >> 4;
    v18 = (int)((v16 >> 8) + ((unsigned int)(v16 >> 31) >> 28)) >> 4;
    v16 += v12;
    v15 += v13;
    v14 += 16;
    if ( v17 >= 0 )
    {
      v19 = *(unsigned __int16 **)(a1 + 2200);
      if ( v17 < 2 * *v19
        && v18 >= 0
        && v18 < 2 * v19[1]
        && (*(_BYTE *)(*(_DWORD *)(*((_DWORD *)v19 + 10) + 4 * v18) + v17) & 2) != 0 )
      {
        return 0;
      }
    }
  }
  return v9;
}

