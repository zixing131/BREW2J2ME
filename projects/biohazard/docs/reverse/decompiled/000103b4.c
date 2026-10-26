int __fastcall sub_103B4(int result, char a2, __int16 a3, int a4, char a5, int a6)
{
  if ( !*(_BYTE *)(result + 340) )
  {
    *(_BYTE *)(result + 340) = a2;
    *(_WORD *)(result + 342) = 0;
    *(_WORD *)(result + 344) = a3;
    *(_DWORD *)(result + 348) = a4;
    *(_BYTE *)(result + 352) = a5;
    *(_DWORD *)(result + 356) = a6;
  }
  return result;
}

