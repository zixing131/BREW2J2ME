int __fastcall sub_1098(int a1)
{
  int v2; // r1
  int result; // r0
  bool v4; // cc
  int v5; // r11
  unsigned int i; // r7
  int v7; // r5
  bool v8; // cc
  int v9; // r10
  int v10; // r9
  signed int v11; // r8
  int v12; // r6
  int v13; // r0
  int v14; // r9
  int v15; // r10
  int v16; // r10
  int v17; // r1
  __int16 v18; // [sp+8h] [bp-44h]
  __int16 v19; // [sp+Ch] [bp-40h]
  __int16 v20; // [sp+10h] [bp-3Ch]
  int v21; // [sp+14h] [bp-38h]
  int v22; // [sp+18h] [bp-34h]
  int v23; // [sp+1Ch] [bp-30h]
  int v24; // [sp+20h] [bp-2Ch]
  int v25; // [sp+24h] [bp-28h]
  int v26; // [sp+28h] [bp-24h]
  int v27; // [sp+2Ch] [bp-20h]
  int v28; // [sp+30h] [bp-1Ch]
  _BYTE v29[6]; // [sp+34h] [bp-18h] BYREF
  unsigned __int16 v30; // [sp+3Ah] [bp-12h]
  unsigned __int16 v31; // [sp+3Ch] [bp-10h]
  int v32; // [sp+48h] [bp-4h]

  v2 = *(_DWORD *)(*(_DWORD *)(a1 + 76) + 2224);
  result = *(__int16 *)(dword_1328 + v2);
  v4 = result <= 0;
  if ( result >= 0 )
    v4 = *(__int16 *)(v2 + 540) <= result;
  if ( !v4 )
  {
    sub_12F30(v29, v2, *(unsigned __int16 *)(dword_1328 + v2));
    v27 = *(_DWORD *)(*(_DWORD *)(a1 + 76) + 2200);
    v5 = v30;
    v22 = v31;
    v28 = 0;
    v26 = *(_DWORD *)(a1 + 16);
    v24 = sub_196D8(*(_DWORD *)(a1 + 12)) >> 8;
    v23 = sub_197A8(*(_DWORD *)(a1 + 12)) >> 8;
    v32 = -v22;
    for ( i = 0; *(_DWORD *)(v27 + 52) > i; ++i )
    {
      v7 = *(_DWORD *)(v27 + 56) + 76 * i;
      if ( *(_BYTE *)v7 == 4 )
      {
        v8 = *(unsigned __int16 *)(v7 + 68) <= 2u;
        if ( *(_WORD *)(v7 + 68) != 2 )
          v8 = *(__int16 *)(v7 + 56) <= 0;
        if ( !v8 )
        {
          v9 = *(__int16 *)(v7 + 60) - *(_DWORD *)a1;
          v10 = *(__int16 *)(v7 + 62) - *(_DWORD *)(a1 + 4);
          v25 = (v24 * v10 - v23 * v9) >> 8;
          v11 = (v9 * v24 + v10 * v23) >> 8;
          if ( v11 > 0 )
          {
            v12 = sub_19868((v9 * v24 + v10 * v23) >> 8, v25);
            if ( v12 >= 180 )
              v12 -= 360;
            if ( v12 >= v32 && v12 <= v22 )
            {
              v13 = sub_1973C(v9, v10);
              v14 = v13;
              if ( v13 < v5 )
              {
                if ( sub_576C(
                       *(_DWORD *)(a1 + 76),
                       *(_DWORD *)a1,
                       *(_DWORD *)(a1 + 4),
                       *(__int16 *)(v7 + 60),
                       *(__int16 *)(v7 + 62),
                       v13) )
                {
                  v15 = *(_DWORD *)(a1 + 8);
                  v28 = v7;
                  v16 = (((v15 - *(_DWORD *)(a1 + 20)) << 8)
                       - sub_104(4 * v11, ((v15 - 180) << 8) * *(_DWORD *)(a1 + 16))) >> 8;
                  v21 = v12;
                  v5 = v14;
                  v20 = sub_104(v11, v25 * v26);
                  v18 = i;
                  v19 = v16;
                }
              }
            }
          }
        }
      }
    }
    if ( v28 )
    {
      *(_BYTE *)(a1 + 64) = 1;
      *(_WORD *)(a1 + 56) = v20;
      *(_WORD *)(a1 + 60) = v5;
      *(_DWORD *)(a1 + 68) = v28;
      *(_WORD *)(a1 + 66) = v18;
      *(_WORD *)(a1 + 62) = v21;
      *(_WORD *)(a1 + 58) = v19;
      if ( *(_BYTE *)(a1 + 72) )
        v17 = 24;
      else
        v17 = 16;
      result = sub_19868(v5, v17) + 1;
      if ( v21 < result )
      {
        result = -result;
        if ( v21 > result )
        {
          *(_BYTE *)(a1 + 64) = 2;
          return 2;
        }
      }
    }
    else
    {
      *(_BYTE *)(a1 + 64) = 0;
      *(_DWORD *)(a1 + 68) = 0;
      *(_BYTE *)(a1 + 41) = 0;
      return 0;
    }
  }
  return result;
}

