BOOL __fastcall sub_1F558(__int16 a1)
{
  char *v1; // r2
  BOOL v2; // r1
  char v3; // r4

  v1 = (char *)(252 * a1 + dword_150C9D8);
  v2 = v1[228] != -1;
  v3 = v1[228] != -1;
  if ( v1[232] != -1 )
    v3 = v2 + 1;
  if ( v1[236] != -1 )
    ++v3;
  return v3 > (__int16)sub_22468(a1, v2, v1, 526641);
}
