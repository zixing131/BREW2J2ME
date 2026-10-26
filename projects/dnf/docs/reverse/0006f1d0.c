int __fastcall sub_6F1D0(int a1, int a2, int a3)
{
  int v4; // r7
  int v6; // [sp+10h] [bp-Ch]
  _BYTE v7[8]; // [sp+14h] [bp-8h] BYREF
  _DWORD savedregs[5]; // [sp+1Ch] [bp+0h]

  sub_71334(v7, a2, a3, sub_2CD18);
  v4 = dword_1536348[a1];
  if ( *(_BYTE *)(v4 + 592) != 1 )
  {
    ((void (__fastcall *)(int, int, _DWORD, _DWORD, _DWORD, _DWORD, int, _BYTE *, int))sub_71336)(
      word_1534730 + *(unsigned __int16 *)(v4 + 576),
      word_15346FC + *(unsigned __int16 *)(v4 + 578),
      0,
      0,
      dword_15364E8[*(unsigned __int8 *)(v4 + 621)],
      0,
      1,
      v7,
      576);
    sub_71334(
      1,
      (__int16)(word_1534730 + *(_WORD *)(v4 + v6)),
      (__int16)(word_15346FC + *(_WORD *)(v4 + 578)),
      sub_31704);
  }
  return savedregs[4];
}
