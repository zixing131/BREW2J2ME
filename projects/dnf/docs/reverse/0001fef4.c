int __fastcall sub_1FEF4(unsigned __int16 a1, char a2)
{
  int v2; // r2
  unsigned __int16 *v3; // r2
  int v4; // r1
  char v5; // r3
  int v6; // r2
  int v7; // r6
  int v8; // r4
  char v9; // r0
  int v11; // [sp+8h] [bp-8Ch]
  int v12; // [sp+Ch] [bp-88h]
  int v13; // [sp+10h] [bp-84h]
  int v15; // [sp+18h] [bp-7Ch]
  int v16; // [sp+1Ch] [bp-78h]
  int v17; // [sp+20h] [bp-74h]
  int v18; // [sp+24h] [bp-70h]
  char *v19; // [sp+28h] [bp-6Ch]
  __int16 *v20; // [sp+2Ch] [bp-68h]
  _BYTE v21[100]; // [sp+30h] [bp-64h] BYREF
  _DWORD savedregs[5]; // [sp+94h] [bp+0h]

  v15 = a1;
  v17 = 0;
  v20 = (__int16 *)&unk_150C9E2;
  v11 = 12;
  do
  {
    v2 = *v20;
    if ( v2 != -1 )
    {
      v16 = 252 * v2;
      v19 = &byte_150C9DC[v11 + 3];
      v18 = 0;
      v13 = 0;
      v12 = 0;
      do
      {
        if ( *(_BYTE *)(8 * v18 + v16 + dword_150C9D8 + 192) != 3 )
          goto LABEL_15;
        if ( *(unsigned __int16 *)(8 * v18 + v16 + dword_150C9D8 + 194) + 1 != v15 )
          goto LABEL_15;
        v3 = (unsigned __int16 *)(8 * v18 + v16 + dword_150C9D8 + 196);
        v4 = *(unsigned __int8 *)(8 * v18 + v16 + dword_150C9D8 + 198);
        if ( v4 != 6 && a2 < v4 )
          goto LABEL_15;
        v5 = *v19 + 1;
        *v19 = v5;
        v6 = *v3;
        v7 = v5;
        if ( v5 <= v6 )
        {
          v8 = (char)v6;
          if ( v5 < (char)v6 )
          {
            sub_22468(v21, 0, 100, &unk_140329C);
            sub_2246A(
              v21,
              "%s\n%s(%d / %d)",
              (const char *)(v16 + dword_150C9D8 + 1),
              &byte_150C9DC[96 * v17 + 18 + v12],
              v7,
              v8);
            v9 = 1;
LABEL_14:
            sub_1FECC(v9, (int)v21);
            goto LABEL_15;
          }
          if ( v5 == (char)v6 )
          {
            sub_22468(v21, 0, 100, &unk_140329C);
            sub_2246A(
              v21,
              (const char *)dword_90688,
              v16 + dword_150C9D8 + 1,
              &byte_150C9DC[96 * v17 + 18 + v13],
              v7,
              v7);
            v9 = 2;
            goto LABEL_14;
          }
        }
        else
        {
          *v19 = v6;
        }
LABEL_15:
        ++v18;
        v12 += 24;
        v13 += 24;
        ++v19;
      }
      while ( v18 != 3 );
    }
    ++v17;
    v11 += 96;
    v20 += 48;
  }
  while ( v17 != 20 );
  return savedregs[4];
}
