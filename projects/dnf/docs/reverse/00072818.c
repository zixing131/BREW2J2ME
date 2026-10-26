int __fastcall sub_72818(int a1, int a2, _BYTE *a3, int a4, int a5)
{
  int v7; // r5
  _BYTE *i; // r4
  int v9; // r2
  int v10; // r0
  int savedregs_16; // [sp+10h] [bp+10h]

  if ( !a4 )
    goto LABEL_6;
  if ( a4 != 1 )
  {
    if ( a4 == 2 )
    {
      v7 = a1 - sub_72754(a3);
      goto LABEL_7;
    }
LABEL_6:
    v7 = a1;
    goto LABEL_7;
  }
  v7 = a1 - sub_72754(a3) / 2;
LABEL_7:
  for ( i = a3; *i; ++i )
  {
    if ( (*i & 0x80) != 0 )
    {
      v10 = sub_7271C(i++);
      v9 = v10;
    }
    else
    {
      v9 = (unsigned __int8)*i;
    }
    v7 += sub_72484(v7, a2, v9, a5);
  }
  return savedregs_16;
}
