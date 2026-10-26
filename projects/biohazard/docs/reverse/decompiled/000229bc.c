int __fastcall sub_229BC(int a1)
{
  int v2; // r0
  char *v3; // r5
  bool v4; // zf
  bool v5; // zf

  v2 = *(unsigned __int16 *)(a1 + 4);
  v3 = (char *)off_22A2C + 141780;
  v4 = v2 == 0;
  if ( v2 )
  {
    v2 = *(_DWORD *)(a1 + 8);
    v4 = v2 == 0;
  }
  if ( !v4 )
  {
    (*(void (__fastcall **)(int))(*(_DWORD *)&v3[-4] + 108))(v2);
    *(_DWORD *)(a1 + 8) = 0;
  }
  v5 = *(unsigned __int16 *)(a1 + 12) == 0;
  if ( *(_WORD *)(a1 + 12) )
    v5 = *(_DWORD *)(a1 + 16) == 0;
  if ( !v5 )
  {
    (*(void (**)(void))(*(_DWORD *)&v3[-4] + 108))();
    *(_DWORD *)(a1 + 16) = 0;
  }
  return 1;
}

