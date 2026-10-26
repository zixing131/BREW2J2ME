int __fastcall sub_6FB64(int a1)
{
  int v1; // r5
  int v2; // r2
  char *v3; // r0
  _BYTE *v4; // r1
  __int16 v5; // r2
  int v6; // r6
  int v7; // r0
  int v8; // r4
  int v10; // [sp+0h] [bp-4h]
  int savedregs; // [sp+4h] [bp+0h]
  int savedregs_4; // [sp+8h] [bp+4h]
  int savedregs_8; // [sp+Ch] [bp+8h]
  int savedregs_12; // [sp+10h] [bp+Ch]

  v1 = dword_1536348[a1];
  byte_1536DA4[20 * *(unsigned __int8 *)(v1 + 621) + 17] = 0;
  if ( *(_WORD *)(v1 + 582) == 1 )
  {
    if ( *(unsigned __int16 *)(v1 + 24) == 41001 )
    {
      sub_71336(
        &dword_1501C30,
        &byte_1536DA4[20 * *(unsigned __int8 *)(v1 + 621)],
        *(unsigned __int16 *)(v1 + 580),
        1,
        v10,
        savedregs,
        savedregs_4,
        savedregs_8);
    }
    else
    {
      v2 = *(unsigned __int8 *)(v1 + 621);
      if ( *(_WORD *)(v1 + 24) )
      {
        v4 = &byte_1536DA4[20 * v2];
        v3 = (char *)&unk_153718C + 36 * (unsigned __int8)v4[16];
      }
      else
      {
        v3 = (char *)(*(_DWORD *)(dword_1501D90 + 16) + 68);
        v4 = &byte_1536DA4[20 * v2];
      }
      sub_7133A(v3, v4, *(unsigned __int16 *)(v1 + 580), 1);
    }
  }
  if ( *(_BYTE *)(v1 + 614) == 1 )
  {
    v5 = dword_153653C - *(_WORD *)(v1 + 612);
    *(_WORD *)(v1 + 576) += *(char *)(v1 + 610) * v5;
    *(_WORD *)(v1 + 578) += v5 * *(char *)(v1 + 611);
  }
  if ( *(_BYTE *)(v1 + 618) == 1 )
  {
    byte_1536DA4[20 * *(unsigned __int8 *)(v1 + 621) + 5] = *(_BYTE *)(v1 + 619);
    v6 = 1;
  }
  else
  {
    v6 = 0;
  }
  if ( *(_BYTE *)(v1 + 617) == 1 )
    v6 = 2;
  v7 = *(unsigned __int16 *)(v1 + 584);
  if ( !*(_WORD *)(v1 + 584) )
  {
    *(_BYTE *)(v1 + 588) = v7;
    *(_BYTE *)(v1 + 589) = v7;
LABEL_19:
    byte_1536DA4[20 * *(unsigned __int8 *)(v1 + 621) + 12] = v7;
    goto LABEL_21;
  }
  if ( v7 == 1 )
  {
    *(_BYTE *)(v1 + 588) = 1;
    *(_BYTE *)(v1 + 589) = 0;
    goto LABEL_19;
  }
  *(_BYTE *)(v1 + 589) = v7;
  byte_1536DA4[20 * *(unsigned __int8 *)(v1 + 621) + 12] = *(_BYTE *)(v1 + 588);
LABEL_21:
  byte_1536DA4[20 * *(unsigned __int8 *)(v1 + 621)] = *(_BYTE *)(v1 + 592) != 1;
  if ( *(_BYTE *)(v1 + 593) == 1 )
    byte_1536DA4[20 * *(unsigned __int8 *)(v1 + 621) + 5] = 0;
  *(_WORD *)&byte_1536DA4[20 * *(unsigned __int8 *)(v1 + 621) + 8] = *(_WORD *)(v1 + 576);
  *(_WORD *)&byte_1536DA4[20 * *(unsigned __int8 *)(v1 + 621) + 10] = *(_WORD *)(v1 + 578);
  if ( *(_BYTE *)(v1 + 593) == 1 )
  {
    if ( v6 == 2 )
      v8 = 5;
    else
      v8 = 3;
    sub_71336(
      *(unsigned __int8 *)(v1 + 621),
      v8,
      *(unsigned __int8 *)(v1 + 615),
      *(unsigned __int8 *)(v1 + 616),
      *(unsigned __int16 *)(v1 + 24),
      savedregs,
      savedregs_4,
      savedregs_8);
  }
  else
  {
    sub_71336(
      *(unsigned __int8 *)(v1 + 621),
      v6,
      *(unsigned __int8 *)(v1 + 615),
      *(unsigned __int8 *)(v1 + 616),
      *(unsigned __int16 *)(v1 + 24),
      savedregs,
      savedregs_4,
      savedregs_8);
  }
  return savedregs_12;
}
