int __fastcall sub_83C(_DWORD *a1)
{
  int v2; // r1
  void (*v4)(void); // r1
  int v5; // r0

  v2 = a1[1] - 1;
  a1[1] = v2;
  if ( v2 )
    return v2;
  v4 = (void (*)(void))a1[4];
  if ( v4 )
    v4();
  v5 = a1[2];
  if ( v5 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 4))(v5);
    a1[2] = 0;
  }
  (*(void (__fastcall **)(_DWORD *))(*(_DWORD *)((char *)off_8B4 + 0xFFFFFFFC + 2200) + 108))(a1);
  return 0;
}

