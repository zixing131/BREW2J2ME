int __fastcall sub_8BD64(int a1, int a2, int a3)
{
  int v4; // r5
  int v5; // r7
  int v6; // r2
  int v7; // r2
  int v8; // r1
  int savedregs_16; // [sp+10h] [bp+10h]

  if ( a2 < -1024 )
    a2 = -1024;
  v4 = (*(unsigned __int8 *)(a1 + 3) * a2) >> 10;
  if ( a3 < -1024 )
    a3 = -1024;
  v5 = (*(unsigned __int8 *)(a1 + 4) * a3) >> 10;
  if ( *(_BYTE *)(a1 + 32) )
    v6 = *(_DWORD *)(a1 + 116);
  else
    v6 = 0;
  if ( v6 != v4 || (*(_BYTE *)(a1 + 32) ? (v7 = *(_DWORD *)(a1 + 120)) : (v7 = 0), v7 != v5) )
  {
    if ( !*(_BYTE *)(a1 + 32) )
      sub_8B4DC(a1, 1);
    v8 = *(unsigned __int8 *)(a1 + 3);
    *(_DWORD *)(a1 + 116) = v4;
    *(_DWORD *)(a1 + 120) = v5;
    *(_DWORD *)(a1 + 176) = sub_8BDEC(v8 + v4);
    *(_DWORD *)(a1 + 180) = sub_8BDEC(*(unsigned __int8 *)(a1 + 4) + v5);
    sub_8B5DC(a1);
  }
  return savedregs_16;
}
