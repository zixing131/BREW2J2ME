int __fastcall sub_2220(unsigned __int8 a1, unsigned __int8 a2, int a3)
{
  int v3; // r0
  int v4; // r1
  int v6; // [sp+1Ch] [bp-3Ch]
  int v7; // [sp+20h] [bp-38h]
  int v8; // [sp+24h] [bp-34h]
  int v9; // [sp+28h] [bp-30h]
  _DWORD *v10; // [sp+2Ch] [bp-2Ch]
  _BYTE v11[30]; // [sp+32h] [bp-26h] BYREF
  char v12; // [sp+50h] [bp-8h] BYREF
  char v13; // [sp+51h] [bp-7h]
  _DWORD savedregs[5]; // [sp+58h] [bp+0h]

  v7 = a1;
  v6 = a2;
  sub_6D00(&v12, (const char *)a2, a3, 183577);
  v9 = 1;
  v10 = &unk_1501F68;
  do
  {
    v8 = v9 - 1;
    if ( v9 - 1 == byte_1501E15 )
    {
      if ( v6 )
      {
        v12 = 4;
        v13 = 1;
        sub_6D02(dword_1501C14, dword_1501BFC + 20, 0, 0, *v10);
        v12 = 0;
        v13 = 0;
      }
      else if ( v7 )
      {
        sub_1BE4(v8);
        sub_6D02(
          80 * (v8 - byte_1501E15) + dword_1501C14,
          dword_1501BFC + 20,
          (char *)&unk_1501F4C + 36 * byte_1501E15,
          (char *)&unk_1501ED8 + 16 * byte_1501E15,
          0);
      }
      else
      {
        sub_6D02(dword_1501C14, dword_1501BFC + 20, 0, 0, *v10);
      }
      sub_6D00(v11, 0, 30, &unk_140329C);
      sub_6D00(v11, "Slot %d", v9);
      v3 = 80 * (v8 - byte_1501E15) + dword_1501C14;
      v4 = dword_1501BFC - 80;
    }
    else
    {
      sub_6D02(80 * (v8 - byte_1501E15) + dword_1501C14, dword_1501BFC + 20, 0, 0, *v10);
      sub_6D00(v11, 0, 30, &unk_140329C);
      sub_6D00(v11, "Slot %d", v9);
      v3 = 80 * (v8 - byte_1501E15) + dword_1501C14;
      v4 = dword_1501BFC - 80;
    }
    sub_6D02(v3, v4, v11, 1, 0);
    ++v9;
    v10 += 9;
  }
  while ( v9 != 5 );
  return savedregs[4];
}
