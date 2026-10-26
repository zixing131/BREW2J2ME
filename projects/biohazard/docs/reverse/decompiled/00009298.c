int __fastcall sub_9298(int a1, unsigned __int16 *a2, int a3)
{
  char *v5; // r9
  int v6; // r7
  int v7; // r8
  int v8; // r10
  int i; // r5
  int v10; // r1
  void (__fastcall *v11)(_BYTE *, int, __int16 *, _BYTE *); // r12
  int v12; // r0
  _WORD v14[4]; // [sp+20h] [bp-194h] BYREF
  _BYTE v15[192]; // [sp+28h] [bp-18Ch] BYREF
  _BYTE v16[192]; // [sp+E8h] [bp-CCh] BYREF
  int v17; // [sp+1A8h] [bp-Ch]
  unsigned __int16 *v18; // [sp+1ACh] [bp-8h]
  int v19; // [sp+1B0h] [bp-4h]

  v17 = a1;
  v18 = a2;
  v19 = a3;
  v5 = (char *)off_94C0 + 37556;
  v6 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_94C0 + 0xFFFFFFFC + 37556) + 192))() + 40);
  v7 = *(_DWORD *)(v6 + 100);
  v14[0] = 0;
  v14[1] = 0;
  v8 = dword_94C4;
  v14[2] = *a2;
  v14[3] = a2[1];
  *(_WORD *)(*(_DWORD *)(a1 + 276) + 14) = *a2 >> 1;
  *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = (a2[1] - 155) / 2;
  sub_103F4(*(_DWORD *)(a1 + 276), 0, 8);
  for ( i = 0; i < 8; i = (__int16)(i + 1) )
  {
    if ( i == 1
      && *(_BYTE *)(*(_DWORD *)(a1 + 272) + 32)
      && !*(_BYTE *)(*(_DWORD *)((*(int (**)(void))(*(_DWORD *)&v5[-4] + 192))() + 1888) + 564) )
    {
      v10 = dword_94C8;
    }
    else
    {
      v10 = v8 + i;
    }
    sub_19618(v6, v10, v16, 80);
    v11 = *(void (__fastcall **)(_BYTE *, int, __int16 *, _BYTE *))(*(_DWORD *)&v5[-4] + 60);
    if ( *(__int16 *)(a1 + 330) == i )
    {
      v11(v15, 192, off_94CC + 18898, v16);
      v12 = (*a2 - sub_12BC8(v7, v16, 1)) / 2 - 12;
    }
    else
    {
      v11(v15, 192, off_94D0 + 18930, v16);
      v12 = (*a2 - sub_12BC8(v7, v16, 1)) / 2;
    }
    sub_98BC(
      *(_DWORD *)(v6 + 100),
      a2,
      (__int16)(*(_WORD *)(*(_DWORD *)(a1 + 276) + 16) + 11),
      v14,
      v15,
      0,
      0,
      0,
      (__int16)v12,
      0,
      2,
      0);
    *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) += 20;
  }
  *(_WORD *)(*(_DWORD *)(a1 + 276) + 8) = 2;
  *(_WORD *)(*(_DWORD *)(a1 + 276) + 16) = a2[1];
  sub_21BA8(*(_DWORD *)(a1 + 276));
  return sub_1CE08(*(_DWORD *)(a1 + 276), a2, v19);
}

