int __fastcall sub_6DE68(unsigned __int8 *a1, unsigned __int16 a2)
{
  const char *v3; // r1
  const char *v4; // r6
  int i; // r4
  int v6; // r5
  int v7; // r2
  int k; // r4
  int v9; // r5
  const char *v10; // r1
  int v11; // r0
  const char *v12; // r6
  int v13; // r3
  unsigned __int8 *v14; // r4
  const char *v15; // r1
  int v16; // r0
  int v17; // r3
  unsigned __int8 *v18; // r3
  int v19; // r0
  unsigned __int8 *v20; // r2
  const char *v21; // r1
  int v23; // [sp+0h] [bp-58h]
  int v24; // [sp+0h] [bp-58h]
  int v25; // [sp+0h] [bp-58h]
  int v26; // [sp+0h] [bp-58h]
  int v27; // [sp+0h] [bp-58h]
  int v28; // [sp+4h] [bp-54h]
  int v29; // [sp+8h] [bp-50h]
  int v30; // [sp+Ch] [bp-4Ch]
  int n; // [sp+10h] [bp-48h]
  int v32; // [sp+14h] [bp-44h]
  int v33; // [sp+18h] [bp-40h]
  int v34; // [sp+1Ch] [bp-3Ch]
  int v35; // [sp+20h] [bp-38h]
  int j; // [sp+24h] [bp-34h]
  const char *m; // [sp+28h] [bp-30h]
  _BYTE v38[30]; // [sp+2Eh] [bp-2Ah] BYREF
  int v39; // [sp+4Ch] [bp-Ch] BYREF
  int v40; // [sp+50h] [bp-8h] BYREF
  __int16 v41; // [sp+56h] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+58h] [bp+0h]

  sub_6EACE(v38, "%d.fra", a2);
  v28 = sub_6CBE0(v38);
  if ( v28 )
  {
    sub_6EAD2(&v41, v28, 2);
    sub_6EAD2(&v39, v28 + 2, 4);
    sub_6EAD2(&v40, v28 + 6, 4);
    v29 = sub_6EACE(v39, v3);
    sub_6EAD0(v28 + 10, v29, v39, v40, 6);
    sub_6EAD2(a1, v29, 1);
    sub_6EAD2(a1 + 1, v29 + 1, 1);
    v4 = (const char *)(v29 + 2);
    v30 = 0;
    v34 = 0;
    while ( v30 < *a1 )
    {
      v6 = v34;
      for ( i = 0; i < a1[1]; ++i )
      {
        sub_6EACE(&a1[v6 + 4], v4, 2, &unk_140327C);
        v4 += 2;
        v6 += 2;
      }
      ++v30;
      v34 += 20;
    }
    v7 = 0;
    for ( j = 0; ; ++j )
    {
      v33 = v7;
      if ( j >= *a1 )
        break;
      v9 = v7;
      for ( k = 0; k < a1[1]; ++k )
      {
        sub_6EACE(&a1[v9 + 404], v4++, 1, &unk_140327C);
        v9 += 2;
      }
      v7 = v33 + 20;
    }
    sub_6EACE(a1 + 806, v4, 1, &unk_140327C);
    v11 = sub_6EACE(12 * a1[806] + 2, v10);
    *((_DWORD *)a1 + 202) = v11;
    *((_DWORD *)a1 + 204) = v11;
    sub_6EACE(v11, 0, 12 * a1[806], &unk_140329C);
    v12 = v4 + 1;
    v13 = 0;
    for ( m = 0; ; ++m )
    {
      v32 = v13;
      v21 = m;
      if ( (int)m >= a1[806] )
        break;
      sub_6EACE(v13 + *((_DWORD *)a1 + 204), v12, 1, &unk_140327C);
      v14 = (unsigned __int8 *)(v32 + *((_DWORD *)a1 + 204));
      v16 = sub_6EACE(12 * *v14 + 2, v15);
      v17 = *((_DWORD *)a1 + 204);
      *((_DWORD *)v14 + 1) = v16;
      v18 = (unsigned __int8 *)(v32 + v17);
      v19 = *((_DWORD *)v18 + 1);
      *((_DWORD *)v18 + 2) = v19;
      sub_6EACE(v19, 0, 12 * *v18, &unk_140329C);
      ++v12;
      v35 = 0;
      for ( n = 0; ; n += 12 )
      {
        v20 = (unsigned __int8 *)(v32 + *((_DWORD *)a1 + 204));
        if ( v35 >= *v20 )
          break;
        sub_6EAD0(n + *((_DWORD *)v20 + 2), v12, 1, n, v23);
        sub_6EAD0(n + *(_DWORD *)(*((_DWORD *)a1 + 204) + v32 + 8) + 1, v12 + 1, 1, *((_DWORD *)a1 + 204) + v32, v24);
        sub_6EAD0(n + *(_DWORD *)(*((_DWORD *)a1 + 204) + v32 + 8) + 2, v12 + 2, 2, *((_DWORD *)a1 + 204) + v32, v25);
        sub_6EAD0(n + *(_DWORD *)(*((_DWORD *)a1 + 204) + v32 + 8) + 4, v12 + 4, 2, *((_DWORD *)a1 + 204) + v32, v26);
        sub_6EAD0(n + *(_DWORD *)(*((_DWORD *)a1 + 204) + v32 + 8) + 6, v12 + 6, 1, *((_DWORD *)a1 + 204) + v32, v27);
        ++v35;
        v12 += 7;
      }
      v13 = v32 + 12;
    }
    if ( v29 )
      sub_6EACE(v29, m, v29, &unk_14032FC);
    sub_6EACE(v28, v21);
  }
  return savedregs[4];
}
