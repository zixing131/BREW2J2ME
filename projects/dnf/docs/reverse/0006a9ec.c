int __fastcall sub_6A9EC(int a1, int a2, int a3, int a4, int a5)
{
  int v5; // r6
  int v6; // r4
  int v8; // r5
  int v10; // [sp+0h] [bp-Ch]
  int v11; // [sp+4h] [bp-8h]
  int v12; // [sp+8h] [bp-4h]
  int savedregs_16; // [sp+1Ch] [bp+10h]

  v5 = a1 + 1;
  v6 = a2;
  v10 = a1 + a3;
  v11 = a1 + a3 - 1;
  v8 = a2 + a4;
  sub_6A9C8(a1 + 1, v11, a2, a5);
  v12 = v8--;
  ++v6;
  sub_6A9C8(v5, v11, v8, a5);
  sub_6A9A4(a1, v6, v8, a5);
  sub_6A9A4(v11, v6, v8, a5);
  sub_6A9C8(v5, a1 + 2, v6, a5);
  sub_6A9C8(v10 - 2, v11, v6, a5);
  sub_6A9C8(v5, v5, v12 - 2, a5);
  sub_6A9C8(v10 - 2, v11, v12 - 2, a5);
  return savedregs_16;
}
