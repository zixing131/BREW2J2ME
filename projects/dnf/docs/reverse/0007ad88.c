int __fastcall sub_7AD88(int a1, int a2, int a3)
{
  __int64 v4; // r0
  int v5; // r5
  char v6; // r0
  int savedregs_12; // [sp+Ch] [bp+Ch]

  v4 = sub_80706(a1, a2, a3, sub_24084);
  v5 = v4;
  v6 = sub_80706(*(unsigned __int8 *)(dword_1501D90 + 5917), HIDWORD(v4), dword_1501D90, sub_240B0);
  sub_80706(a1 + 68, 10 * v5, (unsigned __int8)(4 * v6 + *(_BYTE *)(*(_DWORD *)(dword_1501D90 + 16) + 66)), sub_6EA60);
  return savedregs_12;
}
