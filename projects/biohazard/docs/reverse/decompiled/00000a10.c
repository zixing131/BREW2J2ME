int __fastcall sub_A10(int result)
{
  unsigned int v1; // r1
  unsigned int v2; // r2
  int v3; // r2
  int v4; // r3
  int v5; // r1
  int v6; // r1
  int v7; // r1
  __int16 v8; // r3
  int v9; // r1
  int v10; // r1
  int v11; // r3
  int v12; // r12
  int v13; // r2
  int v14; // lr
  __int16 v15; // r12
  __int16 v16; // r12
  __int16 v17; // r12
  int v18; // r1
  __int16 v19; // r3
  int v20; // r1
  int v21; // r1
  __int16 v22; // r3
  int v23; // r1
  int v24; // r1
  __int16 v25; // r3
  int v26; // r1
  int v27; // r1
  __int16 v28; // r3
  int v29; // r1
  int v30; // r1
  __int16 v31; // r3
  int v32; // r1
  int v33; // r1
  __int16 v34; // r3
  int v35; // r1

  v1 = *(unsigned __int16 *)(result + 82);
  v2 = *(unsigned __int16 *)(result + 64);
  if ( (v1 >= v2 || !*(_DWORD *)(result + 4 * v1 + 16)) && !*(_BYTE *)(result + 6) )
  {
    *(_WORD *)(result + 4) = 0;
    *(_BYTE *)(result + 6) = 1;
    return result;
  }
  if ( v1 < v2 )
  {
    v3 = result + 4 * v1;
    v4 = *(_DWORD *)(v3 + 16);
    if ( v4 )
    {
      v5 = *(unsigned __int16 *)(result + 84);
      if ( !*(_WORD *)(v4 + 2 * v5) )
      {
        v6 = *(unsigned __int16 *)(result + 86);
        *(_WORD *)(result + 86) = v6 + 1;
        *(_WORD *)(*(_DWORD *)(result + 56) + 2 * v6) = 36;
        v7 = *(unsigned __int16 *)(result + 86);
        *(_WORD *)(result + 86) = v7 + 1;
        *(_WORD *)(*(_DWORD *)(result + 56) + 2 * v7) = 110;
        *(_DWORD *)(result + 82) = (unsigned __int16)(*(_WORD *)(result + 82) + 1);
        return result;
      }
      *(_WORD *)(result + 84) = v5 + 1;
      v8 = *(_WORD *)(*(_DWORD *)(v3 + 16) + 2 * v5);
      v9 = *(unsigned __int16 *)(result + 86);
      *(_WORD *)(result + 86) = v9 + 1;
      *(_WORD *)(*(_DWORD *)(result + 56) + 2 * v9) = v8;
      v10 = *(unsigned __int16 *)(result + 86);
      v11 = *(_DWORD *)(result + 56);
      if ( *(_WORD *)(v11 + 2 * v10 - 2) == 36 )
      {
        v12 = result + 4 * *(unsigned __int16 *)(result + 82);
        v13 = *(unsigned __int16 *)(result + 84);
        v14 = *(unsigned __int16 *)(*(_DWORD *)(v12 + 16) + 2 * v13);
        if ( v14 != 78 )
        {
          if ( v14 == 84 )
            goto LABEL_14;
          if ( v14 != 110 )
          {
            if ( v14 != 116 )
            {
              *(_WORD *)(result + 84) = v13 + 1;
              v17 = *(_WORD *)(*(_DWORD *)(v12 + 16) + 2 * v13);
              *(_WORD *)(result + 86) = v10 + 1;
              *(_WORD *)(v11 + 2 * v10) = v17;
              v18 = *(unsigned __int16 *)(result + 84);
              *(_WORD *)(result + 84) = v18 + 1;
              v19 = *(_WORD *)(*(_DWORD *)(result + 4 * *(unsigned __int16 *)(result + 82) + 16) + 2 * v18);
              v20 = *(unsigned __int16 *)(result + 86);
              *(_WORD *)(result + 86) = v20 + 1;
              *(_WORD *)(*(_DWORD *)(result + 56) + 2 * v20) = v19;
              goto LABEL_17;
            }
LABEL_14:
            *(_WORD *)(result + 84) = v13 + 1;
            v15 = *(_WORD *)(*(_DWORD *)(v12 + 16) + 2 * v13);
            *(_WORD *)(result + 86) = v10 + 1;
            *(_WORD *)(v11 + 2 * v10) = v15;
LABEL_17:
            v21 = *(unsigned __int16 *)(result + 84);
            *(_WORD *)(result + 84) = v21 + 1;
            v22 = *(_WORD *)(*(_DWORD *)(result + 4 * *(unsigned __int16 *)(result + 82) + 16) + 2 * v21);
            v23 = *(unsigned __int16 *)(result + 86);
            *(_WORD *)(result + 86) = v23 + 1;
            *(_WORD *)(*(_DWORD *)(result + 56) + 2 * v23) = v22;
            v24 = *(unsigned __int16 *)(result + 84);
            *(_WORD *)(result + 84) = v24 + 1;
            v25 = *(_WORD *)(*(_DWORD *)(result + 4 * *(unsigned __int16 *)(result + 82) + 16) + 2 * v24);
            v26 = *(unsigned __int16 *)(result + 86);
            *(_WORD *)(result + 86) = v26 + 1;
            *(_WORD *)(*(_DWORD *)(result + 56) + 2 * v26) = v25;
            v27 = *(unsigned __int16 *)(result + 84);
            *(_WORD *)(result + 84) = v27 + 1;
            v28 = *(_WORD *)(*(_DWORD *)(result + 4 * *(unsigned __int16 *)(result + 82) + 16) + 2 * v27);
            v29 = *(unsigned __int16 *)(result + 86);
            *(_WORD *)(result + 86) = v29 + 1;
            *(_WORD *)(*(_DWORD *)(result + 56) + 2 * v29) = v28;
            v30 = *(unsigned __int16 *)(result + 84);
            *(_WORD *)(result + 84) = v30 + 1;
            v31 = *(_WORD *)(*(_DWORD *)(result + 4 * *(unsigned __int16 *)(result + 82) + 16) + 2 * v30);
            v32 = *(unsigned __int16 *)(result + 86);
            *(_WORD *)(result + 86) = v32 + 1;
            *(_WORD *)(*(_DWORD *)(result + 56) + 2 * v32) = v31;
            v33 = *(unsigned __int16 *)(result + 84);
            *(_WORD *)(result + 84) = v33 + 1;
            v34 = *(_WORD *)(*(_DWORD *)(result + 4 * *(unsigned __int16 *)(result + 82) + 16) + 2 * v33);
            v35 = *(unsigned __int16 *)(result + 86);
            *(_WORD *)(result + 86) = v35 + 1;
            result = *(_DWORD *)(result + 56) + 2 * v35;
            *(_WORD *)result = v34;
            return result;
          }
        }
        *(_WORD *)(result + 84) = v13 + 1;
        v16 = *(_WORD *)(*(_DWORD *)(v12 + 16) + 2 * v13);
        *(_WORD *)(result + 86) = v10 + 1;
        result = v11 + 2 * v10;
        *(_WORD *)result = v16;
      }
    }
  }
  return result;
}

