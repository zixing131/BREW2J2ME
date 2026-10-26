int __fastcall sub_6D838(unsigned __int8 *a1, int a2)
{
  int v3; // r0
  int v4; // r2
  const char *v5; // r0
  int v6; // r4
  const char *v7; // r0
  int v8; // r4
  int v9; // r4
  const char *v10; // r4
  const char *v11; // r1
  int v12; // r0
  int v13; // r3
  const char *v14; // r3
  int v15; // r0
  int v16; // r0
  int v17; // r4
  int v18; // r4
  int v19; // r0
  int v20; // r3
  int v21; // r3
  int v22; // r0
  int v23; // r3
  int v24; // r0
  int v25; // r2
  const char *v26; // r2
  const char *v27; // r1
  int v29; // [sp+4h] [bp-58h]
  int v30; // [sp+8h] [bp-54h]
  const char *v31; // [sp+Ch] [bp-50h]
  int v32; // [sp+10h] [bp-4Ch]
  int k; // [sp+14h] [bp-48h]
  int v34; // [sp+18h] [bp-44h]
  int j; // [sp+1Ch] [bp-40h]
  const char *i; // [sp+20h] [bp-3Ch]
  int v37; // [sp+24h] [bp-38h]
  int v38; // [sp+28h] [bp-34h]
  _BYTE v39[30]; // [sp+2Eh] [bp-2Eh] BYREF
  int v40; // [sp+4Ch] [bp-10h] BYREF
  int v41; // [sp+50h] [bp-Ch] BYREF
  __int16 v42; // [sp+56h] [bp-6h] BYREF
  char v43[3]; // [sp+58h] [bp-4h] BYREF
  char v44; // [sp+5Bh] [bp-1h] BYREF
  _DWORD savedregs[5]; // [sp+5Ch] [bp+0h]

  v44 = 0;
  v42 = 0;
  sub_6EACE(v39, "%d.act", a2);
  v29 = sub_6CBE0(v39);
  if ( v29 )
  {
    sub_6EAD2(v43, v29, 2);
    sub_6EAD2(&v40, v29 + 2, 4);
    sub_6EAD2(&v41, v29 + 6, 4);
    v30 = sub_6EAD4(v40);
    sub_6EAD0(v29 + 10, v30, v40, v41, 6);
    sub_6EAD2(a1 + 2, v30, 2);
    sub_6EAD2(a1, v30 + 2, 1);
    v38 = v30 + 3;
    v3 = sub_6EAD4(36 * *a1 + 2);
    v4 = 36 * *a1;
    *((_DWORD *)a1 + 4) = v3;
    *((_DWORD *)a1 + 6) = v3;
    sub_6EACE(v3, 0, v4, &unk_140329C);
    v31 = 0;
    for ( i = 0; ; i += 36 )
    {
      v27 = v31;
      if ( (int)v31 >= *a1 )
        break;
      sub_6EAD2(&i[*((_DWORD *)a1 + 6)], v38, 1);
      i[*((_DWORD *)a1 + 6) + 1] = -1;
      sub_6EAD2(&i[*((_DWORD *)a1 + 6) + 4], v38 + 1, 1);
      v5 = &i[*((_DWORD *)a1 + 6)];
      v6 = v38 + 2;
      if ( v5[4] == 1 )
      {
        sub_6EAD2(v5 + 6, v6, 1);
        sub_6EAD2(&i[*((_DWORD *)a1 + 6) + 7], v38 + 3, 1);
        sub_6EAD2(&i[*((_DWORD *)a1 + 6) + 8], v38 + 4, 1);
        sub_6EAD2(&i[*((_DWORD *)a1 + 6) + 9], v38 + 5, 1);
        sub_6EAD2(&i[*((_DWORD *)a1 + 6) + 10], v38 + 6, 1);
        sub_6EAD2(&i[*((_DWORD *)a1 + 6) + 11], v38 + 7, 1);
        v6 = v38 + 8;
      }
      sub_6EAD2(&i[*((_DWORD *)a1 + 6) + 16], v6, 1);
      v7 = &i[*((_DWORD *)a1 + 6)];
      v8 = v6 + 1;
      if ( v7[16] == 1 )
      {
        sub_6EAD2(v7 + 18, v8, 1);
        v9 = v8 + 1;
        sub_6EAD2(&i[*((_DWORD *)a1 + 6) + 19], v9++, 1);
        sub_6EAD2(&i[*((_DWORD *)a1 + 6) + 20], v9++, 1);
        sub_6EAD2(&i[*((_DWORD *)a1 + 6) + 21], v9++, 1);
        sub_6EAD2(&i[*((_DWORD *)a1 + 6) + 22], v9++, 1);
        sub_6EAD2(&i[*((_DWORD *)a1 + 6) + 23], v9, 1);
        v8 = v9 + 1;
      }
      sub_6EAD2(&i[*((_DWORD *)a1 + 6) + 2], v8, 1);
      v38 = v8 + 1;
      v10 = &i[*((_DWORD *)a1 + 6)];
      v12 = sub_6EACE(68 * *((unsigned __int8 *)v10 + 2) + 2, v11);
      v13 = *((_DWORD *)a1 + 6);
      *((_DWORD *)v10 + 7) = v12;
      v14 = &i[v13];
      v15 = *((_DWORD *)v14 + 7);
      *((_DWORD *)v14 + 8) = v15;
      sub_6EACE(v15, 0, 68 * *((unsigned __int8 *)v14 + 2), &unk_140329C);
      v32 = 0;
      for ( j = 0; ; j += 68 )
      {
        v26 = &i[*((_DWORD *)a1 + 6)];
        if ( v32 >= *((unsigned __int8 *)v26 + 2) )
          break;
        sub_6EAD4(j + *((_DWORD *)v26 + 8));
        sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 9);
        v37 = v38 + 2;
        if ( *(_BYTE *)(*(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + j + 9) )
        {
          sub_6EAD4(&v44);
          *(_DWORD *)(*(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + j + 12) = v44;
          sub_6EAD4(&v44);
          *(_DWORD *)(*(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + j + 16) = v44;
          sub_6EAD4(&v44);
          *(_DWORD *)(*(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + j + 20) = v44;
          sub_6EAD4(&v44);
          v37 = v38 + 6;
          *(_DWORD *)(*(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + j + 24) = v44;
        }
        sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 36);
        v16 = j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32];
        v17 = v37 + 1;
        if ( *(_BYTE *)(v16 + 36) )
        {
          sub_6EAD4(v16 + 40);
          sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 42);
          sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 44);
          sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 46);
          sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 56);
          sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 58);
          v17 = v37 + 13;
        }
        sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 2);
        sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 3);
        sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 4);
        sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 5);
        sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 6);
        sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 7);
        sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 8);
        sub_6EAD4(j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + 1);
        v38 = v17 + 8;
        v18 = j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32];
        v19 = sub_6EACE(12 * *(unsigned __int8 *)(v18 + 1) + 2, i);
        v20 = *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32];
        *(_DWORD *)(v18 + 60) = v19;
        v21 = j + v20;
        v22 = *(_DWORD *)(v21 + 60);
        *(_DWORD *)(v21 + 64) = v22;
        sub_6EACE(v22, 0, 12 * *(unsigned __int8 *)(v21 + 1), &unk_140329C);
        v23 = 0;
        for ( k = 0; ; ++k )
        {
          v34 = v23;
          v25 = j + *(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32];
          if ( k >= *(unsigned __int8 *)(v25 + 1) )
            break;
          sub_6EAD2(v23 + *(_DWORD *)(v25 + 64), v38, 1);
          v42 = 0;
          sub_6EAD2(&v42, v38 + 1, 2);
          *(_WORD *)(*(_DWORD *)(*(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + j + 64) + v34 + 2) = v42;
          v42 = 0;
          sub_6EAD2(&v42, v38 + 3, 2);
          v24 = *(_DWORD *)(*(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + j + 64) + v34;
          *(_WORD *)(v24 + 4) = v42;
          sub_6EAD2(v24 + 6, v38 + 5, 1);
          sub_6EAD2(v34 + *(_DWORD *)(*(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + j + 64) + 7, v38 + 6, 1);
          sub_6EAD2(v34 + *(_DWORD *)(*(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + j + 64) + 8, v38 + 7, 1);
          sub_6EAD2(v34 + *(_DWORD *)(*(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + j + 64) + 9, v38 + 8, 1);
          sub_6EAD2(v34 + *(_DWORD *)(*(_DWORD *)&i[*((_DWORD *)a1 + 6) + 32] + j + 64) + 10, v38 + 9, 1);
          v38 += 10;
          v23 = v34 + 12;
        }
        ++v32;
      }
      ++v31;
    }
    if ( v30 )
      sub_6EACE(v30, v31, v30, &unk_14032FC);
    sub_6EACE(v29, v27);
  }
  return savedregs[4];
}
