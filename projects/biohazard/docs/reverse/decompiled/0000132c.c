int __fastcall sub_132C(_BYTE *a1, int a2, _BYTE *a3)
{
  int v3; // r3
  char *v4; // r12
  char v5; // lr
  _BYTE *v6; // r2
  char v8; // [sp+0h] [bp-4h]
  unsigned __int8 v9; // [sp+1h] [bp-3h]
  unsigned __int8 v10; // [sp+1h] [bp-3h]
  unsigned __int8 v11; // [sp+2h] [bp-2h]
  unsigned __int8 v12; // [sp+2h] [bp-2h]
  char v13; // [sp+3h] [bp-1h]

  v3 = 0;
  v4 = &(*off_1478)[4928];
  while ( a2 > 3 )
  {
    a2 -= 4;
    v3 += 3;
    v8 = v4[*a1 & 0x7F];
    v9 = v4[a1[1] & 0x7F];
    v11 = v4[a1[2] & 0x7F];
    v5 = a1[3];
    a1 += 4;
    v13 = v4[v5 & 0x7F];
    *a3 = (4 * v8) | (v9 >> 4);
    v6 = a3 + 1;
    *v6++ = (16 * v9) | (v11 >> 2);
    *v6 = v13 | (v11 << 6);
    a3 = v6 + 1;
  }
  if ( a2 == 3 )
  {
    v3 += 2;
    v10 = v4[a1[1] & 0x7F];
    v12 = v4[a1[2] & 0x7F];
    *a3 = (4 * v4[*a1 & 0x7F]) | (v10 >> 4);
    a3[1] = (16 * v10) | (v12 >> 2);
  }
  else if ( a2 == 2 )
  {
    ++v3;
    *a3 = (4 * v4[*a1 & 0x7F]) | ((unsigned __int8)v4[a1[1] & 0x7F] >> 4);
  }
  return v3;
}

