int __fastcall sub_6EA60(int a1, int a2, unsigned __int8 a3)
{
  int v5; // r0
  int savedregs_8; // [sp+8h] [bp+8h]

  if ( !*(_DWORD *)(a1 + 16) )
    sub_6D838();
  if ( !*(_DWORD *)(a1 + 20) )
  {
    v5 = sub_6EACE(826);
    *(_DWORD *)(a1 + 20) = v5;
    *(_DWORD *)(a1 + 28) = v5;
    sub_6EACE(v5);
    sub_6E944(*(_DWORD *)(a1 + 28), *(unsigned __int16 *)(a1 + 2), a3);
  }
  return savedregs_8;
}
