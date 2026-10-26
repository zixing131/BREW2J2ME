int __fastcall sub_27648(unsigned __int16 a1, unsigned __int8 a2)
{
  int v2; // r7
  const char *v3; // r1
  const char *v4; // r1
  int v5; // r6
  int v6; // r7
  const char *v7; // r1
  int v9; // [sp+4h] [bp-3Ch]
  int v10; // [sp+8h] [bp-38h]
  int v11; // [sp+Ch] [bp-34h]
  _BYTE v12[30]; // [sp+12h] [bp-2Eh] BYREF
  int v13; // [sp+30h] [bp-10h] BYREF
  int v14; // [sp+34h] [bp-Ch] BYREF
  __int16 v15; // [sp+3Ah] [bp-6h] BYREF
  _BYTE v16[2]; // [sp+3Ch] [bp-4h] BYREF
  __int16 v17; // [sp+3Eh] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+40h] [bp+0h]

  v2 = a2;
  sub_2BCB6(v12, "%d.bd", a1);
  v9 = sub_2BCB6(v12, v3);
  if ( v9 )
  {
    sub_2BCBC(&v17, v9, 2);
    sub_2BCBC(&v13, v9 + 2, 4);
    sub_2BCBC(&v14, v9 + 6, 4);
    v10 = sub_2BCB6(v13 + 2, v4);
    sub_2BCB8(v9 + 10, v10, v13, v14, 6);
    sub_2BCBC(v16, v10, 2);
    sub_2BCBC(&v15, v10 + 2, 2);
    v5 = v10 + 4 + 10 * v15 * v2;
    v11 = 0;
    v6 = 6896;
    do
    {
      sub_2BCBA(v6 + dword_1501D90, v5, 2);
      sub_2BCBA(v6 + dword_1501D90 + 2, v5 + 2, 2);
      v5 += 4;
      ++v11;
      v6 += 4;
    }
    while ( v11 != 10 );
    if ( v10 )
      sub_2BCB6(v10, v7);
    sub_2BCB6(v9, v7);
  }
  return savedregs[4];
}
