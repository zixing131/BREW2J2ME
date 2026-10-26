int sub_12E8()
{
  int v0; // r2
  int v1; // r1
  int v2; // r2
  unsigned __int64 v3; // r0
  int v4; // r1
  __int64 *v5; // r0
  __int64 v6; // r0
  int v7; // r2
  __int64 v8; // r0
  int v9; // r2
  __int64 v10; // r0
  int v11; // r2
  __int64 v12; // r0
  int v13; // r2
  __int64 v15; // [sp+0h] [bp-20h]
  _BYTE v16[16]; // [sp+10h] [bp-10h] BYREF
  _DWORD savedregs[4]; // [sp+20h] [bp+0h]

  sub_1400(v16, 0, 16, &unk_140329C);
  sub_1400("PHONEMODEL", v16, 16, &unk_14033DC);
  if ( (int)sub_1400("LG-LU9400", v16, v0, &unk_140325C) )
    goto LABEL_6;
  v3 = sub_1400(0, v1, v2, &unk_14033CC);
  v15 = v3;
  if ( qword_1501C0C > v3 )
    qword_1501C0C = v3;
  v4 = sub_1400(15 * dword_1501BEC, 10, &qword_1501C0C, 573541) + 50;
  v5 = &qword_1501C0C;
  if ( v4 <= (unsigned __int64)(v15 - qword_1501C0C) )
  {
    qword_1501C0C = v15;
LABEL_6:
    if ( ++dword_1501BF8 > 50000 )
      dword_1501BF8 = 100;
    v6 = sub_1400(&unk_15000D0, &dword_1501BF8, 50000, 6817);
    v8 = sub_1400(v6, HIDWORD(v6), v7, 422881);
    v10 = sub_1400(v8, HIDWORD(v8), v9, 222325);
    v12 = sub_1400(v10, HIDWORD(v10), v11, 239861);
    v5 = (__int64 *)sub_1400(v12, HIDWORD(v12), v13, 189641);
  }
  sub_114C(v5);
  return savedregs[3];
}
