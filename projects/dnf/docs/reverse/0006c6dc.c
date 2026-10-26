int __fastcall sub_6C6DC(int a1, int a2, char a3, unsigned __int8 a4, char a5)
{
  int v5; // r5
  int v6; // r0
  int v8; // [sp+0h] [bp-4h]
  int savedregs_16; // [sp+14h] [bp+10h]

  v8 = a4;
  if ( byte_1501CC0 )
  {
    if ( *(_DWORD *)(a1 + 4) )
    {
      v5 = 16 * a2 + *(_DWORD *)(a1 + 8);
      if ( v5 )
      {
        if ( (byte_1535E40 & 1) != 0 )
        {
          if ( !a3 && dword_1535E44 == *(_DWORD *)v5 )
            return savedregs_16;
          sub_6C428();
        }
        v6 = sub_6C778(&dword_1535E44, v5, 16, &unk_140327C);
        byte_1535E41 = *(_BYTE *)(v5 + 8);
        if ( v8 )
          byte_1535E41 = a5 != 0;
        byte_1535E40 |= 0x20u;
        byte_1535E42 = 0;
        sub_6C5F0(v6);
      }
    }
  }
  return savedregs_16;
}
