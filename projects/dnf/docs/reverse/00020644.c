int __fastcall sub_20644(int a1, unsigned __int8 a2, unsigned __int16 a3)
{
  int v3; // r1
  int v4; // r2
  int v5; // r4
  int v6; // r6
  unsigned __int8 *v7; // r4
  unsigned int v8; // r5
  int v10; // [sp+0h] [bp-Ch]
  int v11; // [sp+4h] [bp-8h]
  int i; // [sp+8h] [bp-4h]
  int savedregs_16; // [sp+1Ch] [bp+10h]

  v10 = a3;
  v5 = (char)sub_1F39C(a2);
  if ( v5 != -1 )
  {
    sub_22468(v5 + 1, v3, v4, 463761);
    v11 = 28 * v5;
    v6 = 160 * v10;
    for ( i = 0; v10 + i < *(unsigned __int16 *)(v11 + dword_150C7A4 + 2); ++i )
    {
      v7 = (unsigned __int8 *)(v6 + *(_DWORD *)(v11 + dword_150C7A4 + 24));
      v8 = *v7;
      if ( v8 <= 8 && ((1 << v8) & 0x1F4) != 0 )
      {
        sub_2246A(v7[4], v7[1], v7[2], v7 + 8);
        if ( (unsigned __int8)(v8 - 4) <= 1u )
          return savedregs_16;
        if ( (unsigned __int8)(v8 - 6) <= 1u )
        {
          word_150C6C6 = *(_WORD *)(*(_DWORD *)(dword_150C7A4 + v11 + 24) + v6 + 6);
          return savedregs_16;
        }
        if ( v8 == 8 )
        {
          word_150C6C8 = *(_WORD *)(*(_DWORD *)(dword_150C7A4 + v11 + 24) + v6 + 6);
          return savedregs_16;
        }
      }
      v6 += 160;
    }
  }
  return savedregs_16;
}
