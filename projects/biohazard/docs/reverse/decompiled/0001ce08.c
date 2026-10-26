unsigned int __fastcall sub_1CE08(int a1, int a2, int a3)
{
  unsigned int v4; // r11
  unsigned __int16 *v5; // r5
  unsigned __int16 *v6; // r8
  int v7; // r0
  int v8; // r1
  int v9; // r10
  unsigned int v10; // r6
  unsigned int v11; // r0
  unsigned int v12; // r6
  int v13; // r7
  _WORD *v14; // r9
  __int16 v15; // r1
  __int16 v16; // r0
  __int16 v17; // r0
  __int16 v18; // r12
  __int16 v19; // lr
  unsigned int result; // r0
  int v21; // [sp+24h] [bp-20h]
  unsigned int v22; // [sp+28h] [bp-1Ch]
  int v23; // [sp+2Ch] [bp-18h]
  int v24; // [sp+30h] [bp-14h]
  int v25; // [sp+34h] [bp-10h]

  v4 = 0;
  v21 = (unsigned __int16)(*(unsigned __int8 *)(a1 + 12) << 8);
  while ( 1 )
  {
    result = *(unsigned __int16 *)(a1 + 22);
    if ( result <= v4 )
      break;
    v5 = (unsigned __int16 *)sub_11DD8(a3);
    if ( v5 )
    {
      v6 = 0;
      v7 = *(_DWORD *)(a1 + 24) + 24 * v4;
      v8 = *(unsigned __int16 *)(v7 + 18);
      v9 = v21;
      v10 = v8 | 1;
      if ( (v8 & 8) != 0 )
        v9 = *(unsigned __int8 *)(v7 + 20) | v21;
      if ( (v8 & 0x20) != 0 )
      {
        v6 = (unsigned __int16 *)sub_11DD8(a3);
      }
      else if ( (v8 & 0x10) != 0 )
      {
        v6 = (unsigned __int16 *)(*(unsigned __int16 *)(v7 + 16) | (*(unsigned __int8 *)(v7 + 21) << 16));
      }
      v25 = *(unsigned __int16 *)(a1 + 10);
      if ( (v25 == 4) != ((v10 >> 1) & 1) )
        v11 = v10 | 2;
      else
        v11 = v10 & 0xFFFFFFFD;
      v22 = v11;
      v12 = *v5;
      v13 = v5[1];
      v14 = (_WORD *)(*(_DWORD *)(a1 + 24) + 24 * v4);
      v24 = (unsigned __int16)v14[6];
      if ( v24 != 100 )
        v12 = (unsigned __int16)sub_104(0x64u, v12 * v24);
      v23 = (unsigned __int16)v14[7];
      if ( v23 != 100 )
        LOWORD(v13) = sub_104(0x64u, v13 * v23);
      v15 = *(_WORD *)(a1 + 14);
      v16 = v14[4];
      if ( v25 == 4 )
        v17 = v15 - v16;
      else
        v17 = v16 + v15;
      v18 = v17 - (v12 >> 1);
      v19 = *(_WORD *)(a1 + 16) + *(_WORD *)(a1 + 18) + v14[5] - v13;
      if ( v24 == 100 && v23 == 100 )
        sub_3324(a2, v18, v19, (__int16)v12, (__int16)v13, v5, 0, 0, v22, v9, v6);
      else
        sub_18BC(a2, v18, v19, (__int16)v12, (__int16)v13, v5, 0, 0, (__int16)*v5, (__int16)v5[1], v22, v9, v6);
    }
    v4 = (v4 + 1) & 0xFFFEFFFF;
  }
  return result;
}

