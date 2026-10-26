int __fastcall sub_78700(int a1, char a2)
{
  int v2; // r4
  int v3; // r0
  int savedregs_4; // [sp+4h] [bp+4h]

  v2 = *(_DWORD *)(dword_1501D90 + 16);
  if ( *(_BYTE *)(dword_1501D90 + 6893) != 7 && (a2 == 9 || a2 == 11) )
  {
    v3 = sub_80706(*(_DWORD *)(v2 + 12) * *(unsigned __int16 *)(a1 + 2), 100);
    sub_766B0(v2, v3);
  }
  return savedregs_4;
}
