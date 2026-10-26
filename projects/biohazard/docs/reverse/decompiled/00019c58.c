int __fastcall sub_19C58(int a1)
{
  __int64 i; // r0

  for ( i = 0; *(_WORD *)(a1 + 2 * HIDWORD(i)); ++HIDWORD(i) )
  {
    if ( *(unsigned __int16 *)(a1 + 2 * HIDWORD(i)) > 0xFFu )
      LODWORD(i) = i + 1;
  }
  return i;
}

