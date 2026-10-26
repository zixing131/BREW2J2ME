int __fastcall sub_22F60(int a1)
{
  int v2; // r4
  char *v3; // r8
  int v4; // r6
  int result; // r0

  v2 = 0;
  v3 = (char *)off_22FD4 + 143224;
  do
  {
    v4 = a1 + 4 * v2;
    if ( *(_DWORD *)(v4 + 16) )
      (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
    ++v2;
    *(_DWORD *)(v4 + 16) = 0;
  }
  while ( v2 < 10 );
  result = *(_DWORD *)(a1 + 56);
  if ( result )
  {
    result = (*(int (**)(void))(*(_DWORD *)&v3[-4] + 108))();
    *(_DWORD *)(a1 + 56) = 0;
  }
  *(_WORD *)a1 = 0;
  *(_WORD *)(a1 + 2) = 0;
  return result;
}

