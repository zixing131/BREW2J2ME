int __fastcall sub_1293C(int result, int a2)
{
  int v2; // r4
  bool v3; // cc
  int v4; // r5
  int v5; // r0
  int *v6; // r0
  int v7; // r1
  int v8; // r0
  int v9; // r1
  int v10; // r0
  int v11; // r0
  int (*v12)(); // r2
  __int16 v13; // r0

  v2 = result;
  v3 = a2 <= 0;
  if ( a2 >= 0 )
  {
    result = *(unsigned __int16 *)(result + 4);
    v3 = result <= a2;
  }
  if ( !v3 )
  {
    v4 = 5 * a2;
    v5 = *(unsigned __int8 *)(*(_DWORD *)(v2 + 8) + 20 * a2 + 7) + v2;
    ++*(_BYTE *)(v5 + 40);
    if ( (*(_WORD *)(*(_DWORD *)(v2 + 8) + 20 * a2 + 14) & 2) != 0 )
    {
      *(_BYTE *)(v2 + 33) = 1;
      *(_BYTE *)(*(_DWORD *)v2 + 47) = 1;
    }
    if ( (*(_WORD *)(*(_DWORD *)(v2 + 8) + 20 * a2 + 14) & 4) != 0 )
      ++*(_WORD *)(*(_DWORD *)v2 + 44);
    if ( (*(_WORD *)(*(_DWORD *)(v2 + 8) + 20 * a2 + 14) & 0x20) != 0 )
    {
      v6 = *(int **)(v2 + 20);
      v7 = 2 * *v6;
      *v6 = v7;
      **(_DWORD **)v2 = v7;
      **(_DWORD **)(v2 + 24) = **(_DWORD **)(v2 + 20);
    }
    if ( (*(_WORD *)(*(_DWORD *)(v2 + 8) + 4 * v4 + 14) & 0x10) != 0 )
      *(_BYTE *)(*(_DWORD *)v2 + 46) = 1;
    v8 = *(_DWORD *)(v2 + 8) + 4 * v4;
    v9 = *(unsigned __int16 *)(v8 + 14);
    if ( (v9 & 0x40) != 0 )
    {
      v9 = *(_DWORD *)(v2 + 28) + 8 * dword_12BC0 * *(unsigned __int8 *)(v8 + 10);
      *(_DWORD *)(v2 + 28) = v9;
    }
    if ( (*(_WORD *)(v8 + 14) & 8) != 0 )
      sub_23DB4(v2, v9);
    v10 = *(_DWORD *)(v2 + 8) + 4 * v4;
    if ( (*(_WORD *)(v10 + 14) & 0x400) != 0 )
      *(_DWORD *)(v2 + 36) += 10 * *(unsigned __int8 *)(v10 + 13);
    result = *(unsigned __int16 *)(v10 + 14);
    if ( (result & 0x100) != 0 )
    {
      *(_BYTE *)(*(_DWORD *)v2 + 56) = 1;
      *(_BYTE *)(*(_DWORD *)v2 + 48) = *(_BYTE *)(*(_DWORD *)(v2 + 8) + 4 * v4 + 16);
      v11 = (unsigned __int8)sub_12E0C(v2);
      *(_BYTE *)(*(_DWORD *)v2 + 49) = v11;
      *(_BYTE *)(*(_DWORD *)v2 + 50) = *(_WORD *)(*(_DWORD *)(v2 + 16) + 72 * v11 + 6);
      *(_BYTE *)(*(_DWORD *)v2 + 51) = *(_WORD *)(*(_DWORD *)(v2 + 16)
                                                + 72 * *(unsigned __int8 *)(*(_DWORD *)v2 + 49)
                                                + 22);
      *(_BYTE *)(*(_DWORD *)v2 + 52) = *(_WORD *)(*(_DWORD *)(v2 + 16)
                                                + 72 * *(unsigned __int8 *)(*(_DWORD *)v2 + 49)
                                                + 14);
      *(_BYTE *)(*(_DWORD *)v2 + 53) = *(_WORD *)(*(_DWORD *)(v2 + 16)
                                                + 72 * *(unsigned __int8 *)(*(_DWORD *)v2 + 49)
                                                + 38);
      v12 = off_12BC4;
      *(_BYTE *)(*(_DWORD *)v2 + 54) = *(_WORD *)(*(_DWORD *)(v2 + 16)
                                                + 72 * *(unsigned __int8 *)(*(_DWORD *)v2 + 49)
                                                + 46);
      *(_BYTE *)(*(_DWORD *)v2 + 55) = 0;
      if ( *(__int16 *)(v2 + 800) < 0 )
      {
        v13 = *(_WORD *)(v2 + 540);
        *(_WORD *)(v2 + 800) = v13;
        *(_WORD *)(v2 + 540) = v13 + 1;
      }
      (**(void (__fastcall ***)(int, int, int))((char *)v12 + 0xFFFFFFFC + 76676))(
        v2 + 8 * *(__int16 *)(v2 + 800) + 542,
        *(_DWORD *)v2 + 48,
        8);
      *(_WORD *)(v2 + 798) = *(_WORD *)(v2 + 800);
      result = (unsigned __int8)++*(_BYTE *)(*(_DWORD *)v2 + 57);
      *(_BYTE *)(v2 + 122) = result;
    }
  }
  return result;
}

