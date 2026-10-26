BOOL __fastcall sub_7638C(_WORD *a1, int a2)
{
  __int16 v2; // r5
  int v3; // r6
  int v4; // r4
  int v5; // r7
  int v6; // r2
  __int16 v7; // r12
  int v8; // r1
  int v9; // r4
  int v10; // r0
  BOOL v11; // r5
  int v12; // r2
  __int16 v14; // [sp+4h] [bp-14h]
  __int16 v15; // [sp+8h] [bp-10h]
  __int16 v16; // [sp+Ch] [bp-Ch]
  int v17; // [sp+14h] [bp-4h]

  v14 = a1[4];
  v15 = a1[1];
  v16 = a1[3];
  v2 = *(_WORD *)(a2 + 16);
  v17 = *(_DWORD *)(a2 + 8);
  v3 = *(_DWORD *)(a2 + 4);
  v4 = (__int16)a1[6];
  v5 = *(_DWORD *)(a2 + 12);
  v6 = *(__int16 *)(a2 + 20);
  if ( v4 - (__int16)a1[8] > v6 || v6 > v4 + (__int16)a1[9] )
    return 0;
  v7 = v14 + a1[2];
  v8 = *(_DWORD *)a2 + v2;
  v9 = v17 + v2;
  v10 = (__int16)(v14 + *a1);
  v11 = v10 >= v8 || v10 >= v9 || v7 >= v8 || v7 >= v9;
  if ( v10 > v8 && v10 > v9 && v7 > v8 && v7 > v9 )
    v11 = 0;
  v12 = v15 >= v3 || v15 >= v5 || v16 >= v3;
  if ( v15 > v3 && v15 > v5 && v16 > v3 && v16 > v5 )
    v12 = 0;
  return v11 && v12 > 0;
}
