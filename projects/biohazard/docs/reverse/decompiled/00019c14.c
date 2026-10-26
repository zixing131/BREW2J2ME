BOOL __fastcall sub_19C14(__int16 *a1, __int16 *a2)
{
  int v2; // r2
  int v3; // r3
  bool v4; // cc
  int v5; // r0
  int v6; // r2
  bool v7; // cc

  v2 = *a1;
  v3 = *a2;
  v4 = v2 <= v3;
  if ( v2 > v3 )
    v4 = a2[2] + v3 <= v2;
  if ( v4 )
    return 0;
  v5 = a1[1];
  v6 = a2[1];
  v7 = v5 <= v6;
  if ( v5 >= v6 )
    v7 = a2[3] + v6 <= v5;
  return !v7;
}

