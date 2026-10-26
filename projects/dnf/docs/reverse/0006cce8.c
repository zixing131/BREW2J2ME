int __fastcall sub_6CCE8(unsigned __int8 a1)
{
  int v1; // r0
  const char *v2; // r1
  int v3; // r4
  const char *v4; // r5
  int v5; // r2
  const char *v6; // r1
  int v7; // r0
  int v8; // r3
  int *v9; // r3
  int v10; // r0
  const char *v11; // r4
  int v12; // r5
  int v13; // r4
  const char *v14; // r7
  int *v16; // [sp+14h] [bp-48h]
  int v17; // [sp+18h] [bp-44h]
  int v18; // [sp+1Ch] [bp-40h]
  int i; // [sp+20h] [bp-3Ch]
  int v20; // [sp+24h] [bp-38h]
  int v21; // [sp+28h] [bp-34h]
  const char *v22; // [sp+2Ch] [bp-30h]
  _BYTE v23[30]; // [sp+32h] [bp-2Ah] BYREF
  int v24; // [sp+50h] [bp-Ch] BYREF
  int v25; // [sp+54h] [bp-8h] BYREF
  _BYTE v26[3]; // [sp+58h] [bp-4h] BYREF
  unsigned __int8 v27; // [sp+5Bh] [bp-1h] BYREF
  _DWORD savedregs[5]; // [sp+5Ch] [bp+0h]

  v27 = 0;
  sub_6EACE(v23, "%d.etc", a1);
  v17 = sub_6CBE0(v23);
  if ( v17 )
  {
    sub_6EAD6(v26, v17, 2);
    sub_6EAD6(&v24, v17 + 2, 4);
    sub_6EAD6(&v25, v17 + 6, 4);
    v18 = sub_6EACC(v24);
    v1 = sub_6EAD0(v17 + 10, v18, v24, v25, 6);
    sub_6CB8C(v1);
    sub_6EAD6(&byte_1537B78, v18, 1);
    if ( byte_1537B78 )
    {
      v3 = 40 * (unsigned __int8)byte_1537B78;
      dword_1537B7C = sub_6EACE(v3 + 2, v2);
      dword_1537B80 = dword_1537B7C;
      sub_6EACE(dword_1537B7C, 0, v3, &unk_140329C);
      v4 = (const char *)(v18 + 1);
      v5 = 0;
      for ( i = 0; ; ++i )
      {
        v21 = v5;
        if ( i >= (unsigned __int8)byte_1537B78 )
          break;
        sub_6EACE(&v27, v4, 1);
        v16 = (int *)(v21 + dword_1537B80);
        v7 = sub_6EACE(v27 + 1, v6, dword_1537B80, &unk_14032EC);
        v8 = dword_1537B80;
        *v16 = v7;
        v9 = (int *)(v21 + v8);
        v10 = *v9;
        v9[1] = *v9;
        sub_6EACE(v10, 0, v27 + 1, &unk_140329C);
        sub_6EACE(*(_DWORD *)(dword_1537B80 + v21 + 4), v4 + 1, v27, &unk_140327C);
        v11 = &v4[v27 + 1];
        sub_6EACE(v21 + dword_1537B80 + 8, v11++, 1, &unk_140327C);
        sub_6EACE(v21 + dword_1537B80 + 9, v11++, 1, &unk_140327C);
        sub_6EACE(v21 + dword_1537B80 + 10, v11++, 1, &unk_140327C);
        sub_6EACE(v21 + dword_1537B80 + 11, v11++, 1, &unk_140327C);
        sub_6EACE(v21 + dword_1537B80 + 12, v11++, 1, &unk_140327C);
        sub_6EACE(v21 + dword_1537B80 + 13, v11, 1, &unk_140327C);
        v22 = v11 + 1;
        v20 = 0;
        v14 = v11 + 1;
        do
        {
          v12 = 8 * v20 + 16;
          sub_6EACE(v21 + dword_1537B80 + v12, v14, 1);
          sub_6EACE(v21 + dword_1537B80 + v12 + 2, v14 + 1, 2, &unk_140327C);
          v13 = 8 * v20 + 20;
          sub_6EACE(v21 + dword_1537B80 + v13, v14 + 3, 2, &unk_140327C);
          sub_6EACE(v21 + dword_1537B80 + v13 + 2, v14 + 5, 2, &unk_140327C);
          v14 += 7;
          ++v20;
        }
        while ( v20 != 3 );
        v4 = v22 + 21;
        v5 = v21 + 40;
      }
    }
    if ( v18 )
      sub_6EACE(v18, v2);
    sub_6EACE(v17, v2);
  }
  return savedregs[4];
}
