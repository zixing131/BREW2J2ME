// positive sp value has been detected, the output may be wrong!
int __fastcall sub_808(int a1, int a2, int a3, _DWORD *a4)
{
  int (__fastcall *v4)(int, int, int); // r12

  v4 = *(int (__fastcall **)(int, int, int))(a1 + 12);
  if ( v4 )
    return v4(a3, a2, a1);
  else
    return sub_75C(a3, a2, (void (__fastcall ***)(_DWORD))a1, a4);
}

