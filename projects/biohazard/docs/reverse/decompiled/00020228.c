unsigned __int16 *__fastcall sub_20228(__int16 *a1)
{
  unsigned __int16 *result; // r0

  result = *(unsigned __int16 **)((*(int (**)(void))(*(_DWORD *)((char *)off_20294 + 0xFFFFFFFC + 131644) + 192))() + 32);
  if ( *((_BYTE *)a1 + 8) == 1 )
  {
    ++*((_DWORD *)a1 + 1);
    if ( a1[1] + *a1 < *result >> 2 )
      sub_22F1C(a1);
    result = (unsigned __int16 *)((unsigned __int16)*a1 - 4);
    *a1 = (__int16)result;
  }
  return result;
}

