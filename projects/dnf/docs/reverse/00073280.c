int sub_73280()
{
  int v0; // r0
  int savedregs_12; // [sp+Ch] [bp+Ch]

  v0 = sub_72C18();
  dword_1536C28 = v0;
  if ( v0 == 2 )
  {
    dword_1536AC0 = sub_75958(410);
    dword_15369C8 = dword_1536AC0;
    v0 = sub_75958(dword_9C92C);
    *(_WORD *)(dword_15369C8 + 408) = 0;
  }
  else
  {
    dword_15369C8 = (int)dword_9C92C;
  }
  sub_72C5C(v0);
  return savedregs_12;
}
