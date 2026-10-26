BOOL __fastcall sub_67044(int a1, int **a2, int *a3, int a4, int a5)
{
  int *v6; // r1

  v6 = *a2;
  if ( !v6 )
    v6 = &dword_1535B98;
  sub_67BBE(a3, v6, 16, &unk_140327C);
  *a2 = a3;
  if ( a4 )
    sub_66FD4(a3, a4, a5);
  else
    sub_66B88(a3, 0, 0);
  return sub_66D20(a3) != 1;
}
