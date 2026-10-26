int __fastcall sub_11F10(int a1, unsigned __int16 *a2)
{
  int result; // r0
  bool v4; // zf
  int v6; // r6
  __int16 v7; // [sp+20h] [bp-10h] BYREF
  __int16 v8; // [sp+22h] [bp-Eh]
  __int16 v9; // [sp+24h] [bp-Ch]
  __int16 v10; // [sp+26h] [bp-Ah]
  __int16 v11; // [sp+28h] [bp-8h]
  __int16 v12; // [sp+2Ah] [bp-6h]
  __int16 v13; // [sp+2Ch] [bp-4h]
  __int16 v14; // [sp+2Eh] [bp-2h]

  result = *(_DWORD *)(a1 + 8);
  v4 = result == 0;
  if ( result )
    result = *(unsigned __int8 *)(a1 + 62);
  if ( !v4 )
    v4 = result == 0;
  if ( !v4 )
  {
    v6 = dword_12090;
    result = *(_DWORD *)((char *)off_12094 + 0xFFFFFFFC + 73544);
    if ( *(_WORD *)(a1 + 90) )
    {
      if ( *(_WORD *)(a1 + 90) != 1 )
        return result;
      v11 = (*a2 >> 1) - 80;
      v12 = (a2[1] >> 1) - 12;
      v14 = 40;
      v13 = 160;
      (*(void (__fastcall **)(__int16 *, _DWORD, int))(result + 4))(&v7, 0, 8);
      v9 = v13;
      result = sub_9854(
                 *(_DWORD *)(*(_DWORD *)(a1 + 8) + 100),
                 a2,
                 (__int16)(v8 + 4),
                 &v7,
                 *(_WORD **)(a1 + 56),
                 17,
                 dword_12098,
                 v6,
                 (__int16)(v7 + 4),
                 8,
                 8,
                 0);
    }
    else
    {
      v11 = (*a2 >> 1) + 80;
      v12 = (a2[1] >> 1) - 80;
      v14 = 160;
      v13 = 160;
      (*(void (__fastcall **)(__int16 *, _DWORD, int))(result + 4))(&v7, 0, 8);
      v10 = v14;
      result = sub_9854(
                 *(_DWORD *)(*(_DWORD *)(a1 + 8) + 100),
                 a2,
                 v8,
                 &v7,
                 *(_WORD **)(a1 + 56),
                 17,
                 dword_12098,
                 v6,
                 (__int16)(v11 + 147),
                 8,
                 8,
                 1);
    }
    *(_DWORD *)a1 = result;
  }
  return result;
}

