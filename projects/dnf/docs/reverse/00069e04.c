int __fastcall sub_69E04(int a1, __int16 *a2, unsigned __int8 a3)
{
  int v3; // r7
  __int16 v6; // r3
  __int16 v7; // r2
  __int16 v8; // r3
  int v9; // r0
  _BYTE *v10; // r4
  int v11; // r12
  unsigned int i; // r7
  unsigned int j; // r0
  unsigned int k; // r0
  unsigned int m; // r1
  unsigned int n; // r0
  unsigned int ii; // r1
  int savedregs_16; // [sp+10h] [bp+10h]

  v3 = a3;
  if ( a3 == 4 )
  {
    *(_WORD *)(a1 + 4) = a2[3];
    *(_WORD *)(a1 + 6) = a2[2];
    *(_WORD *)a1 = a2[1];
    v6 = a2[2];
    v7 = *a2;
LABEL_7:
    v8 = v6 - v7 - 1;
    goto LABEL_8;
  }
  if ( a3 != 5 )
  {
    if ( a3 != 6 )
      goto LABEL_9;
    *(_WORD *)(a1 + 4) = a2[2];
    *(_WORD *)(a1 + 6) = a2[3];
    *(_WORD *)a1 = a2[2] - *a2 - 1;
    v6 = a2[3];
    v7 = a2[1];
    goto LABEL_7;
  }
  *(_WORD *)(a1 + 4) = a2[3];
  *(_WORD *)(a1 + 6) = a2[2];
  *(_WORD *)a1 = a2[3] - a2[1] - 1;
  v8 = *a2;
LABEL_8:
  *(_WORD *)(a1 + 2) = v8;
LABEL_9:
  v9 = sub_6BB36(*(unsigned __int16 *)(a1 + 6) * *(unsigned __int16 *)(a1 + 4) + 2);
  *(_DWORD *)(a1 + 8) = v9;
  *(_DWORD *)(a1 + 12) = v9;
  sub_6BB36(v9);
  v10 = (_BYTE *)*((_DWORD *)a2 + 3);
  v11 = *(_DWORD *)(a1 + 12);
  switch ( v3 )
  {
    case 4:
      for ( i = 0; i < (unsigned __int16)a2[3]; ++i )
      {
        for ( j = 0; j < (unsigned __int16)a2[2]; ++j )
          *(_BYTE *)(v11 + i + *(unsigned __int16 *)(a1 + 4) * (*(unsigned __int16 *)(a1 + 6) - j - 1)) = *v10++;
      }
      break;
    case 5:
      for ( k = 0; k < (unsigned __int16)a2[3]; ++k )
      {
        for ( m = 0; m < (unsigned __int16)a2[2]; ++m )
          *(_BYTE *)(*(unsigned __int16 *)(a1 + 4) * m + v11 + *(unsigned __int16 *)(a1 + 4) - k - 1) = *v10++;
      }
      break;
    case 6:
      for ( n = 0; n < (unsigned __int16)a2[3]; ++n )
      {
        for ( ii = 0; ii < (unsigned __int16)a2[2]; ++ii )
          *(_BYTE *)((*(unsigned __int16 *)(a1 + 6) - n - 1) * *(unsigned __int16 *)(a1 + 4)
                   + v11
                   + *(unsigned __int16 *)(a1 + 4)
                   - ii
                   - 1) = *v10++;
      }
      break;
  }
  return savedregs_16;
}
