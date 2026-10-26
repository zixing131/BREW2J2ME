int __fastcall sub_7ADF0(int a1, unsigned __int8 a2, unsigned __int8 a3, unsigned __int8 a4)
{
  int v4; // r4
  int v5; // r6
  int v6; // r2
  char v7; // r5
  unsigned __int8 v8; // r12
  int v9; // r5
  int v10; // r0
  int v11; // r2
  char *v12; // r0
  int v13; // r7
  int v14; // r2
  int v15; // r0
  int v16; // r1
  int v17; // r2
  char v18; // r5
  unsigned __int8 v19; // r12
  int v20; // r5
  int v21; // r0
  int v22; // r1
  int v23; // r2
  char *v24; // r0
  int v25; // r4
  int v26; // r2
  int v27; // r0
  int v28; // r2
  int v30; // [sp+0h] [bp-10h]
  int v32; // [sp+8h] [bp-8h]
  int v33; // [sp+Ch] [bp-4h]
  int savedregs_16; // [sp+20h] [bp+10h]

  v4 = a2;
  v30 = a4;
  v33 = a1 + 68;
  v32 = 36 * a2;
  v5 = a3;
  v6 = v32 + *(_DWORD *)(a1 + 92);
  if ( !*(_BYTE *)(v6 + 4) )
    goto LABEL_27;
  v7 = 0;
  v8 = 0;
  *(_BYTE *)(v6 + 5) = v5;
  while ( 1 )
  {
    while ( v7 >= (int)byte_1402FC2[(char)v8] )
    {
LABEL_11:
      if ( (char)++v8 > 9 )
      {
        if ( !a4 )
        {
          if ( a2 == 64 || a2 == 61 )
          {
            v15 = a1 + 36 * v5 + 104;
            v16 = a2 + 33000;
          }
          else
          {
            v15 = a1 + 36 * v5 + 104;
            v16 = a2 + 31000;
          }
          sub_80706(v15, v16);
        }
        *(_BYTE *)(*(_DWORD *)(v33 + 24) + v32 + 5) = v5;
        goto LABEL_27;
      }
      v7 = 0;
    }
    if ( (unsigned __int8)aWm[5 * (char)v8 + v7] == a2 )
      break;
    ++v7;
  }
  v9 = v8;
  if ( v8 == 255 )
    goto LABEL_11;
  if ( !a4 )
  {
    v10 = a1 + 36 * v5 + 104;
    if ( a2 == 64 )
      v11 = 33000;
    else
      v11 = 31000;
    sub_8070E(v10, (unsigned __int8)aWm[5 * v8] + v11, 0);
  }
  v12 = &aWm[5 * v9];
  v13 = 0;
  while ( 1 )
  {
    v14 = v13++;
    if ( v14 >= byte_1402FC2[v9] )
      break;
    *(_BYTE *)(36 * (unsigned __int8)*v12++ + *(_DWORD *)(v33 + 24) + 5) = v5;
  }
LABEL_27:
  v17 = v32 + *(_DWORD *)(v33 + 24);
  if ( !*(_BYTE *)(v17 + 16) )
    return savedregs_16;
  v18 = 0;
  v19 = 0;
  *(_BYTE *)(v17 + 17) = v5;
  while ( 1 )
  {
    if ( v18 < (int)byte_1402FC2[(char)v19] )
    {
      if ( (unsigned __int8)aWm[5 * (char)v19 + v18] != v4 )
      {
        ++v18;
        continue;
      }
      v20 = v19;
      if ( v19 != 255 )
        break;
    }
    if ( (char)++v19 > 9 )
    {
      if ( !v30 )
      {
        if ( v4 == 38 || v4 == 63 || v4 == 64 || v4 == 101 || v4 == 62 || v4 == 59 || v4 == 61 || v4 == 39 || v4 == 83 )
        {
          v27 = a1 + 36 * v5 + 572;
          v28 = 32000;
        }
        else
        {
          v28 = 30000;
          v27 = a1 + 36 * v5 + 572;
        }
        sub_80706(v27, v4 + v28);
      }
      *(_BYTE *)(*(_DWORD *)(v33 + 24) + v32 + 17) = v5;
      return savedregs_16;
    }
    v18 = 0;
  }
  if ( !v30 )
  {
    if ( v4 == 38 || v4 == 63 || v4 == 64 || v4 == 101 || v4 == 62 || v4 == 59 || v4 == 61 || v4 == 39 || v4 == 83 )
    {
      v21 = a1 + 36 * v5 + 572;
      v22 = (unsigned __int8)aWm[5 * v19];
      v23 = 32000;
    }
    else
    {
      v21 = a1 + 36 * v5 + 572;
      v22 = (unsigned __int8)aWm[5 * v19];
      v23 = 30000;
    }
    sub_80706(v21, v22 + v23);
  }
  v24 = &aWm[5 * v20];
  v25 = 0;
  while ( 1 )
  {
    v26 = v25++;
    if ( v26 >= byte_1402FC2[v20] )
      break;
    *(_BYTE *)(36 * (unsigned __int8)*v24++ + *(_DWORD *)(v33 + 24) + 17) = v5;
  }
  return savedregs_16;
}
