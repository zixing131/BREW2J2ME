int __fastcall sub_20D8(int a1, unsigned __int8 a2, unsigned __int8 a3, char a4, char a5)
{
  char v6; // r3
  int v7; // r7
  int v11; // [sp+20h] [bp-38h]
  int v12; // [sp+24h] [bp-34h]
  char v13; // [sp+28h] [bp-30h]
  _DWORD *v14; // [sp+2Ch] [bp-2Ch]
  _BYTE v15[30]; // [sp+32h] [bp-26h] BYREF
  char v16; // [sp+50h] [bp-8h] BYREF
  unsigned __int8 v17; // [sp+51h] [bp-7h]
  char v18; // [sp+52h] [bp-6h]
  _DWORD savedregs[5]; // [sp+58h] [bp+0h]

  v11 = a2;
  sub_6D00(&v16, (const char *)a2, a3, 183577);
  if ( byte_1501ED4 == 1 )
  {
    v6 = byte_1501E15 + 1;
    v13 = byte_1501E15;
  }
  else
  {
    v13 = byte_1501E15;
    v6 = byte_1501E15 - 1;
  }
  v7 = a1 - 80 * v6;
  v12 = 0;
  v14 = &unk_1501F68;
  do
  {
    if ( v11 == 4 && v12 == v13 )
    {
      v16 = 4;
      v17 = a3;
    }
    else
    {
      v16 = v11;
      v17 = 0;
      v18 = a4;
    }
    sub_6D02(v7, dword_1501BFC + 20, 0, 0, *v14);
    v17 = 0;
    v16 = 0;
    v18 = 0;
    if ( a5 )
    {
      sub_6D00(v15, 0, 30, &unk_140329C);
      sub_6D00(v15, "Slot %d", v12 + 1);
      sub_6D02(v7, dword_1501BFC - 80, v15, 1, 0);
    }
    ++v12;
    v14 += 9;
    v7 += 80;
  }
  while ( v12 != 4 );
  return savedregs[4];
}
