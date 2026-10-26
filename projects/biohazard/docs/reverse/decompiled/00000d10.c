int __fastcall sub_D10(int a1, int a2, int a3)
{
  int v4; // r5
  int v6; // r2
  int v7; // r6
  int result; // r0

  v4 = a1 + 512;
  v6 = *(__int16 *)(a1 + 540);
  v7 = a1 + 768;
  for ( result = 0; ; result = (__int16)(result + 1) )
  {
    if ( v6 <= result )
    {
      result = v6 + 1;
      if ( v6 + 1 <= 32 )
      {
        *(_BYTE *)(a1 + 8 * v6 + 542) = a2;
        *(_BYTE *)(a1 + 8 * *(__int16 *)(v4 + 28) + 543) = sub_12E0C(a1);
        *(_BYTE *)(a1 + 8 * *(__int16 *)(v4 + 28) + 544) = 0;
        *(_BYTE *)(a1 + 8 * *(__int16 *)(v4 + 28) + 545) = 0;
        *(_BYTE *)(a1 + 8 * *(__int16 *)(v4 + 28) + 546) = 0;
        *(_BYTE *)(a1 + 8 * *(__int16 *)(v4 + 28) + 547) = 0;
        *(_BYTE *)(a1 + 8 * *(__int16 *)(v4 + 28) + 548) = 0;
        *(_BYTE *)(a1 + 8 * *(__int16 *)(v4 + 28) + 549) = 0;
        if ( a3 )
          *(_WORD *)(v7 + 30) = *(_WORD *)(v4 + 28);
        result = *(unsigned __int16 *)(v4 + 28) + 1;
        *(_WORD *)(v4 + 28) = result;
      }
      return result;
    }
    if ( *(unsigned __int8 *)(a1 + 8 * result + 542) == a2 )
      break;
  }
  if ( a3 )
    *(_WORD *)(v7 + 30) = result;
  return result;
}

