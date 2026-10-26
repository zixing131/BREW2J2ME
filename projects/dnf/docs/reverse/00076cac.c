int __fastcall sub_76CAC(unsigned __int8 a1, char a2)
{
  unsigned __int8 *v2; // r0
  int v3; // r2
  int result; // r0

  v2 = (unsigned __int8 *)dword_1538860[40 * (unsigned __int8)byte_1537CD9[a1]];
  if ( !a2 )
  {
    v3 = *((unsigned __int16 *)v2 + 17);
    goto LABEL_5;
  }
  if ( a2 == 1 )
  {
    v3 = *((unsigned __int16 *)v2 + 18);
LABEL_5:
    result = (unsigned __int16)sub_80706(100 * v3, (5242880 * (unsigned int)*v2 + 9830400) >> 16);
    if ( result )
      return result;
  }
  return 1;
}
