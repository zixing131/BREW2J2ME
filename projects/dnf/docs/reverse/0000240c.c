int __fastcall sub_240C(int a1, const char *a2, int a3)
{
  int v3; // r0
  int v4; // r3
  int v5; // r0
  char v7[2]; // [sp+2Ch] [bp-8h] BYREF
  char v8; // [sp+2Eh] [bp-6h]
  _DWORD savedregs[5]; // [sp+34h] [bp+0h]

  sub_6D00(v7, a2, a3, 183577);
  v3 = sub_6D00(dword_1501BF8, (const char *)0x18);
  if ( v3 > 7 )
  {
    if ( v3 > 15 )
    {
      sub_6D02(dword_1501C14 - 34, dword_1501BF0 - 28, 0, 0, *(_DWORD *)(dword_150200C + 820));
      sub_6D02(dword_1501C14 + 34, dword_1501BF0 - 28, 0, 0, *(_DWORD *)(dword_150200C + 820));
      v7[0] = 3;
      v8 = 13;
      sub_6D02(dword_1501C14 - 45, dword_1501BF0 - 28, 0, 0, *(_DWORD *)(dword_150200C + 820));
      v4 = dword_150200C;
      v5 = dword_1501C14 + 45;
    }
    else
    {
      sub_6D02(dword_1501C14 - 35, dword_1501BF0 - 28, 0, 0, *(_DWORD *)(dword_150200C + 820));
      sub_6D02(dword_1501C14 + 35, dword_1501BF0 - 28, 0, 0, *(_DWORD *)(dword_150200C + 820));
      v7[0] = 3;
      v8 = 13;
      sub_6D02(dword_1501C14 - 46, dword_1501BF0 - 28, 0, 0, *(_DWORD *)(dword_150200C + 820));
      v4 = dword_150200C;
      v5 = dword_1501C14 + 46;
    }
    sub_6D02(v5, dword_1501BF0 - 28, 0, 0, *(_DWORD *)(v4 + 820));
  }
  else
  {
    sub_6D08(dword_1501C14 - 35, dword_1501BF0 - 28);
    sub_6D08(dword_1501C14 + 35, dword_1501BF0 - 28);
    v7[0] = 3;
    v8 = 13;
    sub_6D08(dword_1501C14 - 45, dword_1501BF0 - 28);
    sub_6D08(dword_1501C14 + 45, dword_1501BF0 - 28);
  }
  return savedregs[4];
}
