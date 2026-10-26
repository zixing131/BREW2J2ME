int __fastcall sub_789A0(int a1, char a2)
{
  int v3; // r4
  int savedregs_8; // [sp+8h] [bp+8h]

  v3 = *(_DWORD *)(dword_1501D90 + 16);
  if ( *(_BYTE *)(dword_1501D90 + 6893) != 7 && a2 == 9 )
  {
    sub_76664(*(_DWORD *)(dword_1501D90 + 16), *(unsigned __int16 *)(a1 + 2));
    sub_766B0(v3, *(unsigned __int16 *)(a1 + 2));
  }
  return savedregs_8;
}
