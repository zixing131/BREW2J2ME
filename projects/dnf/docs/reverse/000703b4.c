int __fastcall sub_703B4(int a1, int a2)
{
  int v2; // r2
  int savedregs; // [sp+0h] [bp+0h]

  v2 = dword_1536348[a1];
  if ( *(_WORD *)(v2 + 32) && *(unsigned __int16 *)(v2 + 44) == a2 )
    sub_7035C();
  return savedregs;
}
