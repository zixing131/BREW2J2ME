int sub_6FD98()
{
  _BYTE *v0; // r6
  _DWORD *v1; // r4
  _BYTE *v2; // r0
  char *v3; // r1
  char v4; // r3
  char *v5; // r0
  unsigned int v6; // r1
  __int16 v7; // r3
  char *v8; // r4
  char *v9; // r0
  char *v10; // r3
  char v11; // r2
  int v12; // r2
  int v13; // r1
  _DWORD *v14; // r2
  int v15; // r1
  int v16; // r5
  char *v17; // r3
  int v18; // r4
  int v19; // r0
  int v20; // r2
  int v21; // r0
  int v23; // [sp+0h] [bp-10h]
  int v24; // [sp+4h] [bp-Ch]
  int v25; // [sp+8h] [bp-8h]
  _DWORD *v26; // [sp+Ch] [bp-4h]
  int savedregs_16; // [sp+20h] [bp+10h]

  dword_15364D8 = 0;
  dword_1535F58 = 0;
  byte_1536344 = 0;
  sub_71336(&dword_1501C30);
  v24 = 0;
  v23 = 0;
  v26 = &unk_1536348;
  while ( 2 )
  {
    if ( v23 < (unsigned __int8)byte_15364FD )
    {
      v0 = (_BYTE *)*v26;
      switch ( *(_BYTE *)*v26 )
      {
        case 0:
          v0[621] = v24;
          v1 = &unk_1536348;
          v25 = 0;
          while ( 2 )
          {
            if ( v25 < v23 )
            {
              v2 = (_BYTE *)*v1;
              if ( *(_BYTE *)*v1
                || *((unsigned __int16 *)v2 + 12) != *((unsigned __int16 *)v0 + 12)
                || v2[2] != v0[2]
                || (unsigned __int8)v2[621] == (unsigned __int8)v24 )
              {
                ++v25;
                ++v1;
                continue;
              }
              v3 = (char *)&unk_1536DA4 + 20 * v24;
              v4 = v2[622];
              v3[17] = 0;
              v3[16] = v4;
              if ( *((unsigned __int16 *)v0 + 12) == 41001 )
              {
                sub_71336(&dword_1501C30);
              }
              else
              {
                if ( *((_WORD *)v0 + 12) )
                  v5 = (char *)&unk_153718C + 36 * (unsigned __int8)v3[16];
                else
                  v5 = (char *)(*(_DWORD *)(dword_1501D90 + 16) + 68);
                sub_71338(v5, v3);
              }
              byte_1536A50 = ++v24;
              dword_1536D98 = (unsigned __int16)word_15364FE;
            }
            break;
          }
          if ( v25 != v23 )
            goto LABEL_70;
          v6 = *((unsigned __int16 *)v0 + 12);
          if ( !*((_WORD *)v0 + 12) )
            goto LABEL_47;
          if ( v6 == 30063 )
          {
            v7 = 32063;
            goto LABEL_44;
          }
          if ( v6 > 0x756F )
          {
            if ( (_UNKNOWN **)v6 == (_UNKNOWN **)((char *)&off_7594 + 1) )
            {
              v7 = 32101;
              goto LABEL_44;
            }
            if ( v6 > (unsigned int)&off_7594 + 1 )
            {
              if ( v6 == 31061 )
              {
                v7 = -32475;
                goto LABEL_44;
              }
              if ( v6 == 31064 )
              {
                v7 = -32472;
                goto LABEL_44;
              }
            }
            else
            {
              if ( (_UNKNOWN *)v6 == &loc_7570 )
              {
                v7 = 32064;
                goto LABEL_44;
              }
              if ( (int **)v6 == (int **)((char *)&off_7580 + 3) )
              {
                v7 = 32083;
                goto LABEL_44;
              }
            }
          }
          else
          {
            if ( v6 == 30059 )
            {
              v7 = 32059;
              goto LABEL_44;
            }
            if ( v6 > 0x756B )
            {
              if ( v6 == 30061 )
              {
                v7 = 32061;
                goto LABEL_44;
              }
              if ( v6 == 30062 )
              {
                v7 = 32062;
                goto LABEL_44;
              }
            }
            else
            {
              if ( v6 == 30038 )
              {
                v7 = 32038;
                goto LABEL_44;
              }
              if ( v6 == 30039 )
              {
                v7 = 32039;
LABEL_44:
                *((_WORD *)v0 + 12) = v7;
                v6 = *((unsigned __int16 *)v0 + 12);
                goto LABEL_46;
              }
            }
          }
          if ( v6 == 41001 )
          {
LABEL_47:
            v0[622] = dword_15364D8;
            v8 = (char *)&unk_1536DA4 + 20 * v24;
            v8[16] = dword_15364D8;
            v8[17] = 0;
            if ( *((unsigned __int16 *)v0 + 12) == 41001 )
            {
              sub_71336(&dword_1501C30);
            }
            else
            {
              if ( *((_WORD *)v0 + 12) )
                v9 = (char *)&unk_153718C + 36 * (unsigned __int8)v8[16];
              else
                v9 = (char *)(*(_DWORD *)(dword_1501D90 + 16) + 68);
              sub_71338(v9, v8);
            }
            ++dword_15364D8;
            v10 = &byte_1536A50;
            v11 = ++v24;
            goto LABEL_67;
          }
LABEL_46:
          sub_71334((unsigned __int8)dword_15364D8, v6, (unsigned __int8)v0[2], 475005);
          goto LABEL_47;
        case 1:
          v12 = *((unsigned __int16 *)v0 + 12);
          *(_BYTE *)(dword_1501D90 + 6889) = v12;
          v13 = *((unsigned __int16 *)v0 + 4);
          if ( *((_WORD *)v0 + 4) )
          {
            v12 = 6890;
            *(_BYTE *)(dword_1501D90 + 6890) = v13 - 100 * v0[24];
          }
          else
          {
            *(_BYTE *)(dword_1501D90 + 6890) = v13;
          }
          sub_71334(1, v13, v12, sub_2B750);
          goto LABEL_70;
        case 2:
          v0[621] = 0;
          v0[622] = 0;
          if ( !*((_WORD *)v0 + 7) )
            goto LABEL_70;
          v14 = &unk_1535F68;
          v15 = 0;
          v16 = 0;
          while ( 2 )
          {
            if ( *v14 )
            {
              if ( *((unsigned __int16 *)v14 - 5) != *((unsigned __int16 *)v0 + 7) )
              {
                ++v15;
                v16 += 20;
                v14 += 5;
                if ( v15 == 50 )
                  break;
                continue;
              }
              v0[623] = v15;
            }
            else
            {
              v0[623] = v15;
              *(_DWORD *)((char *)&unk_1535F5C + v16 + 12) = sub_71334(826, v15, v14, &unk_14032EC);
              v17 = (char *)&unk_1535F5C + 20 * (unsigned __int8)v0[623];
              *((_DWORD *)v17 + 4) = *((_DWORD *)v17 + 3);
              *((_WORD *)&unk_1535F5C + 10 * (unsigned __int8)v0[623] + 1) = *((_WORD *)v0 + 7);
              sub_71334(
                *((_DWORD *)&unk_1535F5C + 5 * (unsigned __int8)v0[623] + 4),
                *((unsigned __int16 *)v0 + 7),
                0,
                sub_6E944);
            }
            break;
          }
LABEL_70:
          ++v23;
          ++v26;
          continue;
        case 4:
          v10 = &byte_1535F30;
          v11 = v23;
LABEL_67:
          *v10 = v11;
          goto LABEL_70;
        case 6:
          v18 = (unsigned __int8)byte_1536344;
          v19 = sub_71334(826, &unk_15364FC, v23, &unk_14032EC);
          v20 = (unsigned __int8)byte_1536344;
          dword_15364E8[v18] = v19;
          v21 = dword_15364E8[v20];
          v0[621] = v20;
          sub_71334(v21, *((unsigned __int16 *)v0 + 12), 0, sub_6E944);
          ++byte_1536344;
          goto LABEL_70;
        case 7:
          sub_71334(*((unsigned __int16 *)v0 + 12), &unk_1535F3C, v23, sub_6E440);
          goto LABEL_70;
        default:
          goto LABEL_70;
      }
    }
    break;
  }
  byte_1536A50 = v24;
  dword_1536D98 = (unsigned __int16)word_15364FE;
  return savedregs_16;
}
