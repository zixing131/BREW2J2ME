int __fastcall sub_6B0A0(int a1, int a2, int a3, int a4, int a5, int a6, char a7, unsigned __int8 *a8)
{
  int v8; // r7
  int i; // r6
  unsigned __int8 *v10; // r5
  unsigned __int8 *v11; // r2
  __int16 v17; // [sp+2Ch] [bp-Ch]
  unsigned __int8 v18[3]; // [sp+30h] [bp-8h] BYREF
  unsigned __int8 v19; // [sp+33h] [bp-5h]
  unsigned __int8 v20; // [sp+34h] [bp-4h]
  _DWORD savedregs[5]; // [sp+38h] [bp+0h]

  v18[0] = *a8;
  v18[1] = a8[1];
  v18[2] = a8[2];
  v19 = a8[3];
  v20 = a8[4];
  v17 = (unsigned __int8)(v19 + 1);
  v8 = 0;
  for ( i = 0; ; i += 12 )
  {
    v11 = (unsigned __int8 *)(12 * a6 + *(_DWORD *)(a5 + 816));
    if ( v8 >= *v11 )
      break;
    v10 = (unsigned __int8 *)(i + *((_DWORD *)v11 + 2));
    sub_6ADB8(
      a1,
      a2,
      a3 + (__int16)(v17 * *((_WORD *)v10 + 1)),
      a4 + (__int16)(*((_WORD *)v10 + 2) * v17),
      (int *)(24 * *v10 + *(_DWORD *)(a5 + 820)),
      v10[1],
      a7,
      v18,
      v10[6]);
    ++v8;
  }
  return savedregs[4];
}
