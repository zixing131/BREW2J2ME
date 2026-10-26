int __fastcall sub_6E440(unsigned __int16 a1, int a2)
{
  int v3; // r0
  int v4; // r2
  int v5; // r3
  int v6; // r0
  int v7; // r2
  int v8; // r3
  const char *v9; // r1
  int i; // r6
  int v11; // r4
  int v12; // r0
  int v13; // r3
  int *v14; // r3
  int v15; // r0
  int v16; // r4
  int v17; // r2
  int v18; // r5
  int v19; // r0
  int v20; // r3
  int v21; // r3
  int v22; // r0
  int v23; // r3
  int v24; // r2
  int v25; // r5
  int v26; // r4
  const char *v27; // r6
  int v28; // r4
  const char *v29; // r6
  int v30; // r3
  int v31; // r6
  int m; // r3
  int v33; // r4
  const char *v34; // r5
  int v35; // r4
  const char *v36; // r5
  int v37; // r3
  int v38; // r6
  int n; // r3
  int v40; // r4
  const char *v41; // r5
  int v42; // r4
  const char *v43; // r5
  const char *v44; // r1
  int v46; // [sp+0h] [bp-9Ch]
  int v47; // [sp+0h] [bp-9Ch]
  int v48; // [sp+8h] [bp-94h]
  int v49; // [sp+Ch] [bp-90h]
  int v50; // [sp+10h] [bp-8Ch]
  int v51; // [sp+14h] [bp-88h]
  int v52; // [sp+18h] [bp-84h]
  int v53; // [sp+1Ch] [bp-80h]
  const char *v54; // [sp+20h] [bp-7Ch]
  int k; // [sp+24h] [bp-78h]
  int v56; // [sp+28h] [bp-74h]
  int v57; // [sp+2Ch] [bp-70h]
  int v58; // [sp+30h] [bp-6Ch]
  int v59; // [sp+34h] [bp-68h]
  int v60; // [sp+38h] [bp-64h]
  int v61; // [sp+3Ch] [bp-60h]
  int v62; // [sp+40h] [bp-5Ch]
  int v63; // [sp+44h] [bp-58h]
  const char *j; // [sp+48h] [bp-54h]
  int v65; // [sp+4Ch] [bp-50h] BYREF
  int v66; // [sp+50h] [bp-4Ch]
  int v67; // [sp+54h] [bp-48h] BYREF
  int v68; // [sp+58h] [bp-44h]
  _DWORD v69[4]; // [sp+5Ch] [bp-40h] BYREF
  char v70; // [sp+6Ch] [bp-30h] BYREF
  _BYTE v71[30]; // [sp+6Eh] [bp-2Eh] BYREF
  int v72; // [sp+8Ch] [bp-10h] BYREF
  int v73; // [sp+90h] [bp-Ch] BYREF
  int v74; // [sp+94h] [bp-8h] BYREF
  char v75[3]; // [sp+98h] [bp-4h] BYREF
  char v76; // [sp+9Bh] [bp-1h] BYREF
  _DWORD savedregs[5]; // [sp+9Ch] [bp+0h]

  v76 = 0;
  v72 = 0;
  sub_6EACE(v71, "%d.dat", a1);
  v52 = sub_6CBE0(v71);
  if ( v52 )
  {
    sub_6EAD2(v75, v52, 2);
    sub_6EAD2(&v74, v52 + 2, 4);
    sub_6EAD2(&v73, v52 + 6, 4);
    v53 = sub_6EAD4(v74);
    sub_6EAD0(v52 + 10, v53, v74, v73, 6);
    sub_6EAD2(a2 + 9, v53, 1);
    sub_6EAD2(a2 + 10, v53 + 1, 1);
    sub_6EAD2(a2 + 12, v53 + 2, 1);
    sub_6EAD2(a2 + 11, v53 + 3, 1);
    sub_6EAD2(a2 + 8, v53 + 4, 1);
    v54 = (const char *)(v53 + 5);
    v3 = sub_6EAD4(8 * *(unsigned __int8 *)(a2 + 9) + 2);
    v4 = 8 * *(unsigned __int8 *)(a2 + 9);
    *(_DWORD *)a2 = v3;
    *(_DWORD *)(a2 + 16) = v3;
    sub_6EAD0(v3, 0, v4, v5, v46);
    v6 = sub_6EAD4(16 * *(unsigned __int8 *)(a2 + 8) + 2);
    v7 = *(unsigned __int8 *)(a2 + 8);
    *(_DWORD *)(a2 + 4) = v6;
    *(_DWORD *)(a2 + 20) = v6;
    sub_6EAD0(v6, 0, 16 * v7, v8, v47);
    for ( i = 0; i < *(unsigned __int8 *)(a2 + 9); ++i )
    {
      v11 = *(_DWORD *)(a2 + 16);
      v12 = sub_6EACE(2 * *(unsigned __int8 *)(a2 + 10) + 2, v9);
      v13 = *(_DWORD *)(a2 + 16);
      *(_DWORD *)(8 * i + v11) = v12;
      v14 = (int *)(8 * i + v13);
      v15 = *v14;
      v14[1] = *v14;
      sub_6EACE(v15, 0, 2 * *(unsigned __int8 *)(a2 + 10), &unk_140329C);
      sub_6EACE(*(_DWORD *)(*(_DWORD *)(a2 + 16) + 8 * i + 4), v54, *(unsigned __int8 *)(a2 + 10), sub_66D3C);
      v9 = &v54[3 * *(unsigned __int8 *)(a2 + 10)];
      v54 = v9;
    }
    for ( j = 0; ; ++j )
    {
      v44 = j;
      if ( (int)j >= *(unsigned __int8 *)(a2 + 8) )
        break;
      v48 = 16 * (_DWORD)j;
      sub_6EACE(16 * (_DWORD)j + *(_DWORD *)(a2 + 20) + 4, v54, 1);
      sub_6EACE(16 * (_DWORD)j + *(_DWORD *)(a2 + 20) + 6, v54 + 1, 1, &unk_140327C);
      v76 = 0;
      sub_6EACE(&v76, v54 + 2, 1, &unk_140327C);
      *(_WORD *)(*(_DWORD *)(a2 + 20) + 16 * (_DWORD)j) = v76;
      v76 = 0;
      sub_6EACE(&v76, v54 + 3, 1, &unk_140327C);
      v54 += 4;
      v16 = *(_DWORD *)(a2 + 20) + 16 * (_DWORD)j;
      v17 = *(unsigned __int16 *)(v16 + 4);
      *(_WORD *)(v16 + 2) = v76;
      v18 = *(unsigned __int16 *)(v16 + 6) * v17;
      v19 = sub_6EACE(v18 + 2, (const char *)(16 * (_DWORD)j));
      v20 = *(_DWORD *)(a2 + 20);
      *(_DWORD *)(v16 + 8) = v19;
      v21 = 16 * (_DWORD)j + v20;
      v22 = *(_DWORD *)(v21 + 8);
      *(_DWORD *)(v21 + 12) = v22;
      sub_6EACE(v22, 0, v18, &unk_140329C);
      v23 = *(unsigned __int8 *)(a2 + 12);
      switch ( v23 )
      {
        case 12:
          sub_6EACE(*(_DWORD *)(*(_DWORD *)(a2 + 20) + v48 + 12), v54, v18, &unk_140327C);
          v54 += v18;
          break;
        case 11:
          v49 = v18 & 1;
          if ( (v18 & 1) != 0 )
            v24 = v18 + 1;
          else
            v24 = v18;
          v61 = v24 / 2;
          v56 = *(_DWORD *)(*(_DWORD *)(a2 + 20) + v48 + 12);
          v25 = v18 % 2;
          for ( k = 0; k < v61; ++k )
          {
            sub_6EACE(&v72, v54, 1, &unk_140327C);
            v65 = (v72 >> 4) & 0xF;
            v66 = v72 & 0xF;
            if ( k == v61 - 1 )
            {
              v26 = 0;
              v27 = (const char *)&v65;
              do
              {
                if ( v49 && v26 >= v25 )
                  break;
                sub_6EACE(v56, v27, 1, &unk_140327C);
                ++v26;
                ++v56;
                v27 += 4;
              }
              while ( v26 != 2 );
            }
            else
            {
              v28 = v56;
              v29 = (const char *)&v65;
              do
              {
                sub_6EACE(v28, v29, 1, &unk_140327C);
                v29 += 4;
                ++v28;
              }
              while ( v29 != (const char *)&v67 );
              v56 += 2;
            }
            ++v54;
          }
          break;
        case 10:
          v50 = v18 & 3;
          if ( (v18 & 3) != 0 )
            v30 = v18 - v18 % 4 + 4;
          else
            v30 = v18;
          v60 = v30 / 4;
          v57 = *(_DWORD *)(*(_DWORD *)(a2 + 20) + v48 + 12);
          v31 = v18 % 4;
          for ( m = 0; ; m = v62 + 1 )
          {
            v62 = m;
            if ( m >= v60 )
              break;
            sub_6EACE(&v72, v54, 1, &unk_140327C);
            v65 = (v72 >> 6) & 3;
            v66 = (v72 >> 4) & 3;
            v67 = (v72 >> 2) & 3;
            v68 = v72 & 3;
            if ( v62 == v60 - 1 )
            {
              v33 = 0;
              v34 = (const char *)&v65;
              do
              {
                if ( v50 && v33 >= v31 )
                  break;
                sub_6EACE(v57, v34, 1, &unk_140327C);
                ++v33;
                ++v57;
                v34 += 4;
              }
              while ( v33 != 4 );
            }
            else
            {
              v35 = v57;
              v36 = (const char *)&v65;
              do
              {
                sub_6EACE(v35, v36, 1, &unk_140327C);
                v36 += 4;
                ++v35;
              }
              while ( v36 != (const char *)v69 );
              v57 += 4;
            }
            ++v54;
          }
          break;
        case 9:
          v51 = v18 & 7;
          if ( (v18 & 7) != 0 )
            v37 = v18 - v18 % 8 + 8;
          else
            v37 = v18;
          v59 = v37 / 8;
          v58 = *(_DWORD *)(*(_DWORD *)(a2 + 20) + v48 + 12);
          v38 = v18 % 8;
          for ( n = 0; ; n = v63 + 1 )
          {
            v63 = n;
            if ( n >= v59 )
              break;
            sub_6EACE(&v72, v54, 1, &unk_140327C);
            v65 = (v72 >> 7) & 1;
            v66 = (v72 >> 6) & 1;
            v67 = (v72 >> 5) & 1;
            v68 = (v72 >> 4) & 1;
            v69[0] = (v72 >> 3) & 1;
            v69[1] = (v72 >> 2) & 1;
            v69[2] = (v72 >> 1) & 1;
            v69[3] = v72 & 1;
            if ( v63 == v59 - 1 )
            {
              v40 = 0;
              v41 = (const char *)&v65;
              do
              {
                if ( v51 && v40 >= v38 )
                  break;
                sub_6EACE(v58, v41, 1, &unk_140327C);
                ++v40;
                ++v58;
                v41 += 4;
              }
              while ( v40 != 8 );
            }
            else
            {
              v42 = v58;
              v43 = (const char *)&v65;
              do
              {
                sub_6EACE(v42, v43, 1, &unk_140327C);
                v43 += 4;
                ++v42;
              }
              while ( v43 != &v70 );
              v58 += 8;
            }
            ++v54;
          }
          break;
      }
    }
    if ( v53 )
      sub_6EACE(v53, j, v53, &unk_14032FC);
    sub_6EACE(v52, v44);
  }
  return savedregs[4];
}
