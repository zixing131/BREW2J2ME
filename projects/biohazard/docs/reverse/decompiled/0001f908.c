int __fastcall sub_1F908(int a1)
{
  int result; // r0
  _DWORD **v3; // r5
  int v4; // r1
  bool v5; // zf
  int v6; // r1
  int *v7; // r5
  int v8; // r1
  int v9; // r2
  int v10; // r0
  unsigned int v11; // r1
  int *v12; // r6
  int v13; // r0
  int v14; // r7
  signed int v15; // r10
  signed int v16; // r0
  int v17; // r1
  int v18; // r9
  int v19; // r1
  unsigned int v20; // r1
  int v21; // r1
  int v22; // r6
  int v23; // r6
  char *v24; // r5
  __int16 *v25; // r6
  unsigned int v26; // r7
  int v27; // r3
  int v28; // r2
  _DWORD *v29; // r2
  int v30; // r1
  int v31; // r0
  _DWORD **v32; // r6
  int v33; // r0
  int v34; // r0
  int v35; // r0
  __int16 *v36; // r10
  _DWORD *v37; // r9
  int v38; // r0
  int v39; // r1
  int v40; // r10
  int v41; // r0
  int v42; // r0
  int v43; // r1
  int v44; // r0
  int v45; // r1
  bool v46; // cc
  _DWORD *v47; // r1
  int v48; // r0
  int v49; // r0
  int v50; // r2
  int v51; // r1
  _BYTE *v52; // r0
  char v53; // r2
  char v54; // t1
  char v55; // r1
  unsigned int v56; // r1
  _DWORD *v57; // r3
  int v58; // r12
  int v59; // r2
  int v60; // r12
  int v61; // lr
  int v62; // r2
  bool v63; // zf
  unsigned int v64; // r1
  _BYTE v65[256]; // [sp+4h] [bp-100h] BYREF

  result = *(__int16 *)(a1 + 62);
  if ( result > 0 )
  {
    v3 = *(_DWORD ***)(a1 + 64);
    v4 = *(char *)(a1 + 5);
    if ( v4 == 17 )
    {
      sub_20298(*(_DWORD *)(a1 + 12));
      if ( *(_BYTE *)(*(_DWORD *)(a1 + 12) + 62) )
        goto LABEL_41;
      sub_22F60();
    }
    else
    {
      if ( v4 <= 17 )
      {
        v5 = v4 == 1;
        if ( v4 != 1 )
          v5 = v4 == 2;
        if ( !v5 )
          return result;
        v6 = (__int16)(*(_WORD *)(a1 + 42) + 1);
        *(_WORD *)(a1 + 42) = v6;
        if ( v6 <= *(__int16 *)(a1 + 44) )
          return result;
        goto LABEL_9;
      }
      if ( v4 == 18 )
        return result;
      if ( v4 != 19 )
      {
        if ( v4 != 20 )
          return result;
        v7 = v3[203];
        v8 = *(__int16 *)(a1 + 22);
        v9 = *v7;
        if ( v8 == *v7 )
        {
LABEL_9:
          *(_BYTE *)(a1 + 5) = 0;
LABEL_40:
          *(_WORD *)(a1 + 62) = result - 1;
          goto LABEL_41;
        }
        v10 = v8 - v9;
        if ( v8 - v9 <= 0 )
          v10 = v9 - v8;
        if ( v10 >= 10 )
        {
          if ( *(_BYTE *)(a1 + 36) )
            v11 = v9 + 10;
          else
            v11 = v9 + 350;
          sub_104(0x168u, v11);
        }
        *v7 = v8;
LABEL_41:
        result = *(__int16 *)(a1 + 62);
        if ( result > 0 )
          return result;
        goto LABEL_42;
      }
      v12 = v3[203];
      v13 = *(__int16 *)(a1 + 22);
      v14 = *v12;
      if ( v13 != *v12 )
      {
        if ( v13 - v14 > 0 )
          v15 = v13 - v14;
        else
          v15 = v14 - v13;
        if ( v15 >= 10 )
        {
          v16 = v13 - (v14 + 10);
          if ( v16 <= 0 )
            v16 = -v16;
          sub_104(0x168u, v16);
          v18 = v17;
          sub_104(0x168u, v15);
          if ( v18 < v19 )
            v20 = v14 + 10;
          else
            v20 = v14 + 350;
          sub_104(0x168u, v20);
          *v12 = v21;
        }
        else
        {
          *v12 = v13;
        }
        goto LABEL_41;
      }
      v22 = *(__int16 *)(a1 + 24);
      *v3[201] = sub_104(*(__int16 *)(a1 + 32), *(__int16 *)(a1 + 34) * (*(__int16 *)(a1 + 28) - v22)) + v22;
      v23 = *(__int16 *)(a1 + 26);
      *v3[202] = sub_104(*(__int16 *)(a1 + 32), *(__int16 *)(a1 + 34) * (*(__int16 *)(a1 + 30) - v23)) + v23;
      ++*(_WORD *)(a1 + 34);
      *v3[204] |= 1u;
      if ( *(__int16 *)(a1 + 32) + 1 != *(__int16 *)(a1 + 34) )
        goto LABEL_41;
      *v3[204] = 0;
    }
    *(_BYTE *)(a1 + 5) = 0;
    LOWORD(result) = *(_WORD *)(a1 + 62);
    goto LABEL_40;
  }
LABEL_42:
  result = *(unsigned __int16 *)(a1 + 60);
  if ( result != 1 )
    return result;
  v24 = (char *)off_20124 + 129836;
  v25 = off_20128 + 64922;
  v26 = dword_2012C;
  while ( 1 )
  {
    result = *(_DWORD *)(a1 + 68);
    v64 = *(__int16 *)(a1 + 74);
    if ( v64 >= *(_DWORD *)(result + 12) )
      goto LABEL_128;
    v27 = *(_DWORD *)(result + 16);
    v28 = *(_DWORD *)(v27 + 32 * v64);
    if ( v28 == 12 )
    {
      *(_BYTE *)(a1 + 80) = 0;
      goto LABEL_126;
    }
    if ( v28 <= 12 )
    {
      switch ( v28 )
      {
        case 0:
          result = *(__int16 *)(a1 + 62);
          if ( result > 0 )
            return result;
          v29 = (_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 74));
          v30 = 21;
          goto LABEL_96;
        case 1:
          result = *(__int16 *)(a1 + 62);
          if ( result > 0 )
            return result;
          v47 = (_DWORD *)(v27 + 32 * v64);
          v48 = v47[3];
          if ( v48 )
          {
            v5 = v48 == 1;
            v49 = v47[1];
            v50 = *(_DWORD *)(a1 + 52);
            v51 = v47[2];
            v54 = *(_BYTE *)(v49 + v50);
            v52 = (_BYTE *)(v49 + v50);
            v53 = v54;
            if ( v5 )
              v55 = v51 + v53;
            else
              v55 = v53 - v51;
            *v52 = v55;
          }
          else
          {
            *(_BYTE *)(*(_DWORD *)(a1 + 52) + v47[1]) = v47[2];
          }
          goto LABEL_126;
        case 2:
          result = *(__int16 *)(a1 + 62);
          if ( result > 0 )
            return result;
          v29 = (_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 74));
          if ( v29[3] )
            v30 = 4;
          else
            v30 = 17;
          goto LABEL_96;
        case 3:
          goto LABEL_105;
        case 4:
          if ( *(_BYTE *)(a1 + 80) == 1 )
          {
            while ( 1 )
            {
              v56 = *(__int16 *)(a1 + 74);
              if ( v56 >= *(_DWORD *)(result + 12) )
                goto LABEL_126;
              if ( *(_DWORD *)(*(_DWORD *)(result + 16) + 32 * v56) == 12 )
              {
                --*(_WORD *)(a1 + 74);
                goto LABEL_126;
              }
              *(_WORD *)(a1 + 74) = v56 + 1;
            }
          }
LABEL_105:
          if ( *(__int16 *)(a1 + 62) > 0 )
            return result;
          v57 = (_DWORD *)(v27 + 32 * v64);
          v58 = v57[1];
          v59 = 0;
          if ( v58 )
          {
            if ( v58 != 2 )
              goto LABEL_118;
LABEL_117:
            v59 = 1;
            goto LABEL_118;
          }
          v60 = *(unsigned __int8 *)(*(_DWORD *)(a1 + 52) + v57[2]);
          v61 = v57[4];
          if ( !v61 )
          {
            if ( v57[3] != v60 )
              goto LABEL_118;
            goto LABEL_117;
          }
          if ( v61 == 1 )
          {
            if ( v57[3] >= v60 )
              goto LABEL_118;
            goto LABEL_117;
          }
          if ( v61 == 2 && v57[3] > v60 )
            goto LABEL_117;
LABEL_118:
          *(_BYTE *)(a1 + 80) = v59;
          if ( !v59 )
          {
            while ( 1 )
            {
              *(_WORD *)(a1 + 74) = v64 + 1;
              v64 = *(__int16 *)(a1 + 74);
              if ( v64 >= *(_DWORD *)(result + 12) )
                break;
              v62 = *(_DWORD *)(*(_DWORD *)(result + 16) + 32 * v64);
              v63 = v62 == 4;
              if ( v62 != 4 )
                v63 = v62 == 12;
              if ( v63 )
              {
                --*(_WORD *)(a1 + 74);
                break;
              }
            }
            result = *(_DWORD *)(result + 12) - 1;
            if ( *(__int16 *)(a1 + 74) >= (unsigned int)result )
              goto LABEL_129;
          }
          break;
        case 7:
          v29 = (_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 74));
          v30 = 19;
          goto LABEL_96;
        case 9:
          v29 = (_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 74));
          if ( v29[3] )
            v30 = 2;
          else
            v30 = 1;
          goto LABEL_96;
        default:
          goto LABEL_126;
      }
      goto LABEL_126;
    }
    if ( v28 == 23 )
    {
      v29 = (_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 74));
      v30 = 18;
      goto LABEL_96;
    }
    if ( v28 > 23 )
    {
      switch ( v28 )
      {
        case '&':
          v35 = (*(int (**)(void))(*(_DWORD *)&v24[-4] + 192))();
          sub_59C4(
            *(_DWORD *)(v35 + 1888),
            3,
            (unsigned __int16)*(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 74) + 4));
          goto LABEL_97;
        case '2':
          v34 = (*(int (**)(void))(*(_DWORD *)&v24[-4] + 192))();
          sub_59C4(*(_DWORD *)(v34 + 1888), 5, 0);
          break;
        case '3':
          v31 = *(__int16 *)(a1 + 74);
          v32 = *(_DWORD ***)(a1 + 64);
          *(_WORD *)(a1 + 48) = v31;
          *v32[201] = 32 * *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * v31 + 8) + 16;
          *v32[202] = 32 * *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 48) + 12) + 16;
          *v32[203] = *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 48) + 16);
          sub_5E14((int)v32, *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 48) + 4));
          sub_5DD4((int)v32, *(_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 48) + 4));
          *(_WORD *)(a1 + 72) = 0;
          *(_DWORD *)(a1 + 68) = 0;
          *(_WORD *)(a1 + 74) = 0;
          *(_WORD *)(a1 + 60) = 0;
          *(_BYTE *)(a1 + 80) = 0;
          *(_BYTE *)(a1 + 81) = 0;
          *(_WORD *)(a1 + 62) = 0;
          *(_BYTE *)(a1 + 5) = 0;
          *(_WORD *)(a1 + 40) = 0;
          v33 = (*(int (**)(void))(*(_DWORD *)&v24[-4] + 192))();
          return sub_59C4(*(_DWORD *)(v33 + 1888), 8, 0);
      }
      goto LABEL_126;
    }
    if ( v28 == 16 )
    {
      result = *(__int16 *)(a1 + 62);
      if ( result > 0 )
        return result;
      v36 = *(__int16 **)(a1 + 64);
      v37 = (_DWORD *)(v27 + 32 * v64);
      v38 = sub_12934((int)v36);
      v39 = v37[1];
      if ( v39 )
      {
        switch ( v39 )
        {
          case 1:
            v44 = v38 + 768;
            v45 = (__int16)(*(_WORD *)(v44 + 14) + v37[3]);
            v46 = v45 < 768;
            if ( v45 >= 768 )
              v46 = v45 - 768 < 231;
            *(_WORD *)(v44 + 14) = v45;
            if ( !v46 )
              LOWORD(v45) = dword_20130;
            *(_WORD *)(v44 + 14) = v45;
            break;
          case 2:
            *(_DWORD *)(v38 + 16) += v37[3];
            break;
          case 3:
            *(_DWORD *)(v38 + 8) += v37[3];
            v40 = (*(int (__fastcall **)(int))(*(_DWORD *)&v24[-4] + 104))(320);
            v41 = (*(int (**)(void))(*(_DWORD *)&v24[-4] + 192))();
            sub_19618(*(int **)(v41 + 40), v26, (int)v65, 0x100u);
            (*(void (__fastcall **)(int, int, __int16 *, _BYTE *, _DWORD))(*(_DWORD *)&v24[-4] + 60))(
              v40,
              320,
              v25,
              v65,
              v37[3]);
            v42 = (*(int (**)(void))(*(_DWORD *)&v24[-4] + 192))();
            sub_E00(*(_DWORD *)(v42 + 1888) + 544, 1, 0, v40);
            break;
        }
      }
      else
      {
        v43 = (__int16)v37[2];
        if ( v37[4] )
          sub_6254(v36, v43);
        else
          sub_D10((int)v36, v43, 1);
      }
      goto LABEL_126;
    }
    if ( v28 == 17 )
    {
      *(_WORD *)(a1 + 38) = *(_DWORD *)(v27 + 32 * v64 + 4);
      *(_WORD *)(a1 + 40) = *(_DWORD *)(*(_DWORD *)(result + 16) + 32 * v64 + 8);
      goto LABEL_126;
    }
    if ( v28 == 19 )
      break;
LABEL_126:
    ++*(_WORD *)(a1 + 74);
  }
  v29 = (_DWORD *)(*(_DWORD *)(*(_DWORD *)(a1 + 68) + 16) + 32 * *(__int16 *)(a1 + 74));
  v30 = 20;
LABEL_96:
  sub_15BB8(a1, v30, v29);
LABEL_97:
  ++*(_WORD *)(a1 + 74);
LABEL_128:
  result = *(__int16 *)(a1 + 74);
  if ( (unsigned int)result >= *(_DWORD *)(*(_DWORD *)(a1 + 68) + 12) )
LABEL_129:
    *(_WORD *)(a1 + 60) = 0;
  return result;
}

