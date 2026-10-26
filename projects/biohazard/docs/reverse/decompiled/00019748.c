int __fastcall sub_19748(int a1, int a2, int a3, int a4)
{
  int result; // r0
  __int16 v7; // r1
  int v8; // [sp+0h] [bp-4h] BYREF

  v8 = a4;
  result = a2 - 1;
  if ( a1 >= a2 - 1 )
    result = a1;
  if ( a1 < a2 - 1 )
  {
    (*(void (__fastcall **)(int *, int))(*(_DWORD *)((char *)off_197A4 + 0xFFFFFFFC + 104304) + 168))(&v8, 2);
    sub_104(a2 - a1, (unsigned __int16)v8);
    return (unsigned __int16)(v7 + a1);
  }
  return result;
}

