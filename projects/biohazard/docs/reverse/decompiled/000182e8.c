int __fastcall sub_182E8(int a1, int a2)
{
  int result; // r0
  int v4; // r5

  result = sub_1058(a1, *(_DWORD *)(a1 + 224));
  v4 = result;
  if ( a2 )
  {
    (*(void (__fastcall **)(_DWORD))(**(_DWORD **)(result + 12) + 24))(*(_DWORD *)(result + 12));
    (*(void (__fastcall **)(_DWORD, int))(**(_DWORD **)(v4 + 12) + 28))(*(_DWORD *)(v4 + 12), 1);
    return (*(int (__fastcall **)(int))(*(_DWORD *)a2 + 4))(a2);
  }
  return result;
}

