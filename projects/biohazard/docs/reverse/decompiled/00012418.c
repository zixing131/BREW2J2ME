int __fastcall sub_12418(int result, int a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  bool v7; // cc
  int v8; // r1

  v7 = a2 <= 0;
  if ( a2 >= 0 )
    v7 = *(__int16 *)(result + 540) <= a2;
  if ( !v7 )
  {
    v8 = 9 * *(unsigned __int8 *)(result + 8 * a2 + 543);
    *a3 = *(_WORD *)(*(_DWORD *)(result + 16) + 8 * v8 + 6);
    *a4 = *(_WORD *)(*(_DWORD *)(result + 16) + 8 * v8 + 22);
    *a5 = *(_WORD *)(*(_DWORD *)(result + 16) + 8 * v8 + 14);
    *a6 = *(_WORD *)(*(_DWORD *)(result + 16) + 8 * v8 + 38);
    result = *(unsigned __int16 *)(*(_DWORD *)(result + 16) + 8 * v8 + 46);
    *a7 = result;
  }
  return result;
}

