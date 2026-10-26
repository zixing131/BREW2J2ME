int __fastcall sub_24C38(int a1, int a2, int a3)
{
  *(_DWORD *)(a1 + 8) = a2;
  return (**(int (__fastcall ***)(int, int, int))((char *)off_24C60 + 0xFFFFFFFC + 150612))(a1 + 12, a3, 4 * a2);
}

