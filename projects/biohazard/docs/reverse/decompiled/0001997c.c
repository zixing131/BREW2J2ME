int __fastcall sub_1997C(int result, int a2)
{
  int v2; // r1
  bool v3; // zf

  if ( *(_DWORD *)(a2 + 8) != 4 )
    return result;
  v2 = *(_DWORD *)(a2 + 16);
  if ( v2 == 1 )
  {
LABEL_8:
    *(_BYTE *)(result + 80) = v2;
    return result;
  }
  v3 = v2 == 2;
  if ( v2 != 2 )
    v3 = v2 == 3;
  if ( v3 )
  {
    LOBYTE(v2) = 0;
    goto LABEL_8;
  }
  return result;
}

