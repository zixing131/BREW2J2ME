int __fastcall sub_6C4AC(int a1, unsigned __int8 a2)
{
  int v3; // r4
  int v4; // r0
  int v6; // r2
  _BYTE v7[3]; // [sp+1h] [bp-3h] BYREF

  v3 = a2;
  v4 = sub_6C778(v7, &dword_9C6DC, 3, sub_8C9DC);
  if ( !byte_1501CC3 )
    return 0;
  sub_6C498(v4);
  sub_6C778((char)v7[v3], a1, v6, &unk_140336C);
  return 1;
}
