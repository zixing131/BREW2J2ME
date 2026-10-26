int __fastcall sub_72368(int a1, int a2, unsigned __int8 *a3, int a4, int a5, int a6)
{
  int v7; // r1
  int v8; // r2
  int v9; // r1
  int v10; // r2
  int v11; // r1
  int v12; // r2
  int v13; // r2
  int v14; // r4
  int v15; // r1
  int v16; // r2
  unsigned __int8 *v17; // r7
  unsigned int v18; // r5
  unsigned __int8 v19; // r6
  unsigned int v20; // r0
  int v21; // r5
  int v22; // r4
  int v23; // r6
  unsigned int v24; // r2
  int v25; // r1
  int v28; // [sp+8h] [bp-1Ch]
  int i; // [sp+10h] [bp-14h]
  int v31; // [sp+14h] [bp-10h]
  int v32; // [sp+18h] [bp-Ch]
  int v33; // [sp+1Ch] [bp-8h]
  int v34; // [sp+20h] [bp-4h]
  int savedregs_16; // [sp+34h] [bp+10h]

  v28 = a2;
  v31 = sub_75958(a5, a2, a3, 569889);
  v32 = sub_75958(a5, v7, v8, 569897);
  v33 = sub_75958(a5, v9, v10, 569833);
  v34 = sub_75958(a5, v11, v12, 569857);
  if ( (dword_1536C2C & 1) != 0 )
  {
    v14 = sub_75958(a5, dword_1536C2C << 31, v13, 569809);
    v28 += v14 - sub_75958(a5, v15, v16, 569733);
  }
  v17 = a3;
  for ( i = 0; i < a4; i += 2 )
  {
    v18 = *v17;
    v19 = v17[1];
    v20 = v18 >> 4;
    v21 = v18 & 0xF;
    v22 = v19 >> 4;
    v23 = v19 & 0xF;
    if ( v31 && v32 )
    {
      v24 = v20 + v22;
      v25 = v21 + v23;
      v20 = *(__int16 *)(2 * v20 + v31);
      v21 = *(__int16 *)(2 * v21 + v32);
      v22 = *(__int16 *)(2 * v24 + v31) - v20;
      v23 = *(__int16 *)(2 * v25 + v32) - v21;
    }
    if ( v22 > 0 && v23 > 0 )
    {
      if ( (word_15369FC & 1) != 0 )
      {
        v20 -= v33;
        v22 += 2 * v33;
        v21 -= v34;
        v23 += 2 * v34;
      }
      if ( (word_15369FC & 2) != 0 )
        v22 += v33;
      sub_7595A(a1 + v20, v28 + v21, v22, v23, a6);
    }
    v17 += 2;
  }
  return savedregs_16;
}
