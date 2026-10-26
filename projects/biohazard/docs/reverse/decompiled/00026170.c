int __fastcall sub_26170(int *a1)
{
  int v2; // r4
  int v4; // r0
  _DWORD v5[10]; // [sp+0h] [bp-28h] BYREF

  v2 = sub_1058((int)a1, a1[56]);
  if ( !*(_DWORD *)(v2 + 140) )
  {
    if ( (*(int (__fastcall **)(int, int, int))(*(_DWORD *)*a1 + 8))(*a1, dword_2622C, v2 + 140) )
      return 3;
    v5[0] = dword_26230;
    v5[1] = dword_26234;
    v5[2] = 0;
    (*(void (__fastcall **)(_DWORD, _DWORD *))(**(_DWORD **)(v2 + 140) + 12))(*(_DWORD *)(v2 + 140), v5);
  }
  *(_DWORD *)(v2 + 384) = 0;
  if ( *(_DWORD *)(v2 + 376) )
    return 0;
  *(_DWORD *)(v2 + 388) = 2000;
  v4 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_26238 + 0xFFFFFFFC + 156164) + 104))(2000);
  *(_DWORD *)(v2 + 376) = v4;
  if ( v4 )
    return 0;
  else
    return 2;
}

