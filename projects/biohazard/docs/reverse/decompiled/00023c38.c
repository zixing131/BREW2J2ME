int __fastcall sub_23C38(int result)
{
  unsigned __int16 *v1; // r1
  _DWORD *v2; // r4
  int v3; // r2
  bool v4; // zf
  int v5; // r5
  int v6; // r8
  int v7; // r9
  int v8; // r6
  int v9; // r0
  int v10; // r1
  int v11; // r6
  int v12; // r1
  int v13; // r0
  char v14; // t1

  v1 = *(unsigned __int16 **)(result + 2200);
  v2 = (_DWORD *)result;
  if ( v1 )
  {
    result = *(_DWORD *)(result + 2216);
    v3 = v2[522];
    v4 = result == v3;
    if ( result == v3 )
      v4 = v2[555] == v2[523];
    if ( !v4 )
    {
      v5 = *((_DWORD *)v1 + 10);
      v6 = 2 * *v1;
      v7 = 2 * v1[1];
      v8 = sub_104(0x10u, result - 8);
      v9 = sub_104(0x10u, v2[555] - 8);
      if ( v8 >= 0 && v8 < v6 - 1 && v9 >= 0 && v9 < v7 - 1 )
      {
        *(_BYTE *)(*(_DWORD *)(v5 + 4 * v9) + v8) &= ~8u;
        *(_BYTE *)(*(_DWORD *)(v5 + 4 * v9) + v8 + 1) &= ~8u;
        v10 = v5 + 4 * v9;
        *(_BYTE *)(*(_DWORD *)(v10 + 4) + v8) &= ~8u;
        *(_BYTE *)(*(_DWORD *)(v10 + 4) + v8 + 1) &= ~8u;
      }
      v11 = sub_104(0x10u, v2[522] - 8);
      result = sub_104(0x10u, v2[523] - 8);
      if ( v11 >= 0 && v11 < v6 - 1 && result >= 0 && result < v7 - 1 )
      {
        *(_BYTE *)(*(_DWORD *)(v5 + 4 * result) + v11) |= 8u;
        *(_BYTE *)(*(_DWORD *)(v5 + 4 * result) + v11 + 1) |= 8u;
        v12 = v5 + 4 * result;
        *(_BYTE *)(*(_DWORD *)(v12 + 4) + v11) |= 8u;
        v13 = *(_DWORD *)(v12 + 4) + v11;
        v14 = *(_BYTE *)(v13 + 1);
        result = v13 + 1;
        *(_BYTE *)result = v14 | 8;
      }
    }
  }
  return result;
}

