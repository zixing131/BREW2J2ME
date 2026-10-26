int __fastcall sub_89C50(int a1, unsigned __int8 a2)
{
  unsigned int v2; // r4
  unsigned __int8 *v3; // r5
  int v4; // r3
  int v5; // r1
  int savedregs_16; // [sp+14h] [bp+10h]

  v2 = a2;
  v3 = &byte_1538F9C[640 * a2 + 32];
  v4 = 40 * (unsigned __int8)byte_1537CD9[a2];
  v5 = *v3;
  if ( *(unsigned __int8 *)(16 * v5 + dword_1538860[v4] + 86) != 255 )
  {
    v3[1] = v5;
    sub_81EBC(a1, v2);
    sub_8343C(v2, *(unsigned __int8 *)(16 * v3[1] + dword_1538860[40 * (unsigned __int8)byte_1537CD9[v2]] + 86), 1u);
    sub_87CF0(a1, v2, 0, v3[1]);
    sub_82FA0(1, v2, 1);
  }
  return savedregs_16;
}
