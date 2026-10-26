int __fastcall sub_6F870(int a1)
{
  int v1; // r7
  __int16 v2; // r2
  int v3; // r2
  int v4; // r3
  int v5; // r5
  unsigned __int8 *v6; // r6
  unsigned __int8 *v7; // r5
  unsigned int v8; // r6
  int v9; // r1
  int v10; // r0
  int v11; // r5
  unsigned __int8 *v12; // r0
  unsigned __int8 *v13; // r4
  _BYTE *v14; // r3
  int v16; // [sp+4h] [bp-4h]
  int savedregs; // [sp+8h] [bp+0h]
  int savedregs_4; // [sp+Ch] [bp+4h]
  int savedregs_16; // [sp+18h] [bp+10h]

  v1 = dword_1536348[a1];
  if ( *(_BYTE *)(v1 + 614) == 1 )
  {
    v2 = dword_153653C - *(_WORD *)(v1 + 612);
    *(_WORD *)(v1 + 576) += *(char *)(v1 + 610) * v2;
    *(_WORD *)(v1 + 578) += v2 * *(char *)(v1 + 611);
    if ( dword_1501C04 == 240 )
    {
      word_1534730 = -*(_WORD *)(v1 + 576);
      word_15346FC = 40 - *(_WORD *)(v1 + 578);
    }
    else
    {
      v3 = *(unsigned __int16 *)(v1 + 576);
      if ( dword_1501C04 == 320 )
        LOWORD(v4) = 40 - v3;
      else
        v4 = -v3;
      word_1534730 = v4;
      word_15346FC = -*(_WORD *)(v1 + 578);
    }
  }
  if ( *(_BYTE *)(v1 + 595) == 1 )
  {
    v5 = 52 * *(unsigned __int8 *)(v1 + 596) + v1;
    v6 = (unsigned __int8 *)(v5 + 64);
    v7 = (unsigned __int8 *)(v5 + 68);
    if ( v7[3] == 255 )
      sub_71336(
        0,
        0,
        dword_1501C04,
        dword_1501BF0,
        (*v7 << 8) + (v7[1] << 16) + (v7[2] << 24),
        v16,
        savedregs,
        savedregs_4);
    else
      sub_71336(
        0,
        0,
        dword_1501C04,
        dword_1501BF0,
        (*v6 << 8) + (v6[1] << 16) + (v6[2] << 24),
        3 - (v6[3] >> 6),
        savedregs,
        savedregs_4);
  }
  if ( *(_BYTE *)(v1 + 597) == 1 )
  {
    v8 = *(unsigned __int8 *)(52 * *(unsigned __int8 *)(v1 + 598) + v1 + 71);
    v9 = *(unsigned __int8 *)(52 * *(unsigned __int8 *)(v1 + 598) + v1 + 68);
    v10 = *(unsigned __int8 *)(52 * *(unsigned __int8 *)(v1 + 598) + v1 + 69);
    v11 = *(unsigned __int8 *)(52 * *(unsigned __int8 *)(v1 + 598) + v1 + 70);
    if ( v8 == 255 )
      sub_71336(0, 0, dword_1501C04, dword_1501BF0, (v9 << 8) + (v10 << 16) + (v11 << 24), v16, savedregs, savedregs_4);
    else
      sub_71336(
        0,
        0,
        dword_1501C04,
        dword_1501BF0,
        (v9 << 8) + (v10 << 16) + (v11 << 24),
        3 - (v8 >> 6),
        savedregs,
        savedregs_4);
  }
  if ( *(_BYTE *)(v1 + 599) == 1 )
  {
    if ( *(_BYTE *)(52 * *(unsigned __int8 *)(v1 + 600) + v1 + 79) )
    {
      v12 = (unsigned __int8 *)(52 * *(unsigned __int8 *)(v1 + 600) + v1 + 76);
      sub_71336(
        0,
        0,
        dword_1501C04,
        *(unsigned __int8 *)(52 * *(unsigned __int8 *)(v1 + 600) + v1 + 79),
        (*v12 << 8) + (v12[1] << 16) + (*(unsigned __int8 *)(52 * *(unsigned __int8 *)(v1 + 600) + v1 + 78) << 24),
        v16,
        savedregs,
        savedregs_4);
    }
    v14 = (_BYTE *)(52 * *(unsigned __int8 *)(v1 + 600) + v1 + 80);
    if ( *v14 )
    {
      v13 = (unsigned __int8 *)(52 * *(unsigned __int8 *)(v1 + 600) + v1);
      sub_71336(
        0,
        dword_1501BF0 - (unsigned __int8)*v14,
        dword_1501C04,
        (unsigned __int8)*v14,
        (v13[76] << 8) + (v13[77] << 16) + (v13[78] << 24),
        v16,
        savedregs,
        savedregs_4);
    }
  }
  if ( *(_BYTE *)(v1 + 601) == 1 )
    sub_71336(
      0,
      0,
      dword_1501C04,
      dword_1501BF0,
      (*(unsigned __int8 *)(52 * *(unsigned __int8 *)(v1 + 602) + v1 + 83) << 8)
    + (*(unsigned __int8 *)(52 * *(unsigned __int8 *)(v1 + 602) + v1 + 84) << 16)
    + (*(unsigned __int8 *)(52 * *(unsigned __int8 *)(v1 + 602) + v1 + 85) << 24),
      v16,
      savedregs,
      savedregs_4);
  if ( *(_BYTE *)(v1 + 592) == 1 )
    sub_71336(
      word_1534730 + *(unsigned __int16 *)(v1 + 576),
      0,
      dword_1501C04 / 2,
      dword_1501BF0,
      0,
      v16,
      savedregs,
      savedregs_4);
  if ( *(_BYTE *)(v1 + 592) == 2 )
    sub_71336(
      word_1534730 + *(unsigned __int16 *)(v1 + 576),
      word_15346FC + *(unsigned __int16 *)(v1 + 578),
      dword_1501C04 / 2,
      dword_1501BF0,
      0,
      v16,
      savedregs,
      savedregs_4);
  if ( *(_BYTE *)(v1 + 592) == 3 )
    sub_71336(
      word_1534730 + *(unsigned __int16 *)(v1 + 576) + dword_1501C04 / 2,
      word_15346FC + *(unsigned __int16 *)(v1 + 578),
      dword_1501C04 / 2,
      dword_1501BF0,
      0,
      v16,
      savedregs,
      savedregs_4);
  return savedregs_16;
}
