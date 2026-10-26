int __fastcall sub_2C144(int a1)
{
  int v1; // r2
  int v2; // r4
  int v3; // r1
  int v4; // r3
  int v5; // r1
  int savedregs_4; // [sp+4h] [bp+4h]

  v1 = *(_DWORD *)(a1 + 16);
  v2 = 16 * (unsigned __int8)byte_15332D5;
  v3 = *(__int16 *)(v1 + 58);
  if ( v3 > 20 )
  {
    v4 = (unsigned __int16)word_15332A0 - 20;
    if ( v3 < v4 )
      goto LABEL_5;
  }
  else
  {
    LOWORD(v4) = 20;
  }
  *(_WORD *)(v1 + 58) = v4;
LABEL_5:
  v5 = *(__int16 *)(v1 + 60);
  if ( v5 > v2 )
  {
    if ( v5 > (unsigned __int16)word_15332A2 )
      *(_WORD *)(v1 + 60) = word_15332A2;
  }
  else
  {
    *(_WORD *)(v1 + 60) = v2;
  }
  return savedregs_4;
}
