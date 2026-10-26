int __fastcall sub_66FD4(int a1, _DWORD *a2, int a3)
{
  int v4; // r1
  int savedregs_16; // [sp+18h] [bp+10h]

  if ( a2 )
  {
    sub_67BC6(&dword_1535BE0, a2, 28);
    if ( *a2 )
    {
      sub_67BC6(&unk_1535BC8, *a2, 16);
      dword_1535BE0 = (int)&unk_1535BC8;
    }
    v4 = a2[1];
    if ( v4 )
    {
      sub_67BC6(&unk_1535BD8, v4, 8);
      dword_1535BE4 = (int)&unk_1535BD8;
    }
  }
  else
  {
    sub_67BBE(&dword_1535BE0, 0, 28, &unk_140329C);
  }
  sub_66B88(a1, &dword_1535BE0, a3);
  return savedregs_16;
}
