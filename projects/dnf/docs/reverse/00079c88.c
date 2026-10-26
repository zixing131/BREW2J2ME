int __fastcall sub_79C88(unsigned __int8 a1)
{
  int v1; // r3
  int v2; // r4
  int v3; // r7
  int v4; // r6
  int v5; // r0
  int v6; // r4
  int v7; // r5
  int v8; // r3
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
    v2 = sub_79310(6u, 0xFFu, a1);
    v3 = sub_79310(6u, 0xFFu, 0);
    v4 = sub_79ABC(dword_1501D94, 0, 6u, 0xFFu);
    v5 = *(unsigned __int16 *)(*(_DWORD *)(dword_1501D90 + 16) + 1078)
       + sub_79ABC(dword_1501D94, 1, 6u, 0xFFu)
       + v2
       - v3
       - v4
       + *(unsigned __int16 *)(*(_DWORD *)(dword_1501D90 + 16) + 1190);
  }
  else
  {
    v5 = *(unsigned __int16 *)(*(_DWORD *)(dword_1501D90 + 16) + 1078)
       + *(unsigned __int16 *)(*(_DWORD *)(dword_1501D90 + 16) + 1190);
  }
  v6 = *(_DWORD *)(dword_1501D90 + 16);
  v7 = 3
     * (*(unsigned __int16 *)(v6 + 1066)
      + *(unsigned __int16 *)(v6 + 1074)
      + *(unsigned __int16 *)(v6 + 1312)
      + *(unsigned __int16 *)(v6 + 1186))
     + *(unsigned __int8 *)(v6 + 6597) * byte_1402FA4[6 * v15 + 5]
     + *(_DWORD *)(v6 + 6604)
     + v5
     + 20;
  *(_DWORD *)(v6 + 12) = v7;
  v8 = *(char *)(v6 + 50);
  if ( v8 == 4 || v8 == 8 )
    *(_DWORD *)(v6 + 12) = v7 + sub_77144(1u, 0, 0);
  v9 = *(_DWORD **)(dword_1501D90 + 16);
  v10 = v9[3];
  v11 = sub_80706(v9[1654] * v10, 100);
  v12 = v9[2];
  v13 = v10 + v11;
  v9[3] = v13;
  if ( v12 > v13 )
    v9[2] = v13;
  return *(_DWORD *)(*(_DWORD *)(dword_1501D90 + 16) + 12);
}
