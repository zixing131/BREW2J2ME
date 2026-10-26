int __fastcall sub_23DB4(int a1)
{
  char *v2; // r5
  int result; // r0
  int v4; // r0

  v2 = (char *)off_23E54 + 146900;
  **(_DWORD **)(a1 + 24) = **(_DWORD **)(a1 + 20);
  *(_BYTE *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v2[-4] + 192))() + 1888) + 564) = 1;
  *(_WORD *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v2[-4] + 192))() + 1888) + 566) = 0;
  *(_BYTE *)(a1 + 32) = 1;
  result = *(unsigned __int8 *)(a1 + 834);
  if ( !*(_BYTE *)(a1 + 834) )
  {
    v4 = (*(int (**)(void))(*(_DWORD *)&v2[-4] + 192))();
    result = sub_E00(*(_DWORD *)(v4 + 1888) + 544, 0, dword_23E58, 0);
    *(_BYTE *)(a1 + 834) = 1;
  }
  return result;
}

