// positive sp value has been detected, the output may be wrong!
void __fastcall __noreturn sub_8C6DC(int a1, int a2, int a3, int a4)
{
  int v4; // lr
  void (__fastcall *v8)(int, int, int, int); // [sp+28h] [bp-Ch]

  v8 = (void (__fastcall *)(int, int, int, int))(v4 - 8);
  __mcr(15, 0, sub_8CC5C(), 7, 5, 0);
  v8(a1, a2, a3, a4);
}
