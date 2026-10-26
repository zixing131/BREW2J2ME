int __fastcall sub_1E458(int a1)
{
  int result; // r0
  char *v3; // r5
  int v4; // r6
  unsigned int v5; // r3
  int v6; // r0
  _WORD v7[100]; // [sp+20h] [bp-110h] BYREF
  unsigned __int16 v8[12]; // [sp+E8h] [bp-48h] BYREF
  int v9; // [sp+120h] [bp-10h] BYREF
  int v10; // [sp+124h] [bp-Ch] BYREF
  __int16 v11; // [sp+128h] [bp-8h] BYREF
  __int16 v12; // [sp+12Ah] [bp-6h]
  __int16 v13; // [sp+12Ch] [bp-4h]
  __int16 v14; // [sp+12Eh] [bp-2h]

  result = *(unsigned __int8 *)(a1 + 1880);
  if ( result != 1 )
  {
    sub_22354(*(_DWORD *)(a1 + 32));
    sub_1CA88(*(_DWORD *)(a1 + 1888), *(_BYTE **)(a1 + 1888), a1, 0);
    v3 = (char *)off_1E698 + 124060;
    v4 = dword_1E69C;
    if ( *(_BYTE *)(a1 + 1892) == 1 )
    {
      sub_10C58(
        *(_DWORD *)(a1 + 32),
        0,
        0,
        **(__int16 **)(a1 + 32),
        *(__int16 *)(*(_DWORD *)(a1 + 32) + 2),
        0,
        dword_1E69C,
        0);
      sub_19618(*(int **)(a1 + 40), dword_1E6A0, (int)v8, 0x40u);
      sub_12BC8(*(_DWORD *)(*(_DWORD *)(a1 + 40) + 100), v8, 1, v5);
      (*(void (__fastcall **)(__int16 *, _DWORD, int))(*(_DWORD *)&v3[-4] + 4))(&v11, 0, 8);
      v13 = **(_WORD **)(a1 + 32);
      v14 = *(_WORD *)(*(_DWORD *)(a1 + 32) + 2);
      sub_98BC(
        *(_DWORD *)(*(_DWORD *)(a1 + 40) + 100),
        *(unsigned __int16 **)(a1 + 32),
        v12,
        &v11,
        v8,
        1,
        2016,
        2016,
        v11,
        0,
        1,
        1);
    }
    if ( *(_BYTE *)(a1 + 64) == 1 )
    {
      (*(void (__fastcall **)(_WORD *, _DWORD, int))(*(_DWORD *)&v3[-4] + 4))(v7, 0, 256);
      v6 = (*(int (__fastcall **)(int *, int *))(*(_DWORD *)&v3[-4] + 312))(&v10, &v9);
      (*(void (__fastcall **)(_WORD *, int, __int16 *, int, int, int))(*(_DWORD *)&v3[-4] + 60))(
        v7,
        256,
        off_1E6A4 + 62184,
        v10,
        v9,
        v6);
      (*(void (__fastcall **)(__int16 *, _DWORD, int))(*(_DWORD *)&v3[-4] + 4))(&v11, 0, 8);
      v13 = **(_WORD **)(a1 + 32);
      v14 = *(_WORD *)(*(_DWORD *)(a1 + 32) + 2);
      sub_10C58(*(_DWORD *)(a1 + 32), 0, 0, 120, 0x28u, 0x10u, 0, 0);
      sub_98BC(
        *(_DWORD *)(*(_DWORD *)(a1 + 40) + 100),
        *(unsigned __int16 **)(a1 + 32),
        v12,
        &v11,
        v7,
        1,
        v4,
        0,
        v11,
        0,
        1,
        1);
    }
    return sub_252F4(*(_DWORD *)(a1 + 32));
  }
  return result;
}

