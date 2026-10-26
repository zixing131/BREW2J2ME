int __fastcall sub_8AF94(unsigned int a1, int a2, int a3)
{
  __int64 v5; // r0
  int v6; // r2
  int v7; // r0
  int v8; // r2
  __int64 v9; // r0
  int *v10; // r2
  int v11; // r1
  int v12; // r2
  char v13; // r3
  int v16; // [sp+4h] [bp-8h]
  int v17; // [sp+8h] [bp-4h]
  int savedregs_16; // [sp+1Ch] [bp+10h]

  v16 = dword_150D7DC;
  v5 = ((__int64 (*)(void))sub_8B160)();
  v17 = v5;
  v7 = sub_8B15E(v5, HIDWORD(v5), v6, sub_272DC);
  if ( a3 == (int)sub_8B160(v7) )
  {
    v9 = __PAIR64__(a1, sub_8B15E(dword_150D7DC + 1, a2, v8, 573889));
    dword_150D7DC = v9;
    v10 = (int *)*(unsigned __int8 *)(a1 + v9);
    byte_150D7E4[dword_150D7E0 - 1] = (char)v10;
  }
  else
  {
    sub_8B160(a3);
    dword_150D7DC = 0;
    LODWORD(v9) = sub_8B15E(1, v11, v12, sub_26B6C);
    if ( (_DWORD)v9 )
    {
      HIDWORD(v9) = a1;
      v13 = *(_BYTE *)(a1 + dword_150D7DC);
      byte_150D7A5 = 0;
      byte_150D7A4 = v13;
      ++dword_150D7C4;
      v10 = &dword_150D7E0;
      ++dword_150D7E0;
    }
    else
    {
      dword_150D7DC = v16;
      v9 = sub_8B160(v17);
    }
  }
  sub_8B15E(v9, HIDWORD(v9), v10, sub_272DC);
  byte_150D7F1 = 0;
  return savedregs_16;
}
