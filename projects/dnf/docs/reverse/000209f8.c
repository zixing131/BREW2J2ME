int sub_209F8()
{
  int v0; // r7
  int v1; // r6
  int v2; // r3
  int v4; // [sp+0h] [bp-1Ch]
  int v5; // [sp+0h] [bp-1Ch]
  int v6; // [sp+0h] [bp-1Ch]
  int v7; // [sp+0h] [bp-1Ch]
  int v8; // [sp+0h] [bp-1Ch]
  int v9; // [sp+0h] [bp-1Ch]
  int v10; // [sp+0h] [bp-1Ch]
  int v11; // [sp+0h] [bp-1Ch]
  int v12; // [sp+0h] [bp-1Ch]
  int v13; // [sp+4h] [bp-18h]
  int v14; // [sp+8h] [bp-14h]
  int i; // [sp+Ch] [bp-10h]
  int v16; // [sp+10h] [bp-Ch] BYREF
  int v17; // [sp+14h] [bp-8h] BYREF
  __int16 v18; // [sp+1Ah] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+1Ch] [bp+0h]

  sub_20444();
  v13 = sub_22468("diary");
  if ( v13 )
  {
    sub_2246C(&v18, v13, 2);
    sub_2246C(&v16, v13 + 2, 4);
    sub_2246C(&v17, v13 + 6, 4);
    v14 = sub_2246E(v16 + 2);
    sub_2246A(v13 + 10, v14, v16, v17, 6);
    sub_2246C(&word_150C9C4, v14, 2);
    v0 = v14 + 2;
    v1 = 0;
    dword_150C9C8 = sub_2246E(884 * (unsigned __int16)word_150C9C4 + 2);
    dword_150C9CC = dword_150C9C8;
    for ( i = 0; i < (unsigned __int16)word_150C9C4; ++i )
    {
      sub_2246A(v1 + dword_150C9CC, v0, 22, (unsigned __int16)word_150C9C4, v4);
      sub_2246A(v1 + dword_150C9CC + 22, v0 + 22, 850, v2, v5);
      sub_2246A(v1 + dword_150C9CC + 872, v0 + 872, 1, 872, v6);
      sub_2246A(v1 + dword_150C9CC + 874, v0 + 873, 2, 873, v7);
      sub_2246A(v1 + dword_150C9CC + 876, v0 + 875, 2, 875, v8);
      sub_2246A(v1 + dword_150C9CC + 878, v0 + 877, 1, 877, v9);
      sub_2246A(v1 + dword_150C9CC + 880, v0 + 878, 2, 878, v10);
      sub_2246A(v1 + dword_150C9CC + 882, v0 + 880, 1, 880, v11);
      sub_2246A(v1 + dword_150C9CC + 883, v0 + 881, 1, 881, v12);
      v0 += 882;
      v1 += 884;
    }
    if ( v14 )
      sub_22468(v14);
    sub_22468(v13);
  }
  return savedregs[4];
}
