int __fastcall sub_73EE8(int a1, unsigned __int16 a2, int a3, unsigned __int8 a4)
{
  int v4; // r4
  int v5; // r1
  unsigned int v6; // r2
  char *v7; // r3
  int v8; // r0
  char *v9; // r0
  int savedregs_8; // [sp+8h] [bp+8h]

  v4 = a2;
  v5 = a4;
  v6 = a3 << 24;
  switch ( (unsigned int)((a1 << 24) - 117440512) >> 24 )
  {
    case 0u:
      v7 = (char *)&unk_1537CE8;
      v8 = 36 * v5;
      goto LABEL_8;
    case 3u:
      v7 = (char *)&unk_1537880;
      v8 = 36 * v5;
      goto LABEL_8;
    case 0xDu:
      v7 = (char *)&unk_1533D50;
      v8 = 36 * v5;
      goto LABEL_8;
    case 0xEu:
      v7 = (char *)&unk_1536AC4;
      v8 = 36 * v5;
      goto LABEL_8;
    case 0xFu:
      v9 = (char *)&unk_1536C70;
      goto LABEL_10;
    case 0x10u:
      v7 = (char *)&unk_1536A78;
      v8 = 36 * v5;
LABEL_8:
      v9 = &v7[v8];
      goto LABEL_10;
    case 0x12u:
      v9 = (char *)&unk_1535598;
LABEL_10:
      sub_75958(v9, v4, HIBYTE(v6), sub_6EA60);
      break;
    default:
      return savedregs_8;
  }
  return savedregs_8;
}
