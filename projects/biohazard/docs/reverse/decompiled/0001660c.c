int __fastcall sub_1660C(int a1, _DWORD *a2, int a3)
{
  void *v4; // r0
  int v5; // r5
  int v6; // r3
  char v7; // r0
  int v8; // r0
  int result; // r0

  *(_DWORD *)a1 = a2;
  *(_DWORD *)(a1 + 4) = a2[2];
  *(_DWORD *)(a1 + 8) = a2 + 10;
  *(_DWORD *)(a1 + 12) = a3;
  v4 = off_166DC;
  *(_BYTE *)(a1 + 16) = 0;
  *(_DWORD *)(a1 + 344) = v4;
  v5 = 5 * a3;
  v6 = a2[2] + 20 * a3;
  if ( *(_BYTE *)(v6 + 6) )
  {
    if ( *(unsigned __int8 *)(v6 + 6) > (unsigned int)*(unsigned __int8 *)(*a2 + a3 + 4) )
      goto LABEL_8;
    v7 = 4;
    goto LABEL_7;
  }
  if ( *(unsigned __int8 *)(*a2 + a3 + 24) >= (unsigned int)*(unsigned __int8 *)(v6 + 4) )
  {
    v7 = 2;
LABEL_7:
    *(_BYTE *)(a1 + 16) = v7;
  }
LABEL_8:
  v8 = (*(int (**)(void))(*(_DWORD *)((char *)off_166E0 + 0xFFFFFFFC + 91804) + 192))();
  result = sub_19618(
             *(_DWORD *)(v8 + 40),
             *(unsigned __int16 *)(*(_DWORD *)(*(_DWORD *)a1 + 8) + 4 * v5 + 2),
             a1 + 50,
             240);
  *(_BYTE *)(a1 + 290) = 0;
  *(_DWORD *)(a1 + 292) = 0;
  *(_DWORD *)(a1 + 296) = 0;
  return result;
}

