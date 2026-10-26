int __fastcall sub_6C830(int a1)
{
  unsigned int v1; // r2
  unsigned int v2; // r3
  int v3; // r4
  unsigned __int8 *v4; // r2
  int v5; // r1
  int v6; // r3
  int v7; // r2
  char v8; // r3
  int v9; // r3
  int savedregs_4; // [sp+4h] [bp+4h]

  if ( *(_BYTE *)(a1 + 12) )
  {
    v1 = *(unsigned __int8 *)(a1 + 5);
    v2 = (unsigned __int8)(*(_BYTE *)(a1 + 4) + 1);
    *(_BYTE *)(a1 + 4) = v2;
    if ( v1 < v2 )
    {
      v3 = *(_DWORD *)(a1 + 24);
      v4 = (unsigned __int8 *)(36 * *(unsigned __int8 *)(a1 + 6) + v3);
      v5 = *(unsigned __int8 *)(a1 + 7);
      if ( v5 < v4[2] - 1 )
      {
        *(_BYTE *)(a1 + 4) = 0;
        v9 = (unsigned __int8)(v5 + 1);
        *(_BYTE *)(a1 + 7) = v9;
        *(_BYTE *)(a1 + 5) = *(_BYTE *)(68 * v9 + *((_DWORD *)v4 + 8));
        return savedregs_4;
      }
      *(_BYTE *)(a1 + 7) = 0;
      *(_BYTE *)(a1 + 4) = 0;
      v6 = v4[1];
      if ( v6 == 255 )
      {
        v7 = *v4;
        if ( v7 == 255 )
        {
          *(_BYTE *)(a1 + 12) = 0;
          *(_BYTE *)(a1 + 13) = 1;
          return savedregs_4;
        }
        *(_BYTE *)(a1 + 6) = v7;
        v8 = **(_BYTE **)(36 * v7 + v3 + 32);
      }
      else
      {
        *(_BYTE *)(a1 + 6) = v6;
        v4[1] = -1;
        v8 = *(_BYTE *)(68 * *(unsigned __int8 *)(a1 + 7)
                      + *(_DWORD *)(36 * *(unsigned __int8 *)(a1 + 6) + *(_DWORD *)(a1 + 24) + 32));
      }
      *(_BYTE *)(a1 + 5) = v8;
      *(_BYTE *)(a1 + 12) = 1;
    }
  }
  return savedregs_4;
}
