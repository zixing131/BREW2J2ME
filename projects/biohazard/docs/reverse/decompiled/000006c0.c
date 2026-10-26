int __fastcall sub_6C0(int a1)
{
  int v2; // r1
  void (*v4)(void); // r1
  int v5; // r0
  int v6; // r5

  v2 = *(_DWORD *)(a1 + 8) - 1;
  *(_DWORD *)(a1 + 8) = v2;
  if ( v2 )
    return v2;
  v4 = *(void (**)(void))(a1 + 28);
  if ( v4 )
    v4();
  v5 = *(_DWORD *)(a1 + 20);
  if ( v5 )
    (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 4))(v5);
  (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(a1 + 16) + 4))(*(_DWORD *)(a1 + 16));
  v6 = *(_DWORD *)(a1 + 12);
  (*(void (__fastcall **)(int))(*(_DWORD *)((char *)off_758 + 0xFFFFFFFC + 1828) + 108))(a1);
  (*(void (__fastcall **)(int))(*(_DWORD *)v6 + 4))(v6);
  return 0;
}

