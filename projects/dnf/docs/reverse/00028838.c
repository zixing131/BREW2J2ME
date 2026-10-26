int __fastcall sub_28838(unsigned __int8 a1)
{
  const char *v1; // r1
  const char *v2; // r1
  int v3; // r4
  int i; // r7
  const char *v5; // r7
  int j; // r6
  int v7; // r3
  int v8; // r3
  const char *v9; // r1
  int v10; // r6
  char *k; // r3
  int v12; // r3
  int v13; // r3
  const char *v14; // r1
  char *v15; // r0
  int v16; // r3
  int v17; // r3
  int v18; // r3
  int v19; // r3
  int v20; // r3
  int m; // r4
  const char *v22; // r1
  int v24; // [sp+0h] [bp-48h]
  int v25; // [sp+0h] [bp-48h]
  int v26; // [sp+0h] [bp-48h]
  int v27; // [sp+0h] [bp-48h]
  int v28; // [sp+0h] [bp-48h]
  int v29; // [sp+0h] [bp-48h]
  int v30; // [sp+0h] [bp-48h]
  int v31; // [sp+0h] [bp-48h]
  int v32; // [sp+0h] [bp-48h]
  int v33; // [sp+4h] [bp-44h]
  int v34; // [sp+8h] [bp-40h]
  char *v35; // [sp+Ch] [bp-3Ch]
  char *v36; // [sp+10h] [bp-38h]
  char *v37; // [sp+14h] [bp-34h]
  int v38; // [sp+18h] [bp-30h]
  _BYTE v39[30]; // [sp+1Eh] [bp-2Ah] BYREF
  int v40; // [sp+3Ch] [bp-Ch] BYREF
  int v41; // [sp+40h] [bp-8h] BYREF
  __int16 v42; // [sp+46h] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+48h] [bp+0h]

  sub_2BCB6(v39, "%d.fie", a1);
  v33 = sub_2BCB6(v39, v1);
  if ( !v33 )
    return savedregs[4];
  sub_2BCBC(&v42);
  sub_2BCBC(&v40);
  sub_2BCBC(&v41);
  v34 = sub_2BCB6(v40 + 2, v2);
  sub_2BCB8(v33 + 10, v34, v40, v41, 6);
  sub_2BCBC(&byte_15332D0);
  sub_2BCBC(&byte_15332D1);
  sub_2BCBC(&byte_15332D2);
  sub_2BCBC(&byte_15332D5);
  sub_2BCBC(&unk_15332D3);
  sub_2BCBC(&unk_15332D4);
  sub_2BCBC(&byte_15332F4);
  v3 = v34 + 7;
  for ( i = 0; i < (unsigned __int8)byte_15332F4; ++i )
  {
    sub_2BCBC((char *)&unk_15332D6 + 2 * i);
    sub_2BCBC((char *)&unk_15332E0 + i);
    sub_2BCBC((char *)&unk_15332E5 + i);
    v3 += 4;
  }
  sub_2BCBC(&byte_15332A4);
  sub_2BCBC(&byte_15332A5);
  sub_2BCBC(&byte_15332A6);
  sub_2BCBC(&unk_15332A7);
  sub_2BCBC(&byte_15332C4);
  v5 = (const char *)(v3 + 5);
  for ( j = 0; j < (unsigned __int8)byte_15332C4; ++j )
  {
    sub_2BCB8((char *)&unk_15332A8 + 2 * j, v5, 2, &unk_15332A8, v24);
    sub_2BCB8((char *)&unk_15332B2 + j, v5 + 2, 1, v7, v25);
    sub_2BCB8((char *)&unk_15332B7 + j, v5 + 3, 1, v8, v26);
    v5 += 4;
  }
  v38 = 0;
  v36 = &byte_1533300;
  v37 = &byte_1533323;
  do
  {
    sub_2BCBC(v36);
    ++v5;
    if ( *v36 >= 0 )
    {
      sub_2BCBC(&byte_1533319[v38]);
      sub_2BCBC(&byte_153331E[v38]);
      sub_2BCBC(&byte_153330F[v38]);
      sub_2BCBC(&byte_1533314[v38]);
      sub_2BCBC(v37);
      v5 += 5;
      v10 = 0;
      for ( k = (char *)&unk_1533328; ; k = v35 + 2 )
      {
        v35 = k;
        v20 = (unsigned __int8)*v37;
        if ( v10 >= v20 )
          break;
        if ( v38 )
        {
          switch ( v38 )
          {
            case 1:
              sub_2BCB8(v35 + 20, v5, 2, 1, v24);
              sub_2BCB8((char *)&unk_1533346 + v10, v5 + 2, 1, v16, v29);
              v14 = v5 + 3;
              v15 = (char *)&unk_153334B;
              break;
            case 2:
              sub_2BCB8(v35 + 40, v5, 2, 2, v24);
              sub_2BCB8((char *)&unk_153335A + v10, v5 + 2, 1, v17, v30);
              v14 = v5 + 3;
              v15 = (char *)&unk_153335F;
              break;
            case 3:
              sub_2BCB8(v35 + 60, v5, 2, 3, v24);
              sub_2BCB8((char *)&unk_153336E + v10, v5 + 2, 1, v18, v31);
              v14 = v5 + 3;
              v15 = (char *)&unk_1533373;
              break;
            case 4:
              sub_2BCB8(v35 + 80, v5, 2, 4, v24);
              sub_2BCB8((char *)&unk_1533382 + v10, v5 + 2, 1, v19, v32);
              v14 = v5 + 3;
              v15 = (char *)&unk_1533387;
              break;
            default:
              goto LABEL_22;
          }
        }
        else
        {
          sub_2BCB8(v35, v5, 2, v20, v24);
          sub_2BCB8((char *)&unk_1533332 + v10, v5 + 2, 1, v12, v27);
          v14 = v5 + 3;
          v15 = (char *)&unk_1533337;
        }
        sub_2BCB8(&v15[v10], v14, 1, v13, v28);
        v5 += 4;
LABEL_22:
        ++v10;
      }
    }
    ++v38;
    ++v36;
    ++v37;
  }
  while ( v38 != 5 );
  dword_15333DC = sub_2BCB6(
                    (unsigned __int8)byte_15332D2 * (unsigned __int8)byte_15332D1 + 2,
                    v9,
                    (unsigned __int8)byte_15332D1,
                    &unk_14032EC);
  dword_15333E0 = dword_15333DC;
  sub_2BCB6(dword_15333DC, 0, (unsigned __int8)byte_15332D1 * (unsigned __int8)byte_15332D2, &unk_140329C);
  for ( m = 0; ; ++m )
  {
    v22 = (const char *)&word_15332A0;
    if ( m >= (unsigned __int8)byte_15332D2 * (unsigned __int8)byte_15332D1 )
      break;
    sub_2BCB6(m + dword_15333E0, v5++, 1, &unk_140327C);
  }
  if ( v34 )
    sub_2BCB6(v34, (const char *)&word_15332A0, (unsigned __int8)byte_15332D1, &unk_14032FC);
  sub_2BCB6(v33, v22);
  return savedregs[4];
}
