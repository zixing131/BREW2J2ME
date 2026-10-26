int __fastcall sub_1228C(int result, _DWORD *a2, int *a3)
{
  unsigned __int16 *v3; // r3

  v3 = *(unsigned __int16 **)(result + 2200);
  if ( v3 )
  {
    *a2 = 2 * *v3;
    result = 2 * *(unsigned __int16 *)(*(_DWORD *)(result + 2200) + 2);
    *a3 = result;
  }
  return result;
}

