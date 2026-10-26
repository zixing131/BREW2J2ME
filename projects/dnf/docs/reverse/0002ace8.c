int __fastcall sub_2ACE8(int a1, int a2, int a3)
{
  int v3; // r4
  int v4; // r1
  int v5; // r2
  int v6; // r7
  unsigned __int16 *i; // r3
  int v8; // r4
  int v9; // r0
  int v10; // r3
  int *v11; // r3
  int v12; // r0
  int v13; // r2
  unsigned __int16 *v15; // [sp+0h] [bp-4h]
  int savedregs_16; // [sp+14h] [bp+10h]

  if ( byte_15333E4 )
  {
    v3 = 8 * (unsigned __int8)byte_15333E4;
    dword_15333FC = sub_2BCB6(v3 + 2, a2, a3, &unk_14032EC);
    dword_1533400 = dword_15333FC;
    sub_2BCB6(dword_15333FC, 0, v3, &unk_140329C);
    v6 = 0;
    for ( i = (unsigned __int16 *)&unk_15333E6; ; i = v15 + 1 )
    {
      v15 = i;
      if ( v6 >= (unsigned __int8)byte_15333E4 )
        break;
      v8 = dword_1533400;
      v9 = sub_2BCB6(26, v4, v5, &unk_14032EC);
      v10 = dword_1533400;
      *(_DWORD *)(8 * v6 + v8) = v9;
      v11 = (int *)(8 * v6 + v10);
      v12 = *v11;
      v11[1] = *v11;
      sub_2BCB6(v12, 0, 24, &unk_140329C);
      sub_2BCB6(*v15, *(_DWORD *)(dword_1533400 + 8 * v6++ + 4), v13, 451649);
    }
  }
  return savedregs_16;
}
