int __fastcall sub_152D4(int result, char a2, int a3)
{
  *(_BYTE *)(result + 14) = a2;
  if ( a3 )
  {
    result += 2
            * (*(int (__fastcall **)(int, int))(*(_DWORD *)((char *)off_15314 + 0xFFFFFFFC + 86772) + 128))(
                result + 16,
                48);
    *(_WORD *)(result + 16) = 0;
  }
  return result;
}

