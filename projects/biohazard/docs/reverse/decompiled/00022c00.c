int __fastcall sub_22C00(_DWORD *a1)
{
  char *v2; // r6
  int result; // r0

  v2 = (char *)off_22CA0 + 142360;
  if ( a1[4] )
  {
    (*(void (**)(void))(*(_DWORD *)&v2[-4] + 108))();
    a1[4] = 0;
  }
  if ( a1[5] )
  {
    (*(void (**)(void))(*(_DWORD *)&v2[-4] + 108))();
    a1[5] = 0;
  }
  if ( *a1 )
  {
    (*(void (**)(void))(*(_DWORD *)&v2[-4] + 108))();
    *a1 = 0;
  }
  result = a1[25];
  if ( result )
  {
    result = sub_22CA4();
    a1[25] = 0;
  }
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[7] = 0;
  return result;
}

