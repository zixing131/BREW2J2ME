int __fastcall sub_151E8(_BYTE *a1)
{
  int v2; // r4
  char *v3; // r6
  int result; // r0

  (*(void (__fastcall **)(_DWORD, char *, _BYTE *))(**(_DWORD **)a1 + 48))(*(_DWORD *)a1, (char *)off_15278 + 86540, a1);
  v2 = 0;
  v3 = (char *)off_1527C + 86556;
  do
  {
    result = *(_DWORD *)&a1[4 * v2 + 136];
    if ( result )
    {
      if ( a1[148] )
        result = (*(int (**)(void))(*(_DWORD *)&v3[-4] + 188))();
      else
        result = (*(int (__fastcall **)(int))(*(_DWORD *)result + 4))(result);
    }
    ++v2;
  }
  while ( v2 < 3 );
  if ( a1 )
    return (*(int (__fastcall **)(_BYTE *))(*(_DWORD *)&v3[-4] + 108))(a1);
  return result;
}

