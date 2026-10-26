int __fastcall sub_6A8C4(int a1, const char *a2, int a3)
{
  int v5; // r0
  const char *v6; // r1
  int v7; // r6
  int v8; // r7
  int savedregs_16; // [sp+18h] [bp+10h]

  v5 = sub_6BB36(a1, a2, a3, sub_66AA4);
  v7 = v5;
  if ( a2 )
  {
    v8 = a1 - (v5 + 10);
    dword_1535DCC = sub_6BB36(dword_1535C88, v6);
    sub_6A89C(-1, v8 + 1, dword_1501C04 + 1, v7 + 9, 0, 2);
    if ( dword_1535C84 + dword_1535DCC <= 0 )
    {
      dword_1535C84 = dword_1501C04;
      if ( (unsigned __int8)++byte_1535C8C > 2u )
        byte_1535D8C = 0;
    }
    dword_1535C84 -= 3;
    sub_6BB38(dword_1535C84, (const char *)(v8 + 5), dword_1535C88, 0, 0, -256);
  }
  return savedregs_16;
}
