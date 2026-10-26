int __fastcall sub_2D77C(char a1, unsigned __int8 a2, unsigned __int8 a3)
{
  int v3; // r2
  int savedregs_8; // [sp+8h] [bp+8h]

  if ( dword_1501DD4 != 1
    || (unsigned int)dword_1501C5C > 1
    || !*(_BYTE *)(dword_1501D90 + 6893)
    || *(_BYTE *)(dword_1501D90 + 6893) == 1
    || !a1
    || !a2
    || !a3 )
  {
    return savedregs_8;
  }
  if ( (unsigned __int8)byte_1533BC9 == a2 )
  {
    if ( a1 != 1 )
    {
      if ( a1 == 2 )
      {
        v3 = *(unsigned __int8 *)(4 * a3 + dword_1534D98 + 1);
        if ( v3 != 255 && byte_1533BC8 != 1 )
          goto LABEL_20;
        return savedregs_8;
      }
LABEL_21:
      byte_1533BC9 = a2;
      byte_1533BCA = 1;
      return savedregs_8;
    }
LABEL_16:
    v3 = *(unsigned __int8 *)(4 * a3 + dword_1534D98);
    goto LABEL_19;
  }
  if ( (unsigned __int8)byte_1533BC9 >= (unsigned int)a2 )
    goto LABEL_21;
  if ( a1 == 1 )
    goto LABEL_16;
  if ( a1 != 2 )
    goto LABEL_21;
  v3 = *(unsigned __int8 *)(4 * a3 + dword_1534D98 + 1);
LABEL_19:
  if ( v3 != 255 )
  {
LABEL_20:
    byte_1533BCD = v3;
    byte_1533BC8 = a1;
    goto LABEL_21;
  }
  return savedregs_8;
}
