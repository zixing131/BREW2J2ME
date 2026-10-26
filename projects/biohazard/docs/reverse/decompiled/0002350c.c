int __fastcall sub_2350C(int a1, unsigned __int16 *a2)
{
  int v2; // r12
  int v3; // kr00_4
  int v4; // r2
  int v5; // r0
  unsigned int v6; // r3
  bool v7; // cc
  int v8; // r0
  int result; // r0
  bool v10; // cc
  int v11; // r3
  int v12; // r3
  int v13; // r3
  int v14; // r0
  char v15; // t1

  *(_DWORD *)(a1 + 32) = 0;
  *(_BYTE *)(a1 + 64) = 0;
  *(_DWORD *)(a1 + 68) = 0;
  *(_BYTE *)(a1 + 37) = 0;
  *(_BYTE *)(a1 + 36) = 0;
  *(_BYTE *)(a1 + 42) = 0;
  *(_BYTE *)(a1 + 41) = 0;
  *(_DWORD *)(a1 + 48) = 0;
  *(_BYTE *)(a1 + 52) = 0;
  *(_BYTE *)(a1 + 72) = 0;
  *(_BYTE *)(a1 + 73) = 0;
  v3 = *(_DWORD *)a1 - 8;
  v4 = v3 / 16;
  v5 = *(_DWORD *)(a1 + 4) - 8;
  v6 = v5 >> 31;
  v7 = v3 / 16 <= 0;
  if ( v3 / 16 >= 0 )
    v2 = *a2;
  v8 = v5 + (v6 >> 28);
  if ( v3 / 16 >= 0 )
  {
    v6 = -1;
    v7 = 2 * v2 - 1 <= v4;
  }
  result = v8 >> 4;
  if ( !v7 )
  {
    v10 = result <= 0;
    if ( result >= 0 )
      v10 = (int)(v6 + 2 * a2[1]) <= result;
    if ( !v10 )
    {
      v11 = *(_DWORD *)(*((_DWORD *)a2 + 10) + 4 * result);
      *(_BYTE *)(v11 + v4) |= 8u;
      v12 = *(_DWORD *)(*((_DWORD *)a2 + 10) + 4 * result) + v4;
      *(_BYTE *)(v12 + 1) |= 8u;
      v13 = *(_DWORD *)(*((_DWORD *)a2 + 10) + 4 * result + 4);
      *(_BYTE *)(v13 + v4) |= 8u;
      v14 = *(_DWORD *)(*((_DWORD *)a2 + 10) + 4 * result + 4) + v4;
      v15 = *(_BYTE *)(v14 + 1);
      result = v14 + 1;
      *(_BYTE *)result = v15 | 8;
    }
  }
  return result;
}

