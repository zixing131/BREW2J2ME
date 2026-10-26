int __fastcall sub_2D830(unsigned __int8 a1, unsigned __int8 a2)
{
  unsigned __int8 *v2; // r2
  int savedregs_8; // [sp+8h] [bp+8h]

  if ( dword_1501DD4 == 1 && (unsigned int)dword_1501C5C <= 1 )
  {
    if ( *(_BYTE *)(dword_1501D90 + 6893) )
    {
      if ( *(_BYTE *)(dword_1501D90 + 6893) != 1 )
      {
        if ( a1 )
        {
          if ( a2 )
          {
            if ( (unsigned __int8)byte_1533BD1 <= (unsigned int)a1 )
            {
              byte_1533BD1 = a1;
              byte_1533BD0 = dword_1501DD4;
              v2 = (unsigned __int8 *)(4 * a2 + dword_15340CC);
              word_1533BD2 = 100 * *v2;
              byte_1533BD4 = v2[1];
              if ( (unsigned __int8)byte_1533BD4 > 0x64u )
                byte_1533BD4 = 100;
            }
          }
        }
      }
    }
  }
  return savedregs_8;
}
