int __fastcall sub_6B158(int a1, int a2, int a3, int a4, int a5, int a6, char a7, unsigned __int8 *a8)
{
  int v8; // r7
  unsigned __int8 *v9; // r1
  int v10; // r12
  __int16 v11; // r2
  int v12; // r4
  unsigned __int8 v13; // r6
  __int16 v14; // r3
  unsigned __int8 *v15; // r2
  int i; // [sp+2Ch] [bp-10h]
  __int16 v22; // [sp+30h] [bp-Ch]
  unsigned __int8 v23[3]; // [sp+34h] [bp-8h] BYREF
  unsigned __int8 v24; // [sp+37h] [bp-5h]
  unsigned __int8 v25; // [sp+38h] [bp-4h]
  _DWORD savedregs[5]; // [sp+3Ch] [bp+0h]

  v23[0] = *a8;
  v23[1] = a8[1];
  v23[2] = a8[2];
  v24 = a8[3];
  v25 = a8[4];
  v22 = (unsigned __int8)(v24 + 1);
  v8 = 0;
  for ( i = 0; ; ++i )
  {
    v15 = (unsigned __int8 *)(12 * a6 + *(_DWORD *)(a5 + 816));
    if ( i >= *v15 )
      break;
    v9 = (unsigned __int8 *)(v8 + *((_DWORD *)v15 + 2));
    v10 = v9[1];
    v11 = v22 * *((_WORD *)v9 + 1);
    v12 = *v9;
    v13 = v9[6];
    v14 = *((_WORD *)v9 + 2) * v22;
    v25 = *(_WORD *)(2 * (10 * *(unsigned __int8 *)(a5 + 2) + v12) + a5 + 404);
    sub_6ADB8(a1, a2, a3 + v11, a4 + v14, (int *)(24 * v12 + *(_DWORD *)(a5 + 820)), v10, a7, v23, v13);
    v8 += 12;
  }
  return savedregs[4];
}
