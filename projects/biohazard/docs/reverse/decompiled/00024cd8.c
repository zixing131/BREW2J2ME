int __fastcall sub_24CD8(int a1, int a2)
{
  char *v2; // r5

  *(_DWORD *)(a1 + 8) = a2;
  v2 = (char *)off_24D24 + 150776;
  *(_DWORD *)(a1 + 12) = (*(int (__fastcall **)(int))(*(_DWORD *)((char *)off_24D24 + 0xFFFFFFFC + 150776) + 104))(16 * a2);
  return (**(int (***)(void))&v2[-4])();
}

