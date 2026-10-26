int __fastcall sub_6F06C(int a1, int a2, int a3)
{
  __int16 v3; // r3
  _BYTE v5[8]; // [sp+18h] [bp-8h] BYREF
  _DWORD savedregs[5]; // [sp+20h] [bp+0h]

  sub_71334(v5, a2, a3, sub_2CD18);
  if ( dword_1501C04 == 240 )
  {
    sub_71338(208, 28, 0, 0, &dword_1501DB8, 11, 0, v5, 0);
    sub_71338(dword_1501C04 - 30, 22, 0, 0, &dword_1501DB8, 16, 0, v5, 0);
    sub_71338(dword_1501C04 - 26, 22, 0, 0, &dword_1501DB8, 17, 0, v5, 0);
  }
  else if ( dword_1501C04 == 320 )
  {
    sub_71338(249, 16, 0, 0, &dword_1501DB8, 11, 0, v5, 0);
    sub_71338(251, 10, 0, 0, &dword_1501DB8, 16, 0, v5, 0);
    sub_71338(255, 10, 0, 0, &dword_1501DB8, 17, 0, v5, 0);
  }
  if ( word_15364E2 != 4 && byte_1536760 == 3 )
  {
    if ( dword_1501C04 == 240 )
    {
      word_15358E8 = 228;
      v3 = 308;
LABEL_11:
      word_15358EA = v3;
      byte_15358E7 = 68;
      sub_71334(&dword_1501C30, &unk_15358E0, 0, sub_6E16C);
      sub_71336(
        (unsigned __int16)word_15358E8,
        (unsigned __int16)word_15358EA,
        &dword_1501C30,
        &unk_15358E0,
        (unsigned __int8)byte_15358EC,
        0,
        0,
        0,
        0,
        0);
      return savedregs[4];
    }
    if ( dword_1501C04 == 320 )
    {
      word_15358E8 = 268;
      v3 = dword_1501BF0 - 12;
      goto LABEL_11;
    }
  }
  return savedregs[4];
}
