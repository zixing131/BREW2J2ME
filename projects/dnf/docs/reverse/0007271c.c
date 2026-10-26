int __fastcall sub_7271C(unsigned __int8 *a1)
{
  int v1; // r5
  int v2; // r4
  int v4; // [sp+0h] [bp-4h] BYREF

  v1 = *a1;
  v2 = a1[1];
  dword_1536C28 = 2;
  if ( sub_75958(&v4, a1, 2, sub_6BC30) > 0 )
    return v4;
  else
    return (v1 << 8) | v2;
}
