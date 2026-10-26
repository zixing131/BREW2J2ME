int __fastcall sub_9534(
        int a1,
        unsigned __int16 *a2,
        int a3,
        __int16 *a4,
        _WORD *a5,
        int *a6,
        int *a7,
        int *a8,
        int a9,
        int a10,
        int a11,
        int a12)
{
  int v14; // r9
  int v15; // r1
  int v16; // r0
  int v17; // r6
  int v18; // r5
  int v19; // r0
  bool v20; // zf
  bool v21; // zf
  int v22; // r0
  int v23; // r0
  bool v24; // zf
  int v25; // r0
  int v26; // r0
  bool v27; // zf
  int v28; // r0
  bool v29; // zf
  int v30; // r0
  bool v31; // zf
  int v32; // r3
  bool v33; // cf
  unsigned int v34; // r0
  int v35; // r11
  int v36; // r0
  int v37; // r0
  int v38; // r0
  int v40; // [sp+14h] [bp-28h] BYREF
  int v41; // [sp+18h] [bp-24h] BYREF
  int v42; // [sp+1Ch] [bp-20h]
  int v43; // [sp+20h] [bp-1Ch]
  int v44; // [sp+24h] [bp-18h]
  int v45; // [sp+28h] [bp-14h]
  int v46; // [sp+2Ch] [bp-10h]
  unsigned __int16 *v47; // [sp+30h] [bp-Ch]
  int v48; // [sp+34h] [bp-8h]
  __int16 *v49; // [sp+38h] [bp-4h]

  v46 = a1;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v41 = 0;
  v14 = a9;
  if ( a4 )
  {
    if ( !a9 )
      v14 = *v49;
    v15 = v49[2] - (v14 - *v49);
    v16 = v49[3];
  }
  else
  {
    v14 = 0;
    v15 = *v47;
    v16 = v47[1];
  }
  v17 = v48;
  v18 = v14;
  v40 = *a7;
  v44 = v48 + v16;
  v45 = v14 + v15;
  while ( 1 )
  {
    v38 = (unsigned __int16)*a5;
    if ( !*a5 )
      break;
    ++a5;
    if ( v38 == 36 )
    {
      v19 = (unsigned __int16)*a5;
      v20 = v19 == 110;
      if ( v19 != 110 )
        v20 = v19 == 78;
      if ( v20 )
      {
        ++a5;
        if ( a12 == 1 )
        {
          v17 = v48;
          v18 -= *(unsigned __int16 *)(a1 + 50) + a10;
        }
        else
        {
          v18 = v14;
          v17 += *(unsigned __int16 *)(a1 + 48) + a11;
        }
      }
      else
      {
        v21 = v19 == 115;
        if ( v19 != 115 )
          v21 = v19 == 83;
        if ( v21 )
        {
          v40 = 0;
          v22 = sub_11E30(++a5, &v40);
          if ( v22 )
          {
            a5 += v22;
            v23 = (HIWORD(*a8) << 16) | v40;
            goto LABEL_42;
          }
        }
        else
        {
          v24 = v19 == 104;
          if ( v19 != 104 )
            v24 = v19 == 72;
          if ( v24 )
          {
            v40 = 0;
            v25 = sub_11E30(++a5, &v40);
            if ( v25 )
            {
              a5 += v25;
              v26 = (HIWORD(*a7) << 16) | v40;
              goto LABEL_35;
            }
          }
          else
          {
            v27 = v19 == 108;
            if ( v19 != 108 )
              v27 = v19 == 76;
            if ( v27 )
            {
              v40 = 0;
              v28 = sub_11E30(++a5, &v40);
              if ( v28 )
              {
                a5 += v28;
                v26 = (unsigned __int16)*a7 | (v40 << 16);
LABEL_35:
                *a7 = v26;
              }
            }
            else
            {
              v29 = v19 == 98;
              if ( v19 != 98 )
                v29 = v19 == 66;
              if ( v29 )
              {
                v40 = 0;
                v30 = sub_11E30(++a5, &v40);
                if ( v30 )
                {
                  a5 += v30;
                  v23 = (unsigned __int16)*a8 | (v40 << 16);
LABEL_42:
                  *a8 = v23;
                }
              }
              else
              {
                v31 = v19 == 116;
                if ( v19 != 116 )
                  v31 = v19 == 84;
                if ( v31 )
                {
                  *a6 = 0;
                  sub_12D60(a5 + 1, a6);
                  a5 = (_WORD *)(v32 + 10);
                }
              }
            }
          }
        }
      }
    }
    else
    {
      LOWORD(v41) = v38;
      v33 = (unsigned __int16)v38 >= 0x100u;
      v34 = *(unsigned __int16 *)(a1 + 50);
      if ( v33 )
        v35 = v34 + a10;
      else
        v35 = a10 + (v34 >> 1);
      v36 = *(unsigned __int16 *)(a1 + 48) + a11;
      v42 = v36;
      if ( a12 )
      {
        if ( v17 + v42 > v44 )
        {
          v17 = v48;
          v18 -= v35;
        }
      }
      else if ( v18 + v35 - a10 > v45 )
      {
        v18 = v14;
        v17 += v36;
      }
      v37 = sub_94D4(a1, (int)v47, (__int16)v18, (__int16)v17, (int)v49, (int)&v41, *a6, *a7, *a8);
      if ( a12 == 1 )
        v37 = v42;
      else
        v18 += v35;
      if ( a12 == 1 )
        v17 += v37;
    }
  }
  LOWORD(v43) = v18;
  HIWORD(v43) = v17;
  return v43;
}

