int __fastcall sub_6CF2C(unsigned __int8 a1)
{
  const char *v1; // r1
  const char *v2; // r5
  const char *v3; // r1
  int v4; // r6
  int v5; // r4
  int v6; // r0
  int v7; // r3
  int v8; // r3
  int v9; // r0
  int i; // r3
  int v11; // r4
  const char *v12; // r1
  int v13; // r0
  int v14; // r3
  int *v15; // r3
  int v16; // r0
  int v18; // [sp+4h] [bp-4Ch]
  int v19; // [sp+10h] [bp-40h]
  int v20; // [sp+14h] [bp-3Ch]
  int v21; // [sp+18h] [bp-38h]
  int v22; // [sp+1Ch] [bp-34h]
  _BYTE v23[30]; // [sp+26h] [bp-2Ah] BYREF
  int v24; // [sp+44h] [bp-Ch] BYREF
  int v25; // [sp+48h] [bp-8h] BYREF
  _BYTE v26[2]; // [sp+4Ch] [bp-4h] BYREF
  unsigned __int8 v27; // [sp+4Eh] [bp-2h] BYREF
  unsigned __int8 v28; // [sp+4Fh] [bp-1h] BYREF
  _DWORD savedregs[5]; // [sp+50h] [bp+0h]

  v28 = 0;
  v27 = 0;
  sub_6EACE(v23, "%d.etc", a1);
  v19 = sub_6CBE0(v23);
  if ( v19 )
  {
    sub_6EAD0(v26, v19, 2);
    sub_6EAD0(&v24, v19 + 2, 4);
    sub_6EAD0(&v25, v19 + 6, 4);
    v20 = sub_6EACE(v24, v1);
    v2 = (const char *)v20;
    sub_6EAD0(v19 + 10, v20, v24);
    v21 = 0;
    v18 = 0;
    do
    {
      sub_6EACE(&v27, v2++, 1, &unk_140327C);
      if ( v27 )
      {
        v4 = 8 * v27;
        v5 = dword_1501D90;
        v6 = sub_6EACE(v4 + 2, v3);
        v7 = dword_1501D90;
        *(_DWORD *)(v18 + v5 + 264) = v6;
        v8 = v18 + v7 + 252;
        v9 = *(_DWORD *)(v8 + 12);
        *(_DWORD *)(v8 + 16) = v9;
        sub_6EACE(v9, 0, v4, &unk_140329C);
        *(_BYTE *)(v18 + dword_1501D90 + 260) = v27;
        for ( i = 0; ; i = v22 + 1 )
        {
          v22 = i;
          if ( i >= *(unsigned __int8 *)(v18 + dword_1501D90 + 260) )
            break;
          sub_6EACE(&v28, v2, 1);
          v11 = *(_DWORD *)(v18 + dword_1501D90 + 268);
          v13 = sub_6EACE(v28 + 1, v12, v18, &unk_14032EC);
          v14 = *(_DWORD *)(v18 + dword_1501D90 + 268);
          *(_DWORD *)(8 * v22 + v11) = v13;
          v15 = (int *)(8 * v22 + v14);
          v16 = *v15;
          v15[1] = *v15;
          sub_6EACE(v16, 0, v28 + 1, &unk_140329C);
          sub_6EACE(*(_DWORD *)(*(_DWORD *)(v18 + dword_1501D90 + 268) + 8 * v22 + 4), v2 + 1, v28, &unk_140327C);
          v2 += v28 + 1;
        }
      }
      ++v21;
      v18 += 12;
    }
    while ( v21 != 20 );
    if ( v20 )
      sub_6EACE(v20, v3);
    sub_6EACE(v19, v3);
  }
  return savedregs[4];
}
