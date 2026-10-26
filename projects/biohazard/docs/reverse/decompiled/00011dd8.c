int __fastcall sub_11DD8(int a1)
{
  unsigned int v2; // r0
  int v3; // r5

  v2 = sub_122FC();
  if ( *(_DWORD *)(a1 + 68) > v2
    && ((v3 = *(_DWORD *)(a1 + 80) + 32 * v2, *(_DWORD *)(v3 + 8)) || !sub_18498(a1, (unsigned __int16)v2)) )
  {
    return v3;
  }
  else
  {
    return 0;
  }
}

