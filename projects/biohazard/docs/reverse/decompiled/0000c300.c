int __fastcall sub_C300(int a1, int a2, int a3, int a4, __int16 a5, __int16 a6)
{
  unsigned __int16 *v9; // r0
  int result; // r0
  unsigned __int16 *v11; // r4
  __int16 v12; // r0

  v9 = (unsigned __int16 *)sub_11DD8(a3, dword_C3D8);
  if ( v9 )
    sub_3324(a2, a5, a6, 15, 15, v9, 0, 0, 0, 0, 0);
  result = sub_11DD8(a3, dword_C3DC);
  v11 = (unsigned __int16 *)result;
  if ( result )
  {
    v12 = sub_104(0x64u, 15 * a4);
    return sub_3324(a2, a5, a6, 15, (__int16)(15 - v12), v11, 0, 0, 0, 0, 0);
  }
  return result;
}

