int __fastcall sub_2112C(int a1, const char *a2, int a3)
{
  int v3; // r0
  const char *v4; // r1
  int v5; // r3
  int v6; // r4
  const char *v7; // r7
  int v8; // r5
  int v9; // r4
  const char *v10; // r7
  int v11; // r4
  const char *v12; // r7
  int v13; // r4
  int v15; // [sp+10h] [bp-34h]
  const char *v16; // [sp+14h] [bp-30h]
  int i; // [sp+18h] [bp-2Ch]
  int v18; // [sp+1Ch] [bp-28h]
  int v19; // [sp+20h] [bp-24h]
  const char *v20; // [sp+24h] [bp-20h]
  const char *v21; // [sp+28h] [bp-1Ch]
  int v22; // [sp+2Ch] [bp-18h]
  int j; // [sp+30h] [bp-14h]
  int v24; // [sp+34h] [bp-10h]
  int v25; // [sp+38h] [bp-Ch] BYREF
  int v26; // [sp+3Ch] [bp-8h] BYREF
  _BYTE v27[3]; // [sp+40h] [bp-4h] BYREF
  char v28; // [sp+43h] [bp-1h] BYREF
  _DWORD savedregs[5]; // [sp+44h] [bp+0h]

  v15 = sub_22468("quest", a2, a3, 445409);
  if ( v15 )
  {
    sub_2246C(v27, v15, 2);
    sub_2246C(&v25, v15 + 2, 4);
    sub_2246C(&v26, v15 + 6, 4);
    v16 = (const char *)sub_2246E(v25 + 2);
    sub_2246A(v15 + 10, v16, v25, v26, 6);
    sub_2246C(&word_150C9D0, v16, 2);
    v20 = v16 + 2;
    v3 = sub_2246E(252 * (unsigned __int16)word_150C9D0 + 2);
    v5 = 0;
    dword_150C9D4 = v3;
    dword_150C9D8 = v3;
    for ( i = 0; ; ++i )
    {
      v19 = v5;
      if ( i >= (unsigned __int16)word_150C9D0 )
        break;
      sub_2246A(v5 + dword_150C9D8, v20, 1);
      sub_2246A(v19 + dword_150C9D8 + 1, v20 + 1, 32);
      sub_2246A(v19 + dword_150C9D8 + 33, v20 + 33, 128);
      sub_2246A(v19 + dword_150C9D8 + 162, v20 + 161, 2);
      sub_2246A(v19 + dword_150C9D8 + 164, v20 + 163, 2);
      v24 = 0;
      v7 = v20 + 165;
      do
      {
        v6 = 8 * v24 + 168;
        sub_2246C(v19 + dword_150C9D8 + v6, v7, 1);
        sub_2246C(v19 + dword_150C9D8 + v6 + 1, v7 + 1, 1);
        sub_2246C(v19 + dword_150C9D8 + v6 + 2, v7 + 2, 2);
        sub_2246C(v19 + dword_150C9D8 + 8 * v24 + 172, v7 + 4, 1);
        v7 += 5;
        ++v24;
      }
      while ( v24 != 3 );
      v21 = v20 + 180;
      for ( j = 0; j != 3; ++j )
      {
        v8 = 8 * j + 192;
        sub_2246E(v19 + dword_150C9D8 + v8);
        sub_2246E(v19 + dword_150C9D8 + v8 + 2);
        v9 = 8 * j + 196;
        sub_2246E(v19 + dword_150C9D8 + v9);
        sub_2246E(v19 + dword_150C9D8 + v9 + 2);
        v21 += 6;
      }
      sub_2246E(v19 + dword_150C9D8 + 216);
      sub_2246E(v19 + dword_150C9D8 + 220);
      sub_2246E(v19 + dword_150C9D8 + 224);
      v22 = 0;
      v10 = v20 + 207;
      do
      {
        v28 = 0;
        sub_22468(&v28, v10, 1);
        *(_BYTE *)(4 * v22 + dword_150C9D8 + v19 + 228) = v28;
        v11 = 4 * v22 + 228;
        sub_22468(v19 + dword_150C9D8 + v11 + 1, v10 + 1, 1, &unk_140327C);
        sub_22468(v19 + dword_150C9D8 + v11 + 2, v10 + 2, 1, &unk_140327C);
        v10 += 3;
        ++v22;
      }
      while ( v22 != 2 );
      v18 = 0;
      v12 = v20 + 213;
      do
      {
        v28 = 0;
        sub_22468(&v28, v12, 1);
        *(_BYTE *)(4 * v18 + dword_150C9D8 + v19 + 236) = v28;
        v13 = 4 * v18 + 236;
        sub_22468(v19 + dword_150C9D8 + v13 + 1, v12 + 1, 1, &unk_140327C);
        sub_22468(v19 + dword_150C9D8 + v13 + 2, v12 + 2, 1, &unk_140327C);
        v12 += 3;
        ++v18;
      }
      while ( v18 != 4 );
      v20 += 225;
      v5 = v19 + 252;
    }
    if ( v16 )
      sub_22468(v16, v4);
    sub_22468(v15, v4);
  }
  return savedregs[4];
}
