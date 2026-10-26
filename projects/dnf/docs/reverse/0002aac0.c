int __fastcall sub_2AAC0(int a1, int a2, int a3)
{
  int v3; // r4
  int v4; // r1
  int v5; // r2
  int v6; // r7
  int v7; // r4
  int v8; // r0
  int v9; // r3
  int *v10; // r3
  int v11; // r0
  int v12; // r2
  unsigned __int16 *v14; // [sp+0h] [bp-4h]
  int savedregs_16; // [sp+14h] [bp+10h]

  v3 = 8 * (unsigned __int8)byte_15332C4;
  dword_15332C8 = sub_2BCB6(v3 + 2, a2, a3, &unk_14032EC);
  dword_15332CC = dword_15332C8;
  sub_2BCB6(dword_15332C8, 0, v3, &unk_140329C);
  v6 = 0;
  v14 = (unsigned __int16 *)&unk_15332A8;
  while ( v6 < (unsigned __int8)byte_15332C4 )
  {
    v7 = dword_15332CC;
    v8 = sub_2BCB6(26, v4, v5, &unk_14032EC);
    v9 = dword_15332CC;
    *(_DWORD *)(8 * v6 + v7) = v8;
    v10 = (int *)(8 * v6 + v9);
    v11 = *v10;
    v10[1] = *v10;
    sub_2BCB6(v11, 0, 24, &unk_140329C);
    sub_2BCB6(*v14++, *(_DWORD *)(dword_15332CC + 8 * v6++ + 4), v12, 451649);
  }
  return savedregs_16;
}
