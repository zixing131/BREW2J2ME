int sub_659A8()
{
  unsigned __int8 *v0; // r0
  int v1; // r3
  int v2; // r1
  int v3; // r1
  int v4; // r2
  int v5; // r1
  int v6; // r3
  int v7; // r0
  int v8; // r0
  int v9; // r0
  int v10; // r0
  int v11; // r2
  int v12; // r3
  int v13; // r0
  int v14; // r0
  int v15; // r2
  int v16; // r1
  int v17; // r0
  int v18; // r0
  int v19; // r0
  int v20; // r0
  int v21; // r0
  int v22; // r0
  int v23; // r0
  int v24; // r0
  int v25; // r0
  char v26; // r0
  int v27; // r1
  int v28; // r0
  int v29; // r3
  int v30; // r0
  int v31; // r0
  int v32; // r0
  int v33; // r0
  int v34; // r0
  int v35; // r0
  int v36; // r1
  int v37; // r1
  int v38; // r0
  int v39; // r0
  int v40; // r2
  int v41; // r1
  char v42; // r0
  int v43; // r0
  int v44; // r0
  int v45; // r0
  int v46; // r0
  int v48; // [sp+4h] [bp-Ch]
  int v49; // [sp+8h] [bp-8h]
  int i; // [sp+Ch] [bp-4h]
  int savedregs_16; // [sp+20h] [bp+10h]

  v49 = *(_DWORD *)(dword_1501D90 + 16);
  if ( byte_150007C == 1 )
    sub_3D8E0();
  for ( i = 0; i < (unsigned __int8)byte_153345C; ++i )
  {
    v48 = 16 * i;
    v0 = (unsigned __int8 *)(16 * i + dword_1533464);
    v1 = *v0;
    if ( v1 == 1 )
    {
      v2 = *(__int16 *)(v49 + 58);
      if ( *((__int16 *)v0 + 3) > v2 )
        goto LABEL_70;
      if ( *((__int16 *)v0 + 5) < v2 )
        goto LABEL_70;
      v3 = *(__int16 *)(v49 + 60);
      if ( *((__int16 *)v0 + 4) > v3 )
        goto LABEL_70;
      v4 = 12;
      if ( *((__int16 *)v0 + 6) < v3 )
        goto LABEL_70;
      if ( !v0[14] )
        continue;
      v5 = 6888;
      if ( !*(_BYTE *)(dword_1501D90 + 6888) || *(_BYTE *)(dword_1501D90 + 6888) == 20 )
      {
        v6 = *(unsigned __int8 *)(dword_1501D90 + 6889);
        if ( v6 != 79 )
        {
          if ( v6 == 1 )
          {
            if ( v0[2] != 79 )
              goto LABEL_24;
          }
          else if ( *(_BYTE *)(dword_1501D90 + 6889) )
          {
            if ( v6 != 4 || v0[2] )
              goto LABEL_24;
          }
          else if ( v0[2] != 4 )
          {
            goto LABEL_24;
          }
LABEL_23:
          sub_2E9EC();
          goto LABEL_24;
        }
        if ( v0[2] == 1 )
          goto LABEL_23;
LABEL_24:
        v7 = sub_66A76(0, v5, v4, 467441);
        v8 = sub_62B00(v7);
        v9 = sub_62B00(v8);
        v10 = sub_2E2CC(v9);
        sub_36694(v10);
        *(_BYTE *)(dword_1501D90 + 6889) = *(_BYTE *)(dword_1533464 + v48 + 2);
        *(_BYTE *)(dword_1501D90 + 6890) = *(_BYTE *)(dword_1533464 + v48 + 3);
        *(_BYTE *)(dword_1501D90 + 6891) = *(_BYTE *)(dword_1533464 + v48 + 4);
        v11 = *(unsigned __int8 *)(dword_1533464 + v48 + 5);
        *(_BYTE *)(dword_1501D90 + 6893) = v11;
        v12 = *(unsigned __int8 *)(dword_1501D90 + 6889);
        if ( v12 == 79 )
        {
          v11 = 20;
          goto LABEL_28;
        }
        if ( v12 == 1 )
        {
          v11 = 0;
LABEL_28:
          *(_BYTE *)(dword_1501D90 + 6888) = v11;
        }
        v13 = sub_66A76(0, 0x1C4u, v11, sub_2B864);
        v14 = sub_396D4(v13);
        dword_15377C4 = 10;
        sub_62B00(v14);
        dword_153772C = 2;
        dword_1537730 = -1;
        continue;
      }
      v15 = (unsigned __int8)byte_150D899;
      if ( *((_BYTE *)&dword_150D88C + 10 * (unsigned __int8)byte_150D899 + (unsigned __int8)byte_150D898 + 24) )
      {
        v16 = 6893;
        if ( *(_BYTE *)(dword_1501D90 + 6893) == 7 )
        {
          if ( *((unsigned __int16 *)v0 + 1) == 0xFFFF )
            continue;
          sub_34294();
        }
        v17 = sub_66A76(0, v16, v15, 467441);
        v18 = sub_62B00(v17);
        sub_2E2BC(v18);
        v19 = sub_2C464(
                (unsigned __int8)byte_150D899,
                (unsigned __int8)byte_150D898,
                *(unsigned __int8 *)(dword_1533464 + v48 + 5));
        sub_62B00(v19);
        v20 = 6893;
        if ( *(_BYTE *)(dword_1501D90 + 6893) != 7 )
          v20 = sub_3D688(0);
        v21 = sub_2CB74(v20);
        v22 = sub_2E2CC(v21);
        v23 = sub_36694(v22);
        sub_62B00(v23);
        *(_BYTE *)(dword_1501D90 + 6889) = *(_BYTE *)(dword_1533464 + v48 + 2);
        *(_BYTE *)(dword_1501D90 + 6890) = *(_BYTE *)(dword_1533464 + v48 + 3);
        *(_BYTE *)(dword_1501D90 + 6891) = *(_BYTE *)(dword_1533464 + v48 + 4);
        if ( (*(_DWORD *)(dword_1501D90 + 6888) & 0xFFFF00) == 0x13000 )
        {
          v24 = sub_66A76(0, 6888, 77824, sub_2B864);
          sub_62B00(v24);
          byte_153407D = 3;
          byte_153407E = 0;
          v25 = sub_3505C(-1);
LABEL_54:
          v32 = sub_62B00(v25);
          v33 = sub_39360(v32);
          v34 = sub_39388(v33);
          sub_398B8(v34);
          v35 = sub_30B58(1);
          dword_15377C4 = 10;
          sub_62B00(v35);
          continue;
        }
        v26 = sub_2FB10(0, 0);
        if ( v26 > 0 )
        {
          byte_150C714 = 0;
          v28 = sub_66A76(v26 & 0xFFFF, v27, &byte_150C714, 460129);
          v25 = sub_62B00(v28);
          goto LABEL_54;
        }
        v29 = *(char *)(dword_1501D90 + 6893);
        if ( v29 == 2 )
        {
          if ( *(_BYTE *)(dword_1501D90 + 6888) == 41 )
            goto LABEL_51;
LABEL_52:
          v30 = 0;
        }
        else
        {
          if ( v29 == 3 )
          {
            if ( *(_BYTE *)(dword_1501D90 + 6888) != 42 )
              goto LABEL_52;
          }
          else if ( v29 == 4 )
          {
            if ( *(_BYTE *)(dword_1501D90 + 6888) != 43 )
              goto LABEL_52;
          }
          else if ( v29 != 5 || *(_BYTE *)(dword_1501D90 + 6888) != 44 )
          {
            goto LABEL_52;
          }
LABEL_51:
          v30 = 1;
        }
        v31 = sub_66A74(v30);
        sub_62B00(v31);
        v25 = sub_34F90(0);
        goto LABEL_54;
      }
    }
    else
    {
      if ( v1 != 3 )
        continue;
      v36 = *(__int16 *)(v49 + 58);
      if ( *((__int16 *)v0 + 3) > v36
        || *((__int16 *)v0 + 5) < v36
        || (v37 = *(__int16 *)(v49 + 60), *((__int16 *)v0 + 4) > v37)
        || *((__int16 *)v0 + 6) < v37 )
      {
LABEL_70:
        v0[14] = 1;
        continue;
      }
      if ( v0[14] )
      {
        v38 = sub_2E2CC(v0);
        v39 = sub_36694(v38);
        if ( !*(_BYTE *)(dword_1501D90 + 6888) || *(_BYTE *)(dword_1501D90 + 6888) == 20 )
        {
          sub_39360(v39);
          v41 = *(unsigned __int8 *)(dword_1533464 + v48 + 5);
          if ( v41 == 7 )
          {
            sub_66A76(1002, 7, v40, sub_1C30C);
            sub_66A78(1, 1008, 0, 0);
          }
          else
          {
            *(_BYTE *)(dword_1501D90 + 6893) = v41;
            v42 = *(_BYTE *)(dword_1501D90 + 6893);
            if ( v42 == 2 || v42 == 6 )
              v43 = 0;
            else
              v43 = (char)(v42 - 2);
            v44 = sub_353A0(v43);
            v45 = sub_4EA28(v44);
            sub_2FCD0(v45);
            v46 = sub_66A78(1, 1, 0, 0);
            dword_1501DA0 = 0;
            sub_39360(v46);
            dword_153558C = 0;
          }
        }
      }
    }
  }
  return savedregs_16;
}
