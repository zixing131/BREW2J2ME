int __fastcall sub_E00(int a1, int a2, int a3, int a4)
{
  char *v8; // r8
  unsigned __int16 *v9; // r7
  int v10; // r5
  int result; // r0
  int v12; // r9
  int v13; // r0
  int v14; // r1

  v8 = (char *)off_EE0 + 3616;
  v9 = *(unsigned __int16 **)((*(int (**)(void))(*(_DWORD *)((char *)off_EE0 + 0xFFFFFFFC + 3616) + 192))() + 32);
  v10 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v8[-4] + 192))() + 40);
  result = sub_22F1C(a1);
  if ( a2 )
  {
    if ( a2 == 1 )
      *(_DWORD *)(a1 + 12) = a4;
  }
  else
  {
    v12 = sub_19618(v10, a3, 0, 0);
    v13 = (*(int (__fastcall **)(int))(*(_DWORD *)&v8[-4] + 104))(v12 + 4);
    *(_DWORD *)(a1 + 12) = v13;
    result = sub_19618(v10, a3, v13, v12);
  }
  v14 = *(_DWORD *)(a1 + 12);
  if ( v14 )
  {
    *(_BYTE *)(a1 + 8) = 1;
    *(_WORD *)a1 = (3 * (unsigned int)*v9) >> 2;
    result = sub_12BC8(*(_DWORD *)(v10 + 100), v14, 2);
    *(_WORD *)(a1 + 2) = result;
  }
  return result;
}

