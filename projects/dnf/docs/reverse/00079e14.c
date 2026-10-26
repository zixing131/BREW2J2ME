int __fastcall sub_79E14(unsigned __int8 a1)
{
  int v1; // r3
  int v2; // r4
  int v3; // r7
  int v4; // r6
  int v5; // r0
  int v6; // r6
  char v7; // r3
  int v8; // r4
  _DWORD *v9; // r5
  int v10; // r4
  int v11; // r0
  int v12; // r3
  int v13; // r4
  int v15; // [sp+0h] [bp-4h]

  v1 = *(unsigned __int8 *)(*(_DWORD *)(dword_1501D90 + 16) + 50);
  if ( *(_BYTE *)(*(_DWORD *)(dword_1501D90 + 16) + 50) )
    v1 = (unsigned __int8)(((char)v1 - 1) % 4 + 1);
  v15 = v1;
  if ( a1 )
  {
    v2 = sub_79310(5, 255, a1);
    v3 = sub_79310(5, 255, 0);
    v4 = sub_79ABC((unsigned __int8)dword_1501D94, 0, 5, 255);
    v5 = *(unsigned __int16 *)(*(_DWORD *)(dword_1501D90 + 16) + 1076)
       + sub_79ABC((unsigned __int8)dword_1501D94, 1, 5, 255)
       + v2
       - v3
       - v4
       + *(unsigned __int16 *)(*(_DWORD *)(dword_1501D90 + 16) + 1188);
  }
  else
  {
    v5 = *(unsigned __int16 *)(*(_DWORD *)(dword_1501D90 + 16) + 1076)
       + *(unsigned __int16 *)(*(_DWORD *)(dword_1501D90 + 16) + 1188);
  }
  v6 = *(_DWORD *)(dword_1501D90 + 16);
  *(_DWORD *)(v6 + 6584) = v5
                         + 8
                         * (*(unsigned __int16 *)(v6 + 1064)
                          + *(unsigned __int16 *)(v6 + 1072)
                          + *(unsigned __int16 *)(v6 + 1312)
                          + *(unsigned __int16 *)(v6 + 1184))
                         + *(unsigned __int8 *)(v6 + 6597) * byte_1402FA4[6 * v15 + 4]
                         + *(_DWORD *)(v6 + 6600);
  v7 = *(_BYTE *)(v6 + 50);
  if ( !v7 || v7 == 3 || v7 == 7 )
  {
    v8 = *(_DWORD *)(v6 + 6584);
    *(_DWORD *)(v6 + 6584) = v8 + sub_77094(1, 0, 0);
  }
  v9 = *(_DWORD **)(dword_1501D90 + 16);
  v10 = v9[1646];
  v11 = sub_80706(v9[1653] * v10, 100);
  v12 = v9[1645];
  v13 = v10 + v11;
  v9[1646] = v13;
  if ( v12 > v13 )
    v9[1645] = v13;
  return *(_DWORD *)(*(_DWORD *)(dword_1501D90 + 16) + 6584);
}
