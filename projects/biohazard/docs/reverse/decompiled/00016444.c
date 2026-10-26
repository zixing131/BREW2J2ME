int __fastcall sub_16444(__int16 *a1, int a2)
{
  int v4; // r5
  __int16 *v5; // r6
  int v6; // r0
  int v7; // r0

  v4 = 0;
  *(_DWORD *)a1 = *(unsigned __int16 *)(*((_DWORD *)a1 + 68) + 540);
  while ( *a1 > v4 )
  {
    v5 = &a1[4 * v4];
    v6 = *(_DWORD *)(*((_DWORD *)a1 + 68) + 16) + 72 * *(unsigned __int8 *)(*((_DWORD *)a1 + 68) + 8 * v4 + 543);
    v5[2] = *(_WORD *)(v6 + 50);
    v5[3] = *(_WORD *)(v6 + 52);
    v5[4] = *(unsigned __int8 *)(*((_DWORD *)a1 + 68) + 8 * v4 + 543);
    v5[5] = sub_12E5C(*((_DWORD *)a1 + 68), v4);
    v4 = (__int16)(v4 + 1);
  }
  a1[130] = 0;
  a1[133] = 36;
  v7 = sub_104(0x24u, a2 - 100);
  if ( v7 >= *a1 )
    LOWORD(v7) = *a1;
  a1[131] = v7;
  a1[132] = 3;
  return 3;
}

