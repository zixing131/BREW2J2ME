int __fastcall sub_23F64(_DWORD *a1)
{
  int v2; // r4
  bool v3; // cc
  char *v4; // r4
  int v5; // [sp+0h] [bp-2B0h] BYREF
  _BYTE v6[20]; // [sp+4h] [bp-2ACh] BYREF
  int v7; // [sp+18h] [bp-298h]
  _WORD v8[328]; // [sp+1Ch] [bp-294h] BYREF
  _BYTE v9[4]; // [sp+2ACh] [bp-4h] BYREF

  v5 = 0;
  if ( (*(int (__fastcall **)(_DWORD, int, int *))(*(_DWORD *)*a1 + 8))(*a1, dword_24084, &v5) )
  {
    v5 = 0;
    return 0;
  }
  v2 = (*(int (__fastcall **)(int, _BYTE *, int))(*(_DWORD *)v5 + 20))(v5, v6, 680);
  if ( !v2 )
  {
    switch ( v7 )
    {
      case 0:
        goto LABEL_14;
      case 1:
        v4 = (char *)off_24088 + 147460;
        (*(void (__fastcall **)(_BYTE *, _DWORD, int))(*(_DWORD *)((char *)off_24088 + 0xFFFFFFFC + 147460) + 4))(
          v9,
          0,
          3);
        (**(void (__fastcall ***)(_BYTE *, _WORD *, int))&v4[-4])(v9, v8, 3);
        if ( 100 * (v9[0] & 0xF) + 10 * (v9[0] >> 4) + (v9[1] & 0xF) == 460 )
          goto LABEL_11;
        break;
      case 2:
        v3 = (unsigned int)v8[0] - 13568 > 0x200;
        if ( (unsigned int)v8[0] - 13568 >= 0x200 )
          v3 = (unsigned int)v8[0] - 14080 > 0xFF;
        if ( !v3 )
        {
LABEL_11:
          v2 = 1;
          goto LABEL_14;
        }
        break;
      default:
        goto LABEL_14;
    }
    v2 = 2;
    goto LABEL_14;
  }
  v2 = 0;
LABEL_14:
  (*(void (__fastcall **)(int))(*(_DWORD *)v5 + 4))(v5);
  return v2;
}

