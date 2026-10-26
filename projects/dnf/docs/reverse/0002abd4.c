int sub_2ABD4()
{
  int i; // r5
  int v1; // r0
  int v2; // r0
  int j; // r5
  int v4; // r3
  int v5; // r0
  int v6; // r0
  int v7; // r0
  int v8; // r0
  int v9; // r0
  int savedregs_8; // [sp+8h] [bp+8h]

  dword_15332EC = sub_2BCB6(8 * (unsigned __int8)byte_15332D2 * (unsigned __int8)byte_15332D1 + 2);
  dword_15332F0 = dword_15332EC;
  sub_2BCB6(dword_15332EC);
  sub_28014((unsigned __int8)byte_15332D0);
  for ( i = 0; i < (unsigned __int8)byte_15332D2 * (unsigned __int8)byte_15332D1; ++i )
    sub_2BCB6(8 * i + dword_15332F0 + 4);
  v1 = dword_15333DC;
  if ( dword_15333DC )
  {
    if ( dword_15333DC > 0 )
    {
      v1 = sub_2BCB6(dword_15333DC);
      dword_15333DC = 0;
    }
    dword_15333DC = 0;
    dword_15333E0 = 0;
  }
  sub_2AB48(v1);
  dword_15332BC = sub_2BCB6(8 * (unsigned __int8)byte_15332A6 * (unsigned __int8)byte_15332A5 + 2);
  dword_15332C0 = dword_15332BC;
  sub_2BCB6(dword_15332BC);
  v2 = sub_27E44((unsigned __int8)byte_15332A4);
  sub_2AAC0(v2);
  for ( j = 0; j != 5; ++j )
  {
    v4 = *((unsigned __int8 *)&word_15332A0 + j + 96);
    v5 = v4 << 24;
    if ( (v4 & 0x80) == 0 )
      v5 = sub_27A64(*((unsigned __int8 *)&word_15332A0 + j + 96), j);
  }
  v6 = sub_2AA30(v5);
  v7 = sub_2A9A0(v6);
  v8 = sub_2A910(v7);
  v9 = sub_2A880(v8);
  sub_2A7F0(v9);
  word_15332A0 = 16 * (unsigned __int8)byte_15332D2;
  word_15332A2 = 16 * ((unsigned __int8)byte_15332D1 + (unsigned __int8)byte_15332D5);
  return savedregs_8;
}
