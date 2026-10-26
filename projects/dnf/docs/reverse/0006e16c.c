int __fastcall sub_6E16C(int a1, _BYTE *a2, unsigned __int8 a3)
{
  int v5; // r6
  unsigned int v6; // r2
  unsigned int v7; // r3
  int v8; // r1
  int v9; // r0
  int v10; // r3
  int v11; // r1
  int v12; // r3
  int v13; // r2
  int v14; // r2
  int savedregs_12; // [sp+Ch] [bp+Ch]

  v5 = a3;
  if ( *a2 )
  {
    v6 = (unsigned __int8)a2[3];
    v7 = (unsigned __int8)(a2[2] + 1);
    a2[2] = v7;
    if ( v6 < v7 )
    {
      sub_6EACE(
        v5,
        *(unsigned __int8 *)(68 * (unsigned __int8)a2[5]
                           + *(_DWORD *)(36 * (unsigned __int8)a2[4] + *(_DWORD *)(a1 + 24) + 32)
                           + 6),
        (unsigned __int8)a2[12],
        sub_2D8AC);
      sub_6EACE(
        v5,
        *(unsigned __int8 *)(68 * (unsigned __int8)a2[5]
                           + *(_DWORD *)(36 * (unsigned __int8)a2[4] + *(_DWORD *)(a1 + 24) + 32)
                           + 8),
        (unsigned __int8)a2[5],
        sub_2D830);
      sub_6EACE(
        2,
        v5,
        *(unsigned __int8 *)(68 * (unsigned __int8)a2[5]
                           + *(_DWORD *)(36 * (unsigned __int8)a2[4] + *(_DWORD *)(a1 + 24) + 32)
                           + 7),
        sub_2D77C);
      v8 = 36 * (unsigned __int8)a2[4];
      v9 = (unsigned __int8)a2[5];
      if ( v9 < *(unsigned __int8 *)(v8 + *(_DWORD *)(a1 + 24) + 2) - 1 )
      {
        v14 = (unsigned __int8)(v9 + 1);
        a2[2] = 0;
        a2[5] = v14;
        a2[3] = *(_BYTE *)(68 * v14 + *(_DWORD *)(v8 + *(_DWORD *)(a1 + 24) + 32));
        return savedregs_12;
      }
      v10 = (unsigned __int8)a2[7];
      a2[5] = 0;
      a2[2] = 0;
      if ( v10 == 255 )
      {
        v11 = *(unsigned __int8 *)(v8 + *(_DWORD *)(a1 + 24));
        if ( v11 == 255 )
        {
          *a2 = 0;
          a2[1] = 1;
          return savedregs_12;
        }
        a2[4] = v11;
        v12 = 36 * v11 + *(_DWORD *)(a1 + 24);
      }
      else
      {
        a2[4] = v10;
        v13 = (unsigned __int8)a2[4];
        a2[7] = -1;
        v12 = 36 * v13 + *(_DWORD *)(a1 + 24);
      }
      a2[3] = **(_BYTE **)(v12 + 32);
      *a2 = 1;
    }
  }
  return savedregs_12;
}
