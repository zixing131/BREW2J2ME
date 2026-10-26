int __fastcall sub_7DEC(int a1, int a2, int a3, int a4, __int16 a5, int a6)
{
  __int16 v8; // r4
  int v9; // r2
  int v10; // r3
  int v11; // r1
  int v12; // r0
  bool v13; // nf
  int v14; // r1
  __int16 v15; // r2
  __int16 v16; // r2
  __int16 v17; // r3
  int v18; // r2
  int v19; // r1
  __int16 v20; // r3
  int v21; // r0
  int v22; // r2
  BOOL v23; // lr
  _DWORD *v24; // r5
  int v25; // r7
  bool v26; // nf
  __int16 v27; // r2
  __int16 v28; // r2
  int v29; // r6
  __int16 v30; // r3
  int v31; // r2
  int v32; // r1
  __int16 v33; // r3
  int v34; // r0
  int v35; // r2
  BOOL v36; // lr
  int *v37; // r5
  int v38; // r12
  int v39; // t1
  bool v40; // nf
  int v41; // [sp+0h] [bp-24h]
  int v42; // [sp+8h] [bp-1Ch]
  int v43; // [sp+18h] [bp-Ch] BYREF
  int v44; // [sp+1Ch] [bp-8h] BYREF
  int v45; // [sp+20h] [bp-4h] BYREF

  v43 = a2;
  v44 = a3;
  v45 = a4;
  if ( !*(_DWORD *)(a1 + 20) )
    return 7;
  v8 = a6;
  if ( (__int16)v43 == (__int16)v45 )
  {
    if ( (__int16)v44 >= a5 )
    {
      v41 = (__int16)(v44 - a5);
      v42 = a6;
      v9 = a5;
      v10 = 1;
LABEL_12:
      v11 = (__int16)v43;
      goto LABEL_13;
    }
    v41 = (__int16)(a5 - v44);
    v42 = a6;
    v10 = 1;
LABEL_11:
    v9 = (__int16)v44;
    goto LABEL_12;
  }
  if ( (__int16)v44 != a5 )
  {
    LOWORD(v43) = *(_WORD *)(a1 + 12) + v43;
    LOWORD(v44) = *(_WORD *)(a1 + 14) + v44;
    LOWORD(v45) = *(_WORD *)(a1 + 12) + v45;
    a5 += *(_WORD *)(a1 + 14);
    if ( sub_21584(
           a1,
           &v43,
           &v44,
           &v45,
           &a5,
           *(__int16 *)(a1 + 4),
           *(__int16 *)(a1 + 8),
           *(__int16 *)(a1 + 6),
           *(__int16 *)(a1 + 10),
           a1) )
    {
      v12 = (__int16)(v45 - v43);
      v13 = v12 < 0;
      if ( v12 < 0 )
        v12 = -v12;
      if ( v13 )
        v12 = (__int16)v12;
      v14 = (__int16)(a5 - v44);
      if ( v14 < 0 )
        v14 = -(__int16)v14;
      if ( v12 < v14 )
      {
        if ( (__int16)v44 > a5 )
        {
          v27 = v43;
          LOWORD(v43) = v45;
          LOWORD(v45) = v27;
          v28 = v44;
          LOWORD(v44) = a5;
          a5 = v28;
        }
        v29 = (__int16)v44;
        v30 = v12 - v14;
        v31 = v12 << 17;
        LOWORD(v34) = 2 * v12 - v14;
        v32 = (__int16)v43;
        v33 = 2 * v30;
        v34 = (__int16)v34;
        v35 = v31 >> 16;
        v36 = (__int16)v45 < (__int16)v43;
        v37 = (int *)(*(_DWORD *)(a1 + 20) + 4 * (__int16)v44);
        while ( v29 <= a5 )
        {
          v39 = *v37++;
          v38 = v39;
          v40 = v34 < 0;
          if ( v34 < 0 )
            v34 = (v34 + v35) << 16;
          *(_WORD *)(v38 + 2 * v32) = v8;
          if ( v40 )
          {
            v34 >>= 16;
          }
          else
          {
            if ( v36 )
              LOWORD(v32) = v32 - 1;
            else
              LOWORD(v32) = v32 + 1;
            v32 = (__int16)v32;
            v34 = (__int16)(v34 + v33);
          }
          v29 = (__int16)(v29 + 1);
        }
      }
      else
      {
        if ( (__int16)v43 > (__int16)v45 )
        {
          v15 = v43;
          LOWORD(v43) = v45;
          LOWORD(v45) = v15;
          v16 = v44;
          LOWORD(v44) = a5;
          a5 = v16;
        }
        v17 = v14 - v12;
        LOWORD(v21) = 2 * v14 - v12;
        v18 = v14 << 17;
        v19 = (__int16)v43;
        v20 = 2 * v17;
        v21 = (__int16)v21;
        v22 = v18 >> 16;
        v23 = a5 < (__int16)v44;
        v24 = (_DWORD *)(*(_DWORD *)(a1 + 20) + 4 * (__int16)v44);
        while ( v19 <= (__int16)v45 )
        {
          v25 = v19;
          v26 = v21 < 0;
          if ( v21 < 0 )
            v21 += v22;
          v19 = (__int16)(v19 + 1);
          if ( v26 )
            v21 = (__int16)v21;
          *(_WORD *)(*v24 + 2 * v25) = v8;
          if ( !v26 )
          {
            LOWORD(v21) = v21 + v20;
            if ( !v23 )
              ++v24;
            v21 = (__int16)v21;
            if ( v23 )
              --v24;
          }
        }
      }
    }
    return 0;
  }
  v41 = 1;
  v42 = a6;
  if ( (__int16)v43 < (__int16)v45 )
  {
    v10 = (__int16)(v45 - v43);
    goto LABEL_11;
  }
  v9 = (__int16)v44;
  v10 = (__int16)(v43 - v45);
  v11 = (__int16)v45;
LABEL_13:
  sub_10C58(a1, v11, v9, v10, v41, 0, v42, 0);
  return 0;
}

