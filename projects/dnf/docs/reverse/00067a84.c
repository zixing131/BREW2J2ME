int __fastcall sub_67A84(int a1, int a2, _DWORD *a3, int a4, int a5, int a6)
{
  int v8; // [sp+8h] [bp-14h] BYREF
  _BYTE v9[16]; // [sp+Ch] [bp-10h] BYREF
  _DWORD savedregs[3]; // [sp+1Ch] [bp+0h]

  v8 = a2;
  if ( a3 && *a3 && sub_67044(a1, &v8, v9, a3, 4) )
    sub_67BC0(&dword_1535B08, v8, &dword_1535BE0, a4, a5, a6);
  return savedregs[2];
}
