int __fastcall sub_26670(int a1, _BYTE *a2, int a3)
{
  int v6; // r4
  int v7; // r0
  int result; // r0

  v6 = sub_1058(a1, *(_DWORD *)(a1 + 224));
  if ( !*(_DWORD *)(v6 + 32) )
  {
    v7 = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_2672C + 0xFFFFFFFC + 157348) + 104))(2160);
    *(_DWORD *)(v6 + 32) = v7;
    if ( !v7 )
      return 1;
  }
  **(_DWORD **)(v6 + 32) = -1;
  *(_DWORD *)(*(_DWORD *)(v6 + 32) + 4) = -1;
  *(_DWORD *)(*(_DWORD *)(v6 + 32) + 500) = 0;
  *(_DWORD *)(*(_DWORD *)(v6 + 32) + 2156) = 0;
  result = sub_17B88((int *)(v6 + 20));
  if ( !result )
  {
    result = sub_17BE0(
               *(_DWORD *)(v6 + 20),
               a2,
               a3,
               (void (__fastcall *)(int, int, int, int))((char *)off_26730 + 157448),
               a1);
    if ( !result )
    {
      sub_17BC0(*(_DWORD *)(v6 + 20));
      return 0;
    }
  }
  return result;
}

