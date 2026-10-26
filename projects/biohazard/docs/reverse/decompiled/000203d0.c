int __fastcall sub_203D0(int a1)
{
  if ( *(_DWORD *)(a1 + 316) != 4 )
    return 0;
  ++*(_DWORD *)(a1 + 320);
  if ( *(_BYTE *)(a1 + 300) == 1 )
    sub_24FCC();
  return 1;
}

