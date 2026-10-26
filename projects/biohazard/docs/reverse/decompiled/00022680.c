int __fastcall sub_22680(int a1)
{
  int result; // r0
  unsigned int v3; // r4
  char *v4; // r6

  result = *(_DWORD *)(a1 + 20);
  if ( result )
  {
    v3 = 0;
    v4 = (char *)off_226FC + 140968;
    while ( *(_DWORD *)(a1 + 16) > v3 )
    {
      if ( *(_DWORD *)(*(_DWORD *)(a1 + 20) + 32 * v3 + 8) )
        (*(void (**)(void))(*(_DWORD *)&v4[-4] + 108))();
      ++v3;
    }
    result = (*(int (__fastcall **)(_DWORD))(*(_DWORD *)&v4[-4] + 108))(*(_DWORD *)(a1 + 20));
    *(_DWORD *)(a1 + 20) = 0;
  }
  *(_DWORD *)(a1 + 16) = 0;
  return result;
}

