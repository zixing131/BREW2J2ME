int __fastcall sub_14D68(_DWORD *a1, int a2, int a3, int a4)
{
  _DWORD *v7; // r0
  _DWORD *v8; // r4
  int v10; // [sp+4h] [bp-8h] BYREF
  int v11; // [sp+8h] [bp-4h] BYREF

  v10 = a3;
  v11 = a4;
  v7 = (_DWORD *)(*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_14DD0 + 0xFFFFFFFC + 85380) + 104))(160);
  v8 = v7;
  if ( !v7 )
    return 1;
  v7[1] = a3;
  *v7 = a2;
  v7[2] = (*(int (__fastcall **)(int, int, int *, int *))(*(_DWORD *)a3 + 8))(a3, 0x8000, &v11, &v10);
  *a1 = v8;
  return 0;
}

