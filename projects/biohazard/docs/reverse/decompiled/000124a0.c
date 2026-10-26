int __fastcall sub_124A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  int v7; // r12
  bool v8; // cc
  int result; // r0
  unsigned __int8 *v12; // r6
  int v13; // r5
  unsigned __int16 *v14; // r0
  int v15; // r10
  int v16; // r10
  int v17; // r11
  int v18; // r10
  int v19; // r7
  int v20; // r7
  int v21; // r8
  int v22; // r7
  int v23; // r8

  v7 = a3;
  v8 = a2 <= 0;
  if ( a2 >= 0 )
    a3 = 540;
  if ( a2 >= 0 )
    a3 = *(__int16 *)(a3 + a1);
  result = 0;
  if ( a2 >= 0 )
    v8 = a3 <= a2;
  if ( !v8 )
  {
    v12 = (unsigned __int8 *)(a1 + 8 * a2);
    v13 = 9 * v12[543];
    v14 = (unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 72 * v12[543]);
    v15 = sub_571C(a1, *v14, v14[1], v7);
    v16 = v15
        - sub_571C(
            a1,
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13),
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 2),
            v12[544]);
    v17 = sub_571C(
            a1,
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 16),
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 18),
            a4);
    v18 = v17
        - sub_571C(
            a1,
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 16),
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 18),
            v12[545])
        + v16;
    v19 = sub_571C(
            a1,
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 8),
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 10),
            a5);
    v20 = v19
        - sub_571C(
            a1,
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 8),
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 10),
            v12[546])
        + v18;
    v21 = sub_571C(
            a1,
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 32),
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 34),
            a6);
    v22 = v21
        - sub_571C(
            a1,
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 32),
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 34),
            v12[547])
        + v20;
    v23 = sub_571C(
            a1,
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 40),
            *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 42),
            a7);
    return v23
         - sub_571C(
             a1,
             *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 40),
             *(unsigned __int16 *)(*(_DWORD *)(a1 + 16) + 8 * v13 + 42),
             v12[548])
         + v22;
  }
  return result;
}

