int __fastcall sub_153D0(int a1)
{
  char *v2; // r11
  int v3; // r6
  int v4; // r5
  int v5; // r7
  int v6; // r7
  int result; // r0
  _BYTE v8[32]; // [sp+4h] [bp-20h] BYREF

  v2 = (char *)off_1556C + 87016;
  v3 = (*(int (**)(void))(*(_DWORD *)((char *)off_1556C + 0xFFFFFFFC + 87016) + 192))();
  sub_15A00(a1);
  *(_WORD *)(a1 + 290) = 20;
  v4 = 0;
  do
  {
    if ( v4 != 3 )
    {
      v6 = sub_19618(*(_DWORD *)(v3 + 40), v4 + 7100, 0, 0);
      result = (*(int (__fastcall **)(int))(*(_DWORD *)&v2[-4] + 104))(v6 + 4);
      *(_DWORD *)(a1 + 4 * v4 + 160) = result;
      if ( !result )
        return result;
      sub_19618(*(_DWORD *)(v3 + 40), v4 + 7100, result, v6);
      goto LABEL_8;
    }
    if ( (*(int (__fastcall **)(_DWORD, _DWORD, int, _BYTE *, int))(**(_DWORD **)(v3 + 12) + 68))(
           *(_DWORD *)(v3 + 12),
           0,
           8,
           v8,
           31)
      && (*(int (__fastcall **)(_BYTE *))(*(_DWORD *)&v2[-4] + 48))(v8) < 16 )
    {
      v5 = 2 * (*(int (__fastcall **)(_BYTE *))(*(_DWORD *)&v2[-4] + 48))(v8) + 4;
      *(_DWORD *)(a1 + 172) = (*(int (**)(void))(*(_DWORD *)&v2[-4] + 104))();
      (**(void (__fastcall ***)(_DWORD, _BYTE *, int))&v2[-4])(*(_DWORD *)(a1 + 172), v8, v5);
LABEL_8:
      *(_BYTE *)(a1 + v4 + 84) = 0;
    }
    v4 = (__int16)(v4 + 1);
  }
  while ( *(unsigned __int16 *)(a1 + 290) > v4 );
  *(_BYTE *)(a1 + 84) = 1;
  *(_BYTE *)(a1 + 86) = 1;
  *(_BYTE *)(a1 + 88) = 1;
  *(_BYTE *)(a1 + 90) = 1;
  *(_BYTE *)(a1 + 93) = 1;
  *(_BYTE *)(a1 + 96) = 1;
  *(_BYTE *)(a1 + 98) = 1;
  *(_BYTE *)(a1 + 101) = 1;
  *(_BYTE *)(a1 + 300) = 1;
  return 1;
}

