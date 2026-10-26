int __fastcall sub_6200(unsigned __int8 *a1)
{
  int result; // r0

  result = a1[12];
  if ( result )
  {
    a1[158] = a1[158] == 0;
    sub_D204(a1);
    return (*(int (__fastcall **)(_DWORD, int, char *, unsigned __int8 *))(**(_DWORD **)a1 + 44))(
             *(_DWORD *)a1,
             1000,
             (char *)off_6250 + 25156,
             a1);
  }
  return result;
}

