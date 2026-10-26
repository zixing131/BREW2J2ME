int sub_8201C()
{
  int v0; // r1
  int v1; // r2
  int v2; // r4
  int v3; // r2
  int v4; // r6
  __int16 v5; // r0
  int v6; // r2
  int v7; // r3
  _BYTE *v9; // [sp+4h] [bp-14h]
  int v10; // [sp+8h] [bp-10h]
  int v11; // [sp+Ch] [bp-Ch]
  __int16 v12; // [sp+10h] [bp-8h]
  char *v13; // [sp+14h] [bp-4h]
  int savedregs_16; // [sp+28h] [bp+10h]

  v0 = *(unsigned __int8 *)(*(_DWORD *)(dword_1501D90 + 16) + 6597);
  v11 = 10 * v0 + ((v0 * v0) >> 1) - 10;
  v12 = 26 * v0 + 40;
  v10 = 0;
  v13 = (char *)&unk_1538860;
  while ( v10 < (unsigned __int8)byte_153341C )
  {
    v9 = *(_BYTE **)v13;
    v1 = *(_DWORD *)(dword_1501D90 + 16);
    v2 = *(unsigned __int8 *)(v1 + 6597);
    if ( *(_BYTE *)(*(_DWORD *)v13 + 6) == 2 )
    {
      v3 = 5 * sub_8A958(*(unsigned __int8 *)(v1 + 6597) * v2 * v2, 10, v1) - v2 * v2;
      v4 = v3 + 5 * v2 + 20;
      v5 = 2 * (sub_8A958(v2 * v2, 10, v3) + v2) + 1;
    }
    else
    {
      v4 = sub_8A958(*(unsigned __int8 *)(v1 + 6597) * v2 * v2, 10, v1) + (5 - v2) * v2 + 20;
      v5 = sub_8A958(v2 * v2, 10, v6) + 2 * v2 + 1;
    }
    *v9 = *(_BYTE *)(*(_DWORD *)(dword_1501D90 + 16) + 6597);
    v7 = *(_DWORD *)v13;
    *(_WORD *)(v7 + 34) = v11;
    *(_WORD *)(v7 + 36) = v12;
    *(_WORD *)(v7 + 90) = v5;
    *(_DWORD *)(v7 + 28) = v4;
    *(_WORD *)(v7 + 106) = v5;
    *(_WORD *)(v7 + 122) = v5;
    ++v10;
    v13 += 160;
  }
  return savedregs_16;
}
