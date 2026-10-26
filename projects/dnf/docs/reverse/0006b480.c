int __fastcall sub_6B480(int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  int v7; // r1
  int v8; // r2
  int v9; // r3
  int v10; // r0
  int v11; // r1
  int v12; // r2
  int v13; // r5
  int v14; // r3
  int v15; // r6
  int v16; // r7
  int v17; // r1
  int v18; // r2
  int v19; // r5
  void *v20; // r0
  unsigned __int8 *v21; // r5
  int v22; // r2
  int v23; // r2
  void *v24; // r0
  int v25; // r2
  unsigned __int8 *v31; // [sp+18h] [bp-114h]
  int v32; // [sp+1Ch] [bp-110h]
  int v33; // [sp+20h] [bp-10Ch]
  int v34; // [sp+24h] [bp-108h]
  int v35; // [sp+28h] [bp-104h]
  _BYTE v36[255]; // [sp+2Dh] [bp-FFh] BYREF

  sub_6BB36(v36, 0, 255, sub_8CA1C);
  v9 = sub_6BB36(a4, v7, v8, 468821);
  if ( !a6 )
    goto LABEL_8;
  v10 = a3;
  if ( a3 > v9 )
    v10 = v9;
  if ( a6 != 1 )
  {
    if ( a6 == 2 )
    {
      v32 = -v10;
      goto LABEL_9;
    }
LABEL_8:
    v32 = 0;
    goto LABEL_9;
  }
  v32 = v10 / -2;
LABEL_9:
  v33 = 0;
  v34 = 0;
  v35 = 0;
  while ( 1 )
  {
    v31 = (unsigned __int8 *)(a4 + v33);
    v25 = *(unsigned __int8 *)(a4 + v33);
    if ( !*(_BYTE *)(a4 + v33) )
      return v35 + 1;
    if ( (v25 & 0x80) != 0 )
    {
      sub_6BB36(v36, 0, 255, &unk_140329C);
      sub_6BB36(v36, v31, 2, &unk_140327C);
      v13 = v34 + sub_6BB36(&unk_15377C8, v11, v12, 569713);
      if ( v13 <= a3 )
      {
        sub_6BB38(v32 + a1 + v34, a2, v36, 0, 0, a7);
        v33 += 2;
        goto LABEL_57;
      }
LABEL_50:
      a2 += a5;
      ++v35;
      v34 = 0;
    }
    else
    {
      switch ( v25 )
      {
        case 36:
          v14 = v31[1];
          if ( v14 == 65 || v14 == 97 )
          {
            sub_6BB36(v36, 0, 255, &unk_140329C);
            switch ( v31[2] )
            {
              case '0':
                v15 = -16676352;
                break;
              case '1':
                v15 = -9699328;
                break;
              case '2':
                v15 = 98566144;
                break;
              case '3':
                v15 = 32177920;
                break;
              case '4':
                v15 = 9109248;
                break;
              case '5':
                v15 = 65280;
                break;
              case '6':
                v15 = -463012096;
                break;
              case '7':
                v15 = 1499027712;
                break;
              case '8':
                v15 = -1261948672;
                break;
              case '9':
                v15 = -2139062272;
                break;
              default:
                v15 = -256;
                break;
            }
            v16 = 4;
            while ( 1 )
            {
              v21 = &v31[v16];
              v22 = v31[v16];
              if ( !v31[v16] )
              {
LABEL_44:
                v23 = v33 + v16;
                goto LABEL_47;
              }
              if ( (v22 & 0x80) != 0 )
              {
                sub_6BB36(v36, 0, 255, &unk_140329C);
                sub_6BB36(v36, v21, 2, &unk_140327C);
                v19 = v34 + sub_6BB36(&unk_15377C8, v17, v18, 569713);
                if ( v19 > a3 )
                {
                  a2 += a5;
                  ++v35;
                  v34 = 0;
                  continue;
                }
                sub_6BB38(v32 + a1 + v34, a2, v36, 0, 0, v15);
                v16 += 2;
              }
              else
              {
                if ( v22 == 36 )
                {
                  ++v16;
                  goto LABEL_44;
                }
                sub_6BB36(v36, 0, 255, &unk_140329C);
                sub_6BB36(v36, v21, 1, &unk_140327C);
                if ( (unsigned int)*v21 - 32 > 0x5E )
                  v20 = &unk_1536B60;
                else
                  v20 = &unk_1536CBC;
                v19 = v34 + sub_6BB34(v20);
                if ( v19 > a3 )
                {
                  a2 += a5;
                  ++v35;
                  v34 = 0;
                  continue;
                }
                sub_6BB38(v32 + a1 + v34, a2, v36, 0, 0, v15);
                ++v16;
              }
              v34 = v19;
            }
          }
          ++v33;
          break;
        case 13:
          v23 = v33 + 1;
LABEL_47:
          v33 = v23;
          break;
        case 10:
          ++v33;
          goto LABEL_50;
        default:
          sub_6BB36(v36, 0, 255, &unk_140329C);
          sub_6BB36(v36, v31, 1, &unk_140327C);
          if ( (unsigned int)*v31 - 32 > 0x5E )
            v24 = &unk_1536B60;
          else
            v24 = &unk_1536CBC;
          v13 = v34 + sub_6BB34(v24);
          if ( v13 <= a3 )
          {
            sub_6BB38(v32 + a1 + v34, a2, v36, 0, 0, a7);
            ++v33;
LABEL_57:
            v34 = v13;
          }
          else
          {
            a2 += a5;
            ++v35;
            v34 = 0;
          }
          break;
      }
    }
  }
}
