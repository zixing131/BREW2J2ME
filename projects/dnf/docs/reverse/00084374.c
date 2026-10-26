int __fastcall sub_84374(unsigned __int16 a1)
{
  const char *v1; // r1
  const char *v2; // r1
  const char *v3; // r1
  int v4; // r7
  int v5; // r1
  int v6; // r4
  int v8; // [sp+4h] [bp-4Ch]
  int v9; // [sp+8h] [bp-48h]
  int v10; // [sp+Ch] [bp-44h]
  int v11; // [sp+10h] [bp-40h]
  int v12; // [sp+14h] [bp-3Ch]
  _DWORD *v13; // [sp+18h] [bp-38h]
  _BYTE v14[30]; // [sp+22h] [bp-2Eh] BYREF
  int v15; // [sp+40h] [bp-10h] BYREF
  int v16; // [sp+44h] [bp-Ch] BYREF
  __int16 v17; // [sp+4Ah] [bp-6h] BYREF
  _BYTE v18[2]; // [sp+4Ch] [bp-4h] BYREF
  __int16 v19; // [sp+4Eh] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+50h] [bp+0h]

  sub_8A950(v14, "%d.bd", a1);
  v9 = sub_8A950(v14, v1);
  if ( v9 )
  {
    sub_8A954(&v19, v9, 2);
    sub_8A954(&v15, v9 + 2, 4);
    sub_8A954(&v16, v9 + 6, 4);
    v10 = sub_8A950(v15 + 2, v2);
    sub_8A952(v9 + 10, v10, v15, v16, 6);
    sub_8A954(v18, v10, 2);
    sub_8A954(&v17, v10 + 2, 2);
    v11 = 0;
    v13 = &unk_1538860;
    v8 = 0;
    while ( v11 < (unsigned __int8)byte_153341C )
    {
      v12 = 0;
      v4 = 4 * v8 + 8;
      do
      {
        v5 = v10 + 4 + (__int16)(*(unsigned __int8 *)(16 * v12 + *v13 + 87) * v17);
        v6 = v5 + 1;
        sub_8A956((char *)&unk_1538860 + v4, v5, 1);
        sub_8A956((char *)&unk_1538860 + v4 + 1, v6, 1);
        sub_8A956((char *)&unk_1538860 + v4 + 2, v6 + 1, 1);
        ++v12;
        v4 += 4;
      }
      while ( v12 != 3 );
      ++v11;
      v8 += 40;
      v13 += 40;
    }
    if ( v10 )
      sub_8A950(v10, v3, v10, &unk_14032FC);
    sub_8A950(v9, v3);
  }
  return savedregs[4];
}
