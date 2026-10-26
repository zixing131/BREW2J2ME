int sub_71390()
{
  int *v0; // r4
  int *v1; // r6
  int v2; // r0
  int savedregs_12; // [sp+Ch] [bp+Ch]

  byte_153676C = 0;
  byte_153676D = 0;
  v0 = (int *)&unk_1536770;
  v1 = (int *)&unk_1536774;
  do
  {
    v2 = *v1;
    *(_BYTE *)v0 = -1;
    *((_BYTE *)v0 + 1) = 0;
    *((_BYTE *)v0 + 2) = 0;
    if ( v2 > 0 )
    {
      sub_71680();
      *v1 = 0;
      v0[2] = 0;
    }
    v0 += 3;
    v1 += 3;
  }
  while ( v0 != &dword_15369C8 );
  return savedregs_12;
}
