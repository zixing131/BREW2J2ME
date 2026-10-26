int __fastcall sub_69D34(int *a1, int a2, int a3)
{
  int v3; // r4
  __int16 v5; // r3
  int v6; // r2
  int v8; // r0
  int k; // r2
  int v10; // r4
  unsigned int j; // r1
  int v12; // r7
  unsigned int i; // [sp+4h] [bp-Ch]
  _BYTE *v16; // [sp+8h] [bp-8h]
  int v17; // [sp+Ch] [bp-4h]
  int savedregs_16; // [sp+20h] [bp+10h]

  v3 = *a1;
  *(_WORD *)(v3 + 4) = *(_WORD *)(a2 + 4) * a3;
  *(_WORD *)(v3 + 6) = *(_WORD *)(a2 + 6) * a3;
  *(_WORD *)v3 = *(_WORD *)a2 * a3;
  v5 = *(_WORD *)(a2 + 2) * a3;
  v6 = *(unsigned __int16 *)(v3 + 4);
  *(_WORD *)(v3 + 2) = v5;
  *(_DWORD *)(v3 + 8) = sub_6BB36(*(unsigned __int16 *)(v3 + 6) * v6 + 2);
  v8 = *(_DWORD *)(*a1 + 8);
  if ( v8 )
  {
    *(_DWORD *)(*a1 + 12) = v8;
    sub_6BB36(v8);
    v16 = *(_BYTE **)(a2 + 12);
    v17 = *(_DWORD *)(*a1 + 12);
    for ( i = 0; i < *(unsigned __int16 *)(a2 + 6); ++i )
    {
      v10 = v17;
      for ( j = 0; j < *(unsigned __int16 *)(a2 + 4); ++j )
      {
        for ( k = 0; k != a3; ++k )
          *(_BYTE *)(k + v10) = *v16;
        ++v16;
        v10 += a3;
      }
      v12 = 0;
      while ( ++v12 != a3 )
      {
        sub_6BB36(v10);
        v10 += *(unsigned __int16 *)(*a1 + 4);
      }
      v17 = v10;
    }
  }
  return savedregs_16;
}
