int __fastcall sub_6B234(
        int a1,
        int a2,
        int a3,
        int a4,
        char a5,
        char a6,
        unsigned __int8 a7,
        char a8,
        char a9,
        char a10)
{
  int v11; // r6
  int v12; // r4
  unsigned __int8 *v13; // r3
  __int16 v14; // r12
  int v15; // r3
  int v16; // r0
  int v17; // r1
  int v18; // r2
  int i; // [sp+30h] [bp-14h]
  __int16 v23; // [sp+34h] [bp-10h]
  int v24; // [sp+38h] [bp-Ch]
  unsigned __int8 v25; // [sp+3Ch] [bp-8h] BYREF
  char v26; // [sp+3Dh] [bp-7h]
  char v27; // [sp+3Eh] [bp-6h]
  char v28; // [sp+3Fh] [bp-5h]
  char v29; // [sp+40h] [bp-4h]
  _DWORD savedregs[5]; // [sp+44h] [bp+0h]

  v11 = 36 * a4;
  v12 = 0;
  for ( i = 0; ; ++i )
  {
    v16 = *(_DWORD *)(a3 + 24) + v11;
    v17 = 68 * *(unsigned __int8 *)(a3 + 7);
    v18 = v17 + *(_DWORD *)(v16 + 32);
    if ( i >= *(unsigned __int8 *)(v18 + 1) )
      break;
    v13 = (unsigned __int8 *)(v12 + *(_DWORD *)(v18 + 64));
    v24 = *v13;
    v23 = *((_WORD *)v13 + 2);
    v14 = *((_WORD *)v13 + 1);
    if ( a7 )
    {
      v25 = a7;
      v26 = a8;
      v27 = a9;
    }
    else
    {
      v25 = v13[6];
      v26 = *(_BYTE *)(*(_DWORD *)(v17 + *(_DWORD *)(v16 + 32) + 64) + v12 + 7);
      v27 = *(_BYTE *)(*(_DWORD *)(v17 + *(_DWORD *)(v16 + 32) + 64) + v12 + 8);
    }
    LOBYTE(v15) = a10;
    if ( !a10 )
      v15 = *(unsigned __int8 *)(*(_DWORD *)(68 * *(unsigned __int8 *)(a3 + 7)
                                           + *(_DWORD *)(*(_DWORD *)(a3 + 24) + v11 + 32)
                                           + 64)
                               + v12
                               + 9);
    v28 = v15;
    if ( a6 )
      v29 = a6;
    else
      v29 = *(_BYTE *)(*(_DWORD *)(68 * *(unsigned __int8 *)(a3 + 7) + *(_DWORD *)(*(_DWORD *)(a3 + 24) + v11 + 32) + 64)
                     + v12
                     + 10);
    sub_6B158(a1, a2, v14, v23, *(_DWORD *)(a3 + 28), v24, a5, &v25);
    v12 += 12;
  }
  return savedregs[4];
}
