int __fastcall sub_67FA0(int *a1, int *a2, int *a3, int a4, int a5, int a6)
{
  int v9; // r2
  int v10; // r12
  int v11; // r6
  int v12; // r4
  int v13; // r2
  int v14; // r3
  int v15; // r6
  int v17; // [sp+8h] [bp-30h]
  int v18; // [sp+10h] [bp-28h]
  int v19; // [sp+14h] [bp-24h]
  int v20; // [sp+18h] [bp-20h]
  int v21; // [sp+24h] [bp-14h]
  int v22; // [sp+28h] [bp-10h]
  _DWORD v23[2]; // [sp+30h] [bp-8h] BYREF
  _DWORD savedregs[5]; // [sp+38h] [bp+0h]

  v20 = a2[2];
  if ( v20 > 0 )
  {
    v19 = a2[3];
    if ( v19 > 0 )
    {
      v9 = *a2 + a1[6];
      *a2 = v9;
      v10 = v9;
      v11 = a2[1] + a1[7];
      a2[1] = v11;
      v12 = *a1;
      v13 = a1[5];
      v23[0] = a1;
      v23[1] = a3;
      if ( (a3[2] & 1) == 0 )
      {
        v17 = *a3;
        v21 = *(unsigned __int16 *)(*a3 + 4);
        v22 = *((__int16 *)a3 + 6) * v21 + *(_DWORD *)(*a3 + 12) + *((__int16 *)a3 + 5);
      }
      v14 = 2 * (v20 + v10) + (v11 + v19 - 1) * v13;
      v15 = 0;
      v18 = v12 + v14;
      while ( v15 < a2[3] )
      {
        sub_68DD0(v23, a2[2], v18, v22, a5, a6, v17);
        v18 -= a1[5];
        v22 += v21;
        ++v15;
      }
    }
  }
  return savedregs[4];
}
