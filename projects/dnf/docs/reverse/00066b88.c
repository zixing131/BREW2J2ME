int __fastcall sub_66B88(int *a1, _WORD *a2, char a3)
{
  int v4; // r6
  int v7; // r1
  int v8; // r3
  __int16 v9; // r2
  int v10; // r2
  int v11; // r2
  int v12; // r2
  int v13; // r2
  int v14; // r2
  int v15; // r2
  int savedregs_16; // [sp+10h] [bp+10h]

  v4 = dword_1535B98 + dword_1535BA0;
  v7 = dword_1535B9C + dword_1535BA4;
  v8 = *a1;
  if ( *a1 < dword_1535B98 )
  {
    v9 = dword_1535B98 - v8;
    a1[2] -= dword_1535B98 - v8;
    if ( a2 && (a3 & 4) == 0 )
      a2[5] += v9;
    *a1 = dword_1535B98;
  }
  v10 = *a1 + a1[2];
  if ( v10 > v4 )
  {
    if ( a2 && (a3 & 4) != 0 )
      a2[5] += v10 - v4;
    a1[2] = v4 - *a1;
  }
  v11 = a1[1];
  if ( v11 < dword_1535B9C )
  {
    v12 = dword_1535B9C - v11;
    a1[3] -= v12;
    if ( a2 && (a3 & 8) == 0 )
      a2[6] += v12;
    a1[1] = dword_1535B9C;
  }
  v13 = a1[1] + a1[3];
  if ( v13 > v7 )
  {
    if ( a2 && (a3 & 8) != 0 )
      a2[6] += v13 - v7;
    a1[3] = v7 - a1[1];
  }
  if ( a2 && *(_DWORD *)a2 )
  {
    v14 = *(unsigned __int16 *)(*(_DWORD *)a2 + 4) - (__int16)a2[5];
    if ( a1[2] > v14 )
      a1[2] = v14;
    v15 = *(unsigned __int16 *)(*(_DWORD *)a2 + 6) - (__int16)a2[6];
    if ( a1[3] > v15 )
      a1[3] = v15;
    if ( (__int16)a2[5] >= (int)*(unsigned __int16 *)(*(_DWORD *)a2 + 4) )
      a1[2] = 0;
    if ( (__int16)a2[6] >= (int)*(unsigned __int16 *)(*(_DWORD *)a2 + 6) )
      a1[3] = 0;
  }
  return savedregs_16;
}
