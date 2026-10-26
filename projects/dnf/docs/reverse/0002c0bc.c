int __fastcall sub_2C0BC(int a1)
{
  int v1; // r7
  __int16 v2; // r6
  int v3; // r2
  __int16 v4; // r3
  __int16 v5; // r6
  int v6; // r1
  __int16 v7; // r3
  int savedregs_16; // [sp+10h] [bp+10h]

  v1 = *(_DWORD *)(a1 + 16);
  v2 = *(_WORD *)(v1 + 58);
  v3 = dword_1501C04 / 2;
  if ( v2 >= dword_1501C04 / 2 )
  {
    if ( v2 <= (unsigned __int16)word_15332A0 - v3 )
      v4 = v3 - v2;
    else
      v4 = dword_1501C04 - word_15332A0;
    word_1534730 = v4;
  }
  else
  {
    word_1534730 = 0;
  }
  v5 = *(_WORD *)(v1 + 60);
  v6 = dword_1501BF0 / 2;
  if ( v5 >= dword_1501BF0 / 2 )
  {
    if ( v5 <= (unsigned __int16)word_15332A2 - v6 + 29 )
      v7 = v6 - v5;
    else
      v7 = -29 - (word_15332A2 - dword_1501BF0);
    word_15346FC = v7;
  }
  else
  {
    word_15346FC = 0;
  }
  return savedregs_16;
}
