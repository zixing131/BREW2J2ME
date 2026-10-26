int __fastcall sub_153C(int result)
{
  int v1; // r1
  int v2; // r4
  int (*v3)(void); // r0
  int v4; // r0

  v1 = *(_DWORD *)(result + 328);
  v2 = result;
  if ( v1 != 1004 )
  {
    v3 = *(int (**)(void))(*(_DWORD *)((char *)off_15F4 + 0xFFFFFFFC + 5468) + 192);
    if ( v1 == 2100 )
    {
      v4 = v3();
      *(_BYTE *)(v4 + 1880) = 0;
      if ( *(unsigned __int8 *)(*(_DWORD *)(*(_DWORD *)v2 + 8) + 20 * *(_DWORD *)(v2 + 12) + 4) <= (unsigned int)(unsigned __int8)++*(_BYTE *)(*(_DWORD *)(v2 + 12) + v4 + 912) )
        *(_BYTE *)(v2 + 16) = 2;
      else
        *(_BYTE *)(v2 + 16) = 0;
      return sub_2439C(v4, 8, 0);
    }
    else
    {
      *(_BYTE *)(v3() + 1880) = 0;
      *(_BYTE *)(v2 + 16) = 3;
      result = *(_DWORD *)(v2 + 328);
      *(_DWORD *)(v2 + 344) = result;
    }
  }
  return result;
}

