int __fastcall sub_20458(int *a1, int a2)
{
  int v3; // r5
  int v4; // r0
  int v5; // r0
  unsigned int v6; // r0
  int v7; // r9
  int v8; // r7
  bool v9; // cc
  int v10; // r6
  unsigned int v11; // r0
  int v12; // r0
  bool v13; // zf
  int v14; // r2
  int v15; // r1
  int v16; // r0
  bool v17; // zf
  bool v18; // zf
  int v19; // r0
  int v20; // t1
  int v21; // r0
  bool v22; // zf
  __int16 v23; // r0
  unsigned int v24; // r1
  __int16 v25; // r9
  int v26; // r1
  char *v27; // r11
  int v28; // r9
  int v29; // r0
  int v30; // r0
  int v31; // r0
  int v32; // r1
  __int16 v33; // r0
  int v34; // r0
  bool v35; // zf
  int v36; // r6
  int v37; // r9
  int v38; // r10
  int v39; // r0
  int v40; // r0
  int v41; // r0
  int v42; // r1
  int v43; // r3
  int v44; // r12
  unsigned __int16 *v45; // lr
  int v46; // r6
  int v47; // r7
  int v48; // r0
  int v49; // r6
  unsigned int i; // r1
  int v51; // r0
  bool v52; // zf
  int v53; // r2
  bool v54; // cf
  int result; // r0
  _BYTE v56[252]; // [sp+4h] [bp-120h] BYREF
  int v57; // [sp+104h] [bp-20h] BYREF
  int v58; // [sp+108h] [bp-1Ch] BYREF
  __int16 v59; // [sp+10Ch] [bp-18h] BYREF
  char v60; // [sp+10Eh] [bp-16h]
  unsigned __int16 v61; // [sp+110h] [bp-14h]
  unsigned __int16 v62; // [sp+112h] [bp-12h]
  char v63; // [sp+116h] [bp-Eh]
  unsigned __int8 v64; // [sp+118h] [bp-Ch]
  unsigned __int8 v65; // [sp+119h] [bp-Bh]
  unsigned __int8 v66; // [sp+11Bh] [bp-9h]
  char v67; // [sp+11Ch] [bp-8h]
  unsigned __int8 v68; // [sp+11Dh] [bp-7h]
  int v69; // [sp+120h] [bp-4h]

  v3 = *(_DWORD *)(a1[19] + 2224);
  v4 = *((unsigned __int8 *)a1 + 73);
  if ( v4 )
    *((_BYTE *)a1 + 73) = v4 - 1;
  if ( *((_BYTE *)a1 + 36) && !*((_BYTE *)a1 + 42) )
  {
    *((_BYTE *)a1 + 37) = 1;
    *((_BYTE *)a1 + 36) = 0;
    *((_BYTE *)a1 + 40) = 0;
  }
  if ( *((_BYTE *)a1 + 37) )
  {
    v5 = *((unsigned __int8 *)a1 + 40);
    if ( v5 == 2 )
    {
      if ( v3 )
      {
        a2 = dword_20C44;
        *(_WORD *)(dword_20C44 + v3) = *((unsigned __int8 *)a1 + 39);
      }
    }
    else if ( v5 == 4 )
    {
      *((_BYTE *)a1 + 40) = 0;
      *((_BYTE *)a1 + 37) = 0;
    }
    ++*((_BYTE *)a1 + 40);
  }
  if ( *((_BYTE *)a1 + 42) )
  {
    v6 = (unsigned __int8)(*((_BYTE *)a1 + 43) + 1);
    *((_BYTE *)a1 + 43) = v6;
    a2 = *((unsigned __int8 *)a1 + 44);
    if ( v6 >= a2 )
      *((_BYTE *)a1 + 42) = 0;
  }
  v69 = v3 + 768;
  v7 = *(__int16 *)(v3 + 798);
  v8 = 0;
  v9 = v7 <= 0;
  if ( v7 >= 0 )
    v9 = *(__int16 *)(v3 + 540) <= v7;
  if ( v9 )
  {
    *((_BYTE *)a1 + 41) = 0;
    goto LABEL_89;
  }
  sub_12F30((int)&v59, v3, *(unsigned __int16 *)(v3 + 798));
  a2 = *(_DWORD *)(a1[19] + 2196);
  v10 = a2 + 116 * v68;
  if ( *((_BYTE *)a1 + 52) )
  {
    v11 = (unsigned __int8)(*((_BYTE *)a1 + 53) + 1);
    *((_BYTE *)a1 + 53) = v11;
    a2 = *((unsigned __int8 *)a1 + 54);
    if ( v11 >= a2 )
      *((_BYTE *)a1 + 52) = 0;
  }
  else
  {
    v12 = v64;
    v13 = v64 == 0;
    if ( !v64 )
    {
      v12 = v3 + 8 * v7;
      a2 = *(unsigned __int8 *)(v12 + 549);
      v13 = a2 == 0;
    }
    if ( v13 )
    {
      *((_BYTE *)a1 + 41) = 0;
      a2 = *(unsigned __int8 *)(v3 + 33);
      if ( *(_BYTE *)(v3 + 33) )
      {
        *((_BYTE *)a1 + 52) = 1;
        *((_BYTE *)a1 + 53) = 0;
        *((_BYTE *)a1 + 54) = v63;
        a2 = *(unsigned __int8 *)(v12 + 549) + v65;
        *(_BYTE *)(v12 + 549) = a2;
      }
      else
      {
        v14 = *(_DWORD *)(v3 + 36);
        if ( v14 > 0 )
        {
          v15 = v65;
          if ( v14 < v65 )
            v15 = *(_DWORD *)(v3 + 36);
          *(_DWORD *)(v3 + 36) = v14 - v15;
          a2 = *(unsigned __int8 *)(v12 + 549) + v15;
          *(_BYTE *)(v12 + 549) = a2;
          *((_BYTE *)a1 + 52) = 1;
          *((_BYTE *)a1 + 53) = 0;
          *((_BYTE *)a1 + 54) = v63;
        }
      }
      v16 = *((unsigned __int8 *)a1 + 72);
      v17 = v16 == 1;
      if ( v16 == 1 )
        v17 = *((_BYTE *)a1 + 52) == 1;
      if ( v17 )
      {
        *((_BYTE *)a1 + 72) = 0;
        sub_21FB4(a1[19], 0);
      }
    }
  }
  if ( *((_BYTE *)a1 + 41) && !*((_BYTE *)a1 + 42) )
  {
    v18 = v64 == 0;
    if ( !v64 )
      v18 = *(_BYTE *)(v3 + 8 * v7 + 549) == 0;
    if ( !v18 )
    {
      if ( *(_BYTE *)(v10 + 4) )
      {
        if ( !*((_BYTE *)a1 + 72) )
        {
          *((_BYTE *)a1 + 72) = 1;
          *((_BYTE *)a1 + 41) = 0;
          sub_21FB4(a1[19], 1);
          goto LABEL_89;
        }
        if ( *((_BYTE *)a1 + 72) == 1 )
          *((_BYTE *)a1 + 41) = 0;
      }
      *((_BYTE *)a1 + 42) = 1;
      *((_BYTE *)a1 + 43) = 0;
      *((_BYTE *)a1 + 44) = v60;
      v19 = v3 + 8 * v7;
      v20 = *(unsigned __int8 *)(v19 + 549);
      a2 = v20 - 1;
      *(_BYTE *)(v19 + 549) = v20 - 1;
      ++a1[12];
      if ( *(_BYTE *)(v10 + 4) )
      {
        v21 = *((unsigned __int8 *)a1 + 72);
        v22 = v21 == 1;
        if ( v21 == 1 )
          v22 = *((_BYTE *)a1 + 64) == 2;
        if ( !v22 )
          goto LABEL_74;
      }
      else if ( !*((_BYTE *)a1 + 64) )
      {
LABEL_74:
        *((_BYTE *)a1 + 41) = 0;
LABEL_75:
        if ( !*(_BYTE *)(v10 + 5) )
        {
          v36 = sub_120D0(a1[19]);
          *(_BYTE *)v36 = 6;
          *(_BYTE *)(v36 + 20) = 1;
          *(_DWORD *)(v36 + 4) = 0;
          v37 = sub_197A8(a1[3]);
          v38 = sub_196D8(a1[3]);
          *(_WORD *)(v36 + 24) = *a1
                               - ((unsigned int)sub_104(5u, 16 * v37) >> 16)
                               + ((int)(16 * v38 + ((unsigned int)(16 * v38) >> 31)) >> 17);
          v39 = sub_104(5u, 16 * v38);
          a2 = 16 * v37 + ((unsigned int)(16 * v37) >> 31);
          *(_WORD *)(v36 + 26) = *((_WORD *)a1 + 2) + HIWORD(v39) + (a2 >> 17);
          if ( v8 )
          {
            *(_WORD *)(v36 + 28) = *(_WORD *)(a1[17] + 60);
            LOWORD(v40) = *(_WORD *)(a1[17] + 62);
          }
          else
          {
            v41 = 0;
            v42 = *a1;
            while ( v62 > v41 )
            {
              v41 += 8;
              if ( v41 >= v62 )
                v41 = v62;
              v43 = (v42 + ((v38 * v41) >> 16)) / 16;
              v44 = (a1[1] + ((v37 * v41) >> 16)) / 16;
              if ( v43 >= 0 )
              {
                v45 = *(unsigned __int16 **)(a1[19] + 2200);
                if ( v43 < 2 * *v45
                  && v44 >= 0
                  && v44 < 2 * v45[1]
                  && (*(_BYTE *)(*(_DWORD *)(*((_DWORD *)v45 + 10) + 4 * v44) + v43) & 2) != 0 )
                {
                  break;
                }
              }
            }
            *(_WORD *)(v36 + 28) = v42 + ((unsigned int)(v38 * v41) >> 16);
            a2 = a1[1];
            v40 = a2 + ((v37 * v41) >> 16);
          }
          *(_WORD *)(v36 + 30) = v40;
        }
        goto LABEL_89;
      }
      v23 = v59;
      v24 = *((unsigned __int16 *)a1 + 30);
      v8 = 1;
      if ( v24 > v61 && v24 <= v62 )
      {
        v25 = v59 / 2;
        v23 = v25 + sub_104(v62 - v61, (int)(v59 * (v62 - v24)) / 2);
      }
      v26 = a1[17];
      if ( *((_BYTE *)a1 + 64) == 2 )
        v23 *= 2;
      if ( *(__int16 *)(v26 + 56) > 0 )
      {
        *(_WORD *)(v26 + 56) -= v23;
        if ( *(__int16 *)(a1[17] + 56) <= 0 )
        {
          v27 = (char *)off_20C48 + 133040;
          v28 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_20C48 + 0xFFFFFFFC + 133040) + 104))(320);
          v29 = (*(int (**)(void))(*(_DWORD *)&v27[-4] + 192))();
          sub_19618(*(int **)(v29 + 40), dword_20C4C, (int)v56, 0x100u);
          *(_DWORD *)(v3 + 28) += *(_DWORD *)(*(_DWORD *)(a1[19] + 2188) + 84 * *(unsigned __int16 *)(a1[17] + 20) + 80);
          (*(void (__fastcall **)(int, int, __int16 *, _BYTE *, _DWORD))(*(_DWORD *)&v27[-4] + 60))(
            v28,
            320,
            off_20C50 + 66596,
            v56,
            *(_DWORD *)(*(_DWORD *)(a1[19] + 2188) + 84 * *(unsigned __int16 *)(a1[17] + 20) + 80));
          v30 = (*(int (**)(void))(*(_DWORD *)&v27[-4] + 192))();
          sub_E00(*(_DWORD *)(v30 + 1888) + 544, 1, 0, v28);
        }
      }
      *(_BYTE *)(a1[17] + 72) = v67;
      *(_BYTE *)(a1[17] + 73) = 5;
      v31 = a1[17];
      if ( *(__int16 *)(v31 + 56) <= 0 && *(unsigned __int8 *)(v31 + 72) > 5u )
        *(_BYTE *)(v31 + 72) = 5;
      v32 = a1[17];
      v58 = *(__int16 *)(v32 + 60);
      v57 = *(__int16 *)(v32 + 62);
      v33 = sub_19868(*a1 - v58, a1[1] - v57);
      sub_1BAB8((int *)a1[19], (__int16)(v33 + 180), v66, &v58, &v57, 1);
      *(_WORD *)(a1[17] + 60) = v58;
      *(_WORD *)(a1[17] + 62) = v57;
      *(_WORD *)(a1[17] + 68) = 0;
      v34 = a1[17];
      a2 = *(unsigned __int8 *)(v34 + 64);
      if ( !*(_BYTE *)(v34 + 64) )
      {
        *(_BYTE *)(v34 + 64) = 1;
        a2 = 10;
        *(_BYTE *)(a1[17] + 65) = 0;
        *(_BYTE *)(a1[17] + 71) = 0;
        *(_WORD *)(a1[17] + 68) = 0;
        *(_BYTE *)(a1[17] + 70) = 10;
      }
      v35 = v3 == 0;
      if ( v3 )
        v35 = *(_BYTE *)(v3 + 32) == 0;
      if ( !v35 )
        *(_BYTE *)(v3 + 32) = 0;
      goto LABEL_75;
    }
  }
LABEL_89:
  v46 = a1[3];
  v47 = a1[7];
  v58 = *a1;
  v57 = a1[1];
  v48 = 0;
  if ( (v47 & 1) != 0 )
  {
    a2 = (__int16)v46;
    v48 = 1;
  }
  if ( (v47 & 2) != 0 )
  {
    a2 = (__int16)(v46 + 180);
    v48 = 1;
  }
  if ( (v47 & 4) != 0 )
  {
    v48 = 1;
    a2 = (__int16)(v46 + 270);
  }
  if ( (v47 & 8) != 0 )
  {
    a2 = (__int16)(v46 + 90);
LABEL_98:
    sub_1BAB8((int *)a1[19], a2, 10, &v58, &v57, 0);
    *a1 = v58;
    a1[1] = v57;
    goto LABEL_99;
  }
  if ( v48 == 1 )
    goto LABEL_98;
LABEL_99:
  if ( (v47 & 0x100) != 0 )
  {
    v46 -= 4;
  }
  else if ( (v47 & 0x200) != 0 )
  {
    v46 += 4;
  }
  v49 = v46 + (v46 < 0 ? 0x168 : 0);
  if ( v49 >= 360 )
    v49 -= 360;
  a1[3] = v49;
  for ( i = 0; ; ++i )
  {
    result = *(_DWORD *)(a1[19] + 2200);
    if ( *(_DWORD *)(result + 44) <= i )
      break;
    v51 = *(_DWORD *)(result + 48) + 40 * i;
    v52 = *(_BYTE *)(v51 + 21) == 0;
    if ( *(_BYTE *)(v51 + 21) )
      v52 = *(_BYTE *)(*(unsigned __int16 *)(v51 + 22) + v3 + 40) == 1;
    if ( !v52 )
    {
      v58 = *a1 - *(__int16 *)(v51 + 24);
      v53 = a1[1] - *(__int16 *)(v51 + 26);
      v57 = v53;
      v54 = (unsigned int)(v58 + 23) >= 0x2F;
      if ( (unsigned int)(v58 + 23) < 0x2F )
        v54 = (unsigned int)(v53 + 23) >= 0x2F;
      if ( !v54 )
      {
        *(_BYTE *)(v3 + 828) = 1;
        *(_BYTE *)(v3 + 829) = *(_BYTE *)(v51 + 21);
        result = *(unsigned __int16 *)(v51 + 22);
        *(_WORD *)(v69 + 62) = result;
        return result;
      }
    }
  }
  return result;
}

