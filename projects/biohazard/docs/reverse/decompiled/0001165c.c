int __fastcall sub_1165C(
        int a1,
        int a2,
        int a3,
        int a4,
        int a5,
        int a6,
        int a7,
        unsigned int a8,
        int a9,
        unsigned int a10)
{
  int v10; // r4
  int v11; // r10
  int v12; // r5
  int result; // r0
  int v14; // r11
  bool v15; // zf
  int v16; // r9
  int v17; // r6
  bool v18; // cc
  int v19; // r0
  int v20; // r0
  __int16 v21; // r0
  char *v22; // r8
  _WORD *v23; // r7
  _WORD *v24; // r8
  int v25; // r0
  int v26; // r1
  int v27; // r0
  int v28; // r1
  int v29; // r0
  unsigned int v30; // r3
  int v31; // r1
  int v32; // r0
  unsigned int v33; // r3
  int v34; // r1
  __int16 *v35; // r4
  __int16 *v36; // r5
  signed int v37; // r1
  signed int v38; // t1
  signed int v39; // r0
  signed int v40; // t1
  __int16 v41; // r2
  __int16 v42; // r2
  char *v43; // r8
  int v44; // [sp+8h] [bp-1Ch]
  int v45; // [sp+Ch] [bp-18h]
  int v46; // [sp+10h] [bp-14h]

  v10 = a5;
  v11 = a6;
  v12 = a7;
  result = *(_DWORD *)(a1 + 20);
  v14 = a4;
  v15 = result == 0;
  if ( !result )
    result = 7;
  v16 = a2;
  v17 = a3;
  if ( !v15 )
  {
    v18 = a7 < a5;
    if ( a7 < a5 )
      v18 = a7 < a3;
    if ( v18 )
    {
      v17 = a7;
      v12 = a3;
      v16 = a6;
      v11 = a2;
    }
    if ( a5 < v17 )
    {
      v19 = v17;
      v17 = a5;
      v10 = v19;
      v20 = v16;
      v16 = a4;
      v14 = v20;
    }
    if ( v12 > v10 )
      v21 = v12 - v17;
    else
      v21 = v10 - v17;
    v46 = v21;
    if ( v21 )
    {
      v22 = (char *)off_118D8 + 71440;
      v45 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_118D8 + 0xFFFFFFFC + 71440) + 104))(2 * v21);
      v44 = (*(int (__fastcall **)(int))(*(_DWORD *)&v22[-4] + 104))(2 * v46);
      v23 = (_WORD *)v44;
      v24 = (_WORD *)v45;
      if ( v10 > v17 )
      {
        v25 = sub_104(v10 - v17, (v14 - v16) << 16);
        v26 = -(v25 >> 1);
        while ( (unsigned int)v24 < v45 + 2 * v10 - 2 * v17 )
        {
          v26 += v25;
          *v24++ = v16 + HIWORD(v26);
        }
      }
      if ( v12 > v17 )
      {
        v27 = sub_104(v12 - v17, (v11 - v16) << 16);
        v28 = -(v27 >> 1);
        while ( (unsigned int)v23 < v44 + 2 * v12 - 2 * v17 )
        {
          v28 += v27;
          *v23++ = v16 + HIWORD(v28);
        }
      }
      if ( v10 <= v12 )
      {
        if ( v12 > v10 )
        {
          v32 = sub_104(v12 - v10, (v11 - v14) << 16);
          v33 = (unsigned int)&v24[v12 - v10];
          v34 = -(v32 >> 1);
          while ( (unsigned int)v24 < v33 )
          {
            v34 += v32;
            *v24++ = v14 + HIWORD(v34);
          }
        }
      }
      else
      {
        v29 = sub_104(v10 - v12, (v14 - v11) << 16);
        v30 = (unsigned int)&v23[v10 - v12];
        v31 = -(v29 >> 1);
        while ( (unsigned int)v23 < v30 )
        {
          v31 += v29;
          *v23++ = v11 + HIWORD(v31);
        }
      }
      v35 = (__int16 *)v45;
      v36 = (__int16 *)v44;
      while ( (unsigned int)v35 < v45 + 2 * v46 )
      {
        v38 = *v35++;
        v37 = v38;
        v40 = *v36++;
        v39 = v40;
        if ( v37 > v40 )
        {
          v41 = v37;
          v37 = v39;
          LOWORD(v39) = v41;
        }
        v42 = v17;
        LOWORD(v17) = v17 + 1;
        sub_109D0(a1, v37, v42, (__int16)(v39 - v37 + 1), a8, a10);
      }
      v43 = (char *)off_118DC + 71856;
      (*(void (__fastcall **)(int))(*(_DWORD *)((char *)off_118DC + 0xFFFFFFFC + 71856) + 108))(v45);
      (*(void (__fastcall **)(int))(*(_DWORD *)&v43[-4] + 108))(v44);
    }
    return 0;
  }
  return result;
}

