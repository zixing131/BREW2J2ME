int __fastcall sub_21FB4(int a1, int a2)
{
  int result; // r0
  char *v5; // r7
  unsigned int v6; // r8
  int v7; // r10
  int v8; // r0
  int v9; // r7
  unsigned int v10; // r11
  int v11; // r5
  int v12; // r0
  int v13; // r0
  signed int v14; // r9
  unsigned int v15; // r0
  unsigned int v16; // r0
  int v17; // r0
  int v18; // r1
  int v19; // r0
  int v20; // r9
  signed int v21; // r5
  unsigned int v22; // r0
  unsigned int v23; // r0
  int v24; // [sp+4h] [bp-28h]
  int v25; // [sp+Ch] [bp-20h]
  int v26; // [sp+10h] [bp-1Ch]
  int v27; // [sp+14h] [bp-18h]
  int v28; // [sp+18h] [bp-14h]

  result = *(_DWORD *)(a1 + 2200);
  if ( result )
  {
    v5 = (char *)off_22350 + 139228;
    if ( !*(_DWORD *)(a1 + 2236) )
      *(_DWORD *)(a1 + 2236) = (*(int (__fastcall **)(int))(*(_DWORD *)&v5[-4] + 104))(4 * *(unsigned __int16 *)(a1 + 2206));
    if ( !*(_DWORD *)(a1 + 2240) )
      *(_DWORD *)(a1 + 2240) = (*(int (__fastcall **)(int))(*(_DWORD *)&v5[-4] + 104))(4 * *(unsigned __int16 *)(a1 + 2206));
    if ( !*(_DWORD *)(a1 + 2244) )
      *(_DWORD *)(a1 + 2244) = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)&v5[-4] + 104))(*(unsigned __int16 *)(a1 + 2206));
    if ( !*(_DWORD *)(a1 + 2248) )
      *(_DWORD *)(a1 + 2248) = (*(int (__fastcall **)(int))(*(_DWORD *)&v5[-4] + 104))(4 * *(unsigned __int16 *)(a1 + 2206));
    if ( !*(_DWORD *)(a1 + 2252) )
      *(_DWORD *)(a1 + 2252) = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)&v5[-4] + 104))(*(unsigned __int16 *)(a1 + 2204));
    v27 = 4 * *(_DWORD *)(a1 + 2112);
    v6 = *(_DWORD *)(a1 + 2104);
    v7 = *(_DWORD *)(a1 + 2096);
    v26 = *(_DWORD *)(a1 + 2108);
    v8 = *(_DWORD *)(a1 + 2200);
    if ( a2 )
      v6 *= 2;
    v25 = *(unsigned __int8 *)(v8 + 11) << 7;
    v9 = 4 * *(unsigned __int8 *)(v8 + 19);
    if ( a2 )
      v9 = 8 * *(unsigned __int8 *)(v8 + 19);
    v24 = ((*(_WORD *)(v8 + 16) & 0xF800) << 11) | (32 * (*(_WORD *)(v8 + 16) & 0x7E0)) | *(_WORD *)(v8 + 16) & 0x1F;
    v10 = *(unsigned __int8 *)(v8 + 18);
    if ( a2 )
      v10 >>= 1;
    v11 = 0;
    v12 = sub_104(v27 + v6, v7 * v27) - v26;
    *(_DWORD *)(a1 + 2228) = v12;
    if ( v12 < 0 )
      *(_DWORD *)(a1 + 2228) = 0;
    v13 = *(unsigned __int16 *)(a1 + 2206);
    if ( *(_DWORD *)(a1 + 2228) > v13 )
      *(_DWORD *)(a1 + 2228) = v13;
    while ( *(_DWORD *)(a1 + 2228) > v11 )
    {
      v14 = sub_104(v7 - v26 - v11, (v6 * v7) << 8);
      *(_DWORD *)(*(_DWORD *)(a1 + 2236) + 4 * v11) = v14;
      *(_DWORD *)(*(_DWORD *)(a1 + 2240) + 4 * v11) = sub_104(v6, v14);
      if ( v9 <= v14 >> 8 )
      {
        v16 = sub_104(0x64u, v10 * 32 * ((v14 >> 8) - v9));
        v15 = (unsigned __int8)sub_104(0x640u, v16);
        if ( v15 > 0x20 )
          v15 = 32;
      }
      else
      {
        v15 = 0;
      }
      *(_DWORD *)(*(_DWORD *)(a1 + 2248) + 4 * v11) = v15 * v24;
      *(_BYTE *)(*(_DWORD *)(a1 + 2244) + v11++) = 32 - v15;
    }
    result = *(unsigned __int8 *)(*(_DWORD *)(a1 + 2200) + 9);
    if ( *(_BYTE *)(*(_DWORD *)(a1 + 2200) + 9) )
    {
      v17 = sub_104(v27 + v6, v27 * (v25 - v7));
      v18 = *(unsigned __int16 *)(a1 + 2206);
      v19 = v17 + v18 + v26 - v25;
      *(_DWORD *)(a1 + 2232) = v19;
      if ( v19 < 0 )
        *(_DWORD *)(a1 + 2232) = 0;
      v20 = 0;
      if ( *(_DWORD *)(a1 + 2232) > v18 )
        *(_DWORD *)(a1 + 2232) = v18;
      while ( 1 )
      {
        result = *(_DWORD *)(a1 + 2232);
        if ( result <= v20 )
          break;
        v28 = *(unsigned __int16 *)(a1 + 2206);
        v21 = sub_104(v28 + v26 - v7 - v20, (v6 * (v25 - v7)) << 8);
        *(_DWORD *)(*(_DWORD *)(a1 + 2236) + 4 * (v28 - 1 - v20)) = v21;
        *(_DWORD *)(*(_DWORD *)(a1 + 2240) + 4 * (*(unsigned __int16 *)(a1 + 2206) - 1 - v20)) = sub_104(v6, v21);
        if ( v9 <= v21 >> 8 )
        {
          v23 = sub_104(0x64u, v10 * 32 * ((v21 >> 8) - v9));
          v22 = (unsigned __int8)sub_104(0x640u, v23);
          if ( v22 > 0x20 )
            v22 = 32;
        }
        else
        {
          v22 = 0;
        }
        *(_DWORD *)(*(_DWORD *)(a1 + 2248) + 4 * (*(unsigned __int16 *)(a1 + 2206) - 1 - v20)) = v22 * v24;
        *(_BYTE *)(*(_DWORD *)(a1 + 2244) + *(unsigned __int16 *)(a1 + 2206) - 1 - v20++) = 32 - v22;
      }
    }
    else
    {
      *(_DWORD *)(a1 + 2232) = result;
    }
  }
  return result;
}

