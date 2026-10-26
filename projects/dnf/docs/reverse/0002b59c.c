int __fastcall sub_2B59C(int a1, int a2, int a3)
{
  int v3; // r4
  int v4; // r4
  int v5; // r6
  int v6; // r0
  int v7; // r3
  int *v8; // r3
  int v9; // r0
  int v10; // r1
  int v11; // r0
  int v12; // r1
  int v13; // r2
  int v15; // [sp+0h] [bp-Ch]
  int v16; // [sp+8h] [bp-4h]
  int savedregs_16; // [sp+1Ch] [bp+10h]

  if ( byte_1533434 )
  {
    v3 = 8 * (unsigned __int8)byte_1533434;
    dword_1533454 = sub_2BCB6(v3 + 2, a2, a3, &unk_14032EC);
    dword_1533458 = dword_1533454;
    sub_2BCB6(dword_1533454, 0, v3, &unk_140329C);
    v16 = 0;
    v15 = 0;
    while ( v16 < (unsigned __int8)byte_1533434 )
    {
      v4 = dword_1533458;
      v5 = 8 * v16;
      v6 = sub_2BCB6(38, v16, v16, &unk_14032EC);
      v7 = dword_1533458;
      *(_DWORD *)(8 * v16 + v4) = v6;
      v8 = (int *)(8 * v16 + v7);
      v9 = *v8;
      v8[1] = *v8;
      sub_2BCB6(v9, 0, 36, &unk_140329C);
      v10 = v15 + dword_153343C;
      if ( *(unsigned __int16 *)(v15 + dword_153343C + 4) == 42029
        && (unsigned __int8)(*(_BYTE *)(dword_1501D90 + 6889) - 3) <= 1u )
      {
        if ( (char)sub_2BCB6(22, v10, dword_1501D90, sub_1F2F0) == 2 )
        {
          v12 = *(unsigned __int16 *)(v15 + dword_153343C + 4);
          v11 = *(_DWORD *)(dword_1533458 + v5 + 4);
          v13 = *(unsigned __int8 *)(v15 + dword_153343C + 6);
        }
        else
        {
          v11 = *(_DWORD *)(dword_1533458 + v5 + 4);
          v12 = *(unsigned __int16 *)(dword_153343C + v15 + 4);
          v13 = 1;
        }
        sub_2BCB8(v11, v12, v13);
      }
      else
      {
        sub_2BCB6(
          *(_DWORD *)(dword_1533458 + v5 + 4),
          *(unsigned __int16 *)(v10 + 4),
          *(unsigned __int8 *)(v10 + 6),
          453217);
      }
      ++v16;
      v15 += 44;
    }
  }
  return savedregs_16;
}
