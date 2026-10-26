int __fastcall sub_7CF20(int a1, int a2)
{
  unsigned int v3; // r3
  int v4; // r5
  unsigned int v5; // r4
  int v6; // r0
  int v7; // r2
  __int16 v8; // r2
  unsigned int v9; // r7
  int v10; // r4
  unsigned int v11; // r0
  int v12; // r3
  __int16 v13; // r0
  unsigned __int8 *v14; // r2
  int v15; // r2
  unsigned int v16; // r3
  int v17; // r1
  int v18; // r0
  int v19; // r2
  int v20; // r3
  __int16 v21; // r0
  unsigned __int8 v22; // r3
  int v23; // r4
  int v24; // r2
  __int16 v25; // r5
  int v26; // r2
  __int16 v27; // r0
  unsigned __int8 v28; // r3
  int v30; // [sp+0h] [bp-8h]
  unsigned int v31; // [sp+4h] [bp-4h]
  int savedregs_16; // [sp+18h] [bp+10h]

  if ( a2 > 0 )
  {
    v3 = *(unsigned __int8 *)(a1 + 6597);
    if ( v3 <= 0x3B )
    {
      v30 = *(_DWORD *)(a1 + 16);
      v31 = v30 + a2;
      if ( v3 > 0x11 )
      {
        if ( v3 > 0x27 )
          v4 = 40;
        else
          v4 = 36;
      }
      else
      {
        v4 = 33;
      }
      v5 = *(_DWORD *)(a1 + 20);
      if ( v31 >= v5 )
      {
        v6 = sub_8070E(*(_DWORD *)(a1 + 20), v4, v30);
        v8 = v4 - sub_8070E(v30, v6 + 1, v7);
        if ( v8 < 0 )
          LOBYTE(v8) = 0;
        *(_WORD *)(a1 + 2) += (unsigned __int8)v8;
        *(_WORD *)(a1 + 4) += (unsigned __int8)v8;
        v9 = v31 - v5;
        ++*(_BYTE *)(a1 + 6597);
        *(_DWORD *)(a1 + 16) = v31 - v5;
        v10 = *(unsigned __int8 *)(a1 + 6597);
        v11 = sub_80706(230 * v10 * v10 * v10, 100) + 700 * v10;
        *(_DWORD *)(a1 + 20) = v11;
        if ( v9 >= v11 )
          *(_DWORD *)(a1 + 16) = v11 - 1;
        v12 = *(char *)(a1 + 50);
        if ( *(_BYTE *)(a1 + 50) )
          v12 = (unsigned __int8)((*(char *)(*(_DWORD *)(dword_1501D90 + 16) + 50) - 1) % 4 + 1);
        v13 = *(unsigned __int8 *)(a1 + 6597);
        *(_WORD *)(a1 + 1060) = v13 * byte_1402FA4[6 * v12];
        v14 = &byte_1402FA4[6 * v12];
        *(_WORD *)(a1 + 1062) = v13 * v14[1];
        *(_WORD *)(a1 + 1064) = v13 * v14[2];
        *(_WORD *)(a1 + 1066) = v13 * v14[3];
        *(_DWORD *)(a1 + 6580) = sub_79E14(0);
        *(_DWORD *)(a1 + 8) = sub_79C88(0);
        sub_773A4();
        sub_773DC();
        sub_80708(
          1,
          0,
          *(__int16 *)(*(_DWORD *)(dword_1501D90 + 16) + 58),
          *(__int16 *)(*(_DWORD *)(dword_1501D90 + 16) + 60));
        v16 = *(unsigned __int8 *)(a1 + 6597);
        if ( v16 > 0x11 )
        {
          if ( v16 > 0x27 )
            v17 = 40;
          else
            v17 = 36;
        }
        else
        {
          v17 = 33;
        }
        v18 = sub_80708(*(_DWORD *)(a1 + 20), v17, v15, v16);
        v21 = sub_80708(v9, v18 + 1, v19, v20);
        v22 = v21;
        if ( v21 < 0 )
          v22 = 0;
        *(_WORD *)(a1 + 2) += v22;
        *(_WORD *)(a1 + 4) += v22;
      }
      else
      {
        v23 = sub_8070E(*(_DWORD *)(a1 + 20), v4, v30) + 1;
        v25 = sub_8070E(v31, v23, v24);
        v27 = sub_8070E(v30, v23, v26);
        v28 = v25 - v27;
        if ( ((v25 - v27) & 0x8000) != 0 )
          v28 = 0;
        *(_WORD *)(a1 + 2) += v28;
        *(_WORD *)(a1 + 4) += v28;
        *(_DWORD *)(a1 + 16) = v31;
      }
    }
  }
  return savedregs_16;
}
