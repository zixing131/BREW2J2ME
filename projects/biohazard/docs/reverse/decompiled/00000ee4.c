int __fastcall sub_EE4(int a1, int a2, unsigned int a3, __int16 a4, __int16 a5)
{
  __int16 v9; // r1
  int (*v10)(); // r9
  int v11; // r7
  int v12; // r5
  char *v13; // r9
  int v14; // r6
  int v15; // r8
  int v16; // r0

  sub_22F60();
  *(_BYTE *)(a1 + 6) = 0;
  *(_WORD *)a1 = 0;
  if ( a3 > 0xA )
    LOWORD(a3) = 10;
  *(_WORD *)(a1 + 2) = 0;
  *(_WORD *)(a1 + 90) = a5;
  *(_DWORD *)(a1 + 68) = a2;
  v9 = a3;
  *(_WORD *)(a1 + 64) = a3;
  if ( !(_WORD)a3 )
    v9 = 1;
  *(_WORD *)(a1 + 64) = v9;
  *(_DWORD *)(a1 + 12) = 0;
  *(_WORD *)(a1 + 60) = a4;
  *(_WORD *)(a1 + 72) = 3;
  *(_WORD *)(a1 + 74) = 3;
  *(_DWORD *)(a1 + 76) = 0;
  *(_WORD *)(a1 + 80) = 0;
  *(_WORD *)(a1 + 82) = 0;
  *(_WORD *)(a1 + 84) = 0;
  v10 = off_1054;
  *(_WORD *)(a1 + 86) = 0;
  *(_BYTE *)(a1 + 88) = 0;
  v11 = 0;
  v12 = 0;
  v13 = (char *)v10 + 3956;
  while ( *(unsigned __int16 *)(a1 + 64) > v12 )
  {
    v14 = sub_19618(*(_DWORD *)(a1 + 8), *(_DWORD *)(a1 + 68) + v12, 0, 0);
    v15 = a1 + 4 * v12;
    if ( *(_DWORD *)(v15 + 16) )
      (*(void (**)(void))(*(_DWORD *)&v13[-4] + 108))();
    v16 = (*(int (__fastcall **)(int))(*(_DWORD *)&v13[-4] + 104))(v14);
    *(_DWORD *)(v15 + 16) = v16;
    sub_19618(*(_DWORD *)(a1 + 8), *(_DWORD *)(a1 + 68) + v12, v16, v14);
    v11 = (__int16)(v11 + v14 + 8);
    ++v12;
  }
  if ( *(_DWORD *)(a1 + 56) )
    (*(void (**)(void))(*(_DWORD *)&v13[-4] + 108))();
  *(_DWORD *)(a1 + 56) = (*(int (__fastcall **)(int))(*(_DWORD *)&v13[-4] + 104))(v11);
  (*(void (**)(void))(*(_DWORD *)&v13[-4] + 4))();
  *(_BYTE *)(a1 + 62) = 1;
  return 1;
}

