int sub_6C538()
{
  int v0; // r0
  int v1; // r2
  int v2; // r0
  int v3; // r1
  int v4; // r2
  int v5; // r0
  int v6; // r1
  int v7; // r2
  int savedregs_12; // [sp+Ch] [bp+Ch]

  if ( byte_1501CC0 )
  {
    if ( dword_1535E44 )
    {
      v0 = sub_6C778("Yamaha_MA3", dword_1535E48, 444037, &unk_140330C);
      dword_1535E24 = v0;
      if ( v0 )
      {
        if ( dword_1535E50 )
        {
          sub_6C778(v0, 0, v1, &unk_140338C);
          v2 = sub_6C778(dword_1535E24, dword_1535E50, dword_1535E48, &unk_140332C);
          if ( sub_6C778(v2, v3, v4, 467213) )
          {
            v5 = dword_1535E24;
            v6 = 60;
          }
          else
          {
            v6 = 20 * byte_1501CC0;
            v5 = dword_1535E24;
          }
          sub_6C77A(v5, v6, dword_1535E24);
          sub_6C778(dword_1535E24, byte_1535E41 != 0, v7, &unk_140334C);
          byte_1535E40 |= 1u;
        }
      }
    }
  }
  return savedregs_12;
}
