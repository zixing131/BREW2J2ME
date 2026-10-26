int __fastcall sub_72C5C(int a1, int a2, int a3)
{
  int v3; // r0
  int v4; // r7
  int v5; // r1
  int v6; // r2
  int v7; // r6
  int v8; // r5
  int v9; // r1
  int i; // r4
  void *v11; // r0
  int v12; // r2
  int v14; // [sp+4h] [bp-Ch] BYREF
  int v15; // [sp+8h] [bp-8h] BYREF
  __int16 v16; // [sp+Eh] [bp-2h] BYREF
  _DWORD savedregs[5]; // [sp+10h] [bp+0h]

  v3 = sub_75958("font", a2, a3, sub_6CBE0);
  v4 = v3;
  if ( !v3 )
    return savedregs[4];
  sub_7595A(&v16, v3, 2);
  sub_7595A(&v14, v4 + 2, 4);
  sub_7595A(&v15, v4 + 6, 4);
  v7 = sub_75958(v14 + 2, v5, v6, &unk_14032EC);
  v8 = v7;
  sub_7595A(v4 + 10, v7, v14);
  for ( i = 0; ; ++i )
  {
    v12 = 0;
    if ( i >= v16 )
      break;
    if ( i == 1 )
    {
      v11 = &unk_15377C8;
LABEL_8:
      v8 += sub_75958(v11, v8, 0, 571785);
      continue;
    }
    if ( i != 2 )
    {
      if ( i )
        continue;
      v11 = &unk_1536CBC;
      goto LABEL_8;
    }
    sub_75958(&unk_1536B60, v8, 0, 571785);
  }
  if ( v7 )
    sub_75958(v7, v9, 0, &unk_14032FC);
  sub_75958(v4, v9, v12, &unk_14032FC);
  return savedregs[4];
}
