int __fastcall sub_20C54(int a1)
{
  int result; // r0
  int v3; // r7
  int v4; // r1
  int v5; // r10
  int v6; // r11
  unsigned int i; // r8
  int v8; // r5
  int v9; // r6
  int v10; // r0
  int v11; // r0
  bool v12; // zf
  bool v13; // cc
  int v14; // r2
  int v15; // r1
  int v16; // r9
  int v17; // r2
  int v18; // r3
  unsigned int v19; // r0
  int v20; // r0
  int v21; // r2
  int v22; // r3
  int v23; // r0
  int v24; // r2
  int v25; // r3
  int v26; // r0
  __int16 v27; // r0
  __int16 v28; // r1
  int v29; // r0
  unsigned int v30; // r9
  unsigned int v31; // r1
  unsigned int v32; // r0
  int v33; // r1
  int v34; // r2
  int v35; // r3
  int v36; // r0
  __int16 v37; // r3
  int v38; // r0
  int j; // r8
  int v40; // r0
  int v41; // r5
  int v42; // r6
  int v43; // r11
  int v44; // r9
  int v45; // r10
  int v46; // r1
  int v47; // r2
  unsigned __int16 *v48; // r3
  bool v49; // zf
  bool v50; // zf
  int v51; // r1
  int v52; // r0
  int k; // r0
  int v54; // r1
  unsigned int v55; // r2
  int v56; // [sp+4h] [bp-30h]
  int v57; // [sp+8h] [bp-2Ch]
  int v58; // [sp+10h] [bp-24h]
  unsigned int v59; // [sp+14h] [bp-20h]
  int v60; // [sp+14h] [bp-20h]
  signed int v61; // [sp+18h] [bp-1Ch]
  int v62; // [sp+1Ch] [bp-18h]
  int v63; // [sp+20h] [bp-14h]
  int v64; // [sp+24h] [bp-10h]
  int v65; // [sp+28h] [bp-Ch] BYREF
  int v66; // [sp+2Ch] [bp-8h] BYREF
  int v67; // [sp+30h] [bp-4h]

  result = *(_DWORD *)(a1 + 2200);
  v3 = *(_DWORD *)(result + 40);
  v4 = *(_DWORD *)(a1 + 2212) + 1;
  *(_DWORD *)(a1 + 2212) = v4;
  if ( !result )
    return result;
  v67 = a1 + 2088;
  sub_20458((int *)(a1 + 2088), v4);
  v5 = *(_DWORD *)(a1 + 2088);
  v6 = *(_DWORD *)(a1 + 2092);
  for ( i = 0; ; ++i )
  {
    v38 = *(_DWORD *)(a1 + 2200);
    if ( *(_DWORD *)(v38 + 52) <= i )
      break;
    v8 = *(_DWORD *)(v38 + 56) + 76 * i;
    if ( *(_WORD *)(v8 + 68) == 2 )
      continue;
    v9 = *(_DWORD *)(a1 + 2188) + 84 * *(unsigned __int16 *)(v8 + 20);
    if ( *(_BYTE *)(*(_DWORD *)(a1 + 2224) + 32) == 1
      && !*(_BYTE *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_213A0 + 0xFFFFFFFC + 134376) + 192))() + 1888)
                   + 564) )
    {
      *(_BYTE *)(v8 + 64) = 0;
    }
    if ( *(__int16 *)(v8 + 56) <= 0 )
    {
      v66 = (*(__int16 *)(v8 + 60) - 8) / 16;
      v65 = (*(__int16 *)(v8 + 62) - 8) / 16;
      *(_BYTE *)(*(_DWORD *)(v3 + 4 * v65) + v66) &= ~4u;
      *(_BYTE *)(*(_DWORD *)(v3 + 4 * v65 + 4) + v66) &= ~4u;
      v10 = *(_DWORD *)(v3 + 4 * v65 + 4) + v66;
      *(_BYTE *)(v10 + 1) &= ~4u;
      *(_BYTE *)(*(_DWORD *)(v3 + 4 * v65) + v66 + 1) &= ~4u;
    }
    if ( *(_BYTE *)(v8 + 73) )
      --*(_BYTE *)(v8 + 73);
    if ( *(_BYTE *)(v8 + 72) )
    {
      --*(_BYTE *)(v8 + 72);
      continue;
    }
    if ( *(__int16 *)(v8 + 56) <= 0 )
    {
      *(_WORD *)(v8 + 68) = 2;
      if ( *(_BYTE *)(v8 + 36) )
      {
        *(_BYTE *)(*(_DWORD *)(a1 + 2224) + 824) = 1;
        *(_WORD *)(*(_DWORD *)(a1 + 2224) + 826) = *(_WORD *)(v8 + 38);
      }
      continue;
    }
    if ( *(_BYTE *)(*(_DWORD *)(a1 + 2224) + 32) == 1 )
      continue;
    if ( !*(_BYTE *)(v8 + 64) )
    {
      v66 = v5 - *(__int16 *)(v8 + 28);
      v11 = v6 - *(__int16 *)(v8 + 30);
      v65 = v11;
      v12 = v66 == 0;
      v13 = v66 < 0;
      if ( v66 >= 0 )
      {
        v14 = *(__int16 *)(v8 + 34);
        v12 = v14 == v66;
        v13 = v14 < v66;
      }
      if ( !v13 )
      {
        v12 = v11 == 0;
        if ( v11 >= 0 )
        {
          v15 = *(__int16 *)(v8 + 32);
          v12 = v15 == v11;
          if ( v15 >= v11 )
            v12 = *(_BYTE *)(*(_DWORD *)(a1 + 2224) + 32) == 0;
        }
      }
      if ( !v12 )
        continue;
      *(_BYTE *)(v8 + 64) = 1;
      *(_BYTE *)(v8 + 65) = 0;
      *(_BYTE *)(v8 + 71) = 0;
      *(_WORD *)(v8 + 68) = 0;
      *(_BYTE *)(v8 + 70) = 10;
    }
    *(_WORD *)(v8 + 58) = sub_19868(v5 - *(__int16 *)(v8 + 60), v6 - *(__int16 *)(v8 + 62));
    v16 = sub_1973C(*(__int16 *)(v8 + 60) - v5, *(__int16 *)(v8 + 62) - v6);
    v63 = sub_58EC(a1, *(__int16 *)(v8 + 60), *(__int16 *)(v8 + 62), *(__int16 *)(v8 + 58), v16);
    v19 = *(unsigned __int8 *)(v8 + 70);
    if ( v19 < 0xA )
    {
      if ( v19 < *(unsigned __int8 *)(v8 + 65) )
      {
        if ( *(unsigned __int16 *)(v9 + 74) >= v16 && v63 )
        {
          v29 = sub_19748(0, 2, v17, v18);
          v28 = *(_WORD *)(v8 + 58);
          if ( v29 )
            v27 = 90;
          else
            v27 = -90;
        }
        else
        {
          v27 = *(_WORD *)(v8 + 58);
          v28 = *(char *)(v8 + 71);
        }
        v66 = *(__int16 *)(v8 + 60);
        v65 = *(__int16 *)(v8 + 62);
        sub_1BAB8((int *)a1, (__int16)(v27 + v28), *(unsigned __int8 *)(v9 + 68), &v66, &v65, 1);
        *(_WORD *)(v8 + 60) = v66;
        *(_WORD *)(v8 + 62) = v65;
        *(_WORD *)(v8 + 68) = 1;
      }
      else
      {
        *(_WORD *)(v8 + 68) = 0;
      }
      ++*(_BYTE *)(v8 + 70);
    }
    else
    {
      v20 = sub_19748(0, 2 * *(unsigned __int8 *)(v9 + 70) + 1, v17, v18);
      *(_BYTE *)(v8 + 65) = sub_104(0x64u, 10 * (*(unsigned __int8 *)(v9 + 69) + *(unsigned __int8 *)(v9 + 70) - v20));
      *(_BYTE *)(v8 + 70) = 0;
      *(_WORD *)(v8 + 68) = 1;
      v23 = sub_19748(0, 2 * *(unsigned __int8 *)(v9 + 72) + 1, v21, v22);
      v24 = *(unsigned __int8 *)(v9 + 72);
      v64 = *(unsigned __int8 *)(v9 + 71) + v24 - v23;
      v12 = sub_19748(0, 2, v24, v25) == 0;
      LOBYTE(v26) = v64;
      if ( v12 )
        v26 = -v64;
      *(_BYTE *)(v8 + 71) = v26;
    }
    if ( v63 && *(unsigned __int16 *)(v9 + 66) >= v16 )
    {
      v30 = *(unsigned __int8 *)(v9 + 64);
      if ( *(_BYTE *)(v9 + 64) )
      {
        if ( *(unsigned __int8 *)(v9 + 64) <= 0x32u )
          goto LABEL_46;
      }
      else
      {
        v30 = 1;
LABEL_46:
        sub_1DC(0x64u, *(_DWORD *)(a1 + 2212));
        v59 = v31;
        v32 = sub_104(v30, 0x32u);
        sub_1DC(v32, v59);
        if ( v33 )
          continue;
      }
      if ( sub_19748(0, 2, v17, v18) )
      {
        sub_19748(0, 2 * *(unsigned __int8 *)(v9 + 65) + 1, v34, v35);
        v36 = sub_1209C(a1);
        *(_BYTE *)v36 = 5;
        *(_DWORD *)(v36 + 4) = 0;
        *(_BYTE *)(v36 + 32) = 1;
        *(_BYTE *)(v36 + 33) = *(_BYTE *)(v9 + 60);
        *(_WORD *)(v36 + 34) = *(_WORD *)(v8 + 60);
        *(_WORD *)(v36 + 36) = *(_WORD *)(v8 + 62);
        *(_WORD *)(v36 + 38) = v37;
        *(_WORD *)(v36 + 40) = 0;
        *(_WORD *)(v36 + 42) = *(_WORD *)(v9 + 66);
        *(_WORD *)(v36 + 44) = *(unsigned __int8 *)(v9 + 61);
        *(_WORD *)(v36 + 46) = *(_WORD *)(v9 + 62);
      }
      continue;
    }
  }
  for ( j = 0; j < 40; ++j )
  {
    v40 = *(_DWORD *)(a1 + 2200) + 48 * j;
    v41 = v40 + 76;
    if ( *(_BYTE *)(v40 + 108) )
    {
      v62 = (*(_DWORD *)(a1 + 2088) - 8) / 16;
      v42 = 0;
      v43 = (*(_DWORD *)(a1 + 2092) - 8) / 16;
      v60 = 0;
      v58 = 0;
      v44 = *(__int16 *)(v40 + 110);
      v45 = *(__int16 *)(v40 + 112);
      v61 = *(__int16 *)(v40 + 114);
      v57 = sub_196D8(v61);
      v56 = sub_197A8(v61);
      while ( 1 )
      {
        v51 = *(__int16 *)(v41 + 44);
        if ( v51 <= v42 )
          break;
        v42 += 8;
        if ( v42 >= v51 )
          v42 = *(__int16 *)(v41 + 44);
        v66 = v44 + ((v57 * v42) >> 16);
        v65 = v45 + ((v56 * v42) >> 16);
        v46 = v66 / 16;
        v47 = v65 / 16;
        if ( v66 / 16 >= 0 )
        {
          v48 = *(unsigned __int16 **)(a1 + 2200);
          if ( v46 < 2 * *v48 && v47 >= 0 && v47 < 2 * v48[1] )
          {
            v49 = v46 == v62;
            if ( v46 != v62 )
              v49 = v62 + 1 == v46;
            if ( v49 )
            {
              v50 = v47 == v43;
              if ( v47 != v43 )
                v50 = v43 + 1 == v47;
              if ( v50 )
              {
                v60 = 1;
                break;
              }
            }
            if ( (*(_BYTE *)(*(_DWORD *)(v3 + 4 * v47) + v46) & 2) != 0 )
            {
              v58 = 1;
              break;
            }
          }
        }
      }
      *(_WORD *)(v41 + 34) = v66;
      *(_WORD *)(v41 + 36) = v65;
      *(_WORD *)(v41 + 40) += v42;
      if ( *(_BYTE *)(v41 + 33) )
      {
        v52 = sub_120D0(a1);
        *(_BYTE *)v52 = 6;
        *(_BYTE *)(v52 + 20) = 1;
        *(_DWORD *)(v52 + 4) = 0;
        *(_WORD *)(v52 + 24) = v44;
        *(_WORD *)(v52 + 26) = v45;
        *(_WORD *)(v52 + 28) = *(_WORD *)(v41 + 34);
        *(_WORD *)(v52 + 30) = *(_WORD *)(v41 + 36);
      }
      if ( v60 )
      {
        *(_BYTE *)(v41 + 32) = 0;
        **(_DWORD **)(*(_DWORD *)(a1 + 2224) + 24) -= *(__int16 *)(v41 + 46);
        *(_BYTE *)(a1 + 2161) = 3;
      }
      if ( v58 )
        *(_BYTE *)(v41 + 32) = 0;
      if ( *(__int16 *)(v41 + 40) > *(__int16 *)(v41 + 42) )
        *(_BYTE *)(v41 + 32) = 0;
    }
  }
  for ( k = 0; k < 100; ++k )
  {
    v54 = *(_DWORD *)(a1 + 2200) + 56 * k + 1996;
    if ( *(_BYTE *)(*(_DWORD *)(a1 + 2200) + 56 * k + 2016) == 1 )
    {
      v55 = *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 56 * k + 2000) + 1;
      *(_DWORD *)(*(_DWORD *)(a1 + 2200) + 56 * k + 2000) = v55;
      if ( v55 >= 4 )
      {
        *(_DWORD *)(v54 + 4) = 0;
        *(_BYTE *)(v54 + 20) = 0;
      }
    }
  }
  return sub_1098(v67);
}

