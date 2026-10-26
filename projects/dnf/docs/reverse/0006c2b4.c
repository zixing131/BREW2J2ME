int __fastcall sub_6C2B4(unsigned __int8 a1, unsigned int *a2)
{
  const char *v3; // r1
  int v4; // r0
  int v5; // r0
  unsigned int v6; // r2
  const char *v7; // r1
  int v8; // r4
  int *v9; // r4
  const char *v10; // r1
  int v11; // r0
  unsigned int v12; // r3
  int *v13; // r3
  int v14; // r0
  int v15; // r2
  int v17; // [sp+4h] [bp-38h]
  int v18; // [sp+8h] [bp-34h]
  unsigned int i; // [sp+Ch] [bp-30h]
  int v20; // [sp+10h] [bp-2Ch]
  _BYTE v21[30]; // [sp+16h] [bp-26h] BYREF
  int v22; // [sp+34h] [bp-8h] BYREF
  int v23; // [sp+38h] [bp-4h] BYREF
  _DWORD savedregs[5]; // [sp+3Ch] [bp+0h]

  sub_6C778(v21, "%d.snd", a1);
  v4 = sub_6C778(v21, v3);
  v17 = v4;
  if ( v4 )
  {
    sub_6C77C(&v22, v4 + 2, 4);
    sub_6C77C(&v23, v17 + 6, 4);
    v18 = sub_6C77E(v22 + 2);
    sub_6C77A(v17 + 10, v18, v22, v23, 6);
    *a2 = 0;
    sub_6C77C(a2, v18, 1);
    v5 = sub_6C77E(16 * *a2 + 2);
    v6 = *a2;
    a2[1] = v5;
    a2[2] = v5;
    sub_6C778(v5, 0, 16 * v6, &unk_140329C);
    v8 = v18 + 1;
    for ( i = 0; i < *a2; ++i )
    {
      sub_6C77E(16 * i + a2[2] + 8);
      sub_6C77E(16 * i + a2[2] + 4);
      v20 = v8 + 5;
      v9 = (int *)(16 * i + a2[2]);
      v11 = sub_6C778(v9[1] + 2, v10);
      v12 = a2[2];
      *v9 = v11;
      v13 = (int *)(16 * i + v12);
      v14 = *v13;
      v15 = v13[1];
      v13[3] = *v13;
      sub_6C778(v14, 0, v15, &unk_140329C);
      sub_6C77E(*(_DWORD *)(16 * i + a2[2] + 12));
      v8 = v20 + *(_DWORD *)(a2[2] + 16 * i + 4);
    }
    if ( v18 )
      sub_6C778(v18, v7);
    sub_6C778(v17, v7);
  }
  return savedregs[4];
}
