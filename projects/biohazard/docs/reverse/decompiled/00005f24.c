int __fastcall sub_5F24(int a1)
{
  int v2; // r5
  _DWORD *v3; // r0
  int v4; // r7
  int v5; // r1
  int v6; // r2
  int v7; // r6
  bool v8; // zf
  int v9; // r1
  _DWORD *v10; // r0
  int v11; // r1
  bool v12; // zf

  v2 = sub_1058(a1, *(_DWORD *)(a1 + 224));
  v3 = *(_DWORD **)(v2 + 32);
  v4 = dword_6020;
  if ( *v3 != 1 )
    goto LABEL_7;
  v5 = v3[34];
  v6 = v3[125];
  v7 = dword_6024;
  v8 = v5 == v6;
  if ( v5 != v6 )
    v8 = v5 == v3[539];
  if ( !v8 )
    goto LABEL_5;
  if ( (*(int (__fastcall **)(int, _DWORD *, int))(*(_DWORD *)((char *)off_6028 + 0xFFFFFFFC + 24472) + 204))(
         *(_DWORD *)(v2 + 16) + 8,
         v3 + 18,
         60) )
  {
LABEL_7:
    v9 = v4;
    return sub_21CCC(a1, v9, 0);
  }
  v10 = *(_DWORD **)(v2 + 32);
  if ( v10[34] )
  {
    v11 = v10[115];
    v12 = v11 == 0;
    if ( v11 )
      v12 = v10[529] == 0;
    if ( v12 )
    {
LABEL_5:
      v9 = v7;
      return sub_21CCC(a1, v9, 0);
    }
  }
  if ( !sub_24110(a1) )
  {
    *(_BYTE *)(a1 + 213) = 5;
    return 5;
  }
  v9 = 1008;
  return sub_21CCC(a1, v9, 0);
}

