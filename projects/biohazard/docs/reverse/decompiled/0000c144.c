int __fastcall sub_C144(__int16 *a1, unsigned __int16 *a2, int a3)
{
  char *v6; // r9
  int v7; // r8
  int result; // r0
  int v9; // [sp+14h] [bp-248h]
  _BYTE v10[320]; // [sp+1Ch] [bp-240h] BYREF
  _BYTE v11[256]; // [sp+15Ch] [bp-100h] BYREF

  v6 = (char *)off_C2F4 + 49508;
  v7 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_C2F4 + 0xFFFFFFFC + 49508) + 192))() + 40);
  sub_10C58(a2, 0, 0, (__int16)*a2, (__int16)a2[1], 0, dword_C2F8, dword_C2F8);
  sub_103F4(*((_DWORD *)a1 + 69), 1, 8);
  *(_WORD *)(*((_DWORD *)a1 + 69) + 14) = *a2 >> 1;
  *(_WORD *)(*((_DWORD *)a1 + 69) + 16) = 0;
  if ( a1[144] )
    *(_WORD *)(*((_DWORD *)a1 + 69) + 8) = 12;
  else
    *(_WORD *)(*((_DWORD *)a1 + 69) + 8) = 0;
  sub_21BA8(*((_DWORD *)a1 + 69));
  sub_1CE08(*((_DWORD *)a1 + 69), a2, a3);
  *(_WORD *)(*((_DWORD *)a1 + 69) + 16) = a2[1];
  *(_WORD *)(*((_DWORD *)a1 + 69) + 8) = 1;
  sub_21BA8(*((_DWORD *)a1 + 69));
  sub_1CE08(*((_DWORD *)a1 + 69), a2, a3);
  sub_8164(a1, a2, a3);
  result = a1[1];
  if ( result < *a1 )
  {
    LOWORD(v9) = 6;
    HIWORD(v9) = a2[1] - 75;
    sub_19618(v7, a1[4 * result + 3], v11, 256);
    (*(void (__fastcall **)(_BYTE *, int, __int16 *, _BYTE *))(*(_DWORD *)&v6[-4] + 60))(
      v10,
      320,
      off_C2FC + 24920,
      v11);
    return sub_7C60((int)a1, (int)a2, a3, (int)v10, v9, 3408036, 1);
  }
  return result;
}

