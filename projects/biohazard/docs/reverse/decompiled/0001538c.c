int __fastcall sub_1538C(int a1, int a2, int a3)
{
  int result; // r0

  result = a1
         + 2
         * (*(int (__fastcall **)(int, _DWORD, int, int))(*(_DWORD *)((char *)off_153CC + 0xFFFFFFFC + 86952) + 128))(
             a1 + 16,
             *(unsigned __int16 *)(a1 + 114),
             a2,
             a3);
  *(_WORD *)(result + 16) = 0;
  return result;
}

