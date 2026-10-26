int __fastcall sub_6C8D0(int a1, _BYTE *a2)
{
  unsigned int v4; // r2
  unsigned int v5; // r3
  int v6; // r5
  int v7; // r1
  int v8; // r3
  int v9; // r1
  int v10; // r3
  int v11; // r2
  int v12; // r2
  int savedregs_8; // [sp+8h] [bp+8h]

  if ( *a2 )
  {
    v4 = (unsigned __int8)a2[3];
    v5 = (unsigned __int8)(a2[2] + 1);
    a2[2] = v5;
    if ( v4 < v5 )
    {
      v6 = (unsigned __int8)a2[5];
      v7 = 36 * (unsigned __int8)a2[4];
      if ( v6 < *(unsigned __int8 *)(v7 + *(_DWORD *)(a1 + 24) + 2) - 1 )
      {
        v12 = (unsigned __int8)(v6 + 1);
        a2[2] = 0;
        a2[5] = v12;
        a2[3] = *(_BYTE *)(68 * v12 + *(_DWORD *)(v7 + *(_DWORD *)(a1 + 24) + 32));
        return savedregs_8;
      }
      v8 = (unsigned __int8)a2[7];
      a2[5] = 0;
      a2[2] = 0;
      if ( v8 == 255 )
      {
        v9 = *(unsigned __int8 *)(v7 + *(_DWORD *)(a1 + 24));
        if ( v9 == 255 )
        {
          *a2 = 0;
          a2[1] = 1;
          return savedregs_8;
        }
        a2[4] = v9;
        v10 = 36 * v9 + *(_DWORD *)(a1 + 24);
      }
      else
      {
        a2[4] = v8;
        v11 = (unsigned __int8)a2[4];
        a2[7] = -1;
        v10 = 36 * v11 + *(_DWORD *)(a1 + 24);
      }
      a2[3] = **(_BYTE **)(v10 + 32);
      *a2 = 1;
    }
  }
  return savedregs_8;
}
