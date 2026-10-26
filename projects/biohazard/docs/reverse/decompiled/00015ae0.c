int __fastcall sub_15AE0(int a1)
{
  char *v2; // r10
  int v3; // r7
  int v4; // r4
  int v5; // r6
  int result; // r0

  v2 = (char *)off_15BB4 + 88820;
  v3 = *(_DWORD *)((*(int (**)(void))(*(_DWORD *)((char *)off_15BB4 + 0xFFFFFFFC + 88820) + 192))() + 40);
  sub_15A00(a1);
  *(_WORD *)(a1 + 140) = 0;
  *(_WORD *)(a1 + 290) = 5;
  v4 = 0;
  while ( 1 )
  {
    v5 = sub_19618(v3, v4 + 7006, 0, 0);
    result = (*(int (__fastcall **)(int))(*(_DWORD *)&v2[-4] + 104))(v5 + 4);
    *(_DWORD *)(a1 + 4 * v4 + 160) = result;
    if ( !result )
      break;
    sub_19618(v3, v4 + 7006, result, v5);
    *(_BYTE *)(a1 + v4 + 84) = 0;
    v4 = (__int16)(v4 + 1);
    if ( *(unsigned __int16 *)(a1 + 290) <= v4 )
    {
      *(_BYTE *)(a1 + 84) = 1;
      *(_BYTE *)(a1 + 86) = 1;
      *(_BYTE *)(a1 + 300) = 1;
      return 1;
    }
  }
  return result;
}

