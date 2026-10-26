int __fastcall sub_1D170(__int16 *a1, unsigned __int16 *a2)
{
  int result; // r0
  bool v4; // zf
  char *v6; // r6
  int v7; // r8
  int v8; // r9
  int v9; // r0
  __int16 v10; // r0
  __int16 v11; // r0
  __int16 v12; // [sp+24h] [bp-10h] BYREF
  __int16 v13; // [sp+26h] [bp-Eh]
  __int16 v14; // [sp+28h] [bp-Ch]
  __int16 v15; // [sp+2Ah] [bp-Ah]
  __int16 v16; // [sp+2Ch] [bp-8h] BYREF
  __int16 v17; // [sp+2Eh] [bp-6h]
  __int16 v18; // [sp+30h] [bp-4h]
  __int16 v19; // [sp+32h] [bp-2h]

  result = *((_DWORD *)a1 + 2);
  v4 = result == 0;
  if ( result )
    result = *((unsigned __int8 *)a1 + 62);
  if ( !v4 )
    v4 = result == 0;
  if ( !v4 )
  {
    result = (unsigned __int16)a1[45];
    v6 = (char *)off_1D450 + 119204;
    v7 = dword_1D454;
    v8 = dword_1D458;
    if ( a1[45] )
    {
      if ( result == 1 )
      {
        sub_10C58((int)a2, 0, 0, (__int16)*a2, (__int16)a2[1], 0, 0, 0);
        v18 = 160;
        v16 = (*a2 - 160) / 2;
        v17 = 0;
        v19 = a2[1];
        (*(void (__fastcall **)(__int16 *, _DWORD, int))(*(_DWORD *)&v6[-4] + 4))(&v12, 0, 8);
        v14 = v18;
        *(_DWORD *)a1 = sub_9854(
                          *(_DWORD *)(*((_DWORD *)a1 + 2) + 100),
                          a2,
                          (__int16)(v13 + 4),
                          &v12,
                          *((_WORD **)a1 + 14),
                          17,
                          v7,
                          v8,
                          (__int16)(v12 + 4),
                          8,
                          8,
                          0);
        v9 = sub_104(0x14u, a1[1]);
        if ( v9 - 1 <= 0 )
          v10 = 0;
        else
          v10 = 20 * v9 - 20;
        return sub_9854(
                 *(_DWORD *)(*((_DWORD *)a1 + 2) + 100),
                 a2,
                 (__int16)((a2[1] >> 1) - 11 - v10 + 4),
                 &v16,
                 *((_WORD **)a1 + 14),
                 0,
                 dword_1D45C,
                 0,
                 (__int16)(v16 + 4),
                 8,
                 8,
                 0);
      }
    }
    else
    {
      v16 = (*a2 >> 1) + 80;
      v17 = (a2[1] >> 1) - 80;
      v19 = 160;
      v18 = 160;
      (*(void (__fastcall **)(__int16 *, _DWORD, int))(*(_DWORD *)&v6[-4] + 4))(&v12, 0, 8);
      v15 = v19;
      *(_DWORD *)a1 = sub_9854(
                        *(_DWORD *)(*((_DWORD *)a1 + 2) + 100),
                        a2,
                        v13,
                        &v12,
                        *((_WORD **)a1 + 14),
                        17,
                        v7,
                        v8,
                        (__int16)(v16 + v18 - 13),
                        8,
                        8,
                        1);
      if ( *a1 - v16 < 0 )
        v11 = 20 * sub_104(0x14u, v16 - *a1) + 20;
      else
        v11 = 0;
      return sub_9854(
               *(_DWORD *)(*((_DWORD *)a1 + 2) + 100),
               a2,
               (__int16)(v17 + 1),
               &v16,
               *((_WORD **)a1 + 14),
               17,
               v7,
               v8,
               (__int16)(v11 + v16 + v18 - 13),
               8,
               8,
               1);
    }
  }
  return result;
}

