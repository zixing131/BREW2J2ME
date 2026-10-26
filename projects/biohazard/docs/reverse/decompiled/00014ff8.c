int __fastcall sub_14FF8(int a1)
{
  int v2; // r7
  char *v3; // r6
  int v4; // r0
  bool v5; // zf
  int v6; // r8
  int v7; // r6
  int *v8; // r7
  int *v9; // r5
  __int16 v11; // [sp+18h] [bp-14h] BYREF
  __int16 v12; // [sp+1Ah] [bp-12h]
  __int16 v13; // [sp+1Ch] [bp-10h]
  __int16 v14; // [sp+1Eh] [bp-Eh]
  _BYTE v15[12]; // [sp+20h] [bp-Ch] BYREF

  if ( *(_BYTE *)(a1 + 12) && !*(_BYTE *)(a1 + 15) )
  {
    v2 = dword_151CC;
    v3 = (char *)off_151D0 + 86068;
    if ( !*(_DWORD *)(a1 + 136) )
      *(_DWORD *)(a1 + 136) = (*(int (__fastcall **)(int, int *, _BYTE *, int))(*(_DWORD *)&v3[-4] + 100))(
                                dword_151CC,
                                &(*off_151D4)[21524],
                                v15,
                                a1 + 148);
    if ( !*(_DWORD *)(a1 + 140) )
      *(_DWORD *)(a1 + 140) = (*(int (__fastcall **)(int, char *, _BYTE *, int))(*(_DWORD *)&v3[-4] + 100))(
                                v2,
                                off_151D8 + 86144,
                                v15,
                                a1 + 148);
    if ( !*(_DWORD *)(a1 + 144) )
      *(_DWORD *)(a1 + 144) = (*(int (__fastcall **)(int, int *, _BYTE *, int))(*(_DWORD *)&v3[-4] + 100))(
                                v2,
                                &(*off_151DC)[21548],
                                v15,
                                a1 + 148);
    v4 = *(_DWORD *)(a1 + 136);
    v5 = v4 == 0;
    if ( !v4 )
      v5 = *(_DWORD *)(a1 + 140) == 0;
    if ( !v5 || *(_DWORD *)(a1 + 144) )
    {
      v6 = dword_151E0;
      v7 = 0;
      v8 = &(*off_151E4)[21563];
      do
      {
        v9 = &v8[5 * v7];
        v11 = *(_WORD *)v9 + *(_WORD *)(a1 + 126);
        v12 = *((_WORD *)v9 + 1) + *(_WORD *)(a1 + 128);
        v13 = *((_WORD *)v9 + 2);
        v14 = *((_WORD *)v9 + 3);
        (*(void (__fastcall **)(_DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, int))(**(_DWORD **)(a1 + 4) + 24))(
          *(_DWORD *)(a1 + 4),
          v11,
          v12,
          v13,
          v14,
          *(_DWORD *)(a1 + 4 * v9[2] + 136),
          0,
          0,
          7);
        (*(void (__fastcall **)(_DWORD, int, int))(**(_DWORD **)(a1 + 4) + 40))(*(_DWORD *)(a1 + 4), 1, -256);
        sub_14464(*(_DWORD *)(a1 + 4), 0x8000, (int)(v9 + 3), -1, v11, v12, (int)&v11, v6);
        ++v7;
      }
      while ( v7 < 15 );
    }
  }
  sub_D204((_DWORD *)a1);
  return 1;
}

