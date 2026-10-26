int __fastcall sub_7CC4C(unsigned __int16 *a1, char a2)
{
  int v3; // r5
  __int64 v4; // r0
  int v5; // r0
  int v6; // r6
  int v7; // r4
  int v8; // r0
  int savedregs_12; // [sp+Ch] [bp+Ch]

  v3 = *(_DWORD *)(dword_1501D90 + 16);
  if ( *(_BYTE *)(dword_1501D90 + 6893) != 7 && a2 == 9 )
  {
    v4 = sub_80706(100, 9);
    if ( (unsigned int)v4 >= a1[1] )
    {
      v6 = *(_DWORD *)(v3 + 6584);
      v7 = a1[3];
      if ( (unsigned int)sub_80706(v4, HIDWORD(v4)) )
      {
        v8 = sub_80706(v7 * v6, 100);
        sub_76940(v3, v8);
      }
    }
    else
    {
      v5 = sub_80706(*(_DWORD *)(v3 + 6584) * (unsigned int)a1[2], 100);
      sub_76664(v3, v5);
    }
  }
  return savedregs_12;
}
