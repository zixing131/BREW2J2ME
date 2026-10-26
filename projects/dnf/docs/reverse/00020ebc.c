int __fastcall sub_20EBC(int a1, const char *a2, int a3)
{
  int v3; // r0
  const char *v4; // r2
  int v5; // r7
  unsigned __int8 *v6; // r4
  int v7; // r0
  int v8; // r3
  const char *v9; // r1
  const char *v10; // r5
  int v11; // r0
  const char *v12; // r4
  int v13; // r0
  int v14; // r3
  int v15; // r5
  const char *v16; // r2
  const char *v17; // r4
  int v18; // r0
  int v19; // r0
  int v20; // r3
  int v21; // r4
  const char *v22; // r2
  const char *v23; // r1
  int v25; // [sp+4h] [bp-24h]
  const char *v26; // [sp+8h] [bp-20h]
  const char *v27; // [sp+Ch] [bp-1Ch]
  int v28; // [sp+10h] [bp-18h]
  const char *v29; // [sp+14h] [bp-14h]
  const char *v30; // [sp+18h] [bp-10h]
  int v31; // [sp+1Ch] [bp-Ch] BYREF
  int v32; // [sp+20h] [bp-8h] BYREF
  __int16 v33; // [sp+26h] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+28h] [bp+0h]

  v25 = sub_22468("npcInfo", a2, a3, 445409);
  if ( v25 )
  {
    sub_2246C(&v33, v25, 2);
    sub_2246C(&v31, v25 + 2, 4);
    sub_2246C(&v32, v25 + 6, 4);
    v26 = (const char *)sub_2246E(v31 + 2);
    sub_2246A(v25 + 10, v26, v31, v32, 6);
    sub_2246C(&byte_150D160, v26, 1);
    v30 = v26 + 1;
    v3 = sub_2246E(16 * (unsigned __int8)byte_150D160);
    v4 = 0;
    dword_150D164 = v3;
    dword_150D168 = v3;
    while ( 1 )
    {
      v27 = v4;
      v23 = v4;
      if ( (int)v4 >= (unsigned __int8)byte_150D160 )
        break;
      v5 = 16 * (_DWORD)v4;
      sub_2246C(16 * (_DWORD)v4 + dword_150D168, v30, 1);
      sub_2246C(16 * (_DWORD)v27 + dword_150D168 + 1, v30 + 1, 1);
      sub_2246C(16 * (_DWORD)v27 + dword_150D168 + 2, v30 + 2, 1);
      sub_2246C(16 * (_DWORD)v27 + dword_150D168 + 3, v30 + 3, 1);
      sub_2246C(16 * (_DWORD)v27 + dword_150D168 + 4, v30 + 4, 1);
      sub_2246C(16 * (_DWORD)v27 + dword_150D168 + 6, v30 + 5, 2);
      v30 += 7;
      v6 = (unsigned __int8 *)(16 * (_DWORD)v27 + dword_150D168);
      v7 = sub_22468(24 * *v6 + 2, v30);
      v8 = dword_150D168;
      *((_DWORD *)v6 + 2) = v7;
      *(_DWORD *)(16 * (_DWORD)v27 + v8 + 12) = *(_DWORD *)(16 * (_DWORD)v27 + v8 + 8);
      v28 = 0;
      v29 = 0;
      while ( v28 < *(unsigned __int8 *)(v5 + dword_150D168) )
      {
        sub_2246C(&v29[*(_DWORD *)(v5 + dword_150D168 + 12)], v30, 1);
        sub_2246C(&v29[*(_DWORD *)(dword_150D168 + v5 + 12) + 1], v30 + 1, 1);
        v10 = &v29[*(_DWORD *)(dword_150D168 + v5 + 12)];
        v11 = *((unsigned __int8 *)v10 + 1);
        v12 = v30 + 2;
        if ( v10[1] )
        {
          v13 = sub_22468(2 * v11 + 2, v9);
          v14 = *(_DWORD *)(dword_150D168 + v5 + 12);
          *((_DWORD *)v10 + 1) = v13;
          v15 = 0;
          *(_DWORD *)&v29[v14 + 8] = *(_DWORD *)&v29[v14 + 4];
          while ( 1 )
          {
            v16 = &v29[*(_DWORD *)(dword_150D168 + v5 + 12)];
            if ( v15 >= *((unsigned __int8 *)v16 + 1) )
              break;
            sub_22468(2 * v15 + *((_DWORD *)v16 + 2), v12, 2, &unk_140327C);
            v12 += 2;
            ++v15;
          }
        }
        else
        {
          *((_DWORD *)v10 + 2) = v11;
        }
        sub_22468(&v29[*(_DWORD *)(dword_150D168 + v5 + 12) + 12], v12, 1, &unk_140327C);
        v30 = v12 + 1;
        v17 = &v29[*(_DWORD *)(dword_150D168 + v5 + 12)];
        v18 = *((unsigned __int8 *)v17 + 12);
        if ( v17[12] )
        {
          v19 = sub_22468(2 * v18 + 2, v29);
          v20 = *(_DWORD *)(dword_150D168 + v5 + 12);
          *((_DWORD *)v17 + 4) = v19;
          v21 = 0;
          *(_DWORD *)&v29[v20 + 20] = *(_DWORD *)&v29[v20 + 16];
          while ( 1 )
          {
            v22 = &v29[*(_DWORD *)(dword_150D168 + v5 + 12)];
            if ( v21 >= *((unsigned __int8 *)v22 + 12) )
              break;
            sub_22468(2 * v21 + *((_DWORD *)v22 + 5), v30, 2, &unk_140327C);
            v30 += 2;
            ++v21;
          }
        }
        else
        {
          *((_DWORD *)v17 + 5) = v18;
        }
        ++v28;
        v29 += 24;
      }
      v4 = v27 + 1;
    }
    if ( v26 )
      sub_22468(v26, v4, v26, &unk_14032FC);
    sub_22468(v25, v23);
  }
  return savedregs[4];
}
