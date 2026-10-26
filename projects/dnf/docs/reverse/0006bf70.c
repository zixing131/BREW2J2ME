int __fastcall sub_6BF70(int a1, unsigned int a2, int a3, int a4, int a5, unsigned int a6, unsigned int *a7)
{
  int i; // r1
  int j; // r0
  int v10; // r4
  int v11; // r7
  int v12; // r0
  int v13; // r0
  unsigned int v14; // r3
  int v15; // r4
  unsigned int v16; // r2
  int v17; // r5
  int v18; // r7
  int v19; // r0
  int v20; // r0
  int v21; // r6
  int v22; // r5
  int v23; // r0
  int v24; // r4
  unsigned __int8 *v25; // r1
  int v26; // r0
  _BYTE *v27; // r2
  int v29; // [sp+4h] [bp-24h]
  int v30; // [sp+8h] [bp-20h]
  int v31; // [sp+Ch] [bp-1Ch]
  int v32; // [sp+10h] [bp-18h]
  unsigned int k; // [sp+14h] [bp-14h]
  unsigned int v34; // [sp+18h] [bp-10h]
  _DWORD v35[2]; // [sp+1Ch] [bp-Ch] BYREF
  int v36; // [sp+24h] [bp-4h]

  if ( a2 <= 0x146B )
    return 2;
  for ( i = 0; i != 5228; i += 2 )
    *(_WORD *)(i + a1) = 1024;
  v36 = 0;
  v35[0] = a3;
  v35[1] = -1;
  for ( j = 0; j != 5; ++j )
    v36 = (v36 << 8) | *(unsigned __int8 *)v35[0]++;
  v10 = 0;
  v11 = 0;
  *a7 = 0;
  v29 = 0;
  v34 = 1;
  v30 = 1;
  v31 = 1;
  v32 = 1;
  for ( k = 0; ; k = v14 )
  {
    if ( k >= a6 )
    {
LABEL_55:
      *a7 = k;
      return 0;
    }
    if ( sub_6BDC4(a1 + 32 * v29, v35) )
      break;
    v12 = a1 + 1536 * (v10 >> 8) + 3692;
    if ( v29 > 3 )
    {
      if ( v29 > 9 )
        v29 -= 6;
      else
        v29 -= 3;
    }
    else
    {
      v29 = 0;
    }
    if ( v11 )
      v13 = sub_6BEC8(v12, v35, *(unsigned __int8 *)(a5 + k - v34));
    else
      v13 = sub_6BEA4(v12, v35);
    v10 = v13;
    v14 = k + 1;
    v11 = 0;
    *(_BYTE *)(a5 + k) = v13;
LABEL_53:
    ;
  }
  v15 = a1 + 2 * v29;
  if ( sub_6BDC4(v15 + 384, v35) )
  {
    if ( sub_6BDC4(v15 + 408, v35) )
    {
      if ( sub_6BDC4(v15 + 432, v35) )
      {
        if ( sub_6BDC4(v15 + 456, v35) )
        {
          v17 = v31;
          v16 = v32;
          v31 = v30;
          v32 = v17;
        }
        else
        {
          v16 = v31;
          v31 = v30;
        }
        v30 = v34;
      }
      else
      {
        v16 = v30;
        v30 = v34;
      }
      v34 = v16;
    }
    else if ( !sub_6BDC4(a1 + 32 * v29 + 480, v35) )
    {
      if ( !k )
        return 1;
      if ( v29 > 6 )
        v29 = 11;
      else
        v29 = 9;
      v10 = *(unsigned __int8 *)(a5 + k - v34);
      v14 = k + 1;
      *(_BYTE *)(a5 + k) = v10;
      goto LABEL_52;
    }
    v18 = sub_6BF20(a1 + 2664, v35);
    if ( v29 > 6 )
      v29 = 11;
    else
      v29 = 8;
  }
  else
  {
    if ( v29 > 6 )
      v29 = 10;
    else
      v29 = 7;
    v19 = sub_6BF20(a1 + 1636, v35);
    v18 = v19;
    if ( v19 > 3 )
      v19 = 3;
    v20 = sub_6BE38(a1 + (v19 << 7) + 864, 6, v35);
    if ( v20 > 3 )
    {
      v21 = (v20 >> 1) - 1;
      v22 = (v20 & 1 | 2) << v21;
      if ( v20 > 13 )
      {
        v24 = sub_6BD7C(v35, (v20 >> 1) - 5);
        v23 = sub_6BE6C(a1 + 1604, 4, v35) + 16 * v24;
      }
      else
      {
        v23 = sub_6BE6C(a1 + 2 * v22 - 2 * v20 + 1374, v21, v35);
      }
      v20 = v22 + v23;
    }
    v32 = v31;
    v31 = v30;
    v30 = v34;
    v34 = v20 + 1;
  }
  if ( !v34 )
    goto LABEL_55;
  if ( v34 <= k )
  {
    v25 = (unsigned __int8 *)(a5 + k - v34);
    v26 = v18 + 2;
    v27 = (_BYTE *)(a5 + k);
    v14 = k;
    do
    {
      v10 = *v25;
      --v26;
      *v27 = v10;
      ++v14;
      if ( v26 <= 0 )
        break;
      ++v25;
      ++v27;
    }
    while ( v14 != a6 );
LABEL_52:
    v11 = 1;
    goto LABEL_53;
  }
  return 1;
}
