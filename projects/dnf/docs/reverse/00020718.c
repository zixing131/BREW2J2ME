int sub_20718()
{
  int v0; // r0
  int v1; // r3
  int v2; // r7
  int v3; // r6
  int v4; // r4
  int v6; // [sp+0h] [bp-2Ch]
  int v7; // [sp+0h] [bp-2Ch]
  int v8; // [sp+8h] [bp-24h]
  int v9; // [sp+Ch] [bp-20h]
  int v10; // [sp+10h] [bp-1Ch]
  int i; // [sp+14h] [bp-18h]
  int v12; // [sp+18h] [bp-14h]
  int v13; // [sp+1Ch] [bp-10h]
  int v14; // [sp+20h] [bp-Ch] BYREF
  int v15; // [sp+24h] [bp-8h] BYREF
  __int16 v16; // [sp+2Ah] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+2Ch] [bp+0h]

  sub_2041C();
  v8 = sub_22468("mapAni");
  if ( v8 )
  {
    sub_2246C(&v16, v8, 2);
    sub_2246C(&v14, v8 + 2, 4);
    sub_2246C(&v15, v8 + 6, 4);
    v9 = sub_22470(v14 + 2);
    sub_2246A(v8 + 10, v9, v14, v15, 6);
    sub_2246C(&word_150C790, v9, 2);
    v10 = v9 + 2;
    v0 = sub_22470(28 * (unsigned __int16)word_150C790 + 2);
    v1 = 0;
    dword_150C794 = v0;
    dword_150C798 = v0;
    for ( i = 0; ; ++i )
    {
      v13 = v1;
      if ( i >= (unsigned __int16)word_150C790 )
        break;
      sub_2246A(v1 + dword_150C798, v10, 1, (unsigned __int16)word_150C790, v6);
      sub_2246A(v13 + dword_150C798 + 1, v10 + 1, 1, v13, v7);
      v12 = 0;
      v2 = v10 + 2;
      do
      {
        v3 = 8 * v12 + 4;
        sub_2246C(v13 + dword_150C798 + v3, v2, 1);
        sub_2246C(v13 + dword_150C798 + v3 + 2, v2 + 1, 2);
        v4 = 8 * v12 + 8;
        sub_2246C(v13 + dword_150C798 + v4, v2 + 3, 2);
        sub_2246C(v13 + dword_150C798 + v4 + 2, v2 + 5, 1);
        v2 += 6;
        ++v12;
      }
      while ( v12 != 3 );
      v10 += 20;
      v1 = v13 + 28;
    }
    if ( v9 )
      sub_22468(v9);
    sub_22468(v8);
  }
  return savedregs[4];
}
