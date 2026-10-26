int __fastcall sub_78748(int a1, char a2)
{
  int v2; // r7
  int v3; // r4
  int v4; // r6
  int v5; // r0
  int savedregs_16; // [sp+10h] [bp+10h]

  v2 = *(_DWORD *)(dword_1501D90 + 16);
  if ( *(_BYTE *)(dword_1501D90 + 6893) != 7 && (a2 == 9 || a2 == 11) )
  {
    v3 = *(unsigned __int16 *)(a1 + 2);
    v4 = sub_8070A(*(_DWORD *)(v2 + 12) * v3, 100);
    v5 = sub_8070A(*(_DWORD *)(v2 + 6584) * v3, 100);
    sub_76664(v2, v5);
    sub_766B0(v2, v4);
  }
  return savedregs_16;
}
