int __fastcall sub_109D0(int a1, unsigned int a2, __int16 a3, int a4, unsigned int a5, unsigned int a6)
{
  unsigned int v6; // r12
  int v7; // r4
  int v8; // lr
  int v9; // r2
  int v10; // r5
  __int16 v11; // r2
  int v12; // r5
  int v13; // r6
  int v14; // r2
  bool v15; // zf
  _WORD *v16; // r0
  _WORD *v17; // r3
  __int16 v18; // r2
  int v19; // r1
  int v20; // r2
  int v21; // r1
  int v22; // r2
  unsigned int v23; // r12
  int v24; // r4
  unsigned int v25; // lr
  bool v26; // cc
  unsigned int v27; // lr
  int v28; // r5
  int v29; // lr
  unsigned int v30; // r12
  int v31; // r6
  bool v32; // cc

  v6 = a6;
  v7 = (__int16)(*(_WORD *)(a1 + 14) + a3);
  v8 = (__int16)(*(_WORD *)(a1 + 12) + a2);
  if ( *(unsigned __int16 *)(a1 + 6) <= v7 && *(unsigned __int16 *)(a1 + 10) > v7 )
  {
    v9 = *(unsigned __int16 *)(a1 + 4);
    if ( v9 < v8 )
      v9 = (__int16)(*(_WORD *)(a1 + 12) + a2);
    v10 = v9 << 16;
    v11 = v8 + a4;
    v12 = v10 >> 16;
    if ( v8 + a4 > *(unsigned __int16 *)(a1 + 8) )
      v11 = *(_WORD *)(a1 + 8);
    v13 = v11;
    if ( v11 > v12 )
    {
      if ( ((a5 >> 4) & 1) != 0 )
      {
        v14 = 0;
      }
      else
      {
        a2 = a5 >> 8;
        v14 = (a5 >> 1) & 1;
        if ( v14 )
        {
          if ( !a2 )
            return 0;
          v15 = a2 == 32;
          a2 = (unsigned __int8)(32 - BYTE1(a5));
          if ( v15 )
            v14 = 0;
        }
      }
      v16 = (_WORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 20) + 4 * v7) + 2 * v12);
      v17 = &v16[v13 - v12 - 1];
      if ( ((a5 >> 4) & 1) != 0 )
      {
        v18 = dword_10C4C;
        v19 = dword_10C4C & (a6 >> 1);
        if ( (v12 & 1) != 0 )
        {
          v6 = (dword_10C4C & ((unsigned __int16)*v16 >> 1)) + v19;
          *v16++ = v6;
        }
        if ( (v13 & 1) != 0 )
          v6 = (unsigned __int16)*v17;
        else
          ++v17;
        if ( (v13 & 1) != 0 )
          *v17 = (v18 & (v6 >> 1)) + v19;
        v20 = dword_10C50;
        v21 = v19 | (v19 << 16);
        while ( v16 < v17 )
        {
          *(_DWORD *)v16 = (v20 & (*(_DWORD *)v16 >> 1)) + v21;
          v16 += 2;
        }
      }
      else
      {
        v15 = v14 == 0;
        v22 = a6 | (a6 << 16);
        if ( v15 )
        {
          if ( (v12 & 1) != 0 )
            *v16++ = a6;
          v32 = 0;
          if ( (v13 & 1) != 0 )
            v32 = v12 < v13;
          if ( v32 )
            *v17 = a6;
          else
            ++v17;
          while ( v16 < v17 )
          {
            *(_DWORD *)v16 = v22;
            v16 += 2;
          }
        }
        else
        {
          v23 = 32 - a2;
          v24 = (32 - a2) * (((a6 & 0xF800) << 11) | (32 * (a6 & 0x7E0)) | a6 & 0x1F);
          if ( (v12 & 1) != 0 )
          {
            v25 = (v24 + a2 * (((*v16 & 0xF800) << 11) | (32 * (*v16 & 0x7E0)) | *v16 & 0x1F)) >> 5;
            *v16++ = ((v25 & 0x7C00000) >> 11) | ((unsigned __int16)(v25 & 0xFC00) >> 5) | v25 & 0x1F;
          }
          v26 = 0;
          if ( (v13 & 1) != 0 )
            v26 = v12 < v13;
          if ( v26 )
          {
            v27 = (v24 + a2 * (((*v17 & 0xF800) << 11) | (32 * (*v17 & 0x7E0)) | *v17 & 0x1F)) >> 5;
            *v17 = ((v27 & 0x7C00000) >> 11) | ((unsigned __int16)(v27 & 0xFC00) >> 5) | v27 & 0x1F;
          }
          else
          {
            ++v17;
          }
          v28 = dword_10C54;
          v29 = v23 * (v22 & dword_10C54);
          v30 = ((v22 & 0xF81F07FF) >> 5) * v23;
          v31 = __ROR4__(dword_10C54, 16);
          while ( v16 < v17 )
          {
            *(_DWORD *)v16 = v28 & ((v29 + a2 * (*(_DWORD *)v16 & v28)) >> 5)
                           | (v30 + a2 * ((*(_DWORD *)v16 & 0xF81F07FF) >> 5)) & v31;
            v16 += 2;
          }
        }
      }
    }
  }
  return 0;
}

