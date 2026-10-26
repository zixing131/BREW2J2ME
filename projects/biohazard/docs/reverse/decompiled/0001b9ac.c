int __fastcall sub_1B9AC(_DWORD *a1, int a2)
{
  char *v4; // r6
  int v5; // r4
  int v6; // r0
  _WORD *v7; // r1
  int v8; // r0
  int v9; // r1

  v4 = (char *)off_1BA90 + 113092;
  v5 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_1BA90 + 0xFFFFFFFC + 113092) + 104))(52);
  (*(void (__fastcall **)(int, _DWORD, int))(*(_DWORD *)&v4[-4] + 4))(v5, 0, 52);
  *(_WORD *)(v5 + 48) = 12;
  *(_WORD *)(v5 + 50) = 12;
  *(_DWORD *)(v5 + 4) = a1;
  *(_DWORD *)v5 = a2;
  v6 = 1;
  *(_DWORD *)(v5 + 8) = *a1;
  *(_DWORD *)(v5 + 12) = a1 + 1;
  do
  {
    v7 = (_WORD *)(*(_DWORD *)(v5 + 12) + 2 * v6++);
    *v7 += *(v7 - 1);
  }
  while ( v6 < 256 );
  *(_DWORD *)(v5 + 16) = a1 + 129;
  v8 = *(_DWORD *)(v5 + 8);
  v9 = 4 * v8 + 516;
  *(_DWORD *)(v5 + 24) = (char *)&a1[6 * v8] + v9;
  *(_DWORD *)(v5 + 20) = (char *)a1 + v9;
  *(_WORD *)(v5 + 28) = sub_12384(v5, dword_1BA94, (unsigned int)a1 + v9);
  *(_BYTE *)(v5 + 30) = 46;
  return v5;
}

