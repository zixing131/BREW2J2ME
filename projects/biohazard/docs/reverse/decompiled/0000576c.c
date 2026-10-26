int __fastcall sub_576C(int a1, int a2, int a3, int a4, int a5, signed int a6)
{
  int v7; // r5
  int v8; // r7
  int v9; // r6
  int v10; // r8
  int v12; // r0
  int v13; // lr
  signed int v14; // r3
  int v15; // r12
  signed int v16; // r2
  int v17; // r1
  int v18; // r9
  int v19; // r2
  bool v20; // zf
  bool v21; // zf
  bool v22; // zf
  unsigned __int16 *v23; // r9
  int v25; // [sp+4h] [bp-20h]
  int v26; // [sp+8h] [bp-1Ch]

  v26 = 1;
  v7 = (a2 - 8) / 16;
  v8 = (a3 - 8) / 16;
  v9 = (a4 - 8) / 16;
  v10 = (a5 - 8) / 16;
  v25 = sub_104(a6, (a4 - a2) << 12);
  v12 = sub_104(a6, (a5 - a3) << 12);
  v13 = a3 << 8;
  v14 = 0;
  v15 = a2 << 8;
  while ( v14 < a6 )
  {
    v16 = (v13 >> 8) + ((unsigned int)(v13 >> 31) >> 28);
    v17 = (int)((v15 >> 8) + ((unsigned int)(v15 >> 31) >> 28)) >> 4;
    v15 += v25;
    v18 = v12;
    v13 += v12;
    if ( v17 != v7 )
      v18 = v7 + 1;
    v19 = v16 >> 4;
    v14 += 16;
    if ( v17 != v7 && v18 != v17 )
      goto LABEL_20;
    v20 = v19 == v8;
    if ( v19 != v8 )
      v20 = v8 + 1 == v19;
    if ( !v20 )
    {
LABEL_20:
      v21 = v17 == v9;
      if ( v17 != v9 )
        v21 = v9 + 1 == v17;
      if ( !v21 )
        goto LABEL_26;
      v22 = v19 == v10;
      if ( v19 != v10 )
        v22 = v10 + 1 == v19;
      if ( !v22 )
      {
LABEL_26:
        if ( v17 >= 0 )
        {
          v23 = *(unsigned __int16 **)(a1 + 2200);
          if ( v17 < 2 * *v23
            && v19 >= 0
            && v19 < 2 * v23[1]
            && (*(_BYTE *)(*(_DWORD *)(*((_DWORD *)v23 + 10) + 4 * v19) + v17) & 6) != 0 )
          {
            return 0;
          }
        }
      }
    }
  }
  return v26;
}

