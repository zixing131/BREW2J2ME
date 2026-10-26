int __fastcall sub_6BB40(int a1)
{
  int v1; // r1
  int savedregs_4; // [sp+4h] [bp+4h]

  v1 = dword_1535DD4;
  if ( dword_1535DD4 <= 9 )
  {
    dword_1535DD8[dword_1535DD4] = a1;
    dword_1535DD4 = v1 + 1;
  }
  return savedregs_4;
}
